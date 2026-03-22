// 3. WEB APPLICATION USING WEB CONTROLS
using System; using System.Web.UI; 
 
namespace webcontrols 
{ 
    public partial class Default : Page 
    { 
        protected void btnSubmit_Click(object sender, EventArgs e) 
        { 
            lblOutput.Text = 
            "Name: " + txtName.Text + "<br/>" + 
            "DOB: " + txtDob.Text + "<br/>" + 
            "Gender: " + (rbMale.Checked ? "Male" : "Female") + "<br/>" + 
            "Email: " + txtEmail.Text + "<br/>" + 
            "Course: " + ddlCourse.SelectedItem.Text + "<br/>" + 
            "Skills: " + txtSkills.Text; 
        } 
    } 
}
