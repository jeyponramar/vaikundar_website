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
using System.Security.AccessControl;

public partial class controls_Post : System.Web.UI.UserControl
{
    string _PostType = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (global.UserId == 0) Response.Redirect("login.aspx?url=post-blog.aspx");
        //Page.Form.Enctype = "multipart/form-data";
        if (PostType == "post")
        {
            lblTitle.Text = "Title";
        }
        else if(PostType=="image")
        {
            lblTitle.Text = "Album Name";
            //divPhotos.Visible = true;
        }
        else if (PostType == "song")
        {
            lblTitle.Text = "Song Name";
            //divPhotos.Visible = true;
        }
    }
    protected void btnclose_click(object o, EventArgs e)
    {
        txtHTML.Value = txtHTML.Value + "<p>" + txtTamil.Value + "</p>";
    }
    protected void btnPreview_Click(object sender, EventArgs e)
    {
        //txtHTML.Value = Request["txtHTML"];
        litText.Text = txtHTML.Value;
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (Request.QueryString["postid"] == null)
        {
            Hashtable hstbl = new Hashtable();
            hstbl.Add("title", global.CheckData(txtTitle.Text));
            hstbl.Add("description", global.CheckData(txtHTML.Value));
            hstbl.Add("postdate", DateTime.Now);
            hstbl.Add("postedby", global.UserId);
            hstbl.Add("modifieddate", DateTime.Now);
            hstbl.Add("modifiedby", global.UserId);
            hstbl.Add("posttype", 4);
            int postid = global.InsertData(hstbl, "tbl_post");
            //DirectoryInfo dir = new DirectoryInfo(Server.MapPath("temp/" + Session.SessionID));
            //dir.MoveTo(Server.MapPath("upload/post/") + postid);
            Response.Redirect("view-post.aspx?postid=" + postid);
        }
    }
    protected void lnkupload_click(object s, EventArgs e)
    {
        if (flupld.PostedFile != null)
        {
            /*string tempfolder = Server.MapPath("temp/" + Session.SessionID) + "/";
            if (!Directory.Exists(tempfolder))
            {
                Directory.CreateDirectory(tempfolder);
            }*/

            string ext = flupld.FileName.Substring(flupld.FileName.LastIndexOf('.'));
            string filename = Guid.NewGuid() + ext;
            //GiveFolderAccess(Server.MapPath("upload/post/"));
            flupld.SaveAs(Server.MapPath("upload/post/") + filename);
            //imgupload.ImageUrl = "~/temp/" + Session.SessionID + "/" + flupld.FileName;
            //imgupload.Visible = true;
            txtHTML.Value = txtHTML.Value + "<img src='upload/post/" + filename + "' alt='" + flupld.FileName + "'/>";
        }
    }
    public static void GiveFolderAccess(string dir)
    {
        DirectoryInfo objdir = new DirectoryInfo(dir);
        System.Security.AccessControl.DirectorySecurity objDirectorySecurity = new System.Security.AccessControl.DirectorySecurity();
        FileSystemAccessRule objFileSystemAccessRule = new FileSystemAccessRule("everyone", FileSystemRights.FullControl, InheritanceFlags.ContainerInherit, PropagationFlags.InheritOnly, AccessControlType.Allow);

        objDirectorySecurity = objdir.GetAccessControl(AccessControlSections.Access);
        objDirectorySecurity.AddAccessRule(objFileSystemAccessRule);
        objdir.SetAccessControl(objDirectorySecurity);

        objDirectorySecurity = null;
    }
    public static void GetFileAccess(string DirectoryPath)
    {
        FileInfo FileToCheck;
        string[] FilesInDirectory = Directory.GetFiles(DirectoryPath);
        string[] FoldersInDirectory = Directory.GetDirectories(DirectoryPath);
        foreach (string FileName in FilesInDirectory)
        {
            FileToCheck = new FileInfo(FileName.Replace("\\", "/"));
            if (FileToCheck.IsReadOnly)
                FileToCheck.IsReadOnly = false;
        }
        foreach (string FolderName in FoldersInDirectory)
        {
            GetFileAccess(FolderName.Replace("\\", "/"));
        }
    }
    public string PostType
    {
        set { _PostType = value; }
        get { return _PostType; }
    }
}
