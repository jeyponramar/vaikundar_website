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
using System.Text;

public partial class download_akilathirattu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Redirect("under-construction.aspx");
        BindDocs();
    }
    private void BindDocs()
    {
        StringBuilder strDocs = new StringBuilder();
        strDocs.Append("<ul>");
        for (int i = 1; i < 17; i++)
        {
            string docName = global.GetDay(i) + " Edu Vasippu";
            strDocs.Append("<li><a href='doc/akilathirattu/"+i+".doc'>"+docName+"</a></li>");
        }
        strDocs.Append("</ul>");
        ltAkilathirattu.Text = strDocs.ToString();
    }
}
