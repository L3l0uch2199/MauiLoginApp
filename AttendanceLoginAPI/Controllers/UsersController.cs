using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using System.Data;
using AttendanceLoginSharedModels;

namespace AttendanceLoginAPI.Controllers
{
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
            string query = "INSERT INTO UsersTbl (Username, Email, Password) VALUES (@Username, @Email, @Password)";
            await using var conn = new SqlConnection(_configuration.GetConnectionString("DefaultConnection"));
            await using var cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@Username", user.Username);
            cmd.Parameters.AddWithValue("@Email", user.Email);
            cmd.Parameters.AddWithValue("@Password", user.Password);

            try
            {
                await conn.OpenAsync();
                await cmd.ExecuteNonQueryAsync();
                return Ok("User registered successfully.");
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        [HttpPost("login")]
        public async Task<IActionResult> Login([FromBody] UserModel user)
        {
            if (user.Username == "admin" && user.Password == "admin1234")
            {
                return Ok("admin");
            }

            string query = "SELECT COUNT(*) FROM UsersTbl WHERE Username = @Username AND Password = @Password";
            await using var conn = new SqlConnection(_configuration.GetConnectionString("DefaultConnection"));
            await using var cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@Username", user.Username);
            cmd.Parameters.AddWithValue("@Password", user.Password);

            try
            {
                await conn.OpenAsync();
                int count = (int)await cmd.ExecuteScalarAsync();
                if (count > 0)
                {
                    return Ok("nonadmin");
                }
                else
                {
                    return Unauthorized("Invalid username or password.");
                }
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        [HttpGet("all")]
        public async Task<IActionResult> GetAllUsers()
        {
            List<UserModel> users = new();
            string query = "SELECT Username, Email FROM UsersTbl";
            await using var conn = new SqlConnection(_configuration.GetConnectionString("DefaultConnection"));
            await using var cmd = new SqlCommand(query, conn);

            try
            {
                await conn.OpenAsync();
                using var reader = await cmd.ExecuteReaderAsync();
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
                return BadRequest(ex.Message);
            }
        }
    }
}