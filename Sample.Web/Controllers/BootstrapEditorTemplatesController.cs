using BootstrapEditorTemplatesNameSpace.Models;
using System.Web.Mvc;

namespace BootstrapEditorTemplatesNameSpace.Controllers
{
    public class BootstrapEditorTemplatesController : Controller
    {
        [HttpGet]
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Index(Inputs model)
        {
            if (ModelState.IsValid)
            {
                ViewBag.Message = "All inputs are Valid!";
            }
            return View(model);
        }
    }
}
