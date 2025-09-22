using Microsoft.AspNetCore.Mvc;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace WebApplication1.Controllers
{
    [Route("api")]
    [ApiController]
    public class ApiController : ControllerBase
    {
        // GET: api/<ApiController>
       
        private List<Dictionary<string, string>> student_dict = new List<Dictionary<string, string>>
        {
          new Dictionary<string, string>{{"id","1"},{"name","Sachin"}},
          new Dictionary<string, string>{{"id","2"},{"name","Rahul"}},
        };

        [HttpGet]
        public IActionResult GetAllStudent()
        {
            return new JsonResult(student_dict);
        }
        // GET api/<ApiController>/5
        [HttpGet("{id}")]
        public IActionResult GetAllStudentbyID(string id)
        {
            var student_details = student_dict.FirstOrDefault(p => p["id"] == id);
            return new JsonResult(student_details);
        }


        // POST api/<ApiController>
        [HttpPost]
        public void Post([FromBody] string value)
        {
        }

        // PUT api/<ApiController>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/<ApiController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
