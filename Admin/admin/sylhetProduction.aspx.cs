using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Data.OleDb;
using System.Data.Common;


public partial class admin_sylhetProduction : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\ASP CHARTS\Admin\App_Data\RiceDatabase.mdf;Integrated Security=True;User Instance=True");
    int i;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void b1_Click(object sender, EventArgs e)
    {
        i = 0;

        con.Open();

        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into Sylhet values('"+"a"+"','"+"b"+"')"; // a = t1.text; b = t2.text;
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("testing.aspx");
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        int p;
        String y;
        
        string path = Path.GetFileName(FileUpload1.FileName);
        path = path.Replace(" ", "");
        FileUpload1.SaveAs(Server.MapPath("~/ExcelFile/") + path);
        String ExcelPath = Server.MapPath("~/ExcelFile/") + path;
        OleDbConnection mycon = new OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = " + ExcelPath + "; Extended Properties=Excel 8.0; Persist Security Info = False");
        mycon.Open();
        OleDbCommand cmd = new OleDbCommand("select * from [Sheet1$]", mycon);
        OleDbDataReader dr = cmd.ExecuteReader();

        con.Open();
        SqlCommand cmd1 = con.CreateCommand();

        cmd1.CommandType = CommandType.Text;
        cmd1.CommandText = "truncate table Sylhet";
        cmd1.ExecuteNonQuery();

        while (dr.Read())
        {
            y = dr[0].ToString();
            p = Convert.ToInt32(dr[1].ToString());

            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = "insert into Sylhet (Year, Production) values('" + y + "','" + p + "')";

            cmd1.ExecuteNonQuery();
            
        }

        con.Close();
        Label1.Text = "Data Has Been Saved Successfully";

        Response.Redirect("sylhetDatabase.aspx");
    }

}