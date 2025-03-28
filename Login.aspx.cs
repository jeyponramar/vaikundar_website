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

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        lblLoginStatus.Visible = false;
        DataRow dr = global.ExecuteSelectRow("select * from tbl_user where emailid='" + global.CheckData(txtEmailId_Login.Text) + "' AND password ='" + global.CheckData(txtPassword_Login.Text) + "'");
        if (dr != null)
        {
            global.UserId = Convert.ToInt32(dr["userid"]);
            global.UserName = Convert.ToString(dr["username"]);
            global.EmailId = Convert.ToString(dr["emailid"]);
            Redirect();
        }
        else
        {
            lblLoginStatus.Visible = true;
        }
    }
    private void Redirect()
    {
        if (Request.QueryString["url"] == null)
        {
            Response.Redirect("upload.aspx");
        }
        else
        {
            Response.Redirect(Request.QueryString["url"]);
        }
    }
    protected void btnGuest_Click(object sender, EventArgs e)
    {
        global.UserId = 2;
        global.UserName = "Guest";
        global.EmailId = "";
        Redirect();
    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        DataRow dr = global.ExecuteSelectRow("select * from tbl_user where emailid='" + global.CheckData(txtEmailId.Text) + "'");
        if (dr != null)
        {
            lblStatus.Text = "Email Id already exists, please use different email id";
            return;
        }
        Hashtable hstbl = new Hashtable();
        hstbl.Add("emailId", global.CheckData(txtEmailId.Text));
        hstbl.Add("password", global.CheckData(txtPassword.Text));
        hstbl.Add("userName", global.CheckData(txtName.Text));
        hstbl.Add("phoneNo", global.CheckData(txtPhoneNo.Text));
        int userid = global.InsertData(hstbl, "tbl_user");
        if (userid > 0)
        {
            lblStatus.Text = "You have been registered successfully!<br/><a href='upload.aspx'>Click here</a> to upload as you wish.";
            global.EmailId = txtEmailId.Text;
            global.UserName = txtName.Text;
            global.UserId = userid;
        }
    }
}
