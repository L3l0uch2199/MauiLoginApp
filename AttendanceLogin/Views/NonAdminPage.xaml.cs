namespace AttendanceLogin;

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
        // Navigate to the DashboardPage and pass the username
        await Navigation.PushAsync(new DashboardPage(_username));
    }
}
