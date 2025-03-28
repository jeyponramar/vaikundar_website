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

public partial class view_photos : System.Web.UI.Page
{
    public string ImageUrl = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        bindphotos();
    }
    private void bindphotos()
    {
        DataTable dttbl = getAlbums();
        //rptalbums.DataSource = dttbl;
        //rptalbums.DataBind();
        StringBuilder html = new StringBuilder();

        //DirectoryInfo dir = new DirectoryInfo(Server.MapPath("images/photo-gallery/bed-room/thumbnail"));

        int count = 1;
        for(int i=0;i<dttbl.Rows.Count;i++)
        {
            bool photosExists = false;
            int id = Convert.ToInt32(dttbl.Rows[i]["postid"]);
            string folder = "upload/photos/" + id + "/";
            if (Directory.Exists(Server.MapPath(folder)))
            {
                DirectoryInfo dir = new DirectoryInfo(Server.MapPath(folder));
                FileInfo[] files = dir.GetFiles();
                StringBuilder strb = new StringBuilder();

                DateTime dt = Convert.ToDateTime(dttbl.Rows[i]["postdate"]);
                string date = dt.Day + "-" + dt.Month + "-" + dt.Year;
                string uploadedBy = Convert.ToString(dttbl.Rows[i]["username"]) + "&nbsp;("+date+")";
                for (int j = 0; j < files.Length; j++)
                {
                    if (files[j].Name.ToLower() != "thumbs.db")
                    {
                        if (count % 4 == 1)
                        {
                            html.Append("<tr>");
                        }
                        string title = Convert.ToString(dttbl.Rows[i]["title"]);
                        string stitle=title;
                        if (title.Length > 100)
                        {
                            stitle = title.Substring(0, 100) + "...";
                        }
                        html.Append("<td style='padding:5px;vertical-align:top;'><table>"+
                        "<tr><td style='font-size:12px;font-weight:bold;width:200px;'>"+stitle+"</td></tr>"
                        +"<tr><td>"
                        + "<a href=\"" + folder + files[j].Name + "\" rel=\"prettyPhoto[gallery]\">"
                            + "<img title='"+title+"' src=\"" + folder + "thumb\\" + files[j].Name + "\" width='200' class='scorner'/>"
                        + "</a></td></tr>"
                        +"<tr><td style='font-size:12px;'>"+uploadedBy+"</td></tr>"
                        +"</table>"
                        + "</td>");

                        if (count % 4 == 0)
                        {
                            html.Append("</tr>");
                        }
                        count++;
                    }
                }
            }
        }
        string strhtml = html.ToString();
        if (!strhtml.EndsWith("</tr>")) strhtml = strhtml + "</tr>";
        photos.Text = strhtml;

    }
    public string GetAlubmPhotos(object data)
    {
        ImageUrl = "";
        int id = Convert.ToInt32(data);
        string folder = "upload/photos/" + id + "/";
        if (!Directory.Exists(Server.MapPath(folder))) return "";
        DirectoryInfo dir = new DirectoryInfo(Server.MapPath(folder));
        FileInfo[] files = dir.GetFiles();
        StringBuilder strb = new StringBuilder();
        for(int i=0;i<files.Length;i++)
        {
            if (files[i].Name.ToLower() != "thumbs.db")
            {
                if (ImageUrl == "")
                {
                    strb.Append(files[i].Name);
                    ImageUrl = folder + files[i].Name;
                }
                else
                {
                    strb.Append("," + files[i].Name);
                }
            }
        }
        return strb.ToString();
    }
    private DataTable getAlbums()
    {
        DataTable dttbl = new DataTable();
        dttbl = global.ExecuteSelect("select * from tbl_post p join tbl_user u on u.userid=p.postedby where posttype=1 order by modifieddate desc");
        return dttbl;
    }
}
