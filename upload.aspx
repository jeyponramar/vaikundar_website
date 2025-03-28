<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="upload.aspx.cs" Inherits="uploads" Title="Ayya Vaikundar - Upload Ayya Vaikundar Photos, Songs and Videos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>Ayya Vaikundar - Upload Ayya Vaikundar Photos, Songs and Videos</title>


    <script language="javascript" type="text/javascript">
        $(document).ready(function() {
            $(".lnkbutton").corner("3px");
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
        function changelanguage(lang)
        {
            if(lang==1)
            {
                document.getElementById('<%=txtTitleTamil.ClientID%>').style.display="block";
                document.getElementById('<%=txtTitle.ClientID%>').style.display="none";
            }
            else
            {
                document.getElementById('<%=txtTitleTamil.ClientID%>').style.display="none";
                document.getElementById('<%=txtTitle.ClientID%>').style.display="block";            
            }
        }
    </script>


<script language="javascript">
    $(document).ready(function() {
        $(".corner").corner("10px");
        $(".lnkbutton").corner("10px");
        $(".big_blue_round_div").corner("10px");
        $(".big_blue_round_div").hover(
      function() {
          $(this).toggleClass("big_blue_round_div_hover");

      }
    );

    });
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
    <h1><asp:Label ID="lbltitle" runat="server" Text="Upload Photos, Songs and Videos"></asp:Label></h1>
</div>
<div>
    <div style="float:left;width:500px;background-color:#376092" class="corner" id="divoptions" runat="server">
    <div style="float:left;background-color:Black;margin:10px;" class="corner">
            <div class="white-text" style="margin:5px">
                You can upload and share ayya photos, songs and videos.
                Also you can post blogs about Ayya Vaikundar or about Ayya Temple.
                Select an option below to upload files.
            </div>
            <br />
            <center>
            <div class="big_blue_round_div">
                <a href="upload.aspx?type=image">Upload Photos >></a>
            </div><br />
            <div class="big_blue_round_div">
                <a href="upload.aspx?type=song">Upload Songs >></a>
            </div><br />
            <div class="big_blue_round_div">
                <a href="upload.aspx?type=video">Upload Videos >></a>
            </div><br />
            <div class="big_blue_round_div">
                <a href="upload-video-from-youtube.aspx">Youtube Videos >></a>
            </div><br />
             <div class="big_blue_round_div">
                <a href="post-blog.aspx">New Post >></a>
            </div>
            <div style="height:20px;">&nbsp;</div>
            </center>
        </div>
    </div>
    
    <div id="divuploadform" runat="server" visible="false">
        <div><asp:Label ID="lblerror" runat="server" CssClass="error"></asp:Label></div>
        <div class="space">&nbsp;</div> 
        <div class="label">Language</div>
        <div class="left">
            <asp:RadioButtonList ID="rbtn" runat="server">
                <asp:ListItem Selected="True" Text="தமிழ்" Value="1" onclick="changelanguage(1)"></asp:ListItem>
                <asp:ListItem Selected="False" Text="English" Value="2" onclick="changelanguage(2)"></asp:ListItem>
            </asp:RadioButtonList>
        </div>
        <div class="space">&nbsp;</div>
        <div class="label">Title</div>
        <div class="left">
        <asp:TextBox ID="txtTitle" runat="server" Width="300" TextMode="MultiLine" style="display:none"></asp:TextBox>
        <asp:TextBox ID="txtTitleTamil" runat="server" Width="300" TextMode="MultiLine" style="display:block"></asp:TextBox>
        <br />
        <%--<asp:RequiredFieldValidator ID="rq1" runat="server" ControlToValidate="txtTitle"
        ErrorMessage="Please enter title" ValidationGroup="vg"></asp:RequiredFieldValidator>--%>
        </div>
        <div class="space">&nbsp;</div>
        <%--<div class="label">Description</div>
        <div class="left"><asp:TextBox ID="txtDesc" runat="server" TextMode="MultiLine" Rows="5" Width="300"></asp:TextBox></div>--%>
        <div class="space">&nbsp;</div>                
        
        <div class="lnkbutton">
            <asp:Button ID="lnksave" runat="server" OnClick="btnSave_Click" Text="save and continue" ToolTip="Save and continue upload"></asp:Button>
        </div>
    </div>
    <div id="divupload" runat="server" visible="false">
    
    <div class="left">Acceptable formats : <asp:Label id="lblAcceptableExt" runat="server" CssClass="error"></asp:Label></div>
    <div class="right">
        <div class="lnkbutton"><a href="upload.aspx">done</a></div>
    </div>
    <div class="space">&nbsp;</div>    
    
     <iframe width="100%" height="600px" frameborder="0" id="frupload" runat="server"
        src="">
     </iframe>
     </div>
</div>    


</asp:Content>

