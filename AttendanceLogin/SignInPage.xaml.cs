using Microsoft.Data.SqlClient;
using System;

namespace AttendanceLogin;

public partial class SignInPage : ContentPage
{
    public SignInPage()
    {
        InitializeComponent();
    }

    private async void OnCreateAccountClicked(object sender, EventArgs e)
    {
        string username = usernameEntry.Text?.Trim();
        string email = emailEntry.Text?.Trim();
        string password = passwordEntry.Text;
        string confirmPassword = confirmPasswordEntry.Text;

        if (string.IsNullOrWhiteSpace(username) || string.IsNullOrWhiteSpace(email) ||
            string.IsNullOrWhiteSpace(password) || string.IsNullOrWhiteSpace(confirmPassword))
        {
            await DisplayAlert("Error", "All fields are required.", "OK");
            return;
        }

        if (password != confirmPassword)
        {
            await DisplayAlert("Error", "Passwords do not match.", "OK");
            return;
        }

        try
        {
            // Connection string using Windows Authentication (Trusted Connection)
            string connectionString = "Server=192.168.0.63,1433;Database=Users;User Id=mauiuser;Password=maui1234;TrustServerCertificate=True;";

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                await conn.OpenAsync();

                string query = "INSERT INTO UserTbl (Username, Email, Password) VALUES (@Username, @Email, @Password)";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Username", username);
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@Password", password);

                    await cmd.ExecuteNonQueryAsync();
                }
            }

            await DisplayAlert("Success", "Account successfully registered", "OK");
            await Navigation.PopAsync(); // Go back to login page
        }
        catch (Exception ex)
        {
            await DisplayAlert("Error", ex.Message, "OK");
        }
    }
}