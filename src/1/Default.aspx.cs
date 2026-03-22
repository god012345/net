// 1. IMPLEMENT THE HTML CONTROLS
using System;
namespace HtmlControlsDemo
{
    public partial class Default : System.Web.UI.Page
    {
        protected void btnSubmit_ServerClick(object sender, EventArgs e)
        {
            result.InnerText = "Welcome " + txtName.Value;
        }
    }
}
