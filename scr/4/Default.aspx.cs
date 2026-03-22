// 4. WEB APPLICATION USING LIST CONTROLS
using System;
         using System.Text;
        using System.Web.UI.WebControls;
         namespace ListControlsDemo
        {
        public partial class Default : System.Web.UI.Page
       {
       protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
   {
   StringBuilder result = new StringBuilder();
   result.Append("Department: " + ddlDept.SelectedItem.Text + "<br/>");
   result.Append("Gender: " + rblGender.SelectedItem.Text + "<br/>");
   result.Append("Skills: ");
   foreach (ListItem item in cblSkills.Items)
   {
   if (item.Selected)
   {
   result.Append(item.Text + " ");
   }
   }
  lblResult.Text = result.ToString();
  }
  }
  }
