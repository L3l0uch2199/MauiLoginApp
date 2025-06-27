using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using AttendanceLoginSharedModels;

namespace AttendanceLoginAPI.Controllers;

[ApiController]
[Route("api/[controller]")]
public class UsersController : ControllerBase
{
    private readonly IConfiguration _configuration;

    public UsersController(IConfiguration configuration)
    {
        _configuration = configuration;
    }

    [HttpPost("register")]
    public async Task<IActionResult> Register([FromBody] UserModel user)
    {
        const string query = "INSERT INTO UsersTbl (Username, Email, Password) VALUES (@Username, @Email, @Password)";
        try
        {
            await using var conn = new SqlConnection(_configuration.GetConnectionString("DefaultConnection"));
            await conn.OpenAsync();

            await using var cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@Username", user.Username);
            cmd.Parameters.AddWithValue("@Email", user.Email);
            cmd.Parameters.AddWithValue("@Password", user.Password);

            await cmd.ExecuteNonQueryAsync();
            return Ok("User registered successfully.");
        }
        catch (Exception ex)
        {
            return BadRequest($"Registration failed: {ex.Message}");
        }
    }

    [HttpPost("login")]
    public async Task<IActionResult> Login([FromBody] UserModel user)
    {
        if (user.Username == "admin" && user.Password == "admin1234")
        {
            return Ok("admin");
        }

        const string query = "SELECT COUNT(*) FROM UsersTbl WHERE Username = @Username AND Password = @Password";
        try
        {
            await using var conn = new SqlConnection(_configuration.GetConnectionString("DefaultConnection"));
            await conn.OpenAsync();

            await using var cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@Username", user.Username);
            cmd.Parameters.AddWithValue("@Password", user.Password);

            var count = (int)await cmd.ExecuteScalarAsync();
            return count > 0 ? Ok("nonadmin") : Unauthorized("Invalid username or password.");
        }
        catch (Exception ex)
        {
            return BadRequest($"Login failed: {ex.Message}");
        }
    }

    [HttpGet("all")]
    public async Task<IActionResult> GetAllUsers()
    {
        var users = new List<UserModel>();
        const string query = "SELECT Username, Email FROM UsersTbl";

        try
        {
            await using var conn = new SqlConnection(_configuration.GetConnectionString("DefaultConnection"));
            await conn.OpenAsync();

            await using var cmd = new SqlCommand(query, conn);
            await using var reader = await cmd.ExecuteReaderAsync();

            while (await reader.ReadAsync())
            {
                users.Add(new UserModel
                {
                    Username = reader["Username"].ToString(),
                    Email = reader["Email"].ToString()
                });
            }

            return Ok(users);
        }
        catch (Exception ex)
        {
            return BadRequest($"Failed to load users: {ex.Message}");
        }
    }
}
