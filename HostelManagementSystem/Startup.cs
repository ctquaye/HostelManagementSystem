using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(HostelManagementSystem.Startup))]
namespace HostelManagementSystem
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
