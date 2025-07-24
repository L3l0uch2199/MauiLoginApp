using Microsoft.Maui.Controls;
using Microsoft.Maui.Graphics;
using SkiaSharp;
using SkiaSharp.Views.Maui;
using SkiaSharp.Views.Maui.Controls;
using System;
using System.IO;
using System.Threading.Tasks;
using Microsoft.Data.SqlClient;

namespace AttendanceLogin.Views;

public partial class DashboardPage : ContentPage
{
    private string _username;
    private bool _hasImage = false;
    private bool _hasSignature = false;
    private SKPath _signaturePath = new();
    private SKPaint _paint;
    private byte[] _imageBytes;
    private byte[] _signatureBytes;

    // Connection string to your MS SQL Server
    private readonly string _connectionString = "Server=PDISRV2\\MSSQLSERVER03;Database=Users;User Id=mauiuser;Password=maui1234;TrustServerCertificate=True;";

    public DashboardPage(string username)
    {
        InitializeComponent();
        _username = username;
        TimeLabel.Text = $"User: {_username}";

        _paint = new SKPaint
        {
            Style = SKPaintStyle.Stroke,
            Color = SKColors.Black,
            StrokeWidth = 4
        };
    }

    //private async void OnCapturePhotoClicked(object sender, EventArgs e)
    //{
    //    try
    //    {
    //        var photo = await MediaPicker.CapturePhotoAsync();
    //        if (photo != null)
    //        {
    //            using var stream = await photo.OpenReadAsync();
    //            using var ms = new MemoryStream();
    //            await stream.CopyToAsync(ms);
    //            _imageBytes = ms.ToArray();

    //            _hasImage = true;
    //            StatusLabel.Text = "";
    //        }
    //    }
    //    catch
    //    {
    //        StatusLabel.Text = "Photo capture failed.";
    //    }
    //}

    private void OnSignatureTouch(object sender, SKTouchEventArgs e)
    {
        if (e.ActionType == SKTouchAction.Pressed)
        {
            _signaturePath.MoveTo(e.Location);
        }
        else if (e.ActionType == SKTouchAction.Moved)
        {
            _signaturePath.LineTo(e.Location);
            _hasSignature = true;
        }

        e.Handled = true;
        SignaturePad.InvalidateSurface();
    }

    private void OnSignaturePaintSurface(object sender, SKPaintSurfaceEventArgs e)
    {
        var canvas = e.Surface.Canvas;
        canvas.Clear(SKColors.White);
        canvas.DrawPath(_signaturePath, _paint);
    }

    private void OnClearSignatureClicked(object sender, EventArgs e)
    {
        _signaturePath = new SKPath();
        _hasSignature = false;
        SignaturePad.InvalidateSurface();
    }

    private async void OnTimeInClicked(object sender, EventArgs e)
    {
        //if (!_hasImage || !_hasSignature)
        //{
        //    StatusLabel.TextColor = Colors.Red;
        //    StatusLabel.Text = "Error: Please take a photo and provide a signature before Time In.";
        //    return;
        //}

        _signatureBytes = RenderSignatureToBytes();
        var timestamp = DateTime.Now;

        try
        {
            using var conn = new SqlConnection(_connectionString);
            await conn.OpenAsync();

            string query = @"
                UPDATE UserTbl
                SET TimeIn = @TimeIn,  Signature = @Signature
                WHERE Username = @Username AND TimeIn IS NULL";
            //Photo = @Photo,
            using var cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@Username", _username);
            cmd.Parameters.AddWithValue("@TimeIn", timestamp);
           // cmd.Parameters.AddWithValue("@Photo", _imageBytes);
            cmd.Parameters.AddWithValue("@Signature", _signatureBytes);

            int rows = await cmd.ExecuteNonQueryAsync();

            if (rows > 0)
            {
                StatusLabel.TextColor = Colors.Green;
                StatusLabel.Text = $"Time In saved at {timestamp:HH:mm:ss}";
            }
            else
            {
                StatusLabel.TextColor = Colors.Orange;
                StatusLabel.Text = "You may have already timed in.";
            }
        }
        catch (Exception ex)
        {
            StatusLabel.TextColor = Colors.Red;
            StatusLabel.Text = $"Error saving Time In: {ex.Message}";
        }
    }

    private async void OnTimeOutClicked(object sender, EventArgs e)
    {
        var timestamp = DateTime.Now;

        try
        {
            using var conn = new SqlConnection(_connectionString);
            await conn.OpenAsync();

            string query = @"
                UPDATE UserTbl
                SET TimeOut = @TimeOut
                WHERE Username = @Username AND CAST(TimeIn AS DATE) = CAST(GETDATE() AS DATE)";

            using var cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@Username", _username);
            cmd.Parameters.AddWithValue("@TimeOut", timestamp);

            int rows = await cmd.ExecuteNonQueryAsync();

            if (rows > 0)
            {
                StatusLabel.TextColor = Colors.Blue;
                StatusLabel.Text = $"🕒 Time Out saved at {timestamp:HH:mm:ss}";
            }
            else
            {
                StatusLabel.TextColor = Colors.Red;
                StatusLabel.Text = "❌ Error: No Time In record found for today.";
            }
        }
        catch (Exception ex)
        {
            StatusLabel.TextColor = Colors.Red;
            StatusLabel.Text = $"❌ Error saving Time Out: {ex.Message}";
        }
    }

    private byte[] RenderSignatureToBytes()
    {
        using var surface = SKSurface.Create(new SKImageInfo(300, 150));
        var canvas = surface.Canvas;
        canvas.Clear(SKColors.White);
        canvas.DrawPath(_signaturePath, _paint);

        using var image = surface.Snapshot();
        using var data = image.Encode(SKEncodedImageFormat.Png, 100);
        return data.ToArray();
    }
}
