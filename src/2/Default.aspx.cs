// 2. IMPLEMENT THE SERVER CONTROLS
using System;
using System.Web.UI;
namespace ServerControl
{
 public partial class Default : Page
{
 protected void Button1_Click(object sender, EventArgs e)
 {
   Label2.Text = "Welcome " + TextBox1.Text;
  }
  }
  }
