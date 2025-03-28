<%@ Page Title="Ayya Vaikundar Songs" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="songs.aspx.cs" Inherits="songs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>அய்யா வைகுண்டர் (Ayya Vaikundar) - அய்யாவின் பாடல்கள் - Play and Download Ayya Songs Free</title>
<script type="text/javascript" src="http://mediaplayer.yahoo.com/js"></script>
<script type="text/javascript" src="http://webplayer.yahooapis.com/player.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div><h1>அய்யாவின் பாடல்கள் - Play and Download Ayya Songs (Free)</h1></div>

<div>
    Click on <b>mp3</b> file to play the song<br /> 
    Click on Download to download the song, when you click on download it will download a <b>zip</b> file which need to unzipped to get the songs. You may have to download one by one to hear all songs.
</div>
<div>
<center>
<embed TYPE="application/x-mplayer2" runat="server" id="player" 
pluginspage="http://www.microsoft.com/isapi/redir.dll?prd=windows&sbp=mediaplayer&ar=Media&sba=Plugin&" 
Name="MediaPlayer" loop="false" ShowControls="1" autostart="true"></embed>
</center>
</div>
<div class="space">&nbsp;</div>
<div class="right"><a href="view-songs.aspx">Click here to download more songs >>.</a></div>
<div class="space">&nbsp;</div>

<div class="heading">Chattu Needolai</div>
<div>
    <asp:Literal ID="ltChattuSongs" runat="server"></asp:Literal>
</div>
<div class="heading">Thechanathu Thenmangu</div>
<div>
    <asp:Literal ID="ltThechanthuThenmangu" runat="server"></asp:Literal>
</div>
<div class="space">&nbsp;</div>
<div class="right"><a href="view-songs.aspx">Click here to download more songs >></a></div>
</asp:Content>

