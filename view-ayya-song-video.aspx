<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="view-ayya-song-video.aspx.cs" Inherits="view_ayya_song_video" Title="View Ayya Song Video" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>Ayya Vaikundar - View Ayya Vaikundar Photos, Songs and Videos</title>

<script language="javascript" type="text/javascript">
    $(document).ready(function() {
    
    $(".big_blue_round_div").corner("10px");
    $(".big_blue_round_div").hover(
      function () {
        $(this).toggleClass("big_blue_round_div_hover");
        
      }
    );
  
    });
        
</script>        
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
    <h1>View Ayya Vaikundar Photos, Songs and Videos</h1>
    <asp:ScriptManager ID="sm" runat="server"></asp:ScriptManager>
</div>

<div style="padding-left:150px">
    <div style="float:left;width:400px;background-color:#376092" class="corner">
    <div style="float:left;background-color:Black;margin:10px;" class="corner">
        <div class="white-text" style="margin:5px">
            Here you can view photos, songs and videos related to Ayya Vaikundar.
            Select any option below to view uploaded by visiters.
        </div>
       
        <br />
        <center>
        <div class="big_blue_round_div">
            <a href="view-photos.aspx">View Photos >></a>
        </div>
        <br />
        <div class="big_blue_round_div">
            <a href="view-songs.aspx">View Songs >></a>
        </div><br />
        <div class="big_blue_round_div">
            <a href="view-videos.aspx">View Videos >></a>
        </div><br />
        <div class="big_blue_round_div">
            <a href="view-posts.aspx">View Post >></a>
        </div>
        <div style="height:20px;">&nbsp;</div>
        </center>
    </div>
    </div>
</div>      
<div style="height:50px;">&nbsp;</div>



</asp:Content>

