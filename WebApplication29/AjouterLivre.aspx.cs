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
    public partial class AjouterLivre : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public static SqlConnection cnx = new SqlConnection("data source=.;initial catalog=tri;integrated security=true");
        public static SqlCommand cmd = new SqlCommand("", cnx);
        protected void btnadd_Click(object sender, EventArgs e)
        {
            cmd.CommandText = string.Format("insert into livre values('{0}','{1}','{2}','{3}')",txtlb.Text,txtaut.Text,txted.Text,txtanner.Text);
            cnx.Open();
            int n = cmd.ExecuteNonQuery();
            if (n == 1)
            {
                this.Response.Write("<script>alert('Ajouter');</script>");
                txtlb.Text = "";
                txtaut.Text = "";
                txted.Text = "";
                txtanner.Text = "";
            }
            else
            {
                this.Response.Write("<script>alert('Pas Ajouter');</script>");
            }

            cnx.Close();
        }
    }
}