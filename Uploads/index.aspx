<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Ayya Vaikundar</title>
    <meta name="Description" content="Ayya Vaikundar - God Narayana - Kali yuga and dharma yuga god ayya vaikundar. Download akilathirattu ammanai,edu vasippu, bhagavad gita and ayya vaikundar songs" />
    <meta name="Keywords" content="ayya vaikundar,ayya vaikundar songs,read download akilathirattu ammanai,lord,god,bhagavad gita,free download edu vasippu,free download ayya vaikundar songs,ayya vaikundar videos,kadampan kulam,swamithoppu,swamithoppe,upload ayya vaikundar songs,upload ayya vaikundar photos,upload ayya videos,nizhal thangal,ayya thunai,அய்யா வைகுண்டர்,அய்யா பாடல்கள்,நிழல் தாங்கல்,அய்யா துணை" />
    <meta name="robots" content="index, follow" />
    <link href="common.css" rel="stylesheet" type="text/css"/>
    <link href="css/jquery-ui.css" rel="stylesheet" type="text/css"/>

    <script src="js/jquery.min.js" type="text/javascript"></script>
    <script src="js/jquery-ui.min.js" type="text/javascript"></script>
    <script src="js/jquery.corner.js" type="text/javascript"></script>
   
   <%--for youtube--%>
   <script type="text/javascript" src="http://jquery.malsup.com/media/jquery.media.js?v0.94"></script>
    <script type="text/javascript" src="http://jquery.malsup.com//jquery.metadata.v2.js"></script>

    <script language="javascript">
        $(document).ready(function() {
            $(".corner").corner("10px");
            $('a.media').media();
        });

</script>
 <script type="text/javascript">
        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-22120526-1']);
        _gaq.push(['_trackPageview']);

        (function() {
            var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
            ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();
    </script>
<script language="javascript" type="text/javascript">
    var $SlideShow = null;
    var playing = false;
    var index = 0;
    var arrfiles;
    var arrtitles;
    var folderpath;
    
    $(document).ready(function() {
    
        $SlideShow = $('#imgslide');
        startslide();
    });
    function startslide() {
        files = "vaikundar.gif,swamythoppe.jpg,Ambalapathi.jpg,muttapathi.jpg,Poopathi.jpg,Thamarakkulampathi.jpg,narayana.jpg";
        titles = "அய்யா வைகுண்டர்,சுவாமி தோப்பு பதி,அம்பல பதி,முட்டப் பதி,பூப் பதி,தாமரைக் குளம் பதி,அய்யா நாராயணர்";
        folderpath = "images/home/slide/";
        arrfiles = files.split(',');
        arrtitles = titles.split(',');
        //$("#divtitle").text(title);
        slideshow();
    }
    function slideshow() {
     
        showphoto();
        index++;
        if (index > arrfiles.length) {
            index = 0;
            slideshow();
        }
        else {
            setTimeout("slideshow()", 3000);
        }
    }
    function showphoto() {
        $SlideShow.attr('src', folderpath + arrfiles[index])
        $("#divslidetitle").text(arrtitles[index]);
        $SlideShow.attr('alt', arrtitles[index]);
        $SlideShow.attr('title', arrtitles[index]);
    }
   
</script>

<script>
// increase the default animation speed to exaggerate the effect
$.fx.speeds._default = 1000;
$(function() {
	$( "#dialog" ).dialog({
		autoOpen: false,
		show: "blind",
		hide: "explode",
		width: 600
	});
    $(document).ready(function() {
        $( "#dialog" ).dialog( "open" );
    });
    
//	$( "#opener" ).click(function() {
//		$( "#dialog" ).dialog( "open" );
//		return false;
//	});
});
</script>

</head>

<body style="font-family: Arial,Helvetica;">
    <form id="form1" runat="server">
   
    <center>
    
    <!--Donation dialog-->
    <div class="demo">

        <div id="dialog" title="அய்யா துணை">
	        <p>
	            அய்யா வைகுண்டரின் காணியாளன்  பதி, காணியாளன் புதூர்.<br /><br />
                அன்புடையீர்,<br /><br />
                அய்யா நிச்சயித்த படி காணியாளன் புதூரில் <b>"அய்யா வைகுண்டரின் காணியாளன் பதி"</b> 
                பள்ளியறை பணி அய்யாவின் 180-வது அவதார வருடத்தில் தொடங்க விருக்கிறது. 
                இந்த அய்யாவின் பணி சிறக்க தங்களால் முடிந்த தருமத்தை செய்யும்படி தாழ்மையுடன் கேட்டுக் கொள்கிறோம். <br /><br />
                இவண், <br />
                அய்யாவின் பணியில், <br />
                க. நரசிம்மன், <br />
                சோனகன் விளை(P.O),<br />
                திருசெந்தூர் தாலுகா, <br />
                தூத்துக்குடி மாவட்டம்,<br />
                <b>9566459437.</b>
	        </p>
        </div>
    </div>
<!--Donation dialog-->

    <div id="maindiv">
    <div>
        <a href="index.aspx">
        <img src="Images/logo.jpg" border="0" alt="Ayya Vaikundar"/>
        </a>
    </div>
    <div class="corner mainbox">
      <div class="box1">
        <div class="corner box11">
            <div class="corner box12">
                <center><h1 class="homeh1">
                <a href="ayya-vaikundar.aspx">Ayya Vaikundar (அய்யா வைகுண்டர்)</a></h1></center>
            </div>
        </div>
       </div>
        
       <div>
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
       <div class="left box3">
            <div class="corner box31">
                <div class="box32">
                    <div>
<b>Ayya Vaikundar.com உங்களை வரவேற்கிறது!</b><br/>
<p style="font-size:12px">இந்த இணையத்தளம் அய்யா வைகுண்டரை பற்றிய தகவல்களை தருகின்றது.
நீங்கள் அகிலத்திரட்டு அம்மனை புத்தகத்தை online -இல்  படிக்கவும் download-ம் செய்துகொள்ளலாம்.
மேலும் நீங்கள் அய்யாவின் பாடல்கள், படங்கள், வீடியோக்கள் ஆகியவற்றை download மற்றும் upload செய்துகொள்ளலாம். - அய்யா உண்டு. </p>
                        <b>Welcome to vaikundar.com !</b>
                        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;This site shares the information about God Ayya Vaikundar.
                        You can upload and download Ayya Vaikundar Songs, Photos and Videos. Also Edu Vasippu Songs, Akilathirattu Ammanai Bhagavad Gita available here.
                        You can post your feedback and information about Ayya Vaikundar to share with Ayya Vazhi people also to improve this site. - Ayya Undu</p>
                    </div>

               </div>
            </div>
            <%--<div>
                <a class="media {width:190, height:180, type:'swf'}" href="http://youtube.com/v/TyvN59L4hJU">Youtube Video (SWF)</a> 
            </div>--%>
       </div>
       <div class="space">&nbsp;</div>
       
       <div class="box4">
        <div class="corner box41">
             <div class="corner box42">
                  <center>Features</center>
            </div>
            
            <div style="height:10px">&nbsp;</div>
           
            <div>
             <div class="feature">
                <div class="feature-left">&nbsp;</div>
                <div class="feature-mid">
                    <center>
                    <div class="feature-image">
                        <a href="downloads.aspx"><img src="Images/home/download.png" alt="Download Ayya Vaikundar Songs, Akilathirattu and Edu Vasippu"/></a>
                    </div>
                    <div>
                        <h2><a href="downloads.aspx" class="feature-link">Downloads</a></h2>
                    </div>
                    </center>
                </div>
                <div class="feature-right">&nbsp;</div>
            </div>
            </div>
           
            <div>
             <div class="feature">
                <div class="feature-left">&nbsp;</div>
                <div class="feature-mid">
                    <center>
                    <div class="feature-image">
                        <a href="upload.aspx"><img src="Images/home/upload.png" alt="Upload Ayya Vaikundar Songs, Videos and Photos"/></a>
                    </div>
                    <div>
                        <h2><a href="upload.aspx" class="feature-link">Uploads</a></h2>
                    </div>
                    </center>
                </div>
                <div class="feature-right">&nbsp;</div>
            </div>
            </div>
           
            <div>
             <div class="feature">
                <div class="feature-left">&nbsp;</div>
                <div class="feature-mid">
                    <center>
                    <div class="feature-image">
                        <a href="akilathirattu-ammanai.aspx"><img src="Images/home/akilathirattu.png" alt="Read and download Akilathirattu Ammanai"/></a>
                    </div>
                    <div>
                        <h2 style="margin-top:5px;"><a href="read-akilathirattu-ammanai-online.aspx" class="feature-link">Akilathirattu</a></h2>
                    </div>
                    </center>
                </div>
                <div class="feature-right">&nbsp;</div>
            </div>
            </div>
           
            <div>
             <div class="feature">
                <div class="feature-left">&nbsp;</div>
                <div class="feature-mid">
                    <center>
                    <div class="feature-image">
                        <a href="gallery.aspx"><img src="Images/home/gallery.png" alt="View Photos, Play Ayya Vaikundar Songs and Videos"/></a>
                    </div>
                    <div>
                        <h2><a href="gallery.aspx" class="feature-link">Gallery</a></h2>
                    </div>
                    </center>
                </div>
                <div class="feature-right">&nbsp;</div>
            </div>
            </div>
           
            <div>
             <div class="feature">
                <div class="feature-left">&nbsp;</div>
                <div class="feature-mid">
                    <center>
                    <div class="feature-image">
                        <a href="view-blogs.aspx"><img src="Images/home/post-blog.png" alt="View Post and Post Information about Ayya Vaikundar"/></a>
                    </div>
                    <div>
                        <h2><a href="view-blogs.aspx" class="feature-link">Blog</a></h2>
                    </div>
                    </center>
                </div>
                <div class="feature-right">&nbsp;</div>
            </div>
            </div>
           
        </div>
        </div>
           
       <div class="space">&nbsp;</div>
       
       <div class="box4">
        <div class="corner box41" style="height:250px">
             <div class="corner box42">
                  <center>Special Videos</center>
            </div>
            
            <div style="height:10px">&nbsp;</div>
           
            <div>
             <div class="feature">
                <div>
                    <a class="media {width:190, height:180, type:'swf'}" href="http://youtube.com/v/rdFTDTvrBnA">ஏடு வாசிப்பு</a> 
                </div>
            </div>
            </div>
             <div>
             <div class="feature">
                <div>
                    <a class="media {width:190, height:180, type:'swf'}" href="http://youtube.com/v/-rgmi7ZxOVI">அய்யா வழி பற்றி</a> 
                </div>
            </div>
            </div>
             <div>
             <div class="feature">
                <div>
                    <a class="media {width:190, height:180, type:'swf'}" href="http://youtube.com/v/rF2sN68olYc">கடம்பன் குளம்</a> 
                </div>
            </div>
            </div>
             <div>
             <div class="feature">
                <div>
                    <a class="media {width:190, height:180, type:'swf'}" href="http://youtube.com/v/REP_HX_lpYw">சுவாமி தோப்பு</a> 
                </div>
            </div>
            </div>
           
           
        </div>
        </div>
       
       <div class="space">&nbsp;</div>
       
       </div>  
    </div>
  
    <div style="clear:both;"></div>
    <div id="footer">
        <div style="display:none">Total Visits : <span id="ctl00_lblTotalVisits">1</span></div>

        <div style="padding-left:450px"><a href="sitemap.aspx">Sitemap</a></div>
    </div>

    
   </div>

</center>

       
    </form>
</body>
</html>
