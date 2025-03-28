using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using System.Net.Mail;
public partial class _Index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
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
            /*
            MailAddress fromAddress = new MailAddress(txtEmail.Text, txtName.Text);

            // You can specify the host name or ipaddress of your server
            // Default in IIS will be localhost 
            smtpClient.Host = "mail.vaikundar.com";

            //Default port will be 25
            smtpClient.Port = 25;

            //From address will be given as a MailAddress Object
            message.From = fromAddress;

            // To address collection of MailAddress
            message.To.Add("ram@vaikundar.com");
            message.CC.Add("jeyponramar@gmail.com");

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

            // Send SMTP mail
            smtpClient.Send(message);*/
            string Error;
            string strmessage = "Hi,<br/>" +Environment.NewLine + txtMessage.Text+Environment.NewLine+"<br/>Regards"+
                Environment.NewLine+"<br/>"+txtName.Text+Environment.NewLine+"<br/>"+txtEmail.Text;
            
            global.SendMail("Vaikundar.com - Feedback", strmessage, "jeyponramar@gmail.com", out Error);

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
}
