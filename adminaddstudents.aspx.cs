using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using MANTRA;
using System.IO;

public partial class adminaddstudents : System.Web.UI.Page
{
    MFS100 mfs100 ;
    protected void Page_Load(object sender, EventArgs e)
    {
        mfs100 = new MFS100();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            SqlConnection con = DBConnection.getConnection();
            String qry = "insert into students(rollno,name,fathername,address,phoneno,email,branch,year,sem,thumb,photo) VALUES ('" + TextBox1.Text.ToString() + "','" + TextBox2.Text.ToString() + "','" + TextBox3.Text.ToString() + "','" + TextBox4.Text.ToString() + "','" + TextBox5.Text.ToString() + "','" + TextBox6.Text.ToString() + "','" + DropDownList1.SelectedValue.ToString() + "'," + TextBox7.Text.ToString() + "," + DropDownList2.SelectedValue.ToString() + ",'" + FileUpload1.FileName.ToString ()+"','"+FileUpload2.FileName.ToString ()+"')";
            con.Open();
            SqlCommand com = new SqlCommand(qry, con);
            int n = com.ExecuteNonQuery();
            if (n == 0)
                Literal1.Text = "<h2>Student Details not added</h2>";
            else
                Literal1.Text = "<h2>Student detials added</h2>";

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
    protected void Button2_Click(object sender, EventArgs e)
    {
        //////////////  initializing machine

        DeviceInfo deviceInfo = null;
        int ret = mfs100.Init();
        if (ret != 0)
        {
            Literal1.Text = mfs100.GetErrorMsg(ret).ToString();
        }
        else
        {
            deviceInfo = mfs100.GetDeviceInfo(); if (deviceInfo != null)
            {
                //string scannerInfo = "SERIAL NO.: " + deviceInfo.SerialNo + " MAKE: " + deviceInfo.Make + " MODEL: " + deviceInfo.Model; lblSerial.Text = scannerInfo;
            }
            else
            {
                //lblSerial.Text = ""; 
            }
            Literal1.Text = mfs100.GetErrorMsg(ret).ToString();
        }


        /////////////////// capturing finger
        FingerData fingerprintData = null;
        int timeout = 300000;
        string datapath = "c:\\fingerprints\\";
        int ret1 = mfs100.AutoCapture(ref fingerprintData, timeout, false, false);
        if (ret1 != 0)
        {
            Literal1.Text = mfs100.GetErrorMsg(ret1).ToString();
        }
        else
        {
            string info = "Quality: " + fingerprintData.Quality.ToString() + "     Nfiq: " + fingerprintData.Nfiq.ToString() + "     Bpp: " + fingerprintData.Bpp.ToString() + "     GrayScale:" + fingerprintData.GrayScale.ToString() + "\nW(in):" + fingerprintData.InWidth.ToString() + "     H(in):" + fingerprintData.InHeight.ToString() + "     area(in):" + fingerprintData.InArea.ToString() + "     Dpi/Ppi:" + fingerprintData.Resolution.ToString() + "     Compress Ratio:" + fingerprintData.WSQCompressRatio.ToString();
            //lblStatus.Text = info;
            //b[count++] = fingerprintData.ISOTemplate;

            File.WriteAllBytes(datapath + "//ISOTemplate.iso", fingerprintData.ISOTemplate);
            File.WriteAllBytes(datapath + "//ISOImage.iso", fingerprintData.ISOImage);
            File.WriteAllBytes(datapath + "//AnsiTemplate.ansi", fingerprintData.ANSITemplate);
            File.WriteAllBytes(datapath + "//RawData.raw", fingerprintData.RawData);
            fingerprintData.FingerImage.Save(datapath + "//FingerImage.bmp", System.Drawing.Imaging.ImageFormat.Bmp);
            File.WriteAllBytes(datapath + "//WSQImage.wsq", fingerprintData.WSQImage);
            //ShowMessage("Capture Success.\nFinger data is saved at application path", false);
            Literal1.Text="<script language='javascript'>window.alert('finger  captured');</script>";
        }

        //////////////////


    }
}

