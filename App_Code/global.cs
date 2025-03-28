using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Collections;
using System.Text;
using System.IO;
using System.Net;
using System.Net.Mail;
using System.Drawing;
using System.Configuration;

/// <summary>
/// Summary description for global
/// </summary>
public static class global
{
    static string connstring = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();//"Data Source=64.31.62.23,1232;Initial Catalog=vaikundar;User ID=vaikundar;Password=Jeyapaul@123";
    public static string GetDay(int day)
    {
        string strday = "";
        switch (day)
        {
            case 1:
                strday = "First Day";
                break;
            case 2:
                strday = "Second Day";
                break;
            case 3:
                strday = "Third Day";
                break;
            case 4:
                strday = "Fourth Day";
                break;
            case 5:
                strday = "Fifth Day";
                break;
            case 6:
                strday = "Sixth Day";
                break;
            case 7:
                strday = "Seventh Day";
                break;
            case 8:
                strday = "Eightth Day";
                break;
            case 9:
                strday = "Ninth Day";
                break;
            case 10:
                strday = "Tenth Day";
                break;
            case 11:
                strday = "Eleventh Day";
                break;
            case 12:
                strday = "Twelveth Day";
                break;
            case 13:
                strday = "Thirteenth Day";
                break;
            case 14:
                strday = "Fourteenth Day";
                break;
            case 15:
                strday = "Fifteenth Day";
                break;
            case 16:
                strday = "Sixteenth Day";
                break;
            case 17:
                strday = "Seventeenth Day";
                break;
        }
        return strday;
    }

    public static void ExecuteQuery(string query)
    {
        SqlConnection con = new SqlConnection(connstring);
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            con = null;
        }
    }
    public static DataTable ExecuteSelect(string query)
    {
        SqlConnection con = new SqlConnection(connstring);
        DataTable dttblSelectData = new DataTable();
        try
        {
            SqlDataAdapter daSelectData_SQL = null;
            daSelectData_SQL = new SqlDataAdapter(query, con);
            daSelectData_SQL.SelectCommand.CommandType = CommandType.Text;
            daSelectData_SQL.Fill(dttblSelectData);
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            con = null;
        }
        return dttblSelectData;
    }
    public static DataRow ExecuteSelectRow(string query)
    {
        SqlConnection con = new SqlConnection(connstring);
        DataTable dttblSelectData = new DataTable();
        try
        {
            SqlDataAdapter daSelectData_SQL = null;
            daSelectData_SQL = new SqlDataAdapter(query, con);
            daSelectData_SQL.SelectCommand.CommandType = CommandType.Text;
            daSelectData_SQL.Fill(dttblSelectData);
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            con = null;
        }
        if (dttblSelectData.Rows.Count > 0)
            return dttblSelectData.Rows[0];
        else 
            return null;
    }

    public static int InsertData(Hashtable hstbl, string tableName)
    {
        SqlConnection con = new SqlConnection(connstring);
        int dataId = 0;
        string strTableColumns = "";
        string strTableValues = "";
        try
        {
            StringBuilder strbldrDetails;
            SqlCommand cmdDetails_sql = null;
            IDictionaryEnumerator enmCategoryDetails = hstbl.GetEnumerator();
            while (enmCategoryDetails.MoveNext())
            {
                strTableColumns = strTableColumns + "[" + enmCategoryDetails.Key.ToString() + "],";
                strTableValues = strTableValues + "N'" + enmCategoryDetails.Value.ToString().Replace("'","").Replace("--","") + "',";
            }
            strTableColumns = strTableColumns.Remove(strTableColumns.Length - 1);
            strTableValues = strTableValues.Remove(strTableValues.Length - 1);

            strbldrDetails = new StringBuilder();
            strbldrDetails.Append("Insert Into " + tableName + "(");
            strbldrDetails.Append(strTableColumns + ") Values (");
            strbldrDetails.Append(strTableValues + ")");
            string strQuery = strbldrDetails.ToString();
            cmdDetails_sql = new SqlCommand(strQuery + ";SELECT @@IDENTITY", con);
            con.Open();
            dataId = Convert.ToInt32(cmdDetails_sql.ExecuteScalar());
            con.Close();
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            con = null;
        }
        return dataId;
    }
    public static bool UpdateData(Hashtable hstbl, string tableName, string FieldName, int id)
    {
        bool status;
        SqlConnection con = new SqlConnection(connstring);
        try
        {
            StringBuilder strbldrUpdate;
            SqlCommand cmdUpdate_SQL = null;
            
            strbldrUpdate = new StringBuilder();

            string strTableColumnWithValues = "";

            IDictionaryEnumerator enmCategoryDetails = hstbl.GetEnumerator();
            while (enmCategoryDetails.MoveNext())
            {
                strTableColumnWithValues = strTableColumnWithValues + "["+ enmCategoryDetails.Key.ToString() + "]=N'" 
                    +  enmCategoryDetails.Value.ToString() + "',";
            }

            strTableColumnWithValues = strTableColumnWithValues.Remove(strTableColumnWithValues.Length - 1);

            strbldrUpdate.Append("Update " + tableName + " Set");
            strbldrUpdate.Append(" " + strTableColumnWithValues);
            strbldrUpdate.Append(" Where " + FieldName + "="+id);

            con.Open();
            cmdUpdate_SQL = new SqlCommand(strbldrUpdate.ToString(), con);
            cmdUpdate_SQL.ExecuteScalar();
            status = true;
            con.Close();

        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            con = null;
        }
        return status;
    }
    public static string CheckData(string data)
    {
        return data.Replace("'", "").Replace("--", "");
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
    public static string UserName
    {
        get
        {
            return Convert.ToString(HttpContext.Current.Session["UserName"]);
        }
        set
        {
            HttpContext.Current.Session["UserName"] = value;
        }
    }
    public static string EmailId
    {
        get
        {
            return Convert.ToString(HttpContext.Current.Session["EmailId"]);
        }
        set
        {
            HttpContext.Current.Session["EmailId"] = value;
        }
    }
    public static int UserId
    {
        get
        {
            if (HttpContext.Current.Session["UserId"] == null)
            {
                return 0;
            }
            return Convert.ToInt32(HttpContext.Current.Session["UserId"]);
        }
        set
        {
            HttpContext.Current.Session["UserId"] = value;
        }
    }
public static bool IsAdmin
    {
        get
        {
            if (HttpContext.Current.Session["IsAdmin"] == null)
            {
                return false;
            }
            return Convert.ToBoolean(HttpContext.Current.Session["IsAdmin"]);
        }
        set
        {
            HttpContext.Current.Session["IsAdmin"] = value;
        }
    }
    public static string AdminEmailIds
    {
        get
        {
            return "jeyponramar@gmail.com,tponramesh@gmail.com,kavairajakumar@gmail.com";
        }
    }

    public static bool SendMail(string Subject, string Message, string ToMailIds, out string Error)
    {
        bool result = false;
        Error = "";
        SmtpClient smtpClient = new SmtpClient();
        NetworkCredential basicCredential =
            new NetworkCredential("ram@vaikundar.com", "jeyapaul");
        MailMessage message = new MailMessage();
        MailAddress fromAddress = new MailAddress("ram@vaikundar.com");

        smtpClient.Host = "localhost";
        smtpClient.UseDefaultCredentials = false;
        smtpClient.Credentials = basicCredential;

        message.From = fromAddress;
        message.Subject = Subject;
        //Set IsBodyHtml to true means you can send HTML email.
        message.IsBodyHtml = true;
        message.Body = Message;
        Array arr = ToMailIds.Split(',');
        for (int i = 0; i < arr.Length; i++)
        {
            message.To.Add(Convert.ToString(arr.GetValue(i)));
        }

        try
        {
            smtpClient.Send(message);
            result = true;
        }
        catch (Exception ex)
        {
            //Error, could not send the message
            //Response.Write(ex.Message);
            Error = ex.Message;
        }
        return result;
    }
    public static void ResizeImage(string ImagePath, string NewImagePath, int ResizeWidth, int ResizeHeight)
    {
        System.Drawing.Image img = System.Drawing.Image.FromFile(ImagePath);
        int ActualWidth = img.Width;
        int ActualHeight = img.Height;

        System.Drawing.Image newImage;
        int tempW = 0;
        int tempH = 0;
        int FinalWidth = 0;
        int FinalHeight = 0;

        if (ActualWidth < ResizeWidth && ActualHeight < ResizeHeight)
        {
            //both are less than actual width
            FinalWidth = ActualWidth;
            FinalHeight = ActualHeight;
        }
        else if (ActualWidth > ResizeWidth)
        {
            tempH = Convert.ToInt32((ResizeWidth / Convert.ToDouble(ActualWidth)) * ActualHeight);
            if (tempH > ResizeHeight)
            {
                tempW = Convert.ToInt32((ResizeHeight / Convert.ToDouble(tempH)) * ResizeWidth);
                FinalWidth = tempW;
                FinalHeight = ResizeHeight;
            }
            else
            {
                FinalWidth = ResizeWidth;
                FinalHeight = tempH;
            }
        }
        else if (ActualHeight > ResizeHeight)
        {
            tempW = Convert.ToInt32((ResizeHeight / Convert.ToDouble(ActualHeight)) * ActualWidth);
            if (tempW > ResizeWidth)
            {
                tempH = Convert.ToInt32((ResizeWidth / Convert.ToDouble(tempW)) * ResizeHeight);
                FinalWidth = ResizeWidth;
                FinalHeight = tempH;
            }
            else
            {
                FinalWidth = tempW;
                FinalHeight = ResizeHeight;
            }
        }
        else
        {
            FinalWidth = ActualWidth;
            FinalHeight = ActualHeight;
        }
        newImage = img.GetThumbnailImage(FinalWidth, FinalHeight, null, IntPtr.Zero);

        newImage.Save(NewImagePath);
        newImage = null;
        img.Dispose();
        img = null;

    }
    public static void ResizeImage(string sourcePath, string targetPath, int resizeWidth)
    {
        System.Drawing.Image image = System.Drawing.Image.FromFile(sourcePath);
        int srcWidth = image.Width;
        int srcHeight = image.Height;

        Decimal sizeRatio = ((Decimal)srcHeight / srcWidth);
        int thumbHeight = Decimal.ToInt32(sizeRatio * resizeWidth);

        Bitmap bmp = new Bitmap(resizeWidth, thumbHeight);

        System.Drawing.Graphics gr = System.Drawing.Graphics.FromImage(bmp);

        gr.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.HighQuality;
        gr.CompositingQuality = System.Drawing.Drawing2D.CompositingQuality.HighQuality;
        gr.InterpolationMode = System.Drawing.Drawing2D.InterpolationMode.HighQualityBicubic;
        System.Drawing.Rectangle rectDestination = new System.Drawing.Rectangle(0, 0, resizeWidth, thumbHeight);
        gr.DrawImage(image, rectDestination, 0, 0, srcWidth, srcHeight, GraphicsUnit.Pixel);
        bmp.Save(targetPath, System.Drawing.Imaging.ImageFormat.Jpeg);
        image.Dispose();
        image = null;
        bmp = null;
    }
}
