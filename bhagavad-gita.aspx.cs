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

public partial class bhagavad_gita : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindPdfs();
    }
    private void BindPdfs()
    {
        StringBuilder strPdfs = new StringBuilder();
        strPdfs.Append("<ul>");
        strPdfs.Append("<li><a href='gita/preface.zip'>Preface</a></li>");
        strPdfs.Append("<li><a href='gita/heading.zip'>Heading</a></li>");

        strPdfs.Append("<li><a href='gita/1.zip'>ONE: THE DESPONDENCY OF ARJUNA</a></li>");
        strPdfs.Append("<li><a href='gita/2.zip'>TWO: THE PHILOSOPHY OF DISCRIMINATION</a></li>");
        strPdfs.Append("<li><a href='gita/3.zip'>THREE: KARMA-YOGA – THE PATH OF ACTION</a></li>");
        strPdfs.Append("<li><a href='gita/4.zip'>FOUR: DNYANA-YOGA – THE PATH OF WISDOM</a></li>");
        strPdfs.Append("<li><a href='gita/5.zip'>FIVE: THE RENUNCIATION OF ACTION</a></li>");
        strPdfs.Append("<li><a href='gita/6.zip'>SIX: SELF-CONTROL</a></li>");
        strPdfs.Append("<li><a href='gita/7.zip'>SEVEN: KNOWLEDGE AND EXPERIENCE</a></li>");
        strPdfs.Append("<li><a href='gita/8.zip'>EIGHT: LIFE EVERLASTING</a></li>");
        strPdfs.Append("<li><a href='gita/9.zip'>NINE: THE SCIENCE OF SCIENCES AND THE MYSTERY OF MYSTERIES</a></li>");
        strPdfs.Append("<li><a href='gita/10.zip'>TEN: THE DIVINE MANIFESTATIONS</a></li>");
        strPdfs.Append("<li><a href='gita/11.zip'>ELEVEN: THE COSMIC VISION</a></li>");
        strPdfs.Append("<li><a href='gita/12.zip'>TWELVE: BHAKTI-YOGA – THE PATH OF LOVE</a></li>");
        strPdfs.Append("<li><a href='gita/13.zip'>THIRTEEN: SPIRIT AND MATTER</a></li>");
        strPdfs.Append("<li><a href='gita/14.zip'>FOURTEEN: THE THREE QUALITIES</a></li>");
        strPdfs.Append("<li><a href='gita/15.zip'>FIFTEEN: THE LORD-GOD</a></li>");
        strPdfs.Append("<li><a href='gita/16.zip'>SIXTEEN: DIVINE AND DEMONIC CIVILIZATION</a></li>");
        strPdfs.Append("<li><a href='gita/17.zip'>SEVENTEEN: THE THREEFOLD FAITH</a></li>");
        strPdfs.Append("<li><a href='gita/18.zip'>EIGHTEEN: THE SPIRIT OF RENUNCIATION</a></li>");
        strPdfs.Append("</ul>");


        ltBhagavadGita.Text = strPdfs.ToString();





    }
}
