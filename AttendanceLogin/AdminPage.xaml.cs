using Microsoft.Data.SqlClient;
using System.Collections.ObjectModel;
using AttendanceLoginSharedModels;

namespace AttendanceLogin;

public partial class AdminPage : ContentPage
{
    public ObservableCollection<UserModel> UsersList { get; set; } = [];

    public AdminPage()
    {
        InitializeComponent();
        LoadUsersFromDatabase();
    }

    private async void LoadUsersFromDatabase()
    {
        try
        {
            string connectionString = "Server=192.168.0.63,1433;Database=Users;User Id=mauiuser;Password=maui1234;TrustServerCertificate=True;";
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                await conn.OpenAsync();

                string query = "SELECT Username, Email FROM UsersTbl";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                using (SqlDataReader reader = await cmd.ExecuteReaderAsync())
                {
                    while (await reader.ReadAsync())
                    {
                        UsersList.Add(new UserModel
                        {
                            Username = reader["Username"].ToString(),
                            Email = reader["Email"].ToString()
                        });
                    }
                }
            }

            usersCollectionView.ItemsSource = UsersList;
        }
        catch (Exception ex)
        {
            await DisplayAlert("Error", ex.Message, "OK");
        }
    }

    private async void OnDeleteClicked(object sender, EventArgs e)
    {
        if (sender is Button button && button.CommandParameter is UserModel user)
        {
            bool confirm = await DisplayAlert("Confirm Delete", $"Are you sure you want to delete user '{user.Username}'?", "Yes", "No");
            if (!confirm) return;

            try
            {
                string connectionString = "Server=192.168.0.63,1433;Database=Users;User Id=mauiuser;Password=maui1234;TrustServerCertificate=True;";
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    await conn.OpenAsync();

                    string query = "DELETE FROM UsersTbl WHERE Username = @Username";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Username", user.Username);
                        await cmd.ExecuteNonQueryAsync();
                    }
                }

                UsersList.Remove(user);
            }
            catch (Exception ex)
            {
                await DisplayAlert("Error", ex.Message, "OK");
            }
        }
    }

}