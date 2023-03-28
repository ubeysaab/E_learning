using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(E_learning1.Startup))]
namespace E_learning1
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
