<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="view-songs.aspx.cs" Inherits="view_songs" Title="View Songs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>அய்யா வைகுண்டர் (Ayya Vaikundar) - அய்யாவின் பாடல்கள் - Play and Download Ayya Songs Free</title>

<script type="text/javascript" src="http://mediaplayer.yahoo.com/js"></script>
<script type="text/javascript" src="http://webplayer.yahooapis.com/player.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div><h1> அய்யாவின் பாடல்கள் - Play and Download Ayya Vaikundar Songs (Uploaded by users)</h1></div>
<div style="display:none">
    Below are the songs uploaded by users, you can also upload Ayya Vaikundar songs.<br />
    Upload and download are totally free in this site<br />
    Click on Play/View to view, play and download all the songs uploaded by users.
</div>
<div class="space">&nbsp;</div>

<asp:Literal ID="ltsongs" runat="server"></asp:Literal>

<div class="space">&nbsp;</div>

<div style="clear:both;">&nbsp;</div>
</asp:Content>

