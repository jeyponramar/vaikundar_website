using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Text;
using System.Media;
public partial class songs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindSongs("Songs/Chattu Needolai", ltChattuSongs);
        BindSongs("Songs/Thechanathu Thenmangu", ltThechanthuThenmangu);
        PlaySong();
    }
    private void BindSongs(string path, Literal lt)
    {
        StringBuilder strSongs = new StringBuilder();
        try
        {
            string folder = Server.MapPath(path);
            DirectoryInfo dir = new DirectoryInfo(folder);
            FileInfo[] files = dir.GetFiles();
            
            for (int i = 0; i < files.Length; i++)
            {
                string zipfilepath = "";
                try
                {

                    FileInfo fl = (FileInfo)files.GetValue(i);
                    
                    if (path == "Songs/Chattu Needolai")
                    {
                        zipfilepath = "Songs/Zip/Chattu Needolai/" + fl.Name.Replace(" ", "_").Replace("mp3", "zip");
                    }
                    else
                    {
                        zipfilepath = "Songs/Zip/Thechanathu Thenmangu/" + fl.Name.Replace(" ", "_").Replace("mp3", "zip");
                    }

                    string length = global.GetFileSize(zipfilepath);

                    strSongs.Append("<div style='width:400px;float:left' class='song'><a class='ymp-btn-page-play " + i + "' type=\"audio/mpeg\" href='" + path + "/" + files.GetValue(i).ToString() + "'>" + files.GetValue(i).ToString() + "</a></div>");
                    strSongs.Append("<div style='width:200px;float:left'>" + length + "</div>");
                    strSongs.Append("<div style='width:100px;float:left'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='" + zipfilepath + "'>Download</a></div>");
                    strSongs.Append("<div style='clear:both'>&nbsp;</div>");
                }
                catch 
                {
                    //Response.Write(zipfilepath+"<br/>");
                }
            }
            //lt.Text = strSongs.ToString();
        }
        catch
        {
        }
        finally
        {
            lt.Text = strSongs.ToString();
        }
    }
    private void PlaySong()
    {
        if (Request.QueryString["song"] == null)
        {
            player.Visible = false;
        }
        else
        {
            player.Visible = true;
            player.Attributes.Add("src", Request.QueryString["song"]);
        }
    }
}
