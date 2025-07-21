namespace AttendanceLoginSharedModels;

public class UserModel
{
    public int Id { get; set; }
    public string Username { get; set; }
    public string Email { get; set; }
    public string Password { get; set; }

    public DateTime? TimeIn { get; set; }
    public DateTime? TimeOut { get; set; }

    public byte[] Picture { get; set; }       // Will store photo as byte array
    public byte[] Signature { get; set; }     // Will store signature as byte array
}
