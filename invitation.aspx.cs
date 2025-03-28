using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class invitation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["id"].Contains("."))
        {
            imginvitation.ImageUrl = "images/invitation/" + Request.QueryString["id"];
        }
        else
        {
            imginvitation.ImageUrl = "images/invitation/" + Request.QueryString["id"] + ".jpg";
        }
    }
}
