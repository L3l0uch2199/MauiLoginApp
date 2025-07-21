namespace AttendanceLogin.Models;

public class TimeRecordModel
{
    public DateTime TimeIn { get; set; }
    public string ImageBase64 { get; set; }
    public string SignatureBase64 { get; set; }
}
