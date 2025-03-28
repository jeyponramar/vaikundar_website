<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" Title="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>Ayya Vaikundar - Login/Register</title>


<script language="javascript">
$(document).ready(function() {
    
    $(".small_blue_round_div").corner("10px");
    $(".small_blue_round_div").hover(
      function () {
        $(this).toggleClass("small_blue_round_div_hover");
        
      }
    );
  $(".big_blue_round_div").corner("10px");
    $(".big_blue_round_div").hover(
      function () {
        $(this).toggleClass("big_blue_round_div_hover");
        
      }
    );
});

</script>    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div><h1>Register FREE</h1></div>
<div class="white-text">

<div style="float:left;width:45%;background-color:#376092" class="corner">
    <div style="float:left;background-color:Black;margin:10px" class="corner">
    <div style="margin:20px;">
        <div style="margin:5px">
        Login here if you have already registered. You can able to upload Photos, Songs and Videos after login.<br />
        <asp:Label ID="lblLoginStatus" runat="server" Text="Invalid Email Id / Password" Visible="false" CssClass="error"></asp:Label>
        </div>
        <br />
        <div class="label">Email Id</div>
        <div><asp:TextBox CssClass="text" ID="txtEmailId_Login" runat="server"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtEmailId_Login" ValidationGroup="vg1" ErrorMessage="Enter Email Id" runat="server"></asp:RequiredFieldValidator></div>
        <div class="label">Password</div>
        <div><asp:TextBox CssClass="text" ID="txtPassword_Login" runat="server" TextMode="Password"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtPassword_Login" ValidationGroup="vg1" ErrorMessage="Enter Password" runat="server"></asp:RequiredFieldValidator></div>
        <div style="width:150px;float:left">&nbsp;</div>
        <div class="small_blue_round_div" style="float:left">
            <asp:LinkButton ID="lnkLogin" runat="server" OnClick="btnLogin_Click" Text="Login" ValidationGroup="vg1"/>
        </div>
        <div style="clear:both;height:20px;">&nbsp;</div>
        <div>
        If you do not wish to register then you can login as guest.
        </div>
        <div style="clear:both;height:10px;">&nbsp;</div>
        <div class="big_blue_round_div" style="float:left">
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="btnGuest_Click" Text="Login as Guest"/>
        </div>
        <div style="clear:both;height:20px;">&nbsp;</div>
    </div>
    </div>
</div>    


<div style="width:5%;float:left;">&nbsp;</div>
<div style="float:left;width:45%;background-color:#376092" class="corner">
    <div style="float:left;background-color:Black;margin:10px" class="corner">
    <div style="margin:20px;">
        <div style="margin:5px">
        Register FREE here if you have not registered. You can able to upload Photos, Songs and Videos once you registered.<br />
        <asp:Label ID="lblStatus" runat="server" CssClass="error"></asp:Label>
        </div>
        <br />
        <div class="label">Email Id</div>
        <div><asp:TextBox CssClass="text" ID="txtEmailId" runat="server"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="rq1" ControlToValidate="txtEmailId" ValidationGroup="vg2" ErrorMessage="Enter Email Id" runat="server"></asp:RequiredFieldValidator>
        </div>
        <div class="label">Password</div>
        <div><asp:TextBox CssClass="text" ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtPassword" ValidationGroup="vg2" ErrorMessage="Enter Password" runat="server"></asp:RequiredFieldValidator></div>
        <div class="label">Name</div>
        <div><asp:TextBox CssClass="text" ID="txtName" runat="server"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtName" ValidationGroup="vg2" ErrorMessage="Enter Your Name" runat="server"></asp:RequiredFieldValidator></div>
        <div class="label">Phone No.</div>
        <div><asp:TextBox CssClass="text" ID="txtPhoneNo" runat="server"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="txtPhoneNo" ValidationGroup="vg2" ErrorMessage="Enter Your Phone Number" runat="server"></asp:RequiredFieldValidator></div>
        <%--<div>Place</div>
        <div><asp:TextBox CssClass="text" ID="txtPlace" runat="server"></asp:TextBox></div>    
        <div>About You</div>
        <div><asp:TextBox CssClass="text" ID="txtAboutYou" runat="server" TextMode="MultiLine"></asp:TextBox></div>    --%>
        <div style="width:150px;float:left">&nbsp;</div>
        <div class="small_blue_round_div" style="float:left">
            <asp:LinkButton ID="lnkRegister" runat="server" OnClick="btnRegister_Click" Text="Register" ValidationGroup="vg2"/>
        </div>
        <div style="clear:both;height:20px;">&nbsp;</div>
    </div>
    </div>
</div>    
</div>
</asp:Content>

