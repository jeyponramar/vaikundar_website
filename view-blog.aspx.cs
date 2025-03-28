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

public partial class view_post : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int postid = Convert.ToInt32(Request.QueryString["postid"]);
        if (postid > 0)
        {
            DataRow dr = global.ExecuteSelectRow("select * from tbl_post where postid=" + global.CheckData(postid.ToString()));
            lblTitle.Text = Convert.ToString(dr["title"]);
            lblDesc.Text = Convert.ToString(dr["description"]);
            lblPosteddate.Text = string.Format("{0:dd MMM yyyy hh:mm tt dddd}", Convert.ToDateTime(dr["postdate"]));
            this.Title = "Blog - " + lblTitle.Text;
        }
    }
}
