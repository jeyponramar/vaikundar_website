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

public partial class uploads1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (global.UserId == 0) Response.Redirect("login.aspx?url=upload.aspx");

        //string js = "javascript:openuploadwindow('{0}')";
        //hprUploadPhotos.NavigateUrl = string.Format(js, "image");
        //hprUploadSongs.NavigateUrl = string.Format(js, "song");
        //hprUploadVideos.NavigateUrl = string.Format(js, "video");

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

    protected void btnSave_Click(object sender, EventArgs e)
    {
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
        lblerror.Text = "Please wait....";
        int id = SavePost();
        if (id < 1) return;
        divupload.Attributes.Add("style", "display:block");
        divuploadform.Attributes.Add("style", "display:none");
        frupload.Attributes.Add("src", "fileupload.aspx?type=" + hdnfiletype.Value + "&id=" + id);
        string type = hdnfiletype.Value;
        if (type == "image")
        {
            lblAcceptableExt.Text = "jpg,gif,png,bmp";
        }
        else if (type == "song")
        {
            lblAcceptableExt.Text = "mp3,wav";
        }
        else if (type == "video")
        {
            lblAcceptableExt.Text = "mp4,avi,wmv,mov";
        }
    }
    private int SavePost()
    {
        int posttype = 0;
        string type = hdnfiletype.Value;
        if (type == "image")
        {
            posttype = 1;
        }
        else if (type == "song")
        {
            posttype = 2;
        }
        else if (type == "video")
        {
            posttype = 3;
        }
        Hashtable hsttbl = new Hashtable();
        hsttbl.Add("posttype", posttype);
        if (rbtn.SelectedValue == "1")
        {
            hsttbl.Add("title", txtTitleTamil.Text.Trim());
        }
        else
        {
            hsttbl.Add("title", txtTitle.Text.Trim());
        }
        //hsttbl.Add("description", txtDesc.Text.Trim());
        hsttbl.Add("postdate", System.DateTime.Now);
        hsttbl.Add("modifieddate", System.DateTime.Now);
        hsttbl.Add("postedby", global.UserId);
        hsttbl.Add("modifiedby", global.UserId);
        int id = global.InsertData(hsttbl, "tbl_post");
        return id;
    }
}
