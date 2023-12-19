<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signUp.aspx.cs" Inherits="signUp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up New Account</title>
</head>

  <style type="text/css">
    body {
      font-family: arial, sans-serif;
      margin: 0;
      padding: 13px 15px 15px;
    }
    .body {
      margin: 0;
    }
    div.errorbox-good {}

    div.errorbox-bad {} 

    div.errormsg { color: red; font-size: smaller; font-family: arial,sans-serif;}
    font.errormsg { color: red; font-size: smaller; font-family: arial,sans-serif;}
    
    div.pagemsg {
      font-size: smaller; 
      font-weight: bold; 
      text-align: center;
    }
    div.pagemsg span {
      padding: 5px; 
      background: #ff9;
    }

    
    div.topbarwrap {
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      z-index: 1000;
    }
    div.topbar {
      padding: 3px 8px 0px;
    }
    div.header {
      
      margin-bottom: 9px;
      margin-left: -2px;
      position:relative;
      
    }
    div.header img.logo {
      border: 0;
      float:left;
    }
    div.header div.headercontent {
      float:right;
      margin-top:17px;
    }
    div.header:after{
      content:".";
      display:block;
      height:0;
      clear:both;
      visibility:hidden;
    }
    div.pagetitle {
      font-weight:bold;
    }
    
    .footer { 
      color: #666;
      font-size: smaller;
      margin-top: 40px;
      text-align: center;
    }
    
    table#signupform {
      left: -5px;
      top: -7px;
      position:relative;
    }
    table#signupform td{
      padding: 7px 5px;
    }
    table#signupform td table td{
      padding: 1px;
    }

    
    

    
    
  --></style>
<style type="text/css">
  
   
  .gaia.ops.gsl { font-family: arial, sans-serif; color: #3366cc; font-weight: bold;} 
  
  
  .gaia.sub.el { font-family: arial, sans-serif; font-size: smaller; font-weight: bold;}
  .gaia.sub.pl { font-family: arial, sans-serif; font-size: smaller; font-weight: bold; }
  .gaia.sub.rpl { font-family: arial, sans-serif; font-size: smaller; font-weight: bold; }
  .gaia.sub.es { font-family: arial, sans-serif; font-size: smaller; font-style: italic; }
  .gaia.sub.seex { font-family: arial, sans-serif; font-size: smaller; color: #6f6f6f; }
  .gaia.sub.pc { font-family: arial,sans-serif; font-size: smaller; color: #6f6f6f; }
   
    
   .gaia.cca.al { font-family: arial, sans-serif; font-size: smaller; font-weight: bold;}
  .gaia.cca.ol { font-family: arial, sans-serif; font-size: x-small;}
  .gaia.cca.cmt { font-family: arial, sans-serif; font-size: smaller; color: #6f6f6f; }
      
    
   .gaia.cud.cl { font-family: arial, sans-serif; font-size: smaller; font-weight: bold;}
   
    
  .gaia.captchahtml.desc { font-family: arial, sans-serif; font-size: smaller; } 
  .gaia.captchahtml.cmt { font-family: arial, sans-serif; font-size: smaller; color: #6f6f6f; }

    
  .gaia.sub.norm { font-family: arial, sans-serif; font-size: smaller;}

    #gaia_langform
    {
        height: 24px;
        width: 434px;
    }

    #SecondaryEmail
    {
        width: 320px;
    }

    .style1
    {
        height: 76px;
    }

--></style></head>

  <body dir="ltr" onload="return(doKtInit());" alink="#ff0000" bgcolor="#ffffff" link="#0000cc" text="#000000" vlink="#551a8b">
  <!-- NewAccount.naui=default -->
 
<table align="center" border="0" cellpadding="0" cellspacing="0" width="94%">
  <tbody><tr valign="top">
  <td>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img 
          alt=" " src="browsers-768x360.jpg" 
          style="width: 888px; height: 293px" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </td>
  <td bgcolor="#ffffff" valign="top" width="99%">
      &nbsp;</td>
  </tr>
</tbody></table>
  <div class="body">
        <form id="createaccount" runat="server">
  <h3>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Create an Account&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
          style="font-size: small">Goto 
      Login page</asp:LinkButton>
</h3>
  <script type="text/javascript"><!-- 
    function onPreCreateAccountSubmit() {
      doKtSubmit();
      
      return onPreCreateAccount();
    }
  --></script>
  <input id="served_tos_language" name="served_tos_language" value="en" type="hidden">
  <input id="served_tos_location" name="served_tos_location" value="IN" type="hidden">
  <input id="requested_tos_language" name="requested_tos_language" value="en" type="hidden">
<input id="privacy_policy_url" name="privacy_policy_url" value="http://www.google.com/intl/en/privacy/" type="hidden">
  <input id="program_policy_url" name="program_policy_url" value="http://mail.google.com/mail/help/program_policies.html" type="hidden">
  <input name="newaccounturl" id="newaccounturl" value="https://accounts.google.com/Captcha?ctoken=ErEJawtsGoRcosHCgyV333nCVJy_FBuUVDDTukIRd6vtOtDzU17N6514xHRDqkLmMF0Jgp1UvQrvHfEWIs6Ocw%3AjMi183z0tnYBxFANmB8FJg" type="hidden">
  <input name="newaccounttoken" id="newaccounttoken" value="ErEJawtsGoRcosHCgyV333nCVJy_FBuUVDDTukIRd6vtOtDzU17N6514xHRDqkLmMF0Jgp1UvQrvHfEWIs6Ocw:jMi183z0tnYBxFANmB8FJg" type="hidden">
  <input name="newaccounturl_audio" id="newaccounturl_audio" value="https://accounts.google.com/Captcha?ctoken=p-KW8vE2xn9Vvy11fzc91DEYX-zjp-3mZJVk56vDifTpnXmyq97XZDdi_aHuHgi3ZdW-hBXf5JDkzcbiTrm5bg%3A0-7yQv7suEcT8nON4I4FfA" type="hidden">
  <input name="newaccounttoken_audio" id="newaccounttoken_audio" value="p-KW8vE2xn9Vvy11fzc91DEYX-zjp-3mZJVk56vDifTpnXmyq97XZDdi_aHuHgi3ZdW-hBXf5JDkzcbiTrm5bg:0-7yQv7suEcT8nON4I4FfA" type="hidden">
  <input value="1" id="nshk" name="nshk" type="hidden">
  <input name="type" id="type" value="2" type="hidden">
  <input name="dsh" id="dsh" value="1047042878543483600" type="hidden">
  <input name="ktl" id="ktl" value="A" type="hidden">
  <input name="ktf" id="ktf" value="FirstName LastName Email Passwd PasswdAgain IdentityAnswer SecondaryEmail newaccountcaptcha " type="hidden">
  
 
  </div> 

<div>
<table bgcolor=#E0FFFF border="0" cellpadding="2" cellspacing="0" 
      
      
      
        
        
        style="width: 75%; top: 387px; left: 217px; position: absolute; height: 629px">
  <tbody><tr><td>
  <table bgcolor="#98AFC7" border="0" cellpadding="2" cellspacing="0" width="1%">
  <tbody><tr><td>
  <table bgcolor="#98AFC7" border="0" cellpadding="2" cellspacing="0" 
          style="width: 62%">
  <tbody><tr><td align="center" bgcolor="#98AFC7" valign="top">
  <div id="cookieWarning1" align="left">&nbsp;</div><table bgcolor="#E0FFFF" border="0" cellpadding="5" cellspacing="0" width="100%">
  <tbody><tr>
  <td colspan="2" valign="top">
  <span class="gaia ops gsl">
      New User Signup<br>
  </span>
  </td>
  </tr>
  <tr id="AttrRowFirstName" style="display: table-row;">
  <td id="AttrLabelCellFirstName" nowrap="nowrap" valign="top">
  <label for="FirstName" class="gaia cca al">
  First name:
  </label>
  </td>
  <td id="AttrLabelCellFirstName">
  <script type="text/javascript"><!--
              function openWindow(url, w, h) {
                var popupWin =
                  window.open(url, 'windowname',
                  'width=' + w + ', height=' + h + ', location=no, menubar=no, status=no, toolbar=no, scrollbars=yes, resizable=yes');
              }
             --></script>
  <div>
  <input n="1" name="FirstName" id="FirstName" size="30" type="text" runat="server">
  </div>
  </td>
  </tr>
  <tr id="AttrRowLastName" style="display: table-row;">
  <td id="AttrLabelCellLastName" nowrap="nowrap" valign="top">
  <label for="LastName" class="gaia cca al">
  Last name:
  </label>
  </td>
  <td id="AttrLabelCellLastName">
  <script type="text/javascript"><!--
              function openWindow(url, w, h) {
                var popupWin =
                  window.open(url, 'windowname',
                  'width=' + w + ', height=' + h + ', location=no, menubar=no, status=no, toolbar=no, scrollbars=yes, resizable=yes');
              }
             --></script>
  <div>
  <input n="2" name="LastName" id="LastName" size="30" type="text" runat="server">
  </div>
  </td>
  </tr>
<tr>
  <td nowrap="nowrap" valign="top">
      <label for="Email" style="font-size: smaller; font-weight: bold;">
      Login Name:
  </label>
  <span>&nbsp;</span>
  </td>
  <td nowrap="nowrap">
  <table role="presentation" dir="ltr">
  <tbody><tr>
  <td dir="ltr" class="style1">
  <select name="UsernameSelector" id="UsernameSelector" onchange="updateEmailBox(this.value, false)" style="display:none;">
  <option selected="selected" value="header" style="font-style: italic;">
  Choose a username
  </option>
  <option value="enterNew" style="font-style: italic;">
  Enter a new username
  </option>
  </select>
  <bdo dir="ltr">
  <div>
  <div id="googleIdTextfield" style="display:block">
  <input n="3" name="Email" id="Email" size="30" type="text" runat="server">
  </div>
  </div>
  </bdo>
  <div id="googleIdCheckAvailDiv" style="display: block;">
<div id="errorDIV">
  <font face="Arial, sans-serif" size="-1">
  <br>
  </font>
</div>
<div id="checkavailbuttondiv" style="display: block;">
  <div>
  &nbsp;</div>
</div>
<div id="suggestionsDIV">
  <br>
  <font face="Arial, sans-serif" size="-1">
  </font>
</div>

  </div>

  <noscript>
  </noscript>
  </td>
  <td nowrap="nowrap" valign="top" class="style1">
  <bdo dir="ltr">
  <font face="Arial, sans-serif" size="-1">
  <i>@mymail.com</i>
  </font>
  </bdo>
  <input id="edk" name="edk" value="gmail.com" type="hidden">
  </td>
  </tr>
  </tbody></table>
  </td>
</tr>
  <tr>
  <td nowrap="nowrap" valign="top" width="1%">
  <label for="Passwd" style="font-size: smaller; font-weight: bold">
  Choose a password:
  &nbsp;&nbsp;</label>
  </td>
  <td valign="top">
  <table role="presentation" bgcolor="#ffffff" cellpadding="0" cellspacing="0">
  <tbody>
  <tr>
  <td valign="top">
  <div>
  <input n="4" name="Passwd" id="Passwd" size="30" onkeyup="CreateRatePasswdReq('createaccount')" type="password" runat="server">
  </div>
  </td>
  </tr>
  </tbody>
  </table>
  </td>
  </tr>
  <tr>
  <td nowrap="nowrap" valign="top">
  <label for="PasswdAgain" style="font-size: smaller; font-weight: bold">
  Re-enter password:
  </label>
  </td>
  <td>
  <div>
  <input n="5" name="PasswdAgain" id="PasswdAgain" size="30" type="password" runat="server">
  </div>
  </td>
  </tr>
  <tr>
  <td nowrap="nowrap">&nbsp;</td>
  <td align="left">
  <input name="PersistentCookie" id="PersistentCookie" value="yes" checked="checked" type="checkbox">
&nbsp;<input name="rmShown" value="1" type="hidden"><label for="PersistentCookie" style="font-size: smaller">Stay signed in
  </label>
  </td>
  </tr>
    <tr id="AttrRowSecretQuestion" style="display: table-row;">
  <td id="AttrLabelCellSecretQuestion" nowrap="nowrap" valign="top">
  <label for="SecretQuestion" class="gaia cca al">
  Security question:
  </label>
  </td>
  <td id="AttrLabelCellSecretQuestion">
  <select id="questions" name="selection" onchange="updateOwnQuestionBox(this.value)" runat="server">
  <option selected="selected" value="choosequestion" style="font-style: italic;">
  Choose a question ...
  </option>
  <option value="What is the name of your best friend from childhood?">What is the name of your best friend from childhood?</option>
  <option value="What was the name of your first teacher?">What was the name of your first teacher?</option>
  <option value="What is the name of your manager at your first job?">What is the name of your manager at your first job?</option>
  <option value="What was your first phone number?">What was your first phone number?</option>
  <option value="What is your vehicle registration number?">What is your vehicle registration number?</option>
  <option style="font-style: italic;" value="ownquestion">Write my own question</option>
 </select>
  </div>
  </td>
  </tr>
  <tr id="AttrRowIdentityAnswer" style="display: table-row;">
  <td id="AttrLabelCellIdentityAnswer" nowrap="nowrap" valign="top">
  <label for="IdentityAnswer" class="gaia cca al">
  Answer:
  </label>
  </td>
  <td id="AttrLabelCellIdentityAnswer">
 
  <div>
  <input n="6" name="IdentityAnswer" id="IdentityAnswer" size="53" autocomplete="off" type="text" runat="server">
  </div>
  </td>
  </tr>
  <tr id="AttrRowSecondaryEmail" style="display: table-row;">
  <td id="AttrLabelCellSecondaryEmail" nowrap="nowrap" valign="top">
  <label for="SecondaryEmail" class="gaia cca al">
  Recovery email:
  </label>
  </td>
  <td id="AttrLabelCellSecondaryEmail">
  <script type="text/javascript"><!--
              function openWindow(url, w, h) {
                var popupWin =
                  window.open(url, 'windowname',
                  'width=' + w + ', height=' + h + ', location=no, menubar=no, status=no, toolbar=no, scrollbars=yes, resizable=yes');
              }
             --></script>
  <div>
  <input n="7" name="SecondaryEmail" id="SecondaryEmail" size="30" type="text" runat="server">
  </div>
  </td>
  </tr>
<tr>
  <td nowrap="nowrap" valign="top">
  <label for="loc" style="font-size: smaller; font-weight: bold">
  Location:
  </label>
  </td>
  <td>
<noscript>
  <input type="hidden" name="hl" value="en" />
</noscript>
  <select id="loc" name="loc" onchange="javascript:onLocChange()" runat="server">
  <option value="AF">
  Afghanistan (افغانستان)
  </option>
  <option value="AX">
  Aland Islands
  </option>
  <option value="AL">
  Albania (Shqipëria)
  </option>
  <option value="DZ">
  Algeria (الجزائر)
  </option>
  <option value="AS">
  American Samoa
  </option>
  <option value="AD">
  Andorra
  </option>
  <option value="AO">
  Angola
  </option>
  <option value="AI">
  Anguilla
  </option>
  <option value="AQ">
  Antarctica
  </option>
  <option value="AG">
  Antigua and Barbuda
  </option>
  <option value="AR">
  Argentina
  </option>
  <option value="AM">
  Armenia (Հայաստան)
  </option>
  <option value="AW">
  Aruba
  </option>
  <option value="AU">
  Australia
  </option>
  <option value="AT">
  Austria (Österreich)
  </option>
  <option value="AZ">
  Azerbaijan (Azərbaycan)
  </option>
  <option value="BS">
  Bahamas
  </option>
  <option value="BH">
  Bahrain (البحرين)
  </option>
  <option value="BD">
  Bangladesh (বাংলাদেশ)
  </option>
  <option value="BB">
  Barbados
  </option>
  <option value="BY">
  Belarus (Белару́сь)
  </option>
  <option value="BE">
  Belgium (België)
  </option>
  <option value="BZ">
  Belize
  </option>
  <option value="BJ">
  Benin (Bénin)
  </option>
  <option value="BM">
  Bermuda
  </option>
  <option value="BT">
  Bhutan (འབྲུག་ཡུལ)
  </option>
  <option value="BO">
  Bolivia
  </option>
  <option value="BA">
  Bosnia and Herzegovina (Bosna i Hercegovina)
  </option>
  <option value="BW">
  Botswana
  </option>
  <option value="BV">
  Bouvet Island
  </option>
  <option value="BR">
  Brazil (Brasil)
  </option>
  <option value="IO">
  British Indian Ocean Territory
  </option>
  <option value="BN">
  Brunei (Brunei Darussalam)
  </option>
  <option value="BG">
  Bulgaria (България)
  </option>
  <option value="BF">
  Burkina Faso
  </option>
  <option value="BI">
  Burundi (Uburundi)
  </option>
  <option value="KH">
  Cambodia (Kampuchea)
  </option>
  <option value="CM">
  Cameroon (Cameroun)
  </option>
  <option value="CA">
  Canada
  </option>
  <option value="CV">
  Cape Verde (Cabo Verde)
  </option>
  <option value="KY">
  Cayman Islands
  </option>
  <option value="CF">
  Central African Republic (République Centrafricaine)
  </option>
  <option value="TD">
  Chad (Tchad)
  </option>
  <option value="CL">
  Chile
  </option>
  <option value="CN">
  China (中国)
  </option>
  <option value="CX">
  Christmas Island
  </option>
  <option value="CC">
  Cocos Islands
  </option>
  <option value="CO">
  Colombia
  </option>
  <option value="KM">
  Comoros (Comores)
  </option>
  <option value="CG">
  Congo
  </option>
  <option value="CD">
  Congo, Democratic Republic of the
  </option>
  <option value="CK">
  Cook Islands
  </option>
  <option value="CR">
  Costa Rica
  </option>
  <option value="CI">
  Côte d'Ivoire
  </option>
  <option value="HR">
  Croatia (Hrvatska)
  </option>
  <option value="CU">
  Cuba
  </option>
  <option value="CY">
  Cyprus (Κυπρος)
  </option>
  <option value="CZ">
  Czech Republic (Česko)
  </option>
  <option value="DK">
  Denmark (Danmark)
  </option>
  <option value="DJ">
  Djibouti
  </option>
  <option value="DM">
  Dominica
  </option>
  <option value="DO">
  Dominican Republic
  </option>
  <option value="EC">
  Ecuador
  </option>
  <option value="EG">
  Egypt (مصر)
  </option>
  <option value="SV">
  El Salvador
  </option>
  <option value="GQ">
  Equatorial Guinea (Guinea Ecuatorial)
  </option>
  <option value="ER">
  Eritrea (Ertra)
  </option>
  <option value="EE">
  Estonia (Eesti)
  </option>
  <option value="ET">
  Ethiopia (Ityop'iya)
  </option>
  <option value="FK">
  Falkland Islands
  </option>
  <option value="FO">
  Faroe Islands
  </option>
  <option value="FJ">
  Fiji
  </option>
  <option value="FI">
  Finland (Suomi)
  </option>
  <option value="FR">
  France
  </option>
  <option value="GF">
  French Guiana
  </option>
  <option value="PF">
  French Polynesia
  </option>
  <option value="TF">
  French Southern Territories
  </option>
  <option value="GA">
  Gabon
  </option>
  <option value="GM">
  Gambia
  </option>
  <option value="GE">
  Georgia (საქართველო)
  </option>
  <option value="DE">
  Germany (Deutschland)
  </option>
  <option value="GH">
  Ghana
  </option>
  <option value="GI">
  Gibraltar
  </option>
  <option value="GR">
  Greece (Ελλάς)
  </option>
  <option value="GL">
  Greenland
  </option>
  <option value="GD">
  Grenada
  </option>
  <option value="GP">
  Guadeloupe
  </option>
  <option value="GU">
  Guam
  </option>
  <option value="GT">
  Guatemala
  </option>
  <option value="GG">
  Guernsey
  </option>
  <option value="GN">
  Guinea (Guinée)
  </option>
  <option value="GW">
  Guinea-Bissau (Guiné-Bissau)
  </option>
  <option value="GY">
  Guyana
  </option>
  <option value="HT">
  Haiti (Haïti)
  </option>
  <option value="HM">
  Heard Island and McDonald Islands
  </option>
  <option value="HN">
  Honduras
  </option>
  <option value="HK">
  Hong Kong
  </option>
  <option value="HU">
  Hungary (Magyarország)
  </option>
  <option value="IS">
  Iceland (Ísland)
  </option>
  <option value="IN" selected="selected">
  India
  </option>
  <option value="ID">
  Indonesia
  </option>
  <option value="IR">
  Iran (ایران)
  </option>
  <option value="IQ">
  Iraq (العراق)
  </option>
  <option value="IE">
  Ireland
  </option>
  <option value="IM">
  Isle of Man
  </option>
  <option value="IL">
  Israel (ישראל)
  </option>
  <option value="IT">
  Italy (Italia)
  </option>
  <option value="JM">
  Jamaica
  </option>
  <option value="JP">
  Japan (日本)
  </option>
  <option value="JE">
  Jersey
  </option>
  <option value="JO">
  Jordan (الاردن)
  </option>
  <option value="KZ">
  Kazakhstan (Қазақстан)
  </option>
  <option value="KE">
  Kenya
  </option>
  <option value="KI">
  Kiribati
  </option>
  <option value="KW">
  Kuwait (الكويت)
  </option>
  <option value="KG">
  Kyrgyzstan (Кыргызстан)
  </option>
  <option value="LA">
  Laos (ນລາວ)
  </option>
  <option value="LV">
  Latvia (Latvija)
  </option>
  <option value="LB">
  Lebanon (لبنان)
  </option>
  <option value="LS">
  Lesotho
  </option>
  <option value="LR">
  Liberia
  </option>
  <option value="LY">
  Libya (ليبيا)
  </option>
  <option value="LI">
  Liechtenstein
  </option>
  <option value="LT">
  Lithuania (Lietuva)
  </option>
  <option value="LU">
  Luxembourg (Lëtzebuerg)
  </option>
  <option value="MO">
  Macao
  </option>
  <option value="MK">
  Macedonia (Македонија)
  </option>
  <option value="MG">
  Madagascar (Madagasikara)
  </option>
  <option value="MW">
  Malawi
  </option>
  <option value="MY">
  Malaysia
  </option>
  <option value="MV">
  Maldives (ގުޖޭއްރާ ޔާއްރިހޫމްޖ)
  </option>
  <option value="ML">
  Mali
  </option>
  <option value="MT">
  Malta
  </option>
  <option value="MH">
  Marshall Islands
  </option>
  <option value="MQ">
  Martinique
  </option>
  <option value="MR">
  Mauritania (موريتانيا)
  </option>
  <option value="MU">
  Mauritius
  </option>
  <option value="YT">
  Mayotte
  </option>
  <option value="MX">
  Mexico (México)
  </option>
  <option value="FM">
  Micronesia
  </option>
  <option value="MD">
  Moldova
  </option>
  <option value="MC">
  Monaco
  </option>
  <option value="MN">
  Mongolia (Монгол Улс)
  </option>
  <option value="ME">
  Montenegro (Црна Гора)
  </option>
  <option value="MS">
  Montserrat
  </option>
  <option value="MA">
  Morocco (المغرب)
  </option>
  <option value="MZ">
  Mozambique (Moçambique)
  </option>
  <option value="MM">
  Myanmar (Burma)
  </option>
  <option value="NA">
  Namibia
  </option>
  <option value="NR">
  Nauru (Naoero)
  </option>
  <option value="NP">
  Nepal (नेपाल)
  </option>
  <option value="NL">
  Netherlands (Nederland)
  </option>
  <option value="AN">
  Netherlands Antilles
  </option>
  <option value="NC">
  New Caledonia
  </option>
  <option value="NZ">
  New Zealand
  </option>
  <option value="NI">
  Nicaragua
  </option>
  <option value="NE">
  Niger
  </option>
  <option value="NG">
  Nigeria
  </option>
  <option value="NU">
  Niue
  </option>
  <option value="NF">
  Norfolk Island
  </option>
  <option value="MP">
  Northern Mariana Islands
  </option>
  <option value="KP">
  North Korea (조선)
  </option>
  <option value="NO">
  Norway (Norge)
  </option>
  <option value="OM">
  Oman (عمان)
  </option>
  <option value="PK">
  Pakistan (پاکستان)
  </option>
  <option value="PW">
  Palau (Belau)
  </option>
  <option value="PS">
  Palestinian Territories
  </option>
  <option value="PA">
  Panama (Panamá)
  </option>
  <option value="PG">
  Papua New Guinea
  </option>
  <option value="PY">
  Paraguay
  </option>
  <option value="PE">
  Peru (Perú)
  </option>
  <option value="PH">
  Philippines (Pilipinas)
  </option>
  <option value="PN">
  Pitcairn
  </option>
  <option value="PL">
  Poland (Polska)
  </option>
  <option value="PT">
  Portugal
  </option>
  <option value="PR">
  Puerto Rico
  </option>
  <option value="QA">
  Qatar (قطر)
  </option>
  <option value="RE">
  Reunion
  </option>
  <option value="RO">
  Romania (România)
  </option>
  <option value="RU">
  Russia (Россия)
  </option>
  <option value="RW">
  Rwanda
  </option>
  <option value="SH">
  Saint Helena
  </option>
  <option value="KN">
  Saint Kitts and Nevis
  </option>
  <option value="LC">
  Saint Lucia
  </option>
  <option value="PM">
  Saint Pierre and Miquelon
  </option>
  <option value="VC">
  Saint Vincent and the Grenadines
  </option>
  <option value="WS">
  Samoa
  </option>
  <option value="SM">
  San Marino
  </option>
  <option value="ST">
  São Tomé and Príncipe
  </option>
  <option value="SA">
  Saudi Arabia (المملكة العربية السعودية)
  </option>
  <option value="SN">
  Senegal (Sénégal)
  </option>
  <option value="RS">
  Serbia (Србија)
  </option>
  <option value="CS">
  Serbia and Montenegro (Србија и Црна Гора)
  </option>
  <option value="SC">
  Seychelles
  </option>
  <option value="SL">
  Sierra Leone
  </option>
  <option value="SG">
  Singapore (Singapura)
  </option>
  <option value="SK">
  Slovakia (Slovensko)
  </option>
  <option value="SI">
  Slovenia (Slovenija)
  </option>
  <option value="SB">
  Solomon Islands
  </option>
  <option value="SO">
  Somalia (Soomaaliya)
  </option>
  <option value="ZA">
  South Africa
  </option>
  <option value="GS">
  South Georgia and the South Sandwich Islands
  </option>
  <option value="KR">
  South Korea (한국)
  </option>
  <option value="ES">
  Spain (España)
  </option>
  <option value="LK">
  Sri Lanka
  </option>
  <option value="SD">
  Sudan (السودان)
  </option>
  <option value="SR">
  Suriname
  </option>
  <option value="SJ">
  Svalbard and Jan Mayen
  </option>
  <option value="SZ">
  Swaziland
  </option>
  <option value="SE">
  Sweden (Sverige)
  </option>
  <option value="CH">
  Switzerland (Schweiz)
  </option>
  <option value="SY">
  Syria (سوريا)
  </option>
  <option value="TW">
  Taiwan (台灣)
  </option>
  <option value="TJ">
  Tajikistan (Тоҷикистон)
  </option>
  <option value="TZ">
  Tanzania
  </option>
  <option value="TH">
  Thailand (ราชอาณาจักรไทย)
  </option>
  <option value="TL">
  Timor-Leste
  </option>
  <option value="TG">
  Togo
  </option>
  <option value="TK">
  Tokelau
  </option>
  <option value="TO">
  Tonga
  </option>
  <option value="TT">
  Trinidad and Tobago
  </option>
  <option value="TN">
  Tunisia (تونس)
  </option>
  <option value="TR">
  Turkey (Türkiye)
  </option>
  <option value="TM">
  Turkmenistan (Türkmenistan)
  </option>
  <option value="TC">
  Turks and Caicos Islands
  </option>
  <option value="TV">
  Tuvalu
  </option>
  <option value="UG">
  Uganda
  </option>
  <option value="UA">
  Ukraine (Україна)
  </option>
  <option value="AE">
  United Arab Emirates (الإمارات العربيّة المتّحدة)
  </option>
  <option value="GB">
  United Kingdom
  </option>
  <option value="US">
  United States
  </option>
  <option value="UM">
  United States minor outlying islands
  </option>
  <option value="UY">
  Uruguay
  </option>
  <option value="UZ">
  Uzbekistan (O'zbekiston)
  </option>
  <option value="VU">
  Vanuatu
  </option>
  <option value="VA">
  Vatican City (Città del Vaticano)
  </option>
  <option value="VE">
  Venezuela
  </option>
  <option value="VN">
  Vietnam (Việt Nam)
  </option>
  <option value="VG">
  Virgin Islands, British
  </option>
  <option value="VI">
  Virgin Islands, U.S.
  </option>
  <option value="WF">
  Wallis and Futuna
  </option>
  <option value="EH">
  Western Sahara (الصحراء الغربية)
  </option>
  <option value="YE">
  Yemen (اليمن)
  </option>
  <option value="ZM">
  Zambia
  </option>
  <option value="ZW">
  Zimbabwe
  </option>
  </select>
  <noscript>
  <input type="submit" name="default_submit" id="default_submit"
                   style="display:none" />
  <input type="submit" name="change_location" id="change_location"
                   style="display:inline"
                   value="Change" />
  </noscript>
  </td>
</tr>
  <tr id="AttrRowBirthday" style="display: table-row;">
  <td id="AttrLabelCellBirthday" nowrap="nowrap" valign="top">
  <label for="Birthday" class="gaia cca al">
  Birthday:
  </label>
  </td>
  <td id="AttrLabelCellBirthday">
  
  <div>
  <script><!--
  countryCodesRequiringAgeVerification = ["US"];
--></script>
  <input name="Birthday" id="Birthday" size="30" type="text" runat="server">
  </div>
  <span class="gaia cca cmt">
  MM/DD/YYYY (e.g. "9/24/2011")
  </span>
  </td>
  </tr>

  <!-- Tos.naui=default -->
  
  <tr>
  <td>&nbsp;</td>
  <td valign="top">
      &nbsp;</td>
  </tr>
  <tr>
  <td colspan="1">
  &nbsp;
  </td>
  
  <td colspan="1" align="center">
     
      <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
          Text="Register Me" Width="88px" />
     
  </td>
  </tr>

<tr><td></td>
  <td><div id="cookieWarning2">&nbsp;</div></td>
</tr>

  </tbody></table>
  </td></tr>
  </tbody></table>
  </td>
  </tr>
  </tbody></table>
  </td></tr>
  </tbody></table>
</div>
</form>
</body></html>
</html>
