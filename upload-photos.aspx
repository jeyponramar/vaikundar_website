<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="upload-photos.aspx.cs" Inherits="upload_photos" Title="Upload Photo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>Ayya Vaikundar - Upload Photos</title>

<link rel="Stylesheet" href="common.css" />
<link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.6/themes/base/jquery-ui.css" id="theme"/>
<link rel="stylesheet" href="Script/jquery.fileupload-ui.css" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script language="javascript">
$(document).ready(function() {
    
    $(".small_blue_round_div").corner("10px");
    $(".small_blue_round_div").hover(
      function () {
        $(this).toggleClass("small_blue_round_div_hover");
        
      }
    );
  
});

</script>    


<div><h1>Upload Photos</h1></div>
<div>
    You can share photos related to Ayya, Temple photos or Festivel photos.<br />
    The photos you upload will be visible to all web users.<br /><br />
    <span class="error"> Note : Do not upload any unwanted or branded photos.</span><br /><br />
</div>
<hr />
<div id="divAlbum" runat="server" visible="false">
    <div style="float:left;width:200px;">Album Name   : </div>
    <div><asp:Label ID="lblAlbumName" runat="server"></asp:Label></div>
</div>
<div id="divAddAkbum" runat="server">
    <div><asp:Label ID="lblStatus" runat="server" Text="Fields specified as * are mandatory" CssClass="error" Visible="false"></asp:Label></div>
    <div style="float:left;width:200px;">Album Name  <span class="error">*</span> : </div>
    <div style="float:left;"><asp:TextBox ID="txtAlbumName" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rq1" runat="server" ErrorMessage="Enter Album Name" ControlToValidate="txtAlbumName" ValidationGroup="vg"></asp:RequiredFieldValidator>
    </div>
    <div style="clear:both;">&nbsp;</div>
    <div style="float:left;width:200px;">Description : </div>
    <div style="float:left;"><asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Height="70" Width="300"></asp:TextBox></div>
    <div style="clear:both;">&nbsp;</div>    
    <div style="float:left;width:200px;">Your Name <span class="error">*</span>  : </div>
    <div style="float:left;"><asp:TextBox ID="txtName" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Your Name" ControlToValidate="txtName" ValidationGroup="vg"></asp:RequiredFieldValidator>
    </div>
    <div style="clear:both;">&nbsp;</div> 
    <div style="float:left;width:200px;">Email Id <span class="error">*</span> : </div>
    <div style="float:left;"><asp:TextBox ID="txtEmailId" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Email Id" ControlToValidate="txtEmailId" ValidationGroup="vg"></asp:RequiredFieldValidator>
    </div>
    <div style="clear:both;">&nbsp;</div>            
     <div>
        <asp:Button ID="btnAddAlbum" runat="server" Text="Add Album" OnClick="lnkAddAlbum_Click"/>
    </div>
    <div style="clear:both;">&nbsp;</div>            
    <div><asp:Label ID="lblAlbumStatus" runat="server" CssClass="error"></asp:Label></div>
</div>    

<div style="clear:both">&nbsp;</div>
<iframe width="100%" height="1000" frameborder="0" id="divPhotos" runat="server" visible="true"
src="fileupload.aspx?type=image&id=1">
</iframe>
    
</asp:Content>

