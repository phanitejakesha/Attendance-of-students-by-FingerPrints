using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class addclass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            SqlConnection con = DBConnection.getConnection();
            String qry = "insert into class(class,teachername) VALUES ('" + TextBox1.Text.ToString() + "','" + TextBox4.Text.ToString() + "')";
            con.Open();
            SqlCommand com = new SqlCommand(qry, con);
            int n = com.ExecuteNonQuery();
            if (n == 0)
                Literal1.Text = "<h2>Class Details not added</h2>";
            else
                Literal1.Text = "<h2>Class detials added</h2>";

            TextBox1.Text = "";
            TextBox4.Text = "";
    

            con.Close();
        }
        catch (Exception ee)
        {
            Literal1.Text = "<h2>Error :" + ee.ToString() + "</h2>";
        }

    }
}

