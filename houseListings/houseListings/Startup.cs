using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(houseListings.Startup))]
namespace houseListings
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
