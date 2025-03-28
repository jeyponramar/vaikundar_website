<%@ Page Title="அய்யா வைகுண்டரின் " Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" 
CodeFile="Index.aspx.cs" Inherits="_Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script>
// increase the default animation speed to exaggerate the effect
//$.fx.speeds._default = 1000;
//$(function() {
//	$("#startpopup").dialog({
//		autoOpen: true,
//		show: "blind",
//		hide: "explode",
//		width: 490
//	});
//});
 (function(d, s, id) {
      var js, fjs = d.getElementsByTagName(s)[0];
      if (d.getElementById(id)) return;
      js = d.createElement(s); js.id = id;
      js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
      fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table cellpadding="0" cellspacing="0"> 
<div>
        <!-- Load the Google AJAX API Loader 11-Mar-2013-->
        <%--<script type="text/javascript" src="http://www.google.com/jsapi"></script>--%>

        <!-- Load the Google Friend Connect javascript library. -->
        <script type="text/javascript">
        google.load('friendconnect', '0.8');
        </script>

        <!-- Initialize the Google Friend Connect OpenSocial API. -->
        <script type="text/javascript">
        google.friendconnect.container.setParentUrl('/' /* location of rpc_relay.html and canvas.html */);
        google.friendconnect.container.initOpenSocialApi({
          site: '01715921759296072581',
          onload: function(securityToken) { /* your callback, which is passed a security token */ }
        });
        </script>

    </div>  
    <!--Donation dialog-->
    <div class="startpopup">

        <div id="startpopup" title="அய்யா துணை">
            <p>
                <%--<div>
                    <a href="invitation.aspx?id=0">
                    <img src="images/invitation/popup/0.jpg" /></a>
                </div>--%>
                <%--<div>
                <a href="feedback.aspx" style='color:blue;'>
                    இந்த இணைய தளத்தில் அய்யா பதியின் தகவல்களை பார்வையாளர்களுக்கு இலவசமாக தெரிவிக்க விரும்புகிறவர்கள் எங்களை தொடர்பு கொள்ளுங்கள் (+91 9819398363)
                </a>
                </div>--%>
            </p>
	        <%--<p>
	            அய்யா வைகுண்டரின் காணியாளன்  பதி, காணியாளன் புதூர்.<br /><br />
                அன்புடையீர்,<br /><br />
                அய்யா நிச்சயித்த படி காணியாளன் புதூரில் <b>"அய்யா வைகுண்டரின் காணியாளன் பதி"</b> 
                பள்ளியறை பணி அய்யாவின் 180-வது அவதார வருடத்தில் தொடங்க விருக்கிறது. 
                இந்த அய்யாவின் பணி சிறக்க தங்களால் முடிந்த தருமத்தை செய்யும்படி தாழ்மையுடன் கேட்டுக் கொள்கிறோம். <br /><br />
                இவண், <br />
                அய்யாவின் பணியில், <br />
                க. நரசிம்மன், <br />
                சோனகன் விளை(P.O) - 628201,<br />
                திருசெந்தூர் தாலுகா, <br />
                தூத்துக்குடி மாவட்டம்,<br />
                <b>9566459437.</b>
                <br />
                <br />
                <a href="feedback.aspx" style='color:blue;'>
                    இந்த இணைய தளத்தில் அய்யா பதியின் தகவல்களை பார்வையாளர்களுக்கு இலவசமாக தெரிவிக்க விரும்புகிறவர்கள் எங்களை தொடர்பு கொள்ளுங்கள் (+91 9819398363)
                </a>
	        </p>--%>
        </div>
    </div>
<!--Donation dialog-->
    <tr>
        <td style="background-image:url(images/mainline.png); background-repeat:repeat-x;width:1024px;">
            <div id="maindiv">
                <table>
                    <tr>
                        <td>
                            <table>
                                    <tr>
                                        <td style="background-image:url(images/background.png); background-repeat:no-repeat; width:1009px; height:100px;">
                                            <table>
                                                 <tr>
                                                    <td style="padding-left:15px;">
                                                        <table width="100%">
                                                                <tr>
                                                                    <td style="background-image:url(images/downloadbox.png); background-repeat:no-repeat; width:186px; height:85px; text-align:center;">
                                                                        <table width="100%">
                                                                                <tr>
                                                                                    <td><a href="downloads.aspx"><img src="images/download.png" /></a></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="submenu"><a href="downloads.aspx">Download</a></td>
                                                                                </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                        </table>
                                                    </td>
                                                    <td>
                                                        <table width="100%">
                                                                <tr>
                                                                    <td style="background-image:url(images/uploadbox.png); background-repeat:no-repeat; width:186px; height:85px; text-align:center;">
                                                                        <table width="100%">
                                                                                <tr>
                                                                                    <td><a href="upload.aspx"><img src="images/upload.png" /></a></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="submenu"><a href="upload.aspx">Upload</a></td>
                                                                                </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                        </table>
                                                    </td>
                                                    <td>
                                                        <table width="100%">
                                                                <tr>
                                                                    <td style="background-image:url(images/akilathiratubox.png); background-repeat:no-repeat; width:186px; height:85px; text-align:center;">
                                                                        <table width="100%">
                                                                                <tr>
                                                                                    <td><a href="akilathirattu-ammanai.aspx"><img src="images/akilathiratu.png" /></a></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="submenu"><a href="read-akilathirattu-ammanai-online.aspx">Akilathirattu</a></td>
                                                                                </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                        </table>
                                                    </td>
                                                    <td>
                                                        <table width="100%">
                                                                <tr>
                                                                    <td style="background-image:url(images/gallarybox.png); background-repeat:no-repeat; width:186px; height:85px; text-align:center;">
                                                                        <table width="100%">
                                                                                <tr>
                                                                                    <td><a href="gallery.aspx"><img src="images/gallary.png" /></a></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="submenu"><a href="gallery.aspx">Gallery</a></td>
                                                                                </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                        </table>
                                                    </td>
                                                    <td>
                                                        <table width="100%">
                                                                <tr>
                                                                    <td style="background-image:url(images/blogbox.png); background-repeat:no-repeat; width:186px; height:85px; text-align:center;">
                                                                        <table width="100%">
                                                                                <tr>
                                                                                    <td><a href="view-blogs.aspx"><img src="images/blog.png" /></a></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="submenu"><a href="view-blogs.aspx">Blog</a></td>
                                                                                </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                        </table>
                                                    </td> 
                                                    <td>
                                                        <table width="100%">
                                                                <tr>
                                                                    <td style="background-image:url(images/downloadbox.png); background-repeat:no-repeat; width:186px; height:85px; text-align:center;">
                                                                        <table width="100%">
                                                                                <tr>
                                                                                    <td><a href="googlemap.aspx"><img src="images/map.png" /></a></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="submenu"><a href="googlemap.aspx">Google Map</a></td>
                                                                                </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                        </table>
                                                    </td>                                                           
                                                 </tr>                                                         
                                            </table>
                                        </td>
                                    </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="5" style="padding-left:50px;">
                            <table>
                                   <tr>
                                       <%-- <td><img src="images/lotus animation fin.jpg" /></td>--%>
                                       <td style="vertical-align:top;">
                                            <table>
                                                <tr>
                                                    <td>
                                                        <object id="flashcontent"
                                                                 classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
                                                                 width="550px"
                                                                 height="520px">
                                                          <param name="movie" value="images/lotus.swf" />
                                                         
                                                          <!--[if !IE]>-->
                                                          <object type="application/x-shockwave-flash" 
                                                                  data="images/lotus.swf" 
                                                                  width="550px" 
                                                                  height="520px">
                                                          <!--<![endif]-->
                                                          <div style="width:550px;">
                                                        <div > <img src="images/lotus animation fin.jpg" width="550px" height="520px"/></div>
                                                         <div style="background-color:#5285d6;">
                                                            <p align="center" style="color:#ffffff;font-weight:bold;">
                                                              You need to upgrade your Adobe Flash Player to watch this video. <br> <a href="http://get.adobe.com/flashplayer/" target="_blank" style="color:#ffffff;">Download it from Adobe.</a>
                                                            </p>
                                                            </div>
                                                         </div>
                                                          <!--[if !IE]>-->
                                                          </object>
                                                          <!--<![endif]-->                                                         
                                                        </object>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="fb-like-box" data-href="https://www.facebook.com/pages/Ayya-Vaikundar/592630070820832" data-width="300" data-height="265" data-show-faces="true" data-stream="false" data-header="true"></div> 
                                                    </td>
                                                </tr>
                                            </table>
                                            
                                         </td>
                                         <td style="padding-left:50px; vertical-align:top;">
                                            <table>
                                                    <tr><td style="color:#aa6205;padding-left:13px; font-weight:bold;">
                                                    <table><tr><td><a href="invitation.aspx?id=1" style="color:#aa6205;text-decoration:none;">அய்யா&nbsp;வைகுண்டர்&nbsp;காணியாளன்&nbsp;பதி</a></td></tr></table>
                                                    </td></tr>
                                                    <tr>
                                                        <td><a href="invitation.aspx?id=1"><img src="images/invitation/thumb/1.jpg"/></a></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div style="float:left">
                                                             <div style="width:200px;background-color:#ffffff;">
                                                                <a href="javascript:openwindow()">
                                                                    <img src="Images/feedback.png" title="Feedback"/> 
                                                                </a>
                                                             </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="background-color:White; color:#9e1802; font-size:20px; text-align:center; ">Download</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="midmenu">
                                                            <table cellpadding="0" cellspacing="0">
                                                                    <tr><td style="padding-left:50px;"><a href="view-photos.aspx">View Photos</a></td></tr>
                                                                    <tr><td style="padding-left:5px;"><img src="images/linebottom.png" /> </td></tr>
                                                                    <tr><td style="padding-left:50px;"><a href="songs.aspx">Ayya Songs</a></td></tr>
                                                                    <tr><td style="padding-left:5px;"><img src="images/linebottom.png" /> </td></tr>
                                                                    <tr><td style="padding-left:50px;"><a href="view-songs.aspx">Ayya Songs(upload by user)</a></td></tr>
                                                                    <tr><td style="padding-left:5px;"><img src="images/linebottom.png" /> </td></tr>
                                                                    <tr><td style="padding-left:50px;"><a href="view-videos.aspx">Ayya Videos</a></td></tr>
                                                                    <tr><td style="padding-left:5px;"><img src="images/linebottom.png" /> </td></tr>
                                                                    <tr><td style="padding-left:50px;"><a href="download-akilathirattu-ammanai.aspx">Akilathirattu</a></td></tr>
                                                                    <tr><td style="padding-left:5px;"><img src="images/linebottom.png" /> </td></tr>
                                                                    <tr><td style="padding-left:50px;"><a href="bhagavad-gita.aspx">Bhagavad Gita</a></td></tr> 
                                                                    <tr><td style="padding-left:5px;"><img src="images/linebottom.png" /> </td></tr>
                                                                    <tr><td>&nbsp;</td></tr>                                                                           
                                                                    <tr>
                                                                        <td style="background-color:White; color:#9e1802; font-size:20px; text-align:center; width:314px;">Upload</td>
                                                                    </tr>
                                                                    <tr><td style="padding-left:50px;"><a href="upload.aspx">Photos</a></td></tr>
                                                                    <tr><td style="padding-left:5px;"><img src="images/linebottom.png" /> </td></tr>
                                                                    <tr><td style="padding-left:50px;"><a href="upload.aspx">Ayya Videos</a></td></tr>
                                                                    <tr><td style="padding-left:5px;"><img src="images/linebottom.png" /> </td></tr>
                                                                    <tr><td style="padding-left:50px;"><a href="upload.aspx">Ayya Songs</a></td></tr>
                                                                    <tr><td style="padding-left:5px;"><img src="images/linebottom.png" /> </td></tr>
                                                                    <tr><td style="padding-left:50px;"><a href="upload-video-from-youtube.aspx">Youtube Videos</a></td></tr>
                                                                    <tr><td style="padding-left:5px;"><img src="images/linebottom.png" /> </td></tr>
                                                                    <tr><td>&nbsp;</td></tr>
                                                                    <tr>
                                                                        <td style="background-color:White; color:#9e1802; font-size:20px; text-align:center; width:314px;">Blogs</td>
                                                                    </tr>
                                                                    <tr><td style="padding-left:50px;"><a href="view-blogs.aspx">All Blogs</a></td></tr>
                                                                    <tr><td style="padding-left:5px;"><img src="images/linebottom.png" /> </td></tr>
                                                                    <tr><td style="padding-left:50px;"><a href="post-blog.aspx">Post New Blog</a></td></tr>
                                                                    <tr><td style="padding-left:5px;"><img src="images/linebottom.png" /> </td></tr>
                                                                    <tr><td>&nbsp;</td></tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                            </table>
                                        </td>
                                   </tr>
                            </table>
                        </td>
                     </tr>
                    <tr>
                        <td style="padding-left:5px;">
                            <table cellpadding="0" cellspacing="0" width="100%">
                                    <tr>
                                        <td style="background-image:url(images/videobox.png); background-repeat:no-repeat; width:475px; height:377px; vertical-align:top; ">
                                            <table cellpadding="0" cellspacing="0" width="100%">
                                                <tr>
                                                    <td style="padding-left:5px;padding-top:5px;" colspan="2">
                                                        <table>
                                                                <tr>
                                                                    <td style="background-image:url(images/bottombox.png); background-repeat:no-repeat; color:White;width:470px; height:33px; text-align:center; font-size:20px;">Special Videos</td>
                                                                </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="padding-top:10px; padding-left:0px; text-align:center;">
                                                        <div>
                                                             <div class="feature">
                                                                <div>
                                                                    <a class="media {width:200, height:130, type:'swf'}" href="http://youtube.com/v/rdFTDTvrBnA">ஏடு வாசிப்பு</a> 
                                                                </div>
                                                            </div>
                                                            </div>
                                                    </td>
                                                    <td style="padding-top:10px;text-align:center;">
                                                        <div>
                                                             <div class="feature">
                                                                <div>
                                                                    <a class="media {width:200, height:130, type:'swf'}" href="http://youtube.com/v/-rgmi7ZxOVI">அய்யா வழி பற்றி</a> 
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2" style="padding-top:10px;"><img src ="images/videoline.png" />
                                                </tr>
                                                <tr>
                                                    <td style="padding-top:10px; padding-left:0px;text-align:center;">
                                                        <div>
                                                             <div class="feature">
                                                                <div>
                                                                    <a class="media {width:200, height:130, type:'swf'}" href="http://youtube.com/v/rF2sN68olYc">கடம்பன் குளம்</a> 
                                                                </div>
                                                            </div>
                                                         </div>
                                                    </td>
                                                    <td style="padding-top:10px;text-align:center;">
                                                        <div>
                                                             <div class="feature">
                                                                <div>
                                                                    <a class="media {width:200, height:130, type:'swf'}" href="http://youtube.com/v/REP_HX_lpYw">சுவாமி தோப்பு</a> 
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td>&nbsp;&nbsp;</td>
                                        <td style="background-image:url(images/videobox.png); background-repeat:no-repeat; width:475px; height:377px; vertical-align:top; ">
                                            <table cellpadding="0" cellspacing="0" width="100%">
                                                <tr>
                                                    <td style="padding-top:5px;padding-left:5px;padding-right:5px; text-align:center;">
                                                        <table cellpadding="0" cellspacing="0" width="100%">
                                                                <tr>
                                                                    <td style="background-image:url(images/bottombox.png); background-repeat:no-repeat; color:White;width:473px; height:33px; text-align:center; font-size:20px;">அய்யா நாராயணர்</td>
                                                                </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="padding-top:10px; padding-left:0px;padding-right:10px">
                                                    <div class="left box2">
                                                        <div class="corner box21">
                                                            <center>
                                                                <div id="divslidetitle" class="corner box22">&nbsp;</div>
                                                                <div class="space">&nbsp;</div>
                                                                <div style="height:250px"><img id="imgslide" alt="Ayya Vaikundar Temples"/></div>
                                                                <div class="space">&nbsp;</div>
                                                            </center>   
                                                        </div>
                                                   </div>
                                                    </td>
                                                </tr>
                                                
                                            </table>
                                        </td>
                                    </tr>
                            </table>
                        </td>                                
                    </tr>
            </table>
            </div>
            <div id="dialog" title="Feedback" style="opacity:1;background-color:White;">
                    <div><h2 style="font-size:14px">Please share your valuable comments or feedback with us to improve this site.</h2></div>
                    <div>&nbsp;</div>
                    <div><asp:label id="lblStatus" Runat="server" EnableViewState="False" CssClass="error"></asp:label></div>
                        <div>
                            <div>
                            Please enter the following requested information below to send us your comments.</div>
			                    <table align="center" width="500" cellpadding="5">
				                    <tr>
					                    <td><span style="font-family:Verdana; font-size:12px; font-weight:bold;color:Brown;">Your Name:</span></td>
					                    <td><asp:textbox id="txtName" Width="241" Runat="server"></asp:textbox></td>
				                    </tr>
				                    <tr>
					                    <td><span style="font-family:Verdana; font-size:12px; font-weight:bold;color:Brown;">Your Email Address:</span>
					                    <span class="error"> *</span></td>
					                    <td><asp:textbox id="txtEmail" Width="241" Runat="server"></asp:textbox><br />
					                    <asp:RequiredFieldValidator ID="rq" runat="server" ErrorMessage="Enter email id" ValidationGroup="vg"
					                    ControlToValidate="txtEmail"></asp:RequiredFieldValidator></td>
				                    </tr>
				                    <tr>
					                    <td colSpan="2" ><span style="font-family:Verdana; font-size:12px; font-weight:bold; color:Brown;">Your Comment:</span></td>
				                    </tr>
				                    <tr>
					                    <td align="center" colSpan="2" width=100%><asp:textbox id="txtMessage" Width="100%" Runat="server" Height="99" TextMode="MultiLine" MaxLength="400"></asp:textbox></td>
				                    </tr>
				                    <tr>
					                    <td colSpan="2">&nbsp;</td>
				                    </tr>
				                    <tr>
					                    <td align=center>
					                    <div class="ui-dialog-buttonset">
					                    <asp:button id="btnSendmail" Runat="server" Text="Send Feedback" OnClick="btnSendmail_Click" 
					                    ValidationGroup="vg" CssClass="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only"></asp:button>
					                    </div>
					                    </td>
				                    </tr>
			                    </table>
                        </div>

                    </div>
        </td>
    </tr>
    
</table>
</asp:Content>

