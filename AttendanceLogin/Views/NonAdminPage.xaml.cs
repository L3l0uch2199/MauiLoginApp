using System;
using Microsoft.Maui.Controls;

namespace AttendanceLogin.Views;

public partial class NonAdminPage : ContentPage
{
    private string _username;

    public NonAdminPage(string username)
    {
        InitializeComponent();
        _username = username;
        WelcomeLabel.Text = $"Hello, {_username}!";
    }

    private async void OnLogoutClicked(object sender, EventArgs e)
    {
        // Navigate back to login page
        await Navigation.PopToRootAsync();
    }

    private async void OnOpenDashboardClicked(object sender, EventArgs e)
    {
        try
        {
            // Make sure DashboardPage is accessible in the same namespace
            await Navigation.PushAsync(new DashboardPage(_username));
        }
        catch (Exception ex)
        {
            await DisplayAlert("Navigation Error", $"Failed to open dashboard: {ex.Message}", "OK");
        }
    }
}
