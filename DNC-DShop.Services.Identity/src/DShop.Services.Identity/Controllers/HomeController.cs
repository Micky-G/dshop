using Microsoft.AspNetCore.Mvc;

namespace DShop.Services.Identity.Controllers
{
    [Route("")]
    public class HomeController : ControllerBase
    {
        [HttpGet]
        public IActionResult Get() => Ok("DShop Identity Service");

        [HttpGet("ping")]
        public IActionResult Ping() => Ok("pong");
    }
}