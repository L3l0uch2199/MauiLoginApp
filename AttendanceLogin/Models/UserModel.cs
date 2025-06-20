namespace AttendanceLogin.Models;

public class UserModel
{
    public string Username { get; set; }
    public string Email { get; set; }
    public bool IsDeletable => !Username.Equals("admin", StringComparison.OrdinalIgnoreCase);

}
