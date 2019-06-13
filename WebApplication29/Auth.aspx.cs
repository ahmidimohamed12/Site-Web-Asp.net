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
    public partial class Auth : System.Web.UI.Page
    {
        public static SqlConnection cnx = new SqlConnection("data source=.;initial catalog=tri;integrated security= true");
        public static SqlCommand cmd = new SqlCommand("", cnx);
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["log"] = "";
            Session["pas"] = "";
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            cmd.CommandText = "select logg,pass from admi";
            cnx.Open();
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                if (dr[0].Equals(txtlog.Text) && dr[1].Equals(txtpas.Text))
                {
                    Session["log"] = dr[0].ToString();
                    Session["pas"] = dr[1].ToString();

                    cnx.Close();
                    this.Response.Redirect("~/Menu.aspx");
                    break;
                }
            }


        }
    }
}