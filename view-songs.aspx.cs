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
using System.IO;
using System.Text;

public partial class view_songs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        bindSongs();
    }
    private void bindSongs()
    {
        DataTable dttbl = new DataTable();
        dttbl = global.ExecuteSelect("select * from tbl_post join tbl_user on userid=postedby where posttype=2 order by modifieddate desc");

        //rptsongs.DataSource = dttbl;
        //rptsongs.DataBind();
        StringBuilder html = new StringBuilder();
        for (int i = 0; i < dttbl.Rows.Count; i++)
        {
            string songs = GetSongs(Convert.ToInt32(dttbl.Rows[i]["postid"]));
            if (songs != "")
            {
                html.Append("<div class='gridrow'>" +
                            "<div style='width:340px' class='songtitle'>" + Convert.ToString(dttbl.Rows[i]["title"]) + "</div>" +
                            "<div style='width:190px' class='lighttext'>" + Convert.ToString(dttbl.Rows[i]["username"]) + "</div>" +
                            "<div style='width:150px' class='lighttext'>" + Convert.ToString(dttbl.Rows[i]["postdate"]) + "</div>" +
                            "</div> " +
                            "<div class='space'>&nbsp;</div>" +
                            songs +
                            "<div class='space'>&nbsp;</div>" +
                            "<hr />");
            }
        }
        ltsongs.Text = html.ToString();
    }
    public string GetSongs(object obj)
    {
        int id = Convert.ToInt32(obj);
        string folder = "upload/songs/" + id + "/";
        if (!Directory.Exists(Server.MapPath(folder))) return "";
        DirectoryInfo dir = new DirectoryInfo(Server.MapPath(folder));
        FileInfo[] files = dir.GetFiles();
        if (files.Length == 0) return "";
        StringBuilder strb = new StringBuilder();
        for (int i = 0; i < files.Length; i++)
        {
            FileInfo file = (FileInfo)files.GetValue(i);
            if (file.Name.ToLower() != "thumbs.db")
            {
                //class="htrack"
                strb.Append("<div class='song'><a class='ymp-btn-page-play " + i + "' href='" + folder + file.Name + "' type=\"audio/mpeg\">" + file.Name + "</a></div>" +
                "<a href='download.aspx?file=" + folder + file.Name + "' target='_blank'><div class='download'>Download</div></a>" +
                "<div class='sspace'>&nbsp;</div>");
            }
        }

        return strb.ToString();
    }
}
