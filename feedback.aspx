<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback" Title="Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>Ayya Vaikundar - Feedback</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div><h1>Feedback</h1></div>
<div>Please share your valuable comments or feedback with us to improve this site.</div>
<div>&nbsp;</div>
<div><asp:label id="lblStatus" Runat="server" EnableViewState="False" CssClass="error"></asp:label></div>
 <div>
        <h2 style="background-color:Brown; color:Wheat; font-family:Verdana; font-size:14px" align=center>
        Please enter the following requested information below to send us your comments.</h2>
			<table align="center" width="500" cellpadding="5">
				<tr>
					<td><span style="font-family:Verdana; font-size:12px; font-weight:bold;color:Brown;">Your Name:</span></td>
					<td><asp:textbox id="txtName" Width="241" Runat="server"></asp:textbox></td>
				</tr>
				<tr>
					<td><span style="font-family:Verdana; font-size:12px; font-weight:bold;color:Brown;">Your Email Address:</span>
					<span class="error"> *</span></td>
					<td><asp:textbox id="txtEmail" Width="241" Runat="server"></asp:textbox></td>
				</tr>
				<tr>
					<td colSpan="2" ><span style="font-family:Verdana; font-size:12px; font-weight:bold; color:Brown;">Your Comment:</span></td>
				</tr>
				<tr>
					<td align="center" colSpan="2" width=100%><asp:textbox id="txtMessage" Width="100%" Runat="server" Height="99" TextMode="MultiLine" MaxLength="400"></asp:textbox></td>
				</tr>
				<tr>
					<td colSpan="2">&nbsp;</td>
				</tr>
				<tr>
					<td align=center><asp:button id="btnSendmail" Runat="server" Text="Send Mail" OnClick="btnSendmail_Click"></asp:button></td>
				</tr>
			</table>
    </div>
</asp:Content>

