using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class homepage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SetIamge();
        }
    }
   

    private void SetIamge()
    {
        Random rn = new Random();
        int i = rn.Next(1, 5);
        Image2.ImageUrl = "~/image/slider" + i.ToString() + ".jpg";
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        SetIamge();
    }
}