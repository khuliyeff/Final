using System.Web.Mvc;

namespace eli_mubu.Areas.manage
{
    public class manageAreaRegistration : AreaRegistration 
    {
        public override string AreaName 
        {
            get 
            {
                return "manage";
            }
        }

        public override void RegisterArea(AreaRegistrationContext context) 
        {
            context.MapRoute(
                "manage_default",
                "manage/{controller}/{action}/{id}",
                new { controller = "Home", action = "Index", id = UrlParameter.Optional },
                new[] { "eli_mubu.Areas.manage.Controllers" }
                
            );
        }
    }
}