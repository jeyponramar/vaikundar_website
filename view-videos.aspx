<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="view-videos.aspx.cs" Inherits="view_videos" Title="Ayya Vaikundar - Play and Download Video " %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>Ayya Vaikundar - Play and Download Video</title>

<%--to play video files--%>
<script type="text/javascript" src="http://jquery.malsup.com/media/jquery.media.js?v0.94"></script>
<%--for swf and flv files--%>
<script type="text/javascript" src="http://jquery.malsup.com/media/swfobject.js"></script>
<%--for youtube--%>
<script type="text/javascript" src="http://jquery.malsup.com//jquery.metadata.v2.js"></script>

<script language="javascript">
    $(function() {
        //$.fn.media.mapFormat('avi','quicktime');
        // this one liner handles all the examples on this page
        $('a.media').media();
    });
</script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div style="padding:10px;">
    <h1>Play and Download Ayya Vaikundar Video</h1>
</div>
<div style="clear:both;">&nbsp;</div>
<div style="margin-left:20px">
    <asp:Literal ID="ltvideos" runat="server"></asp:Literal>
<%--<asp:Repeater ID="rptsongs" runat="server">
    <HeaderTemplate>
        <div class="gridtitle" style="width:200px">Song Title</div>
        <div class="gridtitle" style="width:100px">Total Songs</div>
        <div class="gridtitle" style="width:200px">Uploaded By</div>
        <div class="gridtitle" style="width:100px">Uploaded On</div>
        <div class="gridtitle" style="width:100px">Play/View</div>
    </HeaderTemplate>
    <ItemTemplate>
       <div class="left" style="width:400px">
        <div class="songtitle"><%# DataBinder.Eval(Container.DataItem,"title")%></div>
        <div>
            
        </div>
        <div class="lighttext"><%# DataBinder.Eval(Container.DataItem, "username")%></div>
        <div class="lighttext"><%# DataBinder.Eval(Container.DataItem, "postdate")%></div>
       </div> 
    </ItemTemplate>
</asp:Repeater>

<div class="videobox">
    <div class="songtitle left">title</div>
    <div class="lighttext right">username</div>
    <div class="sspace">&nbsp;</div>
    <div class="video">
        video
    </div>
    <div class="sspace">&nbsp;</div>
    <div class="lighttext left">postdate</div>
    <div class="lighttext right"><a href="#">download</a></div>
</div>
<div class="left width50">&nbsp;</div>

<%--
<a class="media {width:480, height:280}" href="http://malsup.github.com/video/simpsons.mov">MOV File (video)</a> 
<a class="media {width:250, height:250}" href="http://jquery.malsup.com/media/flash/curtain.flv">FLV File</a> 
<a class="media {width:250, height:250}" href="http://jquery.malsup.com/media/mediaplayer.swf?file=http://jquery.malsup.com/media/flash/curtain.flv">SWF with FLV (mediaplayer.swf?file=curtain.flv)</a> 
<a class="media {width:250, height:200}" href="http://jquery.malsup.com/media/flash/snail.swf">SWF File</a> 
<a class="media {width:450, height:380, type:'swf'}" href="http://youtube.com/v/TyvN59L4hJU">Youtube Video (SWF)</a> 
<a class="media {width:480, height:425}" href="http://malsup.github.com/video/ski.wmv">WMV File</a> 
<a class="media {width:300, height:300}" href="upload/videos/2.avi">AVI File</a> 
<a class="media {width:250, height:150}" href="http://malsup.github.com/video/pulsar.mpg">MPG File</a> 
<a class="media {width:250, height:180}" href="http://malsup.github.com/video/tube.3g2">3G2 File (cell phone video)</a> 
<a class="media {width:400, height:250}" href="http://malsup.github.com/video/realvideo.ram">RAM File</a> 
<a class="media {width:650, height:500, caption: false}" href="flash/line.swf" id="lr">Line Rider!</a> 
--%>

</div>
</asp:Content>

