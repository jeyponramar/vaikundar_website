<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="view-posts.aspx.cs" Inherits="view_posts" Title="View Posts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>Ayya Vaikundar - View Posts</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div><h1>All Posts</h1></div>
<div style="clear:both">&nbsp;</div>
<div>
<asp:Repeater ID="rptpost" runat="server">
    <ItemTemplate>
        <div style="background-color:#F8F3EF;padding:10px;">
            
            <div><h3><%# DataBinder.Eval(Container.DataItem, "title")%></h3></div><div style="clear:both">&nbsp;</div>
            <div><%# GetDesc(DataBinder.Eval(Container.DataItem, "description"))%></div><div style="clear:both">&nbsp;</div>
            <div style="float:left"><%# DataBinder.Eval(Container.DataItem, "postdate")%></div><div style="float:right"><a href="view-post.aspx?postid=<%# DataBinder.Eval(Container.DataItem, "postid")%>">View Post</a></div>
            <div style="clear:both">&nbsp;</div>
        </div>
        
    </ItemTemplate>
    <AlternatingItemTemplate>
        <div style="padding:10px;">
            <div><h3><%# DataBinder.Eval(Container.DataItem, "title")%></h3></div><div style="clear:both">&nbsp;</div>
            <div><%# GetDesc(DataBinder.Eval(Container.DataItem, "description"))%></div><div style="clear:both">&nbsp;</div>
            <div style="float:left"><%# DataBinder.Eval(Container.DataItem, "postdate")%></div><div style="float:right"><a href="view-post.aspx?postid=<%# DataBinder.Eval(Container.DataItem, "postid")%>">View Post</a></div>
            <div style="clear:both">&nbsp;</div>
        </div>
    </AlternatingItemTemplate>
</asp:Repeater>
</div>
</asp:Content>

