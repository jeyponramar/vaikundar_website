<%@ WebHandler Language="C#" Class="FileUpload" %>
using System;
using System.Web;
using System.IO;

public class FileUpload : IHttpHandler
{
    public void ProcessRequest(HttpContext context)
    {
        if (context.Request.Files.Count == 0)
        {
        }
        else
        {
            HttpPostedFile uploadedfile = context.Request.Files[0];
            
            string FileName = uploadedfile.FileName;
            if (FileName.Contains("\\"))
            {
                FileName = FileName.Substring(FileName.LastIndexOf("\\")+1);
            }
            else if (FileName.Contains("/"))
            {
                FileName = FileName.Substring(FileName.LastIndexOf("/")+1);
            }
            string FileType = uploadedfile.ContentType;
            string folderName = "";
            string filetype = context.Request.QueryString["type"];
            string fileext = FileName.Substring(FileName.LastIndexOf(".")).ToLower();
            bool invalidfile = false;
            string validexts = "";
            if (filetype == "image")
            {
                folderName = "upload\\photos\\" + context.Request.QueryString["id"] + "\\";
                validexts = ".jpg,.gif,.png,.bmp";
            }
            else if (filetype == "song")
            {
                folderName = "upload\\songs\\" + context.Request.QueryString["id"] + "\\";
                validexts = ".mp3,.wav";
            }
            else if (filetype == "video")
            {
                folderName = "upload\\videos\\" + context.Request.QueryString["id"] + "\\";
                validexts = ".avi,.wmv,.mov,.mpg,.vob,.3g2";
            }
            
            if (fileext == ".exe" || fileext == ".bat")
            {
                invalidfile = true;
            }
            if (!invalidfile)
            {
                Array arr = validexts.Split(',');
                invalidfile = true;
                for (int i = 0; i < arr.Length; i++)
                {
                    if (fileext == arr.GetValue(i).ToString())
                    {
                        invalidfile = false;
                        break;
                    }
                }
            }
            if (invalidfile)
            {
                context.Response.Write("{\"name\":\"" + FileName + "\",\"size\":\"Invalid File\"}");
                return;
            }
            if (!Directory.Exists(HttpContext.Current.Server.MapPath(folderName)))
            {
                Directory.CreateDirectory(HttpContext.Current.Server.MapPath(folderName));
            }
            
            uploadedfile.SaveAs(HttpContext.Current.Server.MapPath(folderName) + FileName);
            if (filetype == "image")
            {
                if (!Directory.Exists(HttpContext.Current.Server.MapPath(folderName) + "thumb\\"))
                {
                    Directory.CreateDirectory(HttpContext.Current.Server.MapPath(folderName) + "thumb");
                }
                string thumbPath = HttpContext.Current.Server.MapPath(folderName) + "thumb\\" + FileName;
                ResizeImage(HttpContext.Current.Server.MapPath(folderName) + FileName, thumbPath, 200);
            }
            string FileSize = GetFileSize(folderName + FileName);
            FileInfo fl = new FileInfo(HttpContext.Current.Server.MapPath(folderName + FileName));
            //context.Response.ContentType = "text/html";
            //context.Response.Write("dfgfdgfd");
            context.Response.Write("{\"name\":\"" + FileName + "\",\"size\":\"" + FileSize.ToString() + "\"}");
            
        }
    }
    public static void ResizeImage(string sourcePath, string targetPath, int resizeWidth)
    {
        System.Drawing.Image image = System.Drawing.Image.FromFile(sourcePath);
        int srcWidth = image.Width;
        int srcHeight = image.Height;

        Decimal sizeRatio = ((Decimal)srcHeight / srcWidth);
        int thumbHeight = Decimal.ToInt32(sizeRatio * resizeWidth);

        System.Drawing.Bitmap bmp = new System.Drawing.Bitmap(resizeWidth, thumbHeight);

        System.Drawing.Graphics gr = System.Drawing.Graphics.FromImage(bmp);

        gr.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.HighQuality;
        gr.CompositingQuality = System.Drawing.Drawing2D.CompositingQuality.HighQuality;
        gr.InterpolationMode = System.Drawing.Drawing2D.InterpolationMode.HighQualityBicubic;
        System.Drawing.Rectangle rectDestination = new System.Drawing.Rectangle(0, 0, resizeWidth, thumbHeight);
        gr.DrawImage(image, rectDestination, 0, 0, srcWidth, srcHeight, System.Drawing.GraphicsUnit.Pixel);
        bmp.Save(targetPath, System.Drawing.Imaging.ImageFormat.Jpeg);
        image.Dispose();
        image = null;
        bmp = null;
    }
    public static string GetFileSize(string path)
    {
        FileInfo zipfile = new FileInfo(HttpContext.Current.Server.MapPath(path));
        double l = (zipfile.Length / 1024.0);
        string length = "";
        if (l >= 1024.0)
        {
            length = string.Format("{0:0.00}", l / 1024.0) + " MB";
        }
        else
        {
            length = string.Format("{0:0.00}", l) + " KB";
        }
        return length;
    }
    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}
