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
using System.Net;
using System.IO;
using System.Text;

public partial class upload_photos : System.Web.UI.Page
{
    public string AlbumId = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.Form.Enctype = "multipart/form-data";
    }
    protected void lnkAddAlbum_Click(object sender, EventArgs e)
    {
        if (txtAlbumName.Text.Trim() == "" || txtName.Text.Trim() == "" || txtName.Text.Trim() == "")
        {
            lblStatus.Visible = true;
            return;
        }
        int albumId = AddAlbum();
        if (albumId > 0)
        {
            divPhotos.Visible = true;
            divAddAkbum.Visible = false;
            divAlbum.Visible = true;
            lblAlbumName.Text = txtAlbumName.Text;
            divPhotos.Focus();
            Session["AlbumId"] = albumId;
            divPhotos.Attributes.Add("src", "fileupload.aspx?type=image&id="+albumId);
            AlbumId = albumId.ToString();
        }
    }
    private int AddAlbum()
    {
        Hashtable hstbl = new Hashtable();
        hstbl.Add("albumName", txtAlbumName.Text);
        hstbl.Add("description", txtDescription.Text);
        hstbl.Add("userName", txtName.Text);
        hstbl.Add("EmailId", txtEmailId.Text);
        hstbl.Add("LastUpdatedDate", DateTime.Now);
        hstbl.Add("totalVisits", 0);
        int albumId=global.InsertData(hstbl, "tbl_album");
        if (albumId > 0)
        {
            lblAlbumStatus.Text = "Album created successfully, you can add photos now";
        }
        else
        {
            lblAlbumStatus.Text = "Unexpected error occured while creating album, please try again or later";
        }
        return albumId;
    }
    private int GetMaxFileId()
    {
        return 1;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //string CompleteFTPPath = "ftp://vaikundar.com";
        string CompleteLocalPath = "D:\\Ram\\Projects\\Vaikundar\\Images\\narayana.jpg";

        // Get the object used to communicate with the server.
        FtpWebRequest request = (FtpWebRequest)WebRequest.Create("ftp://vaikundar.com/httpdocs/Uploads/test.jpg");
        request.Method = WebRequestMethods.Ftp.UploadFile;

        // This example assumes the FTP site uses anonymous logon.
        request.Credentials = new NetworkCredential("vaikunda", "kFvLtaQ7TZ");

        // Copy the contents of the file to the request stream.
        StreamReader sourceStream = new StreamReader(CompleteLocalPath);// ("testfile.txt");
        byte[] fileContents = Encoding.UTF8.GetBytes(sourceStream.ReadToEnd());
        sourceStream.Close();
        request.ContentLength = fileContents.Length;

        Stream requestStream = request.GetRequestStream();
        requestStream.Write(fileContents, 0, fileContents.Length);
        requestStream.Close();

        FtpWebResponse response = (FtpWebResponse)request.GetResponse();

        Response.Write("Upload File Complete, status " + response.StatusDescription);

        response.Close();

    }
}
