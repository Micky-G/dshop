using Microsoft.AspNetCore.Mvc;

namespace DShop.Services.Notifications.Controllers
{
    [Route("")]
    public class HomeController : ControllerBase
    {
        [HttpGet]
        public IActionResult Get() => Ok("DShop Notifications Service");

        [HttpGet("ping")]
        public IActionResult Ping() => Ok("pong");
    }
}