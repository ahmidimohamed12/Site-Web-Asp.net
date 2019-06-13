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
    public partial class AjouterEmprunt : System.Web.UI.Page
    {
        public static SqlConnection cnx = new SqlConnection("data source=.;initial catalog=tri;integrated security=true");
        public static SqlCommand cmd = new SqlCommand("", cnx);
        protected void Page_Load(object sender, EventArgs e)
        {
            
        
        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            cmd.CommandText = string.Format("insert into emprunt values({0},{1},'{2}','{3}','{4}')", d1.SelectedValue, d2.SelectedValue, txtdtem.Text, txtdtrp.Text, txtdtref.Text);
            cnx.Open();
            int n = cmd.ExecuteNonQuery();
            if (n == 1)
            {
                this.Response.Write("<script>alert('Ajouter');</script>");
                txtdtem.Text = "";
                txtdtref.Text = "";
                txtdtrp.Text = "";
            }
            else
            {
                this.Response.Write("<script>alert('Pas Ajouter');</script>");
            }

            cnx.Close();
        }
    }
}