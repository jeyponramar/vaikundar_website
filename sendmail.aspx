<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="sendmail.aspx.cs" Inherits="feedback" Title="Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>Ayya Vaikundar - Send Mail</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div><h1>Send Mail to All</h1></div>
<div>&nbsp;</div>
<div><asp:label id="lblStatus" Runat="server" EnableViewState="False" CssClass="error"></asp:label></div>
 <div>
            <table>
                <tr>
					<td colSpan="2" ><span style="font-family:Verdana; font-size:12px; font-weight:bold; color:Brown;">Subject:</span></td>
				</tr>
				<tr>
					<td align="center" colSpan="2" width=100%><asp:textbox id="txtToEmailIds" Width="500" Runat="server"></asp:textbox></td>
				</tr>
                <tr>
					<td colSpan="2" ><span style="font-family:Verdana; font-size:12px; font-weight:bold; color:Brown;">Subject:</span></td>
				</tr>
				<tr>
					<td align="center" colSpan="2" width=100%><asp:textbox id="txtSubject" Width="500" Runat="server"></asp:textbox></td>
				</tr>
				<tr>
					<td colSpan="2" ><span style="font-family:Verdana; font-size:12px; font-weight:bold; color:Brown;">Message:</span></td>
				</tr>
				<tr>
					<td align="center" colSpan="2" width=100%><asp:textbox id="txtMessage" Runat="server" Height="99" TextMode="MultiLine" 
					Width="500"></asp:textbox></td>
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

