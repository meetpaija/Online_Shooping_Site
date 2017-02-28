using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Online_shopping_system.Startup))]
namespace Online_shopping_system
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
