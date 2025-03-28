<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" 
CodeFile="akilathirattu.aspx.cs" Inherits="akilathirattu" Title="Akilathirattu" MaintainScrollPositionOnPostback="true"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>Ayya Vaikundar - Akilathirattu Ammanai</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
    <h1>Akilathirattu Ammanai</h1>
</div>
<div>
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
    <b><a href="akilathirattu-ammanai.aspx">Click here</a> if you want to know about Akilathirattu Ammanai.</b><br /><br />
    <b><a href="download-akilathirattu.aspx">Click here</a> if you want to <span class="error"><b>download </b></span>Akilathirattu Ammanai book.</b>
</div>
<div style="float:right">
    Page Number : 
    <asp:Label ID="lblPageNumber" runat="server"></asp:Label>
</div>

<div style="clear:both;">&nbsp;</div>
<div style="background-color:#dddddd;border:1px solid;height:40px;">
    <div style="padding-top:10px;padding-left:50px;width:100%;border:0px solid;">
        <div style="float:left;width:200px">
            Total Pages : <asp:Label ID="lblTotal" runat="server" Font-Bold="true"></asp:Label>
        </div>
        <div style="float:left;width:80px">
            Go to Page
        </div>
        <div style="float:left;">
            <asp:TextBox ID="txtPageNumber" runat="server" MaxLength="4" Width="50"></asp:TextBox>&nbsp;&nbsp;&nbsp;
            <asp:Button runat="server" ID="btnGo" OnClick="btnGo_Onclick" Text="Go" Width="50"
            />
        </div>
        <div style="float:left;padding-left:100px;"><asp:HyperLink ID="lnkPrev" runat="server" Text="Previous"></asp:HyperLink></div>
        <div style="float:left;padding-left:50px;"><asp:HyperLink ID="lnkNext" runat="server" Text="Next"></asp:HyperLink></div>
    </div>
</div>    
<div><asp:Label ID="lblError" runat="server" CssClass="error" Text="Sorry, Page not found." Visible="false"></asp:Label></div>
<%--<div style="background-color:Gray;height:20px;padding:2px;"><b>Song</b></div>--%>
<div>
    <asp:Image ID="img1" runat="server" ToolTip="Song" Width="725"/>
</div>
<%--<div><b>Description</b></div>--%>
<%--<div>
    <asp:Image ID="img2" runat="server" ToolTip="Song Description" Width="725"/>
</div>--%>
<div style="clear:both;">&nbsp;</div>
</asp:Content>

