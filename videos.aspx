<%@ Page Title="Videos" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="videos.aspx.cs" Inherits="videos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>Ayya Vaikundar - Play and Download Ayya Videos</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div>
     <embed runat="server" id="VideoPlayer" src="http://www.youtube.com/v/SQDlsbn349Y" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="425" height="344"> </embed>
     </div>
     <asp:LinkButton ID="LinkButton1" OnClick="VideoSRC1" runat="server">Video 1</asp:LinkButton><br />
     <asp:LinkButton ID="LinkButton2" OnClick="VideoSRC2" runat="server">Video 2</asp:LinkButton><br />
     <asp:LinkButton ID="LinkButton3" OnClick="VideoSRC3" runat="server">Video 3</asp:LinkButton><br />
     <div><object width="560" height="340"><param name="movie" value="http://www.youtube.com/v/A5xRqVZgE-c&hl=en&fs=1&"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="http://www.youtube.com/v/A5xRqVZgE-c&hl=en&fs=1&" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="560" height="340"></embed></object></div>

</asp:Content>

