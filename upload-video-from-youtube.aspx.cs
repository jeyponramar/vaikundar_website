using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

public partial class upload_video_from_youtube : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (global.UserId == 0) Response.Redirect("login.aspx?url=upload-video-from-youtube.aspx");

    }
    protected void lnkplay_click(object o, EventArgs e)
    {
        player.NavigateUrl = Geturl();
    }
    private string Geturl()
    {
        string url = txturl.Text;
        if (url.Trim() == "")
        {
            lblerror.Text = "Please enter youtube video url";
            txturl.Focus();
            return "http://youtube.com/v/RBQKPunelf4";
        }
        string youtubeurl = "";
        if (url.Contains("/v/"))
        {
            //http://youtube.com/v/RBQKPunelf4
            youtubeurl = url;
        }
        else
        {
            //http://www.youtube.com/watch?v=youKSkXFl5w&
            int index = url.IndexOf("v=");
            if (index > 0)
            {
                url = url.Substring(index + 2);
                index = url.IndexOf("&");
                if (index > 0)
                {
                    url = url.Substring(0, index);
                }
            }
            youtubeurl = "http://youtube.com/v/" + url;
        }
        return youtubeurl;
    }
    protected void rbtn_OnSelectedIndexChanged(object se, EventArgs e)
    {
        if (rbtn.SelectedValue == "1")
        {
            txtTitle.Visible = false;
            txtTitleTamil.Visible = true;
        }
        else
        {
            txtTitle.Visible = true;
            txtTitleTamil.Visible = false;
        }
    }
    protected void lnkupload_click(object o, EventArgs e)
    {
        lblerror.Text = "";
        if (rbtn.SelectedValue == "1")
        {
            if (txtTitleTamil.Text.Trim() == "")
            {
                lblerror.Text = "Please enter Title";
                txtTitleTamil.Focus();
                return;
            }
        }
        else
        {
            if (txtTitle.Text.Trim() == "")
            {
                lblerror.Text = "Please enter Title";
                txtTitle.Focus();
                return;
            }
        }
        
        if (Savevideo() > 0)
        {
            player.NavigateUrl = Geturl();
            txtTitle.Text = "";
            txturl.Text = "";
            lblerror.Text = "Video uploaded successfully, you can upload more...";
        }
    }
    private int Savevideo()
    {
        Hashtable hsttbl = new Hashtable();
        hsttbl.Add("posttype", "3");
        if (rbtn.SelectedValue == "1")
        {
            hsttbl.Add("title", txtTitleTamil.Text.Trim());
        }
        else
        {
            hsttbl.Add("title", txtTitle.Text.Trim());
        }
        hsttbl.Add("url", Geturl());
        hsttbl.Add("postdate", System.DateTime.Now);
        hsttbl.Add("modifieddate", System.DateTime.Now);
        hsttbl.Add("postedby", global.UserId);
        hsttbl.Add("modifiedby", global.UserId);
        int id = global.InsertData(hsttbl, "tbl_post");
        return id;
    }

}
