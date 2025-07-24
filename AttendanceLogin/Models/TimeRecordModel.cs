namespace AttendanceLogin.Models;

public class TimeRecordModel
{
    public string Username { get; set; }
    public DateTime Timestamp { get; set; }
    public string ActionType { get; set; } // "TimeIn" or "TimeOut"
    public string PhotoBase64 { get; set; }
    public string SignatureBase64 { get; set; }
}
