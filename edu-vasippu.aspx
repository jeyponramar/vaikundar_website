<%@ Page Title="Edu Vasippu" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="edu-vasippu.aspx.cs" Inherits="edu_vasippu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>அய்யா வைகுண்டர்  (Ayya Vaikundar) - ( திரு ஏடு வாசிப்பு) Edu Vasippu Songs Download</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div><h1>ஏடு வாசிப்பு (Edu Vasippu) Songs Download</h1></div>
<div id="divPlayer" runat="server">
    <div style="float:left;">
        <OBJECT ID="MediaPlayer" WIDTH="192" HEIGHT="190" CLASSID="CLSID:22D6F312-B0F6-11D0-94AB-0080C74C7E95" STANDBY="Loading Windows Media Player components..." TYPE="application/x-oleobject">
        <PARAM NAME="FileName" VALUE="">
        <PARAM name="ShowControls" VALUE="true">
        <param name="ShowStatusBar" value="true">
        <PARAM name="ShowDisplay" VALUE="true">
        <PARAM name="autostart" VALUE="true">
        <EMBED TYPE="application/x-mplayer2" SRC="" id="player" runat="server"
        NAME="MediaPlayer" WIDTH="400" HEIGHT="350" ShowControls="1" ShowStatusBar="1" ShowDisplay="1" autostart="1"> </EMBED>
        </OBJECT>
    </div>
    <div style="float:left;margin:50px;">
        <asp:HyperLink ID="lnkDownload" runat="server" Text="Download Full Song"></asp:HyperLink>
    </div>
    <div style="clear:both;"></div>
    <div style="height:20px">&nbsp;</div>
</div>
<div style="clear:both;"></div>
<div>
இங்கே பதினேழு நாள்களுக்கான அய்யாவின் திரு ஏடு வாசிப்பு பாடல்கள் உள்ளன. நீங்கள் எல்லா பாடல்களையும் download  செய்து கொள்ளலாம்.
</div>
<div class="sspace">&nbsp;</div>
<div>
    There are seventeen days edu vasippu, you can play the below sample songs and download by click on <b>"Download Full Song"</b> to download each day edu vasippu.
    When you click on download it will download a zip file which need to unzipped to get the songs.
    You may have to download one by one to hear all songs.<br /><br />
    Click on <b>Download - Low Quality File</b> to download low quality (file size reduced) song for <span class="error"> slow net connection</span>.<br />
    Click on <b>Download - High Quality File</b> to download high quality song for <span class="error">speed net connection</span>.<br />
</div>
<div>
<asp:Literal ID="ltSongs" runat="server"></asp:Literal>
</div>
</asp:Content>

