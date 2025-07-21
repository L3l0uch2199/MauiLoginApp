using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using System;

namespace AttendanceLogin.ViewModels;

public partial class DashboardViewModel : ObservableObject
{
    [ObservableProperty] private DateTime timeIn;
    [ObservableProperty] private string imageBase64;
    [ObservableProperty] private string signatureBase64;

    [RelayCommand]
    private async Task TimeInAction()
    {
        if (string.IsNullOrEmpty(ImageBase64) || string.IsNullOrEmpty(SignatureBase64))
        {
            await Shell.Current.DisplayAlert("Error", "Camera image and signature are required.", "OK");
            return;
        }

        TimeIn = DateTime.Now;

        // TODO: Call Web API to submit time record
        await Shell.Current.DisplayAlert("Success", $"Time-in recorded at {TimeIn}", "OK");
    }

    [RelayCommand]
    private async Task OpenCamera()
    {
        // TODO: Capture image and convert to Base64
        ImageBase64 = "dummybase64cameraimage"; // Replace with actual capture
    }

    [RelayCommand]
    private async Task CaptureSignature()
    {
        // TODO: Launch signature pad and save Base64
        SignatureBase64 = "dummybase64signature"; // Replace with actual signature
    }
}
