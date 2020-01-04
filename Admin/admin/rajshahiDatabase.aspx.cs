using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_rajshahiDatabase : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        { 
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
        }
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        GridView1.DataSource = SqlDataSource1;
        GridView1.DataBind();
        Label6.Text = "";
        GridView1.EditRowStyle.BackColor = System.Drawing.Color.Orange;
    }

    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        GridView1.DataSource = SqlDataSource1;
        GridView1.DataBind();
        Label6.Text = "";
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        Label id = GridView1.Rows[e.RowIndex].FindControl("Label5") as Label;
        TextBox year = GridView1.Rows[e.RowIndex].FindControl("TextBox1") as TextBox;
        TextBox production = GridView1.Rows[e.RowIndex].FindControl("TextBox2") as TextBox;

        String mycon = "Data Source=.\\SQLEXPRESS;AttachDbFilename=D:\\ASP CHARTS\\Admin\\App_Data\\RiceDatabase.mdf;Integrated Security=True;User Instance=True";
        String updatedata = "update Rajshahi set year='" + year.Text + "', production='" + production.Text + "' where id=" + id.Text;

        SqlConnection con = new SqlConnection(mycon);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = updatedata;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();

        Label6.Text = "Row Data Has Been Updated Successfully";
        GridView1.EditIndex = -1;
        SqlDataSource1.DataBind();
        GridView1.DataSource = SqlDataSource1;
        GridView1.DataBind();
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label id = GridView1.Rows[e.RowIndex].FindControl("Label2") as Label;
        String mycon = "Data Source=.\\SQLEXPRESS;AttachDbFilename=D:\\ASP CHARTS\\Admin\\App_Data\\RiceDatabase.mdf;Integrated Security=True;User Instance=True";
        String updatedata = "delete from Rajshahi where id=" + id.Text;

        SqlConnection con = new SqlConnection(mycon);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = updatedata;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();

        Label6.Text = "Row Data Has Been Deleted Successfully";
        GridView1.EditIndex = -1;
        SqlDataSource1.DataBind();
        GridView1.DataSource = SqlDataSource1;
        GridView1.DataBind();
    }
}