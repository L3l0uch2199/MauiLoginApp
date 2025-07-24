using System;
using Microsoft.Maui.Controls;
using AttendanceLogin.Views;

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
        await Navigation.PopToRootAsync();
    }

    private async void OnOpenDashboardClicked(object sender, EventArgs e)
    {
        //await Navigation.PushAsync(new DashboardPage(_username));
        MainThread.BeginInvokeOnMainThread(async () =>
        {
            await Navigation.PushAsync(new DashboardPage(_username));
        });
    }


}
