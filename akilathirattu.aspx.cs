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
using System.Data.SqlClient;

public partial class akilathirattu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Redirect("under-construction.aspx");
        if(!Page.IsPostBack) BindData(9);
        if (Request.QueryString["pageno"] != null)
        {
            try
            {
                BindData(Convert.ToInt32(Request.QueryString["pageno"]));
            }
            catch { }
        }
        BindTotalPages();
    }
    protected void btnGo_Onclick(object sender, EventArgs e)
    {
        try
        {
            BindData(Convert.ToInt32(txtPageNumber.Text));
        }
        catch { }
    }
    private void BindTotalPages()
    {
        lblTotal.Text = "490";
        //btnGo.Attributes.Add("onclick", "return ValidatePageNo(" + lblTotal.Text + ",'"+txtPageNumber.ClientID+"')");
    }
    private void BindData(int pageno)
    {
        if (pageno == 22 || pageno == 62 || pageno == 86 || pageno == 244 || pageno == 275)
        {
            Response.Redirect("akilathirattu.aspx?pageno=" + (pageno + 1));
        }
        else if (pageno < 9)
        {
            Response.Redirect("akilathirattu.aspx?pageno=9");
        }
        //txtPageNumber.Text = pageno.ToString();
        lblPageNumber.Text = pageno.ToString();
        lblError.Visible = false;
        if (System.IO.File.Exists(Server.MapPath("images/akilathirattu/song/" + pageno + ".gif"))
            || System.IO.File.Exists(Server.MapPath("images/akilathirattu/description/" + pageno + ".gif")))
        {
            img1.ImageUrl = "images/akilathirattu/song/" + pageno + ".gif";
            //img2.ImageUrl = "images/akilathirattu/description/" + pageno + ".gif";
            lnkNext.NavigateUrl = "akilathirattu.aspx?pageno=" + (pageno + 1);
            if (pageno <= 1)
                lnkPrev.NavigateUrl = "akilathirattu.aspx?pageno=1";
            else
                lnkPrev.NavigateUrl = "akilathirattu.aspx?pageno=" + (pageno - 1);
        }
        else
        {
            lblError.Visible = true;
        }
    }
}
