﻿using Microsoft.Data.SqlClient;
using System.Timers;
using AttendanceLogin.Views;


namespace AttendanceLogin;

public partial class MainPage : ContentPage
{
    private readonly System.Timers.Timer _timer;

    public MainPage()
    {
        InitializeComponent();

        // Set initial time immediately
        SetCurrentTime();

        // Start timer
        _timer = new System.Timers.Timer(1000);
        _timer.Elapsed += UpdateTimeLabel!;
        _timer.Start();
    }

    private void SetCurrentTime()
    {
        MainThread.BeginInvokeOnMainThread(() =>
        {
            TimeLabel.Text = DateTime.Now.ToString("dddd, MMMM dd yyyy - hh:mm:ss tt");
        });
    }

    private void UpdateTimeLabel(object? sender, ElapsedEventArgs e)
    {
        SetCurrentTime();
    }

    protected override void OnAppearing()
    {
        base.OnAppearing();
        usernameEntry.Text = string.Empty;
        passwordEntry.Text = string.Empty;
    }

    private async void OnLoginClicked(object? sender, EventArgs e)
    {
        string username = usernameEntry.Text?.Trim() ?? string.Empty;
        string password = passwordEntry.Text ?? string.Empty;

        if (string.IsNullOrWhiteSpace(username) || string.IsNullOrWhiteSpace(password))
        {
            await DisplayAlert("Error", "Please enter both username and password.", "OK");
            return;
        }

        // Admin login
        if (username == "admin" && password == "admin1234")
        {
            await Navigation.PushAsync(new AdminPage());
            return;
        }

        // Regular user: validate against SQL Server
        try
        {
            string connectionString = "Server=192.168.0.63,1433;Database=Users;User Id=mauiuser;Password=maui1234;TrustServerCertificate=True;";

            using SqlConnection conn = new(connectionString);
            await conn.OpenAsync();

            string query = "SELECT COUNT(*) FROM UserTbl WHERE Username = @Username AND Password = @Password";
            using SqlCommand cmd = new(query, conn);
            cmd.Parameters.AddWithValue("@Username", username);
            cmd.Parameters.AddWithValue("@Password", password);

            object? result = await cmd.ExecuteScalarAsync();
            int count = result is not null ? Convert.ToInt32(result) : 0;

            if (count > 0)
            {
                await Navigation.PushAsync(new NonAdminPage(username));
            }
            else
            {
                await DisplayAlert("Login Failed", "Invalid username or password.", "OK");
            }
        }
        catch (Exception ex)
        {
            await DisplayAlert("Error", ex.Message, "OK");
        }
    }

    private async void OnSignInClicked(object? sender, EventArgs e)
    {
        await Navigation.PushAsync(new SignInPage());
    }
}
