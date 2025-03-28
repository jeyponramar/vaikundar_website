<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="post-blog.aspx.cs"
 Inherits="new_post" Title="Post Blog" ValidateRequest="false" EnableEventValidation="false"%>
<%@ Register Src="~/controls/Post.ascx" TagName="Post" TagPrefix="uc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>Ayya Vaikundar - New Post</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div><h1>New Post</h1></div>
<div style="clear:both">&nbsp;</div>
<div>
    You can share information about Ayya Vaikundar in this section. 
    Also you can share information about your native as well as temple.
</div>
<div>
    <uc:Post ID="post" runat="server" PostType="post"/>
</div>
</asp:Content>

