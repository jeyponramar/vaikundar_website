<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="upload1.aspx.cs" Inherits="uploads1" Title="Upload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>Ayya Vaikundar - Upload Ayya Vaikundar Photos, Songs and Videos</title>
<meta name="Description" content="Ayya Vaikundar (God Narayana) - Kali yuga and dharma yuga god ayya vaikundar. Akilathirattu ammanai book is written by Ayya Vaikundar. Download akilathirattu ammanai,edu vasippu, bhagavad gita and ayya songs" />
<meta name="Keywords" content="ayya vaikundar,history,narayana,akilathirattu ammanai,lord,god,bhagavad gita,download edu vasippu,download ayya songs,ayya videos,kadampan kulam,swamithoppu,upload ayya songs photos videos" />

    <script language="javascript" type="text/javascript">
        $(document).ready(function() {
            $("#uploaddialog").hide();
            $(".lnkbutton").corner("3px");
        });
        $(document).ready(function() {
            $('#uploaddialog').bind('dialogclose', function(event) {
                $("#maindiv").css({ opacity: 1 });
            });
        });

        function openuploadwindow(type) {
            $("#<%=divuploadform.ClientID %>").show();
            $("#<%=divupload.ClientID %>").hide();
            $("#<%=hdnfiletype.ClientID %>").val(type);

            $("#maindiv").css({ opacity: 0.1 });

            jQuery(function() {
                var dlg = jQuery("#uploaddialog").dialog({
                    draggable: true,
                    resizable: true,
                    show: 'Transfer',
                    hide: 'Transfer',
                    width: 600,
                    autoOpen: true,
                    minHeight: 10,
                    minwidth: 10
                });
                dlg.parent().appendTo(jQuery("form:first"));
            });

        }
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
    <h1>Upload Photos, Songs and Videos</h1>
    <asp:ScriptManager ID="sm" runat="server"></asp:ScriptManager>
</div>
<div style="padding-left:150px">
    <div style="width:5%;float:left;">&nbsp;</div>
    <div style="float:left;width:400px;background-color:#376092" class="corner">
    <div style="float:left;background-color:Black;margin:10px;" class="corner">
            <div class="white-text" style="margin:5px">
                You can upload and share ayya photos, songs and videos.
                Also you can post blogs about Ayya Vaikundar or about Ayya Temple.
                Select an option below to upload files.
                <asp:HiddenField ID="hdnfiletype" runat="server" />
            </div>
            <br />
            <center>
            <div class="big_blue_round_div">
                <a href="javascript:openuploadwindow('image')">Upload Photos >></a>
            </div><br />
            <div class="big_blue_round_div">
                <a href="javascript:openuploadwindow('song')">Upload Songs >></a>
            </div><br />
            <div class="big_blue_round_div">
                <a href="javascript:openuploadwindow('video')">Upload Videos >></a>
            </div><br />
             <div class="big_blue_round_div">
                <a href="post-blog.aspx">New Post >></a>
            </div>
            <div style="height:20px;">&nbsp;</div>
            </center>
        </div>
    </div>
</div>    
<div style="height:50px;">&nbsp;</div>

<div id="uploaddialog" title="Upload" style="opacity:1;">
    <asp:UpdatePanel ID="up" runat="server" UpdateMode="Conditional">
    <ContentTemplate>
    <div style="height:500px">
        <div class="space">&nbsp;</div> 
        <div id="divuploadform" runat="server">
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
        <div>
        <div id="divupload" runat="server">
        <div class="left">Acceptable formats : </div>
        <div class="left error"><asp:Label id="lblAcceptableExt" runat="server"></asp:Label></div>
         <iframe width="100%" height="450px" frameborder="0" id="frupload" runat="server"
            src="">
         </iframe>
         </div>
         </div>
        </div> 
     </ContentTemplate>
     </asp:UpdatePanel>
</div>

</asp:Content>

