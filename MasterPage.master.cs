using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using System.Net.Mail;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ////Application["Total_Visits"] = 75;
        //if (Session["Site_Visited"] == null)
        //{
        //    Session["Site_Visited"] = true;
        //    if (Application["Total_Visits"] == null)
        //        Application["Total_Visits"] = Convert.ToInt32(Application["Total_Visits"]) + 1;
        //}
        //lblTotalVisits.Text = Convert.ToString(Application["Total_Visits"]);
    }
}
