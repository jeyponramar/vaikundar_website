<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Ayya Vaikundar</title>
    <meta name="Description" content="Ayya Vaikundar (God Narayana) - Kali yuga and dharma yuga god ayya vaikundar. Akilathirattu ammanai book is written by Ayya Vaikundar. Download akilathirattu ammanai,edu vasippu, bhagavad gita and ayya songs" />
    <meta name="Keywords" content="ayya vaikundar,narayana,akilathirattu ammanai,lord,god,bhagavad gita,download edu vasippu,free download ayya songs,ayya videos,kadampan kulam,swamithoppu,upload ayya songs photos videos" />

    <link href="common.css" rel="stylesheet" type="text/css"/>

    <script src="js/jquery.min.js" type="text/javascript"></script>
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

</head>
<body style="font-family: Arial,Helvetica;">
    <form id="form1" runat="server">
   
    <center>
    <div id="maindiv">
    <div>
        <a href="index.aspx">
        <img src="Images/logo.jpg" border="0" alt="Ayya Thunai, Ayya Vaikundar"/>
        </a>
    </div>
    <div class="corner mainbox">
      <div class="box1">
        <div class="corner box11">
            <div class="corner box12">
                <center><h1 class="homeh1">Ayya Vaikundar</h1></center>
            </div>
        </div>
       </div>
        
       <div>
       <div class="left box2">
            <div class="corner box21">
                <center>
                    <div id="divslidetitle" class="corner box22">&nbsp;</div>
                    <div class="space">&nbsp;</div>
                    <div style="height:250px"><img id="imgslide" /></div>
                    <div class="space">&nbsp;</div>
                </center>   
            </div>
       </div>
       <div class="left box3">
            <div class="corner box31">
                <div class="box32">
                    <div>
                        <b>Welcome to vaikundar.com !</b><br />
                        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;This site shares the information about God Ayya Vaikundar.
                        You can download Edu Vasippu Songs, Akilathirattu Ammanai Book and Ayya Songs.
                        Akilathirattu Ammanai and Bhagavad Gita are available for you in Tamil to read as well as download.
                        You can upload songs, videos and post information about Ayya Vaikundar to share with Ayya Vazhi people.
                        Please share your feedback, information, Photos and videos about Ayya with us to improve this site.<br /></p>
                    </div>
                    <div>- Ayya Undu</div>
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
                        <a href="downloads.aspx"><img src="Images/home/download.png" alt="Download Ayya Songs, Akilathirattu and Edu Vasippu"/></a>
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
                        <a href="upload.aspx"><img src="Images/home/upload.png" alt="Upload Songs, Videos and Photos"/></a>
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
                        <h2 style="margin-top:5px;"><a href="akilathirattu-ammanai.aspx" class="feature-link">Akilathirattu</a></h2>
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
                        <a href="gallery.aspx"><img src="Images/home/gallery.png" alt="View Photos, Play Ayya Songs and Videos"/></a>
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
                        <a href="view-blogs.aspx"><img src="Images/home/post-blog.png" alt="View Post and Post Information about Ayya"/></a>
                    </div>
                    <div>
                        <h2><a href="post.aspx" class="feature-link">Blog</a></h2>
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
        <div style="padding-left:400px"><a href="about-us.aspx">About Us</a></div>
        <div><a href="sitemap.aspx">Sitemap</a></div>
    </div>
   </div>

</center>

       
    </form>
</body>
</html>