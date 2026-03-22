// 5. WEB PAGE DESIGN USING RICH CONTROL
using System;
namespace WebApplication1
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                for (int y = 2000; y <= 2030; y++)
                    ddlYear.Items.Add(y.ToString());
                for (int m = 1; m <= 12; m++)
                    ddlMonth.Items.Add(m.ToString());
                ddlYear.SelectedValue = DateTime.Now.Year.ToString();
                ddlMonth.SelectedValue = DateTime.Now.Month.ToString();
            }
        }
        // MUST match OnSelectedIndexChanged="ChangeDate"
        protected void ChangeDate(object sender, EventArgs e)
        {
            Calendar1.VisibleDate =
                new DateTime(int.Parse(ddlYear.SelectedValue),
                             int.Parse(ddlMonth.SelectedValue), 1);
        }
        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            Label1.Text = "Selected Date: " +
                Calendar1.SelectedDate.ToShortDateString();
        }
    }
}
