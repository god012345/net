// 6.WEB APPLICATION USING DATA CONTROLS
using System;
using System.Data;

namespace DataListDemo
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();

                dt.Columns.Add("ID");
                dt.Columns.Add("Name");
                dt.Columns.Add("Course");

                dt.Rows.Add("101", "Arun", "BCA");
                dt.Rows.Add("102", "Priya", "BSc");
                dt.Rows.Add("103", "Kumar", "BCom");

             DataList1.DataSource = dt;
                DataList1.DataBind();
            }
        }
    }
}

