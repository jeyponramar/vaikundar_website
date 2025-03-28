<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" 
CodeFile="read-akilathirattu-ammanai-online.aspx.cs" Inherits="akilathirattu" Title="Akilathirattu Read Online" MaintainScrollPositionOnPostback="true"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>அய்யா வைகுண்டர் (Ayya Vaikundar) - அகிலத்திரட்டு அம்மானை (Akilathirattu Ammanai)</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
    <h1>அகிலத்திரட்டு அம்மானை - Akilathirattu Ammanai</h1>
</div>

<div>
<embed src="doc/Holy Akilathirattu - AS IT IS.pdf" width="1000px" height="2100px" />
</div>

<%--<div>
    <b>Akilathirattu Ammanai</b> explains Past, Present as well as Future of this world.
    This book was written in "Edu" by Hari Gobalan with the help of Ayya Vaikundar.<br />
    Hari Gopalan was the one of the Sishya of Ayya Vaikundar.
    We have taken a copy of Akilathirattu Ammanai book and displaying in this site to help Ayya Vaikundar followers.
    Read this book you will get an idea of life, this world as well as future of this world.
    We have not added or removed anything from the book. <br /><br />
    <span class="error"> Please contact us if you find any difficulities or any wrong information in this site.</span><br />
    
</div>
<div style="clear:both;">&nbsp;</div>
<div>
    <b><a href="about-akilathirattu-ammanai.aspx">Click here</a> if you want to know about Akilathirattu Ammanai.</b><br /><br />
    <b><a href="download-akilathirattu-ammanai.aspx">Click here</a> if you want to <span class="error"><b>download </b></span>Akilathirattu Ammanai book.</b>
</div>
<div style="float:right">
    Page Number : 
    <asp:Label ID="lblPageNumber" runat="server"></asp:Label>
</div>

<div style="clear:both;">&nbsp;</div>
<div style="background-color:#dddddd;border:1px solid;height:40px;">
    <div style="margin-top:10px;padding-left:50px;width:100%;border:0px solid;">
        <div style="float:left;width:200px">
            Total Pages : <asp:Label ID="lblTotal" runat="server" Font-Bold="true"></asp:Label>
        </div>
        <div style="float:left;width:80px">
            Go to Page
        </div>
        <div style="float:left;">
            <asp:TextBox ID="txtPageNumber" runat="server" MaxLength="4" Width="50" ></asp:TextBox>&nbsp;&nbsp;&nbsp;
            <asp:Button runat="server" ID="btnGo" OnClick="btnGo_Onclick" Text="Go"/>
        </div>
        <div style="float:left;padding-left:50px;"><asp:HyperLink ID="lnkPrev" runat="server" Text="Previous"></asp:HyperLink></div>
        <div style="float:left;padding-left:50px;"><asp:HyperLink ID="lnkNext" runat="server" Text="Next"></asp:HyperLink></div>
    </div>
</div>    
<div><asp:Label ID="lblError" runat="server" CssClass="error" Text="Sorry, Page not found." Visible="false"></asp:Label></div>
<div>
    <asp:Image ID="img1" runat="server" ToolTip="Song" Width="725"/>
</div>--%>
<div style="clear:both;">&nbsp;</div>
</asp:Content>

