using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ButSearch_Click(object sender, EventArgs e)
    {
        TextSearch.Attributes["style"] = "color:red; font-weight:bold;";

        String myStr = "Year/y";
        String str = TextSearch.Text;
        myStr += str;
        myStr += ".aspx";

        String st1 = str.ToLower();
        if (st1[0] == 's' || st1[0] == 'd' || st1[0] == 'c' || st1[0] == 'b' || st1[0] == 'r' || st1[0] == 'k')
        {
            String st = "";
            String myStr1 = "All.aspx";

            for (int i = 0; i < 3; i++) {
                st += st1[i];
            }

            st += myStr1;
            Response.Redirect(st);
        }

        int year = Int32.Parse(str);
        if (year >= 2008 && year <= 2014)
        {
            Response.Redirect(myStr);
        }

        else {
            Response.Write("<script>alert('This year is not available now..')</script>");
        }

        
    }
}
