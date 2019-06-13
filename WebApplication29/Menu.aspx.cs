using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication29
{
    public partial class Menu : System.Web.UI.Page
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
    }
}