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
using System.Net.Mail;
using WebComponent;

public partial class feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string ToEmailIds = "";
            string query = "select * from tbl_user";
            DataTable dttbl = new DataTable();
            dttbl = global.ExecuteSelect(query);
            for (int i = 0; i < dttbl.Rows.Count; i++)
            {
                if (Convert.ToString(dttbl.Rows[i]["EmailId"]).Trim() != "" && Convert.ToString(dttbl.Rows[i]["EmailId"]).Contains("@"))
                {
                    if (ToEmailIds == "")
                    {
                        ToEmailIds = Convert.ToString(dttbl.Rows[i]["EmailId"]);
                    }
                    else
                    {
                        ToEmailIds += "," + Convert.ToString(dttbl.Rows[i]["EmailId"]);
                    }
                }
            }
            txtToEmailIds.Text = ToEmailIds;
        }
    }

    #region  "Send email"
    protected void btnSendmail_Click(object sender, EventArgs e)
    {
        SmtpClient smtpClient = new SmtpClient();
        MailMessage message = new MailMessage();

        try
        {
            string Error;
            global.SendMail(txtSubject.Text, txtMessage.Text, txtToEmailIds.Text, out Error);

            lblStatus.Text = "Mail Sent successfully.";
        }
        catch (Exception ex)
        {
            lblStatus.Text = "Error occured while processing your request, please try later or email to jeyponramar@gmail.com";// +ex.Message;
        }
    }
    #endregion
    #region "Reset"
    protected void btnReset_Click(object sender, EventArgs e)
    {
       
    }
    #endregion
}
