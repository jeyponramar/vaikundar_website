using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class videos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
     protected void PlayVideo(string url)
         {
             VideoPlayer.Attributes["src"] = url;
         }
         protected void VideoSRC1(object sender, System.EventArgs e)
         {
             PlayVideo("http://www.youtube.com/v/SQDlsbn349Y");
         }
         protected void VideoSRC2(object sender, System.EventArgs e)
         {
             PlayVideo("http://www.youtube.com/v/9joKTNM_DaM");
         }
         protected void VideoSRC3(object sender, System.EventArgs e)
         {
             PlayVideo("http://www.youtube.com/v/P7YkJxQT_0Y");
         }
}
