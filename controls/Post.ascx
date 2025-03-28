<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Post.ascx.cs" Inherits="controls_Post" %>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.6.1.min.js"></script>

    <script type="text/javascript" src="js/jHtmlArea-0.7.0.js"></script>
    <link rel="Stylesheet" type="text/css" href="css/jHtmlArea.css" />
    
    <script type="text/javascript" src="js/jHtmlArea.ColorPickerMenu-0.7.0.js"></script>
    <link rel="Stylesheet" type="text/css" href="css/jHtmlArea.ColorPickerMenu.css" />
    
    <script src="js/jquery-fieldselection.js" type="text/javascript"></script>
    <script src="http://www.google.com/jsapi?key=AIzaSyA5m1Nc8ws2BbmPRwKu5gFradvD_hgq6G0" type="text/javascript"></script>
    <script type="text/javascript">
    
    
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
            control.makeTransliteratable(['<%=txtTamil.ClientID%>']);
        }
        google.setOnLoadCallback(OnLoad);
        
    </script>
        <script type="text/javascript">
            $(function() {
                //$("textarea").htmlarea(); // Initialize jHtmlArea's with all default values
                $("#<%=txtHTML.ClientID%>").htmlarea({
                    toolbar: ["html", "|",
                            "forecolor",  // <-- Add the "forecolor" Toolbar Button
                            "|", "bold", "italic", "underline", "|", "p", "h2", "h3", "|", "image", "link", "unlink", "|", "indent", "outdent", "|", "justifyLeft", "justifyCenter", "justifyRight"] // Overrides/Specifies the Toolbar buttons to show
                });
                //window.setTimeout(function() { $("form").submit(); }, 3000);
            });
            
            function changetext() {
                obj = document.getElementById("<%=txtTamil.ClientID%>");
                if (obj.value == "இங்கே தமிழில் type செய்யலாம்") {
                    obj.value = "";
                }
            }


            $(document).ready(function() {
                $("#uploadbutton").click(function() {
                    var filename = $("#file").val();
                    $.ajax({
                        type: "POST",
                        url: "FileUpload.ashx?type=post",
                        enctype: 'multipart/form-data',
                        data: { file: filename },
                        success: function() {
                            alert("Data Uploaded: ");
                        }
                    });
                });
            });

    </script>

<div>
    <asp:Literal ID="litText" runat="server"></asp:Literal>
</div>
<div style="clear:both">&nbsp;</div>
<div>

    <div>
        <div style="width:100px;float:left"><b><asp:Label ID="lblTitle" runat="server"></asp:Label> <span class="error">* </span>:</b></div>
        <div style="float:left"><asp:TextBox ID="txtTitle" runat="server" Width="400"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="rq1"  ValidationGroup="vg" ErrorMessage="Enter Title" 
        ControlToValidate="txtTitle" runat="server"></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="space">&nbsp;</div>
    <div>
        <div style="width:100px;float:left"><b>Insert Image : </b></div>
        <div class="left"><asp:FileUpload ID="flupld" runat="server" Width="280"/></div>
        <div class="left" ><asp:Button ID="lnkupload" runat="server" OnClick="lnkupload_click" Text="Upload"></asp:Button></div>
        <div class="left" style="padding-left:20px"><asp:Image ID="imgupload" runat="server" Visible="false" width="100"/></div>
    </div>
    <div class="space">&nbsp;</div>
    <div>
        <div><b>Description : </b><br /></div>
        <div style="position:relative">
            <div style="position:absolute;left:450px;top:4px;">
                <div style="float:right;">
                 <input type="button" value="தமிழ்" onclick="document.getElementById('divTamil').style.display='block';" style="border:1px solid;background-color:White;cursor:pointer;"/>
                </div> 
            </div>
            <div>
                <textarea runat="server" id="txtHTML" cols="85" rows="25"></textarea>
            </div>
            <div id="divTamil" style="display:none;position:absolute;left:10px;top:30px;">
                <div style="background-color:#888888;float:right">
                    <input type="button" value="Close" onclick="document.getElementById('divTamil').style.display = 'none';" 
                    style="border:1px solid;background-color:White;cursor:pointer;"/>
                    <asp:Button ID="btnclose" runat="server" Text="OK" OnClick="btnclose_click" style="border:1px solid;background-color:White;cursor:pointer;"/>
                </div>
                <div>
                    <textarea runat="server" id="txtTamil" cols="80" rows="10" style="border:5px solid #444444" value="இங்கே தமிழில் type செய்யலாம்"
                    onclick="changetext()"></textarea>
                </div>
                
            </div>
        </div>
        
        <div>&nbsp;</div>
        <div>
            <asp:Button runat="server" ID="btnPreview" Text="Preview" OnClick="btnPreview_Click"/>&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button runat="server" ID="btnSubmit" Text="Post" OnClick="btnSubmit_Click"/>
        </div>
       </div>     
            
    </div>

