// 7.DATA BINDING WITH WEB CONTROLS
using System; using System.Data; 
namespace SimpleBind 
{ public partial class Default : System.Web.UI.Page 
{ protected void Page_Load(object sender, EventArgs e) 
{ 
DataTable dt = new DataTable(); dt.Columns.Add("Car Names"); dt.Columns.Add("Price"); 
dt.Rows.Add("Swift", "500000"); dt.Rows.Add("Triber", "900000"); dt.Rows.Add("BMW", "1900000"); dt.Rows.Add("Audi", "1500000"); 
GridView1.DataSource = dt; 
GridView1.DataBind(); 
} 
} 
} 
