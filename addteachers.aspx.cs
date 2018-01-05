using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class addteachers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
                 try
            {
                SqlConnection con = DBConnection.getConnection();
                String qry = "insert into teachers(name,phone,email,address,teacherid,password,branch,photo) VALUES ('" + TextBox1.Text.ToString() + "','" + TextBox2.Text.ToString() + "','" + TextBox3.Text.ToString() + "','" + TextBox4.Text.ToString() + "','" + TextBox5.Text.ToString() + "','" + TextBox6.Text.ToString() + "','" + DropDownList1.SelectedValue.ToString() + "','" + FileUpload2.FileName.ToString() + "')";
                con.Open();
                SqlCommand com = new SqlCommand(qry, con);
                int n = com.ExecuteNonQuery();
                if (n == 0)
                    Literal1.Text = "<h2>teacher Details not added</h2>";
                else
                    Literal1.Text = "<h2>teacher detials added</h2>";
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";

                con.Close();
            }
            catch (Exception ee)
            {
                Literal1.Text = "<h2>Error :" + ee.ToString() + "</h2>";
            }

        
    }
}

