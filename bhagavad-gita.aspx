<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="bhagavad-gita.aspx.cs" Inherits="bhagavad_gita" Title="Bhagavad Gita" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>Ayya Vaikundar - Bhagavad Gita Downloads (in Tamil)</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div><h1>Bhagavad Gita Downloads (in Tamil)</h1></div>
<div>
Srimad Bhagavad Gita available in <b>Tamil</b> language.<br />
Bhagavad Gita is having 18 parts which are available in different pdf files below.<br />
Please download one by one...
</div>
<div style="clear:both;">&nbsp;</div>
<div>
    <asp:Literal ID="ltBhagavadGita" runat="server"></asp:Literal>
</div>

</asp:Content>

