using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        captcha1.ValidateCaptcha(TextBox2.Text.Trim());
        if (captcha1.UserValidated)
        {
            Label1.ForeColor = System.Drawing.Color.Green;
            Label1.Text = "You have Entered Valid Captcha Characters";
        }
        else
        {
            Label1.ForeColor = System.Drawing.Color.Red;
            Label1.Text = "You have Entered InValid Captcha Characters please Enter again";
        }
    }
}