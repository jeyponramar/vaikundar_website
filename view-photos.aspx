<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="view-photos.aspx.cs" Inherits="view_photos" Title="Ayya Vaikundar - View Photos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>Ayya Vaikundar - View Photos</title>
<link rel="stylesheet" href="js/photo-gallery/css/prettyPhoto.css" type="text/css" media="screen" title="prettyPhoto main stylesheet" charset="utf-8" />
<script src="js/photo-gallery/js/jquery.prettyPhoto.js" type="text/javascript" charset="utf-8"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div><h1>View Photos</h1></div>
<div class="space">&nbsp;</div>
<div>
<table width="100%">
    <tr>
        <td class="error" align="center" style="padding-top:10px;">Click on photos for Slideshow</td>
    </tr>
    <tr>
        <td class="content">
            <table class="gallery">                   
                   <tr>
                       <asp:Literal ID="photos" runat="server"></asp:Literal>
                   </tr>
            </table>            
        </td>
    </tr>    
</table>
</div>
<script type="text/javascript" charset="utf-8">
	$(document).ready(function(){
		$("area[rel^='prettyPhoto']").prettyPhoto();
		
		$(".gallery:first a[rel^='prettyPhoto']").prettyPhoto({animation_speed:'normal',theme:'light_square',slideshow:3000, autoplay_slideshow: true});
		$(".gallery:gt(0) a[rel^='prettyPhoto']").prettyPhoto({animation_speed:'fast',slideshow:10000, hideflash: true});

		$("#custom_content a[rel^='prettyPhoto']:first").prettyPhoto({
			custom_markup: '<div id="map_canvas" style="width:260px; height:265px"></div>',
			changepicturecallback: function(){ initialize(); }
		});

		$("#custom_content a[rel^='prettyPhoto']:last").prettyPhoto({
			custom_markup: '<div id="bsap_1259344" class="bsarocks bsap_d49a0984d0f377271ccbf01a33f2b6d6"></div><div id="bsap_1237859" class="bsarocks bsap_d49a0984d0f377271ccbf01a33f2b6d6" style="height:260px"></div><div id="bsap_1251710" class="bsarocks bsap_d49a0984d0f377271ccbf01a33f2b6d6"></div>',
			changepicturecallback: function(){ _bsap.exec(); }
		});
	});
	</script> 
</asp:Content>