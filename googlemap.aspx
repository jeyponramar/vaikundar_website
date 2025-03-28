<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="googlemap.aspx.cs" Inherits="googlemap"  Title="Google Map" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
<script>
function initialize() {
var mapDiv = document.getElementById('map-canvas');
var map = new google.maps.Map(mapDiv, {
  center: new google.maps.LatLng(8.117102,77.491612),
  zoom: 14,
  mapTypeId: google.maps.MapTypeId.ROADMAP
});

var infoWindow = new google.maps.InfoWindow({
  position: map.getCenter(),
  content: '<span class="map"><b>AYYA VAIKUNDA SWAMY TEMPLE</b></span><br /><br /><span class="I-map">Head of all Ayya Pathies,</span><br /> Swamithope, <br /> Kanyakumari District,<br /> Tamil Nadu,<br />INDIA.'
});
infoWindow.open(map);
}

google.maps.event.addDomListener(window, 'load', initialize);
</script>
<title>Ayya Vaikundar - Google Map</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div><h1>Google Map</h1></div>

<table width="100%" cellpadding="0" cellspacing="0" align="center">
   <tr><td>&nbsp;</td></tr>
     <tr><td class="lastmenu">How To Reach Ayya Vaikundar Temple @ Swamithoppu?</td></tr>
       <tr>
         <td style="color:#000000;">
           <table width="80%" cellpadding="0" cellspacing="0" align="center">
            <tr>
              <td>&nbsp;</td></tr>
            <tr>
              <td style="padding-left:15px;"><div id="map-canvas" style="width: 775px; height: 400px"></div></td>
            </tr>
            <tr>
              <td>&nbsp;</td></tr>
            <tr>
          </table>
        </td>
    </tr>
</table>

</asp:Content>