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
using System.Text;
using System.IO;

public partial class view_videos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        bindVideos();
    }
    private void bindVideos()
    {
        DataTable dttbl = new DataTable();
        dttbl = global.ExecuteSelect("select * from tbl_post join tbl_user on userid=postedby where posttype=3 order by modifieddate desc");

        StringBuilder strhtml = new StringBuilder();
        string username = "";
        string title = "";
        string url = "";
        string postdate = "";
        int count = 0;
        for (int i = 1; i < dttbl.Rows.Count; i++)
        {
            username = Convert.ToString(dttbl.Rows[i]["username"]);
            title = Convert.ToString(dttbl.Rows[i]["title"]);
            postdate = Convert.ToString(dttbl.Rows[i]["postdate"]);
            url = Convert.ToString(dttbl.Rows[i]["url"]);
            
            if (url != "")
            {
                url = "<a class=\"media {width:300, height:250, type:'swf'}\" href='" + url + "'></a>";
                strhtml.Append("<div class='videobox' style='padding-right:20px;'><div class='songtitle left'>" + title + "</div>"
                + "<div class='lighttext right' style='padding-right:10px;'></br>" + username + "</div><div class='sspace'>&nbsp;</div>"
                + "<div class='video'>" + url + "</div>"
                + "<div class='sspace'>&nbsp;</div><div class='lighttext left'>" + postdate + "</div>"
                + "<div class='lighttext right'>&nbsp;</div></div>");
                if (count % 3 == 0)
                {
                  strhtml.Append("<div class='left width30'>&nbsp;</div>");
                }
                count++;
            }
            else
            {

                string id = Convert.ToString(dttbl.Rows[i]["postid"]);
                string folder = "upload/Videos/" + id + "/";
                if (Directory.Exists(Server.MapPath(folder)))
                {
                    DirectoryInfo dir = new DirectoryInfo(Server.MapPath(folder));
                    FileInfo[] files = dir.GetFiles();
                    StringBuilder strb = new StringBuilder();
                    for (int j = 1; j < files.Length; j++)
                    {
                        FileInfo file = (FileInfo)files.GetValue(j);
                        if (file.Name.ToLower() != "thumbs.db")
                        {
                            url = "<a class=\"media {width:300, height:250}\" href='upload/videos/" + id + "/" + file.Name + "'></a>";
                            strhtml.Append("<div class='videobox'><div class='songtitle left'>" + title + "</div>"
                            + "<div class='lighttext right'>" + username + "</div><div class='sspace'>&nbsp;</div>"
                            + "<div class='video'>" + url + "</div>"
                            + "<div class='sspace'>&nbsp;</div><div class='lighttext left'>" + postdate + "</div>"
                            + "<div class='lighttext right'><a href='download.aspx?file=upload/videos/" + id + "/" + file.Name + "'>download</a></div></div>");
                            if (count % 3 == 0)
                            {
                              strhtml.Append("<div class='left width30'>&nbsp;</div>");
                            }

                            count++;
                        }
                    }
                }

            }
            
        }
        ltvideos.Text = strhtml.ToString();
        //rptVideos.DataSource = dttbl;
        //rptVideos.DataBind();

    }
    public string GetVideos(int id)
    {
        string folder = "upload/Videos/" + id + "/";
        if (!Directory.Exists(Server.MapPath(folder))) return "";
        DirectoryInfo dir = new DirectoryInfo(Server.MapPath(folder));
        FileInfo[] files = dir.GetFiles();
        StringBuilder strb = new StringBuilder();
        for (int i = 0; i < files.Length; i++)
        {
            FileInfo file = (FileInfo)files.GetValue(i);
            if (file.Name.ToLower() != "thumbs.db")
            {
                strb.Append("<div class='Video'><a class='ymp-btn-page-play " + i + "' href='" + folder + file.Name + "' type=\"audio/mpeg\">" + file.Name + "</a></div>" +
                "<a href='download.aspx?file=" + folder + file.Name + "' target='_blank'><div class='download'>Download</div></a>" +
                "<div class='space'>&nbsp;</div>");
            }
        }

        return strb.ToString();
    }
}
