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
using System.Text;

public partial class view_posts : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        //if (!IsPostBack)
        {
            BindPost();
        }
        //string s = GetDesc("கலியை பற்றி அகிலத்திரட்டு அம்மானை<br><div style=\"text-align: center;\"><b><span class=\"Apple-style-span\" style=\"color: red;\">\"கலி என்றால் எலி அல்லவே கணையாழி வேண்டாமே</span></b></div>");
    }
    public string GetDesc(object obj)
    {
        string strhtml = obj.ToString();

        string data = "";
        strhtml = strhtml.Trim();
        if (strhtml.IndexOf("<") < 0)
        {
            if (strhtml.Length > 200)
            {
                data = strhtml.Substring(0, 200) + "...";
            }
            else
            {
                data = strhtml + "...";
            }
            return data;
        }

        bool isAvailable = true;
        int startindex = 0;
        if (!strhtml.StartsWith("<"))
        {
            startindex = strhtml.IndexOf("<");
            data = strhtml.Substring(0, startindex);
        }
        string temp;
        while (isAvailable)
        {
            int stindex = -1;
            int enindex = -1;
            stindex = strhtml.IndexOf(">", startindex);
            if (stindex >= 0)
            {
                enindex = strhtml.IndexOf("<", startindex + 1);
                if (enindex >= 0)
                {
                    temp = strhtml.Substring(stindex + 1, enindex - stindex - 1);
                    startindex = enindex + 1;
                }
                else
                {
                    temp = strhtml.Substring(stindex + 1);
                    startindex = stindex + 1;
                }
                if (temp != "") data += " " + temp;
            }
            else
            {
                isAvailable = false;
            }
            if (data.Length > 200)
            {
                data = data.Substring(0, 200) + "...";
                isAvailable = false;
            }

        }
        return data;
        
        //int index = 0;
        //StringBuilder desc = new StringBuilder();
        //while (found == false)
        //{
        //    if (index >= fulldesc.Length || index == 200)
        //    {
        //        found = true;
        //        break;
        //    }
        //    desc.Append(fulldesc.Substring(index, 1));
        //    index++;
        //}
        //desc.Append("...");
        //return desc.ToString();
    }
    
    private void BindPost()
    {
        DataTable dttbl = new DataTable();
        dttbl = global.ExecuteSelect("select * from tbl_post where posttype=4 order by modifieddate desc");
        rptpost.DataSource = dttbl;
        rptpost.DataBind();
        //for (int i = 0; i < dttbl.Rows.Count; i++)
        //{
        //}
    }
}
