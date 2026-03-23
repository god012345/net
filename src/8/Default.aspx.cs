// 8. VALIDATION CONTROL
using System;

namespace Input_validation_control
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                lblMessage.Text = "Registration Successful!";
            }
        }
    }
}