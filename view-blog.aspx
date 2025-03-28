<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="view-blog.aspx.cs" Inherits="view_post" Title="View Blog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>அய்யா வைகுண்டர் (Ayya Vaikundar)</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
    <div><h1><asp:Label ID="lblTitle" runat="server"></asp:Label></h1></div>
    <div style="float:right">
    <div style="color:#826C55;font-weight:bold;">
        <asp:Label ID="lblPosteddate" runat="server"></asp:Label>
    </div>
    </div>
    <div style="clear:both">&nbsp;</div>
    <div>
        <asp:Label ID="lblDesc" runat="server"></asp:Label>
    </div>
    <div style="clear:both">&nbsp;</div>
   <%-- <div class="corner" style="background-color:#444444;height:20px;color:White;font-weight:bold;padding:5px;">
        Comments
    </div>
    <div>&nbsp;</div>
    <div style="background-color:#F8F3EF;padding:10px;font-family:Arial;">
        <div style="float:left;padding-right:15px;padding-bottom:5px;">
            <img src="images/user/user_default.jpg" title="user" alt="user"/>
        </div>
        <div style="float:left;padding-bottom:10px;"><span style="color:#2354FF"><b>ABC (test@gmail.com)</b></span> said : at 11:15am 13-jun-2000</div>
        <div>
        Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
        </div>
    </div>
    <div style="border-bottom:solid 1px #623463">&nbsp;</div>
    <div>&nbsp;</div>
    <div style="padding:5px;">
        Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
    </div>--%>
</div>
</asp:Content>

