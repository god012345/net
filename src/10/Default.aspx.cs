// 10.DATABASE APPLICATION USING DATA CONTROLS 
using System;
using System.Data;

namespace WebApplication1
{
    public partial class Default : System.Web.UI.Page
    {
        DataTable dt;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CreateTable();
                BindGrid();
            }
        }

        void CreateTable()
        {
            dt = new DataTable();
            dt.Columns.Add("Id");
            dt.Columns.Add("Name");
            dt.Columns.Add("Department");
            dt.Columns.Add("Marks");

            dt.Rows.Add("1", "Ravi", "CSE", "85");
            dt.Rows.Add("2", "Anu", "ECE", "78");
            dt.Rows.Add("3", "Kumar", "IT", "90");
            dt.Rows.Add("4", "Priya", "MECH", "88");

            ViewState["StudentData"] = dt;
        }

        void BindGrid()
        {
            GridView1.DataSource = ViewState["StudentData"] as DataTable;
            GridView1.DataBind();
        }

        protected void GridView1_PageIndexChanging(object sender, System.Web.UI.WebControls.GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            BindGrid();
        }

        protected void GridView1_RowEditing(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            BindGrid();
        }

        protected void GridView1_RowCancelingEdit(object sender, System.Web.UI.WebControls.GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            BindGrid();
        }

        protected void GridView1_RowUpdating(object sender, System.Web.UI.WebControls.GridViewUpdateEventArgs e)
        {
            dt = ViewState["StudentData"] as DataTable;

            string name = ((System.Web.UI.WebControls.TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
            string dept = ((System.Web.UI.WebControls.TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
            string marks = ((System.Web.UI.WebControls.TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text;

            dt.Rows[e.RowIndex]["Name"] = name;
            dt.Rows[e.RowIndex]["Department"] = dept;
            dt.Rows[e.RowIndex]["Marks"] = marks;

            ViewState["StudentData"] = dt;

            GridView1.EditIndex = -1;
            BindGrid();
        }
    }
}
