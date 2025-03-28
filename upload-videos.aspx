<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="upload-videos.aspx.cs" Inherits="upload_videos" Title="Upload Videos" %>
<%@ Register Src="~/controls/Post.ascx" TagName="Post" TagPrefix="uc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>Ayya Vaikundar - Upload Videos</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div><h1>Upload Videos</h1></div>
<div style="clear:both">&nbsp;</div>
<div>
    You can share videos related to Ayya Vaikundar or festivel of Ayya Temple.
</div>
<div>
    <uc:Post ID="post" runat="server" PostType="video"/>
</div>

</asp:Content>

