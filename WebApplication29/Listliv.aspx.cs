using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication29
{
    public partial class Listliv : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["log"] != "")
            {

            }
            else
            {
                Session["log"] = "";
                Session["pas"] = "";
                this.Response.Redirect("~/Auth.aspx");
            }
        }

        protected void Unnamed1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
           // this.Response.Write(dgv.Rows[e.RowIndex].Cells[1].Text);
            ds.DeleteParameters[0].DefaultValue = dgv.Rows[e.RowIndex].Cells[1].Text;
        }

        protected void dgv_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
           // this.Response.Write(e.NewValues[0].ToString());
            
            ds.UpdateParameters[0].DefaultValue = e.NewValues[1].ToString();
            ds.UpdateParameters[1].DefaultValue = e.NewValues[2].ToString();
            ds.UpdateParameters[2].DefaultValue = e.NewValues[3].ToString();
            ds.UpdateParameters[3].DefaultValue = e.NewValues[4].ToString();
            ds.UpdateParameters[4].DefaultValue = e.NewValues[0].ToString();
        }
    }
}