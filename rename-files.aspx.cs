using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.IO;

public partial class rename_files : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Onclick(object sender, EventArgs e)
    {
        lblStatus.Text = "";
        bool bln = RenameFiles(Server.MapPath(txtFolder.Text));
        if(bln)lblStatus.Text = "All files renamed to lowercase successfully!";
    }
    private bool RenameFiles(string folder)
    {
        bool renamed = false;
        try
        {
            DirectoryInfo dir = new DirectoryInfo(folder);
            //dir.MoveTo(folder.ToLower());
            FileInfo[] files = dir.GetFiles();
            for (int i = 0; i < files.Length; i++)
            {
                FileInfo file = (FileInfo)files.GetValue(i);
                string filenm = file.FullName;
                if (IsFileToRename(filenm.ToLower()))
                {
                    file.MoveTo(filenm.Replace(file.Name,file.Name.Replace(" ","_")));
                }
            }
            DirectoryInfo[] subdirs = dir.GetDirectories();
            for (int i = 0; i < subdirs.Length; i++)
            {
                DirectoryInfo subdir = (DirectoryInfo)subdirs.GetValue(i);
                RenameFiles(subdir.FullName);
            }
            renamed = true;
        }
        catch (Exception ex)
        {
            lblStatus.Text = ex.Message;
        }
        return renamed;
    }
    private bool IsFileToRename(string filename)
    {
        bool filetorename = false;
        Array arr = ".mp3".Split(',');
        for (int i = 0; i < arr.Length; i++)
        {
            if (filename.Contains(arr.GetValue(i).ToString()))
            {
                filetorename = true;
                break;
            }
        }
        return filetorename;
    }
}
