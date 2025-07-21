using Microsoft.Maui.Controls;
using Microsoft.Maui.Graphics;
using SkiaSharp;
using SkiaSharp.Views.Maui;
using System;
using System.IO;
using System.Threading.Tasks;

namespace AttendanceLogin;

public partial class DashboardPage : ContentPage
{
    private string _username;
    private bool _hasImage = false;
    private bool _hasSignature = false;
    private SKPath _signaturePath = new();
    private SKPaint _paint;

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

    private async void OnCapturePhotoClicked(object sender, EventArgs e)
    {
        try
        {
            var photo = await MediaPicker.CapturePhotoAsync();
            if (photo != null)
            {
                var stream = await photo.OpenReadAsync();
                CapturedImage.Source = ImageSource.FromStream(() => stream);
                _hasImage = true;
                StatusLabel.Text = "";
            }
        }
        catch (Exception ex)
        {
            StatusLabel.Text = "Photo capture failed.";
        }
    }

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
        if (!_hasImage || !_hasSignature)
        {
            StatusLabel.Text = "Error: Please take a photo and provide a signature before Time In.";
            return;
        }

        var timestamp = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
        StatusLabel.TextColor = Colors.Green;
        StatusLabel.Text = $"Time In recorded at {timestamp}";

        // TODO: Add your API call logic here to save the time-in, image, and signature if needed
    }

    private void OnTimeOutClicked(object sender, EventArgs e)
    {
        var timestamp = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
        StatusLabel.TextColor = Colors.Blue;
        StatusLabel.Text = $"Time Out recorded at {timestamp}";

        // TODO: Optional: Add logic for submitting time out to your API
    }
}
