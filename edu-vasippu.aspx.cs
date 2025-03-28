using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.IO;

public partial class edu_vasippu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindSongs();
        if (Request.QueryString["day"] == null)
        {
            divPlayer.Visible = false;
        }
        else 
        {
            divPlayer.Visible = true;
            string url = "videos/edu vasippu/" + Request.QueryString["day"] + "/" + Request.QueryString["song"]+".wmv";
            player.Attributes.Add("src", url);
            lnkDownload.NavigateUrl = "songs/zip/edu vasippu/" + Request.QueryString["day"] + ".zip";
        }
    }
    private void BindSongs()
    {
        StringBuilder strSongs = new StringBuilder();
        for (int i = 1; i <= 17; i++)
        {
            int end = 0;
            if (i < 8) end = 4;
            else if (i < 17) end = 6;
            else end = 5;

            string highlength = global.GetFileSize("songs/zip/edu vasippu/" + i + ".zip");
            string lowlength = global.GetFileSize("songs/zip/edu-vasippu-low-quality/" + i + ".zip");
            
            strSongs.Append("<div class='heading'>" + global.GetDay(i) + "</div>");
            strSongs.Append("<div style='float:right'><a href='songs/zip/edu-vasippu-low-quality/" + i + ".zip' class='error'>Download - Low Quality File("+lowlength+")</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
            strSongs.Append("<a href='songs/zip/edu vasippu/" + i + ".zip'>Download - High Quality File(" + highlength + ")</a></div><div style='clear:both'>&nbsp;</div>");
            for (int j = 1; j <= end; j++)
            {
                strSongs.Append("<div style='width:100%;border:0px solid;'>");
                strSongs.Append("<div style='float:left;width:40%'><a href='edu-vasippu.aspx?day=" + i + "&song=" + j + "'>Part " + j + "</a></div>");
                strSongs.Append("<div style='float:left;'><a href='edu-vasippu.aspx?day=" + i + "&song=" + j + "'>Play Sample</a></div>");
                strSongs.Append("</div>");
                strSongs.Append("<div style='clear:both'>&nbsp;</div>");
            }
            //strSongs.Append("<li style=\"display: inline;\"><a href='songs/zip/edu vasippu/" + i + ".zip'>Download Full Song</a></li>");
        }
        ltSongs.Text = strSongs.ToString();
    }

    private void BindSongs1()
    {
        StringBuilder strSongs = new StringBuilder();
        strSongs.Append("<ul>");
        for (int i = 1; i <= 17; i++)
        {
            int end = 0;
            if (i < 8) end = 4;
            else if (i < 17) end = 6;
            else end = 5;
            strSongs.Append("<li style='font-weight:bold;'>" + global.GetDay(i) + "</li>");
            strSongs.Append("<ul style=\"margin:10px;\">");
            for (int j = 1; j <= end; j++)
            {
                strSongs.Append("<li style=\"display: inline;\"><a href='edu-vasippu.aspx?day="+i+"&song="+j+"'>Part " + j + "</a></li>");
            }
            strSongs.Append("<li style=\"display: inline;\"><a href='songs/zip/edu vasippu/"+i+".zip'>Download Full Song</a></li>");
            strSongs.Append("</ul>");
        }
        strSongs.Append("</ul>");
        ltSongs.Text = strSongs.ToString();
    }
}
