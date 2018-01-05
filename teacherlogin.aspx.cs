using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class teacherlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = DBConnection.getConnection();
            String qry = "Select * from teachers where teacherid='" + TextBox1.Text.ToString() + "' and password='" + TextBox2.Text.ToString() + "'";
            con.Open();
            SqlCommand com = new SqlCommand(qry, con);
            SqlDataReader dr = com.ExecuteReader();
            if (dr.Read())
            {
                Server.Transfer("teacherhome.aspx");

            }
            else
            {
                Literal1.Text = "<h2> user name and password incorrect </h2>";
            }
        }
        catch (Exception e1)
        {
            Literal1.Text = "<h2>error:" + e1 + "</h2>";
        }
    }
}