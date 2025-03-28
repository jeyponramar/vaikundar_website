<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="view-blogs.aspx.cs" Inherits="view_posts" Title="Ayya Vaikundar - View Blogs " %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>Ayya Vaikundar - View Posts</title>

<script language="javascript">
$(document).ready(function() {
    $(".post-row").corner("10px");
    $(".post-altrow").corner("10px");
   
});

</script> 

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div><h1>All Posts</h1></div>
<div class="space">&nbsp;</div>
<div>
    Below are the blogs about Ayya Vaikundar posted by website users. 
    Click on "View Blog" to to read the selected blog.
</div>
<div class="space">&nbsp;</div>
<div>
    <a href="post-blog.aspx">Click here</a> to post new blog about Ayya Vaikundar or any Ayya Vaikundar Temple.
</div>
<div class="space">&nbsp;</div>
<div style='font-size:11px'>
<asp:Repeater ID="rptpost" runat="server">
    <ItemTemplate>
        <div class="post-row">
            <div><h3><%# DataBinder.Eval(Container.DataItem, "title")%></h3></div><div class="sspace">&nbsp;</div>
            <div><%# GetDesc(DataBinder.Eval(Container.DataItem, "description"))%></div><div class="space">&nbsp;</div>
            <div class="left"><%# DataBinder.Eval(Container.DataItem, "postdate")%></div><div class="right"><a href="view-blog.aspx?postid=<%# DataBinder.Eval(Container.DataItem, "postid")%>">View Blog</a></div>
            <div class="sspace">&nbsp;</div>
        </div>
    </ItemTemplate>
    <AlternatingItemTemplate>
        <div class="post-altrow">
            <div><h3><%# DataBinder.Eval(Container.DataItem, "title")%></h3></div><div class="sspace">&nbsp;</div>
            <div><%# GetDesc(DataBinder.Eval(Container.DataItem, "description"))%></div><div class="space">&nbsp;</div>
            <div class="left"><%# DataBinder.Eval(Container.DataItem, "postdate")%></div><div class="right"><a href="view-blog.aspx?postid=<%# DataBinder.Eval(Container.DataItem, "postid")%>">View Blog</a></div>
            <div class="sspace">&nbsp;</div>
        </div>
    </AlternatingItemTemplate>
</asp:Repeater>
</div>
</asp:Content>

