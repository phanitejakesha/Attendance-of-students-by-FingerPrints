using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class viewattendancehtno : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        try
        {
            SqlConnection con = DBConnection.getConnection();
            String qry = "Select * from attendance where rollno='" + TextBox1.Text.ToString()+"'" ;
            SqlDataAdapter da = new SqlDataAdapter(qry, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "attendance");

            GridView1.DataSource = ds;
            GridView1.DataMember = "attendance";
            GridView1.DataBind();
                    }
        catch (Exception e1)
        {
            Literal1.Text = "<h2>error:" + e1 + "</h2>";
        }

    }
}