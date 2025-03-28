<%@ Page Title="Upload Video-You Tube" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="upload-video-from-youtube.aspx.cs" Inherits="upload_video_from_youtube" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>Ayya Vaikundar - Upload Videos from Youtube</title>

   <%--for youtube--%>
   <script type="text/javascript" src="http://jquery.malsup.com/media/jquery.media.js?v0.94"></script>
    <script type="text/javascript" src="http://jquery.malsup.com//jquery.metadata.v2.js"></script>

    <script language="javascript">
        $(document).ready(function() {
            $(".lnkbutton").corner("10px");
            $('a.media').media();
        });
       
    </script>
    
   <script src="http://www.google.com/jsapi?key=AIzaSyA5m1Nc8ws2BbmPRwKu5gFradvD_hgq6G0" type="text/javascript"></script>
    <script type="text/javascript" language="javascript">


        /*
        *  How to setup a textarea that allows Transliteration from English to Tamil.
        */

        google.load("elements", "1", { packages: "transliteration" });

        function OnLoad() {
            //var content = document.getElementById('content');
            // Create the HTML for our text area
            //content.innerHTML = '<div>Type a word and hit space to get it in Tamil. ' +
            //                  'Click on a word to see more options.</div>' +
            //                '<textarea cols="100" rows="5" id="transliterateTextarea"></textarea>' +
            //              '<div>Type in (do not copy/paste): ' +
            //            '<b>amma</b></div>';

            var options = {
                sourceLanguage:
              google.elements.transliteration.LanguageCode.ENGLISH,
                destinationLanguage:
              [google.elements.transliteration.LanguageCode.TAMIL],
                shortcutKey: 'ctrl+g',
                transliterationEnabled: true
            };

            // Create an instance on TransliterationControl with the required
            // options.
            var control =
          new google.elements.transliteration.TransliterationControl(options);

            // Enable transliteration in the textbox with id
            // 'transliterateTextarea'.
            //control.makeTransliteratable(['<%=txtTitle.ClientID%>']);
            control.makeTransliteratable(['<%=txtTitleTamil.ClientID%>']);
        }
        google.setOnLoadCallback(OnLoad);
        function changelanguage(lang) {
            if (lang == 1) {
                document.getElementById('<%=txtTitleTamil.ClientID%>').style.display = "block";
                document.getElementById('<%=txtTitle.ClientID%>').style.display = "none";
            }
            else {
                document.getElementById('<%=txtTitleTamil.ClientID%>').style.display = "none";
                document.getElementById('<%=txtTitle.ClientID%>').style.display = "block";
            }
        }
    </script>    
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
    <h1>Upload Videos from Youtube</h1>
</div>
<div class="space">&nbsp;</div>
<div>
    You can upload videos which are available in youtube.<br />
    Please add youtube videos below to share with visisters.
</div>
<div class="space">&nbsp;</div>
<div>
    <div class="label">&nbsp;</div>
    <div class="left"><asp:Label ID="lblerror" runat="server" CssClass="error"></asp:Label></div>
       <div class="space">&nbsp;</div> 
        <div class="label">Language</div>
        <div class="left">
            <asp:RadioButtonList ID="rbtn" runat="server">
                <asp:ListItem Selected="True" Text="தமிழ்" Value="1" onclick="changelanguage(1)"></asp:ListItem>
                <asp:ListItem Selected="False" Text="English" Value="2" onclick="changelanguage(2)"></asp:ListItem>
            </asp:RadioButtonList>
        </div>
        <div class="space">&nbsp;</div>
        <div class="label">Title <span class="error">*</span></div>
        <div class="left">
        <asp:TextBox ID="txtTitle" runat="server" Width="300" TextMode="MultiLine" style="display:none"></asp:TextBox>
        <asp:TextBox ID="txtTitleTamil" runat="server" Width="300" TextMode="MultiLine" style="display:block"></asp:TextBox>
        <br />
        <%--<asp:RequiredFieldValidator ID="rq1" runat="server" ControlToValidate="txtTitle"
        ErrorMessage="Please enter title" ValidationGroup="vg"></asp:RequiredFieldValidator>--%>
        </div>
        <div class="space">&nbsp;</div>   
    <div class="label">Youtube video URL : </div>
    <div class="left"><asp:TextBox ID="txturl" runat="server" Width="300"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton2" runat="server" Text="Play this video" CssClass="lnkbutton" OnClick="lnkplay_click"></asp:LinkButton></div>
    <div class="space">&nbsp;</div>    
    <div class="label">&nbsp;</div>
    <div class="left error">Below is the video you have mentioned above</div>
    <div class="space">&nbsp;</div>
    <div class="label">&nbsp;</div>
    <div class="left">
        <asp:HyperLink ID="player" runat="server" CssClass="media {width:300, height:250, type:'swf'}"
        NavigateUrl="http://youtube.com/v/RBQKPunelf4"></asp:HyperLink>
     </div>
    <div class="space">&nbsp;</div>    
    <div class="label">&nbsp;</div>
    <div class="left">
        <asp:LinkButton ID="LinkButton1" runat="server" Text="upload" CssClass="lnkbutton" OnClick="lnkupload_click"></asp:LinkButton>
    </div>
</div>
</asp:Content>

