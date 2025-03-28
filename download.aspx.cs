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

public partial class download : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string filepath = Request.QueryString["file"];
        System.IO.FileInfo file = new System.IO.FileInfo(Server.MapPath(filepath));
        HttpContext.Current.Response.Clear();
        HttpContext.Current.Response.AddHeader("content-disposition", "attachment; filename=" + file.Name.Replace(" ","_"));
        HttpContext.Current.Response.AddHeader("content-length", file.Length.ToString());
        //if (filepath.Contains(".mp3"))
        {
         //   HttpContext.Current.Response.ContentType = "audio/x-mp3";
        }
        //else
        {
            HttpContext.Current.Response.ContentType = "application/octet-stream";
        }
        HttpContext.Current.Response.WriteFile(file.FullName);
    }
}
