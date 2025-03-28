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

public partial class feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    #region  "Send email"
    protected void btnSendmail_Click(object sender, EventArgs e)
    {
        if (txtEmail.Text.Trim() == "")
        {
            lblStatus.Text = "Please enter your email address.";
            txtEmail.Focus();
            return;
        }
        // System.Web.Mail.SmtpMail.SmtpServer is obsolete in 2.0
        // System.Net.Mail.SmtpClient is the alternate class for this in 2.0
        SmtpClient smtpClient = new SmtpClient();
        MailMessage message = new MailMessage();

        try
        {
            MailAddress fromAddress = new MailAddress(txtEmail.Text, txtName.Text);

            // You can specify the host name or ipaddress of your server
            // Default in IIS will be localhost 
            smtpClient.Host = "mail.vaikundar.com";
            System.Net.NetworkCredential c = new System.Net.NetworkCredential("ram@vaikundar.com","jeyapaul");
            
            smtpClient.Credentials = c;
            //smtpClient.UseDefaultCredentials = false;

            //Default port will be 25
            smtpClient.Port = 25;

            //From address will be given as a MailAddress Object
            message.From = fromAddress;

            // To address collection of MailAddress
            message.To.Add("jeyponramar@gmail.com");

            message.Subject = "Vaikundar.com - Feedback";
            // CC and BCC optional
            // MailAddressCollection class is used to send the email to various users
            // You can specify Address as new MailAddress("admin1@yoursite.com")
            //message.CC.Add("admin1@yoursite.com");

            //Body can be Html or text format
            //Specify true if it  is html message
            message.IsBodyHtml = false;

            // Message body content
            message.Body = txtMessage.Text;

            /*
            message.Fields.Item("http://schemas.microsoft.com/cdo/configuration/sendusing") = 2

            'Name or IP of Remote SMTP Server
            message.Configuration.Fields.Item _
            ("http://schemas.microsoft.com/cdo/configuration/smtpserver") = "mail.your.com"

            'Type of authentication, NONE, Basic (Base64 encoded), NTLM
            message.Configuration.Fields.Item _
            ("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate") = cdoBasic

            'Your UserID on the SMTP server
            message.Configuration.Fields.Item _
            ("http://schemas.microsoft.com/cdo/configuration/sendusername") = "youruserid"

            'Your password on the SMTP server
            message.Configuration.Fields.Item _
            ("http://schemas.microsoft.com/cdo/configuration/sendpassword") = "yourpassword"

            'Server port (typically 25)
            message.Configuration.Fields.Item _
            ("http://schemas.microsoft.com/cdo/configuration/smtpserverport") = 25

            'Use SSL for the connection (False or True)
            message.Configuration.Fields.Item _
            ("http://schemas.microsoft.com/cdo/configuration/smtpusessl") = False

            'Connection Timeout in seconds (the maximum time CDO will try to establish a connection to the SMTP server)
            message.Configuration.Fields.Item _
            ("http://schemas.microsoft.com/cdo/configuration/smtpconnectiontimeout") = 60

            message.Configuration.Fields.Update
            */

            // Send SMTP mail
            smtpClient.Send(message);

            lblStatus.Text = "Thanks for sharing your feedback with us.";
            txtName.Text = "";
            txtMessage.Text = "";
            txtEmail.Text = "";
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
        txtName.Text = "";
        txtMessage.Text = "";
        txtEmail.Text = "";
    }
    #endregion
}
