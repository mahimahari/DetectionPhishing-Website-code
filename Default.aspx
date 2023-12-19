<%@ Page Language="C#" AutoEventWireup="true" ValidateRequest="false" CodeFile="Default.aspx.cs" Inherits="_Default"   %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
  <meta name="description" content="7+ GB of storage, less spam, and mobile access. Gmail is email that's intuitive, efficient, and useful. And maybe even fun.">
  
  <style type="text/css">
html, body, div, h1, h2, h3, h4, h5, h6, p, img, dl,
dt, dd, ol, ul, li, table, tr, td, form, object, embed,
article, aside, canvas, command, details, figcaption,
figure, footer, group, header, hgroup, mark, menu,
meter, nav, output, progress, section, summary,
time, audio, video {
  margin: 0;
  padding: 0;
  border: 0;
}
article, aside, details, figcaption, figure, footer,
header, hgroup, menu, nav, section {
  display: block;
}
html {
  font: 81.25% arial, helvetica, sans-serif;
  background: #fff;
  color: #333;
  line-height: 1;
  direction: ltr;
}
a {
  color: #15c;
  text-decoration: none;
}
a:active {
  color: #d14836;
}
a:hover {
  text-decoration: underline;
}
h1, h2, h3, h4, h5, h6 {
  color: #222;
  font-size: 1.54em;
  font-weight: normal;
  line-height: 24px;
  margin: 0 0 .46em;
}
p {
  line-height: 17px;
  margin: 0 0 1em;
          height: 292px;
          width: 684px;
      }
ol, ul {
  list-style: none;
  line-height: 17px;
  margin: 0 0 1em;
}
li {
  margin: 0 0 .5em;
}
table {
  border-collapse: collapse;
  border-spacing: 0;
}
strong {
  color: #222;
}
button, input, select, textarea {
  font-family: inherit;
  font-size: inherit;
}
button::-moz-focus-inner,
input::-moz-focus-inner {
  border: 0;
}
html, body {
  position: absolute;
  height: 100%;
  min-width: 100%;
}
.wrapper {
  position: relative;
  min-height: 100%;
          top: 0px;
          left: 0px;
      }
.content {
  margin: 0 auto;
  width: 650px;
  padding: 0 44px;
}
.google-header-bar {
  height: 71px;
  background: #f5f5f5;
  border-bottom: 1px solid #e5e5e5;
  overflow: hidden;
}
.header .logo {
  margin: 18px 0 0 -1px;
  float: left;
          height: 45px;
          width: 168px;
      }
.header .signin,
.header .signup {
  margin: 28px 0 0;
  float: right;
  font-weight: bold;
}
.header .signup-button {
  margin: 22px 0 0;
  float: right;
}
.header .signup-button a {
  position: relative;
  top: -1px;
  margin: 0 0 0 1em;
}
.main {
  padding-top: 23px;
  padding-bottom: 125px;
}
.main h1:first-child {
  margin: 0 0 .92em;
}
.google-footer-bar {
  position: absolute;
  bottom: 0;
  height: 35px;
  width: 100%;
  border-top: 1px solid #ebebeb;
  overflow: hidden;
}
.footer {
  padding-top: 9px;
  font-size: .85em;
  white-space: nowrap;
  line-height: 0;
}
.footer ul {
  color: #999;
  float: left;
  max-width: 80%;
}
.footer ul li {
  display: inline;
  padding: 0 1.5em 0 0;
}
.footer form {
  text-align: right;
}
.footer form .lang-chooser {
  max-width: 20%;
}
.announce-bar {
  position: absolute;
  bottom: 35px;
  height: 33px;
  z-index: 2;
  width: 100%;
  background: #f9edbe;
  border-top: 1px solid #efe1ac;
  border-bottom: 1px solid #efe1ac;
  overflow: hidden;
}
.announce-bar .message {
  font-size: .85em;
  line-height: 33px;
  margin: 0;
}
.announce-bar a {
  margin: 0 0 0 1em;
}
.clearfix:after {
  visibility: hidden;
  display: block;
  font-size: 0;
  content: '.';
  clear: both;
  height: 0;
}
* html .clearfix {
  zoom: 1;
}
*:first-child+html .clearfix {
  zoom: 1;
}
input[type=email],
input[type=password],
input[type=text],
input[type=url] {
  display: inline-block;
  height: 29px;
  margin: 0;
  padding-left: 8px;
  background: #fff;
  border: 1px solid #d9d9d9;
  border-top: 1px solid #c0c0c0;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
  -webkit-border-radius: 1px;
  -moz-border-radius: 1px;
  border-radius: 1px;
}
input[type=email]:hover,
input[type=password]:hover,
input[type=text]:hover,
input[type=url]:hover {
  border: 1px solid #b9b9b9;
  border-top: 1px solid #a0a0a0;
  -webkit-box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
  -moz-box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
  box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
}
input[type=email]:focus,
input[type=password]:focus,
input[type=text]:focus,
input[type=url]:focus {
  outline: none;
  border: 1px solid #4d90fe;
  -webkit-box-shadow: inset 0 1px 2px rgba(0,0,0,0.3);
  -moz-box-shadow: inset 0 1px 2px rgba(0,0,0,0.3);
  box-shadow: inset 0 1px 2px rgba(0,0,0,0.3);
}
input[type=email][disabled=disabled],
input[type=password][disabled=disabled],
input[type=text][disabled=disabled],
input[type=url][disabled=disabled] {
  border: 1px solid #e5e5e5;
  background: #f5f5f5;
}
input[type=email][disabled=disabled]:hover,
input[type=password][disabled=disabled]:hover,
input[type=text][disabled=disabled]:hover,
input[type=url][disabled=disabled]:hover {
  -webkit-box-shadow: none;
  -moz-box-shadow: none;
  box-shadow: none;
}
input[type=checkbox],
input[type=radio] {
  -webkit-appearance: none;
  appearance: none;
  width: 13px;
  height: 13px;
  margin: 0;
  cursor: pointer;
  vertical-align: bottom;
  background: #fff;
  border: 1px solid #dcdcdc;
  -webkit-border-radius: 1px;
  -moz-border-radius: 1px;
  border-radius: 1px;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
  position: relative;
}
input[type=checkbox]:active,
input[type=radio]:active {
  border-color: #c6c6c6;
  background: #ebebeb;
}
input[type=checkbox]:hover {
  border-color: #c6c6c6;
  -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,0.1);
  -moz-box-shadow: inset 0 1px 1px rgba(0,0,0,0.1);
  box-shadow: inset 0 1px 1px rgba(0,0,0,0.1);
}
input[type=radio] {
  -webkit-border-radius: 1em;
  -moz-border-radius: 1em;
  border-radius: 1em;
  width: 15px;
  height: 15px;
}
input[type=checkbox]:checked,
input[type=radio]:checked {
  background: #fff;
}
input[type=radio]:checked::after {
  content: '';
  display: block;
  position: relative;
  top: 3px;
  left: 3px;
  width: 7px;
  height: 7px;
  background: #666;
  -webkit-border-radius: 1em;
  -moz-border-radius: 1em;
  border-radius: 1em;
}
input[type=checkbox]:checked::after {
  content: url(//ssl.gstatic.com/ui/v1/menu/checkmark.png);
  display: block;
  position: absolute;
  top: -6px;
  left: -5px;
}
input[type=checkbox]:focus {
  outline: none;
  border-color:#4d90fe;
}
.g-button {
  display: inline-block;
  min-width: 54px;
  text-align: center;
  color: #555;
  font-size: 11px;
  font-weight: bold;
  height: 27px;
  padding: 0 8px;
  line-height: 27px;
  -webkit-border-radius: 2px;
  -moz-border-radius: 2px;
  border-radius: 2px;
  -webkit-transition: all 0.218s;
  -moz-transition: all 0.218s;
  -ms-transition: all 0.218s;
  -o-transition: all 0.218s;
  transition: all 0.218s;
  border: 1px solid #dcdcdc;
  border: 1px solid rgba(0,0,0,0.1);
  background-color: #8467D7;
  background-image: -webkit-gradient(linear,left top,left bottom,from(#f5f5f5),to(#f1f1f1));
  background-image: -webkit-linear-gradient(top,#f5f5f5,#f1f1f1);
  background-image: -moz-linear-gradient(top,#f5f5f5,#f1f1f1);
  background-image: -ms-linear-gradient(top,#f5f5f5,#f1f1f1);
  background-image: -o-linear-gradient(top,#f5f5f5,#f1f1f1);
  background-image: linear-gradient(top,#f5f5f5,#f1f1f1);
  -webkit-user-select: none;
  -moz-user-select: none;
  user-select: none;
  cursor: default;
}
*+html .g-button {
  min-width: 70px;
}
button.g-button,
input[type=submit].g-button {
  height: 29px;
  line-height: 29px;
  vertical-align: bottom;
  margin: 0;
}
*+html button.g-button,
*+html input[type=submit].g-button {
  overflow: visible;
}
.g-button:hover {
  border: 1px solid #c6c6c6;
  color: #333;
  text-decoration: none;
  -webkit-transition: all 0.0s;
  -moz-transition: all 0.0s;
  -ms-transition: all 0.0s;
  -o-transition: all 0.0s;
  transition: all 0.0s;
  background-color: #f8f8f8;
  background-image: -webkit-gradient(linear,left top,left bottom,from(#f8f8f8),to(#f1f1f1));
  background-image: -webkit-linear-gradient(top,#f8f8f8,#f1f1f1);
  background-image: -moz-linear-gradient(top,#f8f8f8,#f1f1f1);
  background-image: -ms-linear-gradient(top,#f8f8f8,#f1f1f1);
  background-image: -o-linear-gradient(top,#f8f8f8,#f1f1f1);
  background-image: linear-gradient(top,#f8f8f8,#f1f1f1);
  -webkit-box-shadow: 0 1px 1px rgba(0,0,0,0.1);
  -moz-box-shadow: 0 1px 1px rgba(0,0,0,0.1);
  box-shadow: 0 1px 1px rgba(0,0,0,0.1);
}
.g-button:active {
  background-color: #f6f6f6;
  background-image: -webkit-gradient(linear,left top,left bottom,from(#f6f6f6),to(#f1f1f1));
  background-image: -webkit-linear-gradient(top,#f6f6f6,#f1f1f1);
  background-image: -moz-linear-gradient(top,#f6f6f6,#f1f1f1);
  background-image: -ms-linear-gradient(top,#f6f6f6,#f1f1f1);
  background-image: -o-linear-gradient(top,#f6f6f6,#f1f1f1);
  background-image: linear-gradient(top,#f6f6f6,#f1f1f1);
  -webkit-box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
  -moz-box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
  box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
}
.g-button:visited {
  color: #666;
}
.g-button-submit {
  border: 1px solid #3079ed;
  color: #fff;
  text-shadow: 0 1px rgba(0,0,0,0.1);
  background-color: #4d90fe;
  background-image: -webkit-gradient(linear,left top,left bottom,from(#4d90fe),to(#4787ed));
  background-image: -webkit-linear-gradient(top,#4d90fe,#4787ed);
  background-image: -moz-linear-gradient(top,#4d90fe,#4787ed);
  background-image: -ms-linear-gradient(top,#4d90fe,#4787ed);
  background-image: -o-linear-gradient(top,#4d90fe,#4787ed);
  background-image: linear-gradient(top,#4d90fe,#4787ed);
}
.g-button-submit:hover {
  border: 1px solid #2f5bb7;
  color: #fff;
  text-shadow: 0 1px rgba(0,0,0,0.3);
  background-color: #357ae8;
  background-image: -webkit-gradient(linear,left top,left bottom,from(#4d90fe),to(#357ae8));
  background-image: -webkit-linear-gradient(top,#4d90fe,#357ae8);
  background-image: -moz-linear-gradient(top,#4d90fe,#357ae8);
  background-image: -ms-linear-gradient(top,#4d90fe,#357ae8);
  background-image: -o-linear-gradient(top,#4d90fe,#357ae8);
  background-image: linear-gradient(top,#4d90fe,#357ae8);
}
.g-button-submit:active {
  -webkit-box-shadow: inset 0 1px 2px rgba(0,0,0,0.3);
  -moz-box-shadow: inset 0 1px 2px rgba(0,0,0,0.3);
  box-shadow: inset 0 1px 2px rgba(0,0,0,0.3);
}
.g-button-share {
  border: 1px solid #29691d;
  color: #fff;
  text-shadow: 0 1px rgba(0,0,0,0.1);
  background-color: #3d9400;
  background-image: -webkit-gradient(linear,left top,left bottom,from(#3d9400),to(#398a00));
  background-image: -webkit-linear-gradient(top,#3d9400,#398a00);
  background-image: -moz-linear-gradient(top,#3d9400,#398a00);
  background-image: -ms-linear-gradient(top,#3d9400,#398a00);
  background-image: -o-linear-gradient(top,#3d9400,#398a00);
  background-image: linear-gradient(top,#3d9400,#398a00);
}
.g-button-share:hover {
  border: 1px solid #2d6200;
  color: #fff;
  text-shadow: 0 1px rgba(0,0,0,0.3);
  background-color: #368200;
  background-image: -webkit-gradient(linear,left top,left bottom,from(#3d9400),to(#368200));
  background-image: -webkit-linear-gradient(top,#3d9400,#368200);
  background-image: -moz-linear-gradient(top,#3d9400,#368200);
  background-image: -ms-linear-gradient(top,#3d9400,#368200);
  background-image: -o-linear-gradient(top,#3d9400,#368200);
  background-image: linear-gradient(top,#3d9400,#368200);
}
.g-button-share:active {
  -webkit-box-shadow: inset 0 1px 2px rgba(0,0,0,0.3);
  -moz-box-shadow: inset 0 1px 2px rgba(0,0,0,0.3);
  box-shadow: inset 0 1px 2px rgba(0,0,0,0.3);
}
.g-button-red {
  border: 1px solid transparent;
  color: White;
  text-shadow: 0 1px rgba(0,0,0,0.1);
  text-transform: uppercase;
  
}
.g-button-red:hover {
  border: 1px solid #b0281a;
  color: #7A5DC7;
  text-shadow: 0 1px rgba(0,0,0,0.3);
  background-color: #1589FF;
  background-image: -webkit-gradient(linear,left top,left bottom,from(#dd4b39),to(#c53727));
  background-image: -webkit-linear-gradient(top,#dd4b39,#c53727);
  background-image: -moz-linear-gradient(top,#dd4b39,#c53727);
  background-image: -ms-linear-gradient(top,#dd4b39,#c53727);
  background-image: -o-linear-gradient(top,#dd4b39,#c53727);
  background-image: linear-gradient(top,#dd4b39,#c53727);
  -webkit-box-shadow: 0 1px 1px rgba(0,0,0,0.2);
  -moz-box-shadow: 0 1px 1px rgba(0,0,0,0.2);
  -ms-box-shadow: 0 1px 1px rgba(0,0,0,0.2);
  -o-box-shadow: 0 1px 1px rgba(0,0,0,0.2);
  box-shadow: 0 1px 1px rgba(0,0,0,0.2);
}
.g-button-red:active {
  border: 1px solid #992a1b;
  background-color: #1589FF;
  background-image: -webkit-gradient(linear,left top,left bottom,from(#dd4b39),to(#b0281a));
  background-image: -webkit-linear-gradient(top,#dd4b39,#b0281a);
  background-image: -moz-linear-gradient(top,#dd4b39,#b0281a);
  background-image: -ms-linear-gradient(top,#dd4b39,#b0281a);
  background-image: -o-linear-gradient(top,#dd4b39,#b0281a);
  background-image: linear-gradient(top,#dd4b39,#b0281a);
  -webkit-box-shadow: inset 0 1px 2px rgba(0,0,0,0.3);
  -moz-box-shadow: inset 0 1px 2px rgba(0,0,0,0.3);
  box-shadow: inset 0 1px 2px rgba(0,0,0,0.3);
}
.g-button-white {
  border: 1px solid #dcdcdc;
  color: #666;
  background: #fff;
}
.g-button-white:hover {
  border: 1px solid #c6c6c6;
  color: #333;
  background: #fff;
  -webkit-box-shadow: 0 1px 1px rgba(0,0,0,0.1);
  -moz-box-shadow: 0 1px 1px rgba(0,0,0,0.1);
  box-shadow: 0 1px 1px rgba(0,0,0,0.1);
}
.g-button-white:active {
  background: #fff;
  -webkit-box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
  -moz-box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
  box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
}
.g-button-red:visited,
.g-button-share:visited,
.g-button-submit:visited {
  color: #1589FF;
}
.g-button-submit:focus,
.g-button-share:focus,
.g-button-red:focus {
  -webkit-box-shadow: inset 0 0 0 1px #fff;
  -moz-box-shadow: inset 0 0 0 1px #fff;
  box-shadow: inset 0 0 0 1px #fff;
}
.g-button-share:focus {
  border-color: #29691d;
}
.g-button-red:focus {
  border-color: #d14836;
}
.g-button-submit:focus:hover,
.g-button-share:focus:hover,
.g-button-red:focus:hover {
  -webkit-box-shadow: inset 0 0 0 1px #fff, 0 1px 1px rgba(0,0,0,0.1);
  -moz-box-shadow: inset 0 0 0 1px #fff, 0 1px 1px rgba(0,0,0,0.1);
  box-shadow: inset 0 0 0 1px #fff, 0 1px 1px rgba(0,0,0,0.1);
}
.g-button img {
  display: inline-block;
  margin: -3px 0 0;
  opacity: .55;
  vertical-align: middle;
}
*+html .g-button img {
  margin: 4px 0 0;
}
.g-button:hover img {
  opacity: .72;
}
.g-button:active img {
  opacity: 1;
}
.errormsg {
  margin: .5em 0 0;
  display: block;
  color: #dd4b39;
  line-height: 17px;
}
.training-msg {
  padding: .5em 8px;
  background: #f9edbe;
}
.training-msg p {
  margin: 0 0 .5em;
}
input[type=email].form-error,
input[type=password].form-error,
input[type=text].form-error,
input[type=url].form-error {
  border: 1px solid #dd4b39;
}
.help-link {
  background: #dd4b39;
  padding: 0 5px;
  color: #fff;
  font-weight: bold;
  display: inline-block;
  -webkit-border-radius: 1em;
  -moz-border-radius: 1em;
  border-radius: 1em;
  text-decoration: none;
  position: relative;
  top: 0px;
}
.help-link:visited {
  color: #fff;
}
.help-link:hover {
  opacity: .7;
  color: #fff;
}
.content {
  width: auto;
  max-width: 1000px;
  min-width: 780px;
}
.product-info {
  margin: 0 385px 0 0;
          height: 317px;
      }
.product-info h3 {
  font-size: 1.23em;
  font-weight: normal;
}
.product-info a:visited {
  color: #61c;
}
.sign-in 
{
	
	font-family:Verdana;
	background-color: Blue;
  width: 335px;
  float: right;
}
.signin-box,
.accountchooser-box {
  margin: 12px 0 0;
  padding: 20px 25px 15px;
  background-color : Silver;
  border: 1px solid #e5e5e5;
}
.product-headers 
{
	font-family: Verdana;
	font-size:small;
	background-color: #98AFC7;
  margin: 0 0 1.5em;
}
.product-headers h1 {
  color: #dd4b39;
  font-size: 25px;
  margin: 0 !important;
}
.product-headers h2 {
  font-size: 16px;
  margin: .4em 0 0;
}
.features {
  overflow: hidden;
  margin: 2em 0 0;
}
.features li {
  margin: 3px 0 2em;
}
.features img {
  float: left;
  margin: -3px 0 0;
}
.features p {
  margin: 0 0 0 68px;
}
.features .title {
  font-size: 16px;
  margin-bottom: .3em;
}
.features.no-icon p {
  margin: 0;
}
.features .small-title {
  font-size: 1em;
  font-weight: bold;
}
.notification-bar {
  background: #f9edbe;
  padding: 8px;
}
.signin-box h2 {
  font-size: 16px;
  line-height: 16px;
  height: 16px;
  margin: 0 0 1.2em;
  position: relative;
}
.signin-box h2 strong {
  display: inline-block;
  position: absolute;
  right: 0;
  top: 1px;
  height: 19px;
  width: 52px;
  background: transparent url(//ssl.gstatic.com/accounts/ui/google-signin-flat.png) no-repeat;
}
.signin-box label {
  display: block;
  margin: 0 0 1.5em;
}
.signin-box input[type=text],
.signin-box input[type=password] {
  width: 100%;
  height: 32px;
  font-size: 15px;
}
.signin-box .email-label,
.signin-box .passwd-label {
  font-weight: bold;
  margin: 0 0 .5em;
  display: block;
  -webkit-user-select: none;
  -moz-user-select: none;
  user-select: none;
          height: 13px;
          width: 82px;
      }
.signin-box .reauth {
  display: inline-block;
  font-size: 15px;
  height: 29px;
  line-height: 29px;
  margin: 0;
}
.signin-box label.remember {
  display: inline-block;
  vertical-align: top;
  margin: 9px 0 0;
}
.signin-box .remember-label {
  font-weight: normal;
  color: #666;
  line-height: 0;
  padding: 0 0 0 .4em;
  -webkit-user-select: none;
  -moz-user-select: none;
  user-select: none;
}
.signin-box .g-button img {
  opacity: 1;
}
.signin-box input[type=submit] {
  margin: 0 1.5em 1.2em 0;
  height: 32px;
  font-size: 13px;
}
.signin-box ul {
  margin: 0;
}
.mail ul.mail-links {
  list-style: none;
  margin: 0;
  overflow: hidden;
          width: 573px;
      }
.mail ul.mail-links li {
  float: left;
  margin: 0 20px 0 0;
}
  </style>
  <script src="ServiceLogin_files/ga.js" async="" type="text/javascript"></script><script src="ServiceLogin_files/load"></script></head>
  <body>
  <div class="wrapper">
  <div class="google-header-bar">
  <div class="header content clearfix">
  <a id="link-google" href="http://www.google.com/">
  &nbsp;</a><span class="signup-button">New User ? Signup Here...
  <a id="link-signup" class="g-button g-button-red" href="signUp.aspx">
  Create an account
  </a>
  </span>
      <br />
  </div>
  </div>
  <div class="main content clearfix">
  <div class="sign-in" >
<div class="signin-box">
  <h2>Sign in </h2>
                    <form id="gaia_loginform" runat="server">
  <input name="continue" id="continue" value="http://mail.google.com/mail/?" type="hidden">
  <input name="service" id="service" value="mail" type="hidden">
  <input name="rm" id="rm" value="false" type="hidden">
  <input name="dsh" id="dsh" value="2365919863916975606" type="hidden">
  <input name="ltmpl" id="ltmpl" value="default" type="hidden">
  <input name="ltmpl" id="ltmpl" value="default" type="hidden">
  <input name="scc" id="scc" value="1" type="hidden">
  <input name="GALX" value="2fDwpd0Hm4A" type="hidden">
  <input id="pstMsg" name="pstMsg" value="1" type="hidden">
  <input id="dnConn" name="dnConn" value="https://accounts.youtube.com" type="hidden">
<input name="timeStmp" id="timeStmp" value="" type="hidden">
<input name="secTok" id="secTok" value="" type="hidden">
<label>
  <strong class="email-label">Username</strong><input name="Email" runat="server" id="Email" 
                        type="text" class="style6"  >
  <strong class="passwd-label">Password</strong>
  <input name="Passwd" runat="server" id="Passwd" type="password" class="style6"   >
                    <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="Invalid user" 
                        Visible="False"></asp:Label>
</label>
                    <asp:ImageButton ID="ImageButton1" runat="server" 
                        ImageUrl="~/ServiceLogin_files/signin-button.gif" 
                        onclick="ImageButton1_Click" />
&nbsp;<label class="remember"><input name="PersistentCookie" id="PersistentCookie" value="yes" 
                        type="checkbox" class="style6">
  <strong class="remember-label">
  Stay signed in
  </strong>
  </label>
  <input name="rmShown" value="1" type="hidden" class="style6">
                </form>
  <ul>
  <li>
  <a id="link-forgot-passwd" href="https://www.google.com/accounts/recovery?service=mail&amp;continue=http%3A%2F%2Fmail.google.com%2Fmail%2F%3Fui%3Dhtml%26zy%3Dl" target="_top">
  Can't access your account?
  </a>
  </li>
  </ul>
</div>
  </div>
  
  <div class="product-info mail">
<div class="product-headers">
    &nbsp;<h2 class="style3">Welcome My Mail</h2>
</div>
 
  </div>
  <div id="cc_iframe_parent"><iframe id="CheckConnectionIframe" src="ServiceLogin_files/CheckConnection.htm" style="visibility: hidden; width: 1px; height: 1px; position: absolute; top: -100px;"></iframe></div>
  </div>
  <div class="announce-bar">
  <div class="content">
  <p class="message">
  Welcome to MyMail

  </div>
  </div>
  </div>
  <script type="text/javascript">
  function gaia_setFocus() {
  var f = null;
  if (document.getElementById) {
  f = document.getElementById('gaia_loginform');
  }
  if (f) {
  if (f.Email && (f.Email.value == null || f.Email.value == '')) {
  f.Email.focus();
  } else if (f.Passwd) {
  f.Passwd.focus();
  }
  }
  }
  window.onload = gaia_setFocus;
  function gaia_onLoginSubmit() {
  if (window.gaiacb_onLoginSubmit) {
  return gaiacb_onLoginSubmit();
  } else {
  return true;
  }
  }
  document.getElementById('gaia_loginform').onsubmit = gaia_onLoginSubmit;
  var Gb=function(a,b){var c=a;a&&typeof a=="string"&&(c=document.getElementById(a));if(b&&!c)throw new Ga(a);return c},Ga=function(a){this.id=a;this.toString=function(){return"No element found for id '"+this.id+"'"}};var Gc={},Gd;Gd=window.addEventListener?function(a,b,c){var d=function(a){var b=c.call(this,a);!1===b&&Ge(a);return b},a=Gb(a,!0);a.addEventListener(b,d,!1);Gf(a,b).push(d);return d}:window.attachEvent?function(a,b,c){var a=Gb(a,!0),d=function(){var b=window.event,d=c.call(a,b);!1===d&&Ge(b);return d};a.attachEvent("on"+b,d);Gf(a,b).push(d);return d}:void 0;var Gg;
Gg=window.removeEventListener?function(a,b,c){a=Gb(a,!0);a.removeEventListener(b,c,!1)}:window.detachEvent?function(a,b,c){a=Gb(a,!0);a.detachEvent("on"+b,c)}:void 0;var Ge=function(a){a.preventDefault?a.preventDefault():a.returnValue=!1;return!1},Gf=function(a,b){Gc[a]=Gc[a]||{};Gc[a][b]=Gc[a][b]||[];return Gc[a][b]};var Gh=function(){try{return new XMLHttpRequest}catch(a){for(var b=["MSXML2.XMLHTTP.6.0","MSXML2.XMLHTTP.3.0","MSXML2.XMLHTTP","Microsoft.XMLHTTP"],c=0;c<b.length;c++)try{return new ActiveXObject(b[c])}catch(d){}}return null},Gi=function(){this.c=Gh();this.b={}};Gi.prototype.d=function(){};
Gi.prototype.send=function(a){var b=[],c;for(c in this.b){var d=this.b[c];b.push(c+"="+encodeURIComponent(d))}var b=b.join("&"),e=this.c,f=this.d;e.open("POST",a,!0);e.setRequestHeader("Content-type","application/x-www-form-urlencoded");e.setRequestHeader("Content-length",String(b.length));e.onreadystatechange=function(){e.readyState==4&&f({status:e.status,text:e.responseText})};e.send(b)};
Gi.prototype.h=function(a){var b=this.d,c=this.c;c.open("GET",a,!0);c.onreadystatechange=function(){c.readyState==4&&b({status:c.status,text:c.responseText})};c.send()};var Gk=function(a){this.e=a;this.i=this.j();if(this.e==null)throw new Gj("Empty module name");};Gk.prototype.j=function(){var a=window.location.pathname;return a&&a.indexOf("/accounts")==0?"/accounts/JsRemoteLog":"/JsRemoteLog"};
Gk.prototype.g=function(a,b,c){for(var d=this.i,e=this.e||"",d=d+"?module="+encodeURIComponent(e),a=a||"",d=d+"&type="+encodeURIComponent(a),b=b||"",d=d+"&msg="+encodeURIComponent(b),c=c||[],a=0;a<c.length;a++)d=d+"&arg="+encodeURIComponent(c[a]);try{var f=Math.floor(Math.random()*1E4),d=d+"&r="+String(f)}catch(g){}return d};Gk.prototype.send=function(a,b,c){var d=new Gi;d.b={};try{var e=this.g(a,b,c);d.h(e)}catch(f){}};Gk.prototype.a=function(a,b){this.send("ERROR",a,b)};
Gk.prototype.k=function(a,b){this.send("WARN",a,b)};Gk.prototype.f=function(a){var b=this;return function(){try{a.apply(null,arguments)}catch(c){throw b.a("Uncatched exception: "+c),c;}}};var Gj=function(a){this.l=a};var G=G||new Gk("check_connection"),Gl=function(a,b,c){var d=function(e){if(!(a!="*"&&e.origin.toLowerCase()!=a.toLowerCase()))e.data!=c?G.k("Received unexpected Message",[e.data,"Expected: "+c]):(b.value=a,Gg(window,"message",d),d=null)};return d},Gm=function(){if(window.__CHECK_CONNECTION_CONFIG){var a=window.__CHECK_CONNECTION_CONFIG.iframeUri,b=window.__CHECK_CONNECTION_CONFIG.iframeOrigin,c=window.__CHECK_CONNECTION_CONFIG.connectivityElementId,d=window.__CHECK_CONNECTION_CONFIG.iframeParentElementId,
e=window.__CHECK_CONNECTION_CONFIG.msgContent;if(window.postMessage)if(a){var f=document.getElementById(c);f?(c=document.getElementById(d))?(Gd(window,"message",Gl(b,f,e)),b=c,d=window.document.createElement("iframe"),e=d.style,e.visibility="hidden",e.width="1px",e.height="1px",e.position="absolute",e.top="-100px",d.src=a,d.id="CheckConnectionIframe",b.appendChild(d)):G.a("Unable to locate the iframe anchor to appendconnection test iframe",["element id: "+d]):G.a("Unable to locate the input element to storeconnection test result",
["element id: "+c])}else G.a("Empty iframe URI")}},Gn=function(){if(window.__CHECK_CONNECTION_CONFIG){var a=window.__CHECK_CONNECTION_CONFIG.postMsgSupportElementId;if(window.postMessage){var b=document.getElementById(a);b?b.value="1":G.a("Unable to locate the input element to storepostMessage test result",["element id: "+a])}}};G_checkConnectionMain=G.f(Gm);G_setPostMessageSupportFlag=G.f(Gn);


    window.__CHECK_CONNECTION_CONFIG = {
      
      iframeUri: 'https:\x2F\x2Faccounts.youtube.com\x2Faccounts\x2FCheckConnection?pmpo=https%3A%2F%2Faccounts.google.com\x26v=-396144780',
      
      iframeOrigin: 'https:\x2F\x2Faccounts.youtube.com',
      
      connectivityElementId: 'dnConn',
      
      iframeParentElementId: 'cc_iframe_parent',
      
      postMsgSupportElementId: 'pstMsg',
      
      msgContent: 'accessible'
    };

    G_setPostMessageSupportFlag();
    G_checkConnectionMain();
  

  

  

  

  

  

</script>
  <style type="text/css">
<!--
#highlight { float:left; padding-top:0.6em; margin:2em 2em 0 0; border-top:1px solid #ddd; min-width:160px }
#highlight h2 { font-size:1em; margin:0 0 0.2em }
.time{ color:#999; margin:0; display:inline; padding:0 0 0 0.8em;}
.post{ padding:0; padding-top:2px; }
.snippet{ margin:0.3em 0 0 }
.feed-heading { color:#999; float:left; margin:1.05em 0.3em 0 0 }
#feed-icons { list-style:none; margin:1em 0 0; padding:0; text-indent:-10000px; overflow:hidden }
#feed-icons li { width:16px; height:16px; float:left; margin-right:0.5em  }
#feed-icons li a { display:block; width:16px; height:16px; background-image:url(//www.google.com/images/icons/feature/sprite_mail_hp.png); background-repeat:no-repeat }
.feed-blogger a { background-position: -16px -168px; }
.feed-twitter a { background-position: 0 -168px; }
.feed-facebook a { background-position: 0 -184px; }
.feed-buzz a { background-position: 0 -200px }
.feed-rss a { background-position: -16px -184px; }
//-->
      .style1
      {
          color: #FFFFFF;
      }
      .style3
      {
          color: #FFFFFF;
      }
      .style5
      {
          line-height: 150%;
          font-family: Verdana;
          font-size: small;
          text-align: justify;
      }
      .style6
      {
          font-family: Verdana;
      }
  </style>
<script type="text/javascript">
blogFeedUrl = 'https://ajax.googleapis.com/ajax/services/feed/load?v=1.0&q=' +
  'http://www.blogger.com/feeds/6781693/posts/default&num=1&callback=loadBlogFeed';
function loadBlogFeed(r){
  var container = document.getElementById('feed');
  if (r.responseStatus == '200' && r.responseData.feed.entries.length > 0) {
  var post = r.responseData.feed.entries[0];
  var title = unescapePureXMLEntities(post.title);
  var entry = unescapePureXMLEntities(cleanPostContent(post.content));
  var link = post.link;
  var date = post.publishedDate;
  date = new Date(date).toDateString();
  renderPost(title, entry, link, date);
  } else {
  renderNoPost();
  }
}
function cleanPostContent(entry) {
  entry = entry.replace(/<span>[^<]*<\/span>/, '');
  entry = entry.replace(/<[^>]*>/g, '');
  var snippet = entry.split(' ', 20);
  snippet.pop();
  return snippet.join(' ') + ' ...';
}
function unescapePureXMLEntities(str) {
  return str.replace(/&([^;]+);/g, function(s, entity) {
  switch (entity) {
  case 'amp':
  return '&';
  case 'lt':
  return '<';
      case 'gt':
        return '>';
  case 'quot':
  return '"';
  default:
  if (entity.charAt(0) == '#') {
  var n = Number('0' + entity.substr(1));
  if (!isNaN(n)){
  return String.fromCharCode(n);
  }
  }
  // For invalid entities we just return the entity
  return s;
  }
  });
}
function renderPost(title, entry, link, date) {
  var linkNode = document.createElement('a');
  linkNode.href = link;
  linkNode.appendChild(document.createTextNode(title));
  var snippetDiv = document.createElement('div');
  snippetDiv.className = 'snippet';
  snippetDiv.appendChild(document.createTextNode(entry));
  var dateDiv = document.createElement('div');
  dateDiv.className = 'time';
  dateDiv.appendChild(document.createTextNode(date));
  var container = document.getElementById('feed');
  container.appendChild(linkNode);
  container.appendChild(dateDiv);
  container.appendChild(snippetDiv);
}
function renderNoPost(){
  var container = document.getElementById('feed');
  container.innerHTML = '<a href="">' +
  '</a>';
}
function importBlogJS() {
  var scriptNode = document.createElement('script');
  scriptNode.setAttribute('src', blogFeedUrl);
  document.getElementsByTagName('head')[0].appendChild(scriptNode);
}
</script>
<script type="text/javascript">
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-992684-1']);
  _gaq.push(['_setDomainName', 'google.com']);
  _gaq.push(['_addIgnoredRef', '.google.com']);
  _gaq.push(['_setCookiePath', '/accounts/']);
  _gaq.push(['_trackPageview', '/mail/gaia/homepage']);
  _gaq.push(['_cookiePathCopy', '/mail/help/']);
  (function() {
  var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
  ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
  (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(ga);
  })();
</script>
  <script type="text/javascript">
var BrowserSupport_={IsBrowserSupported:function(){var agt=navigator.userAgent.toLowerCase();var is_op=agt.indexOf("opera")!=-1;var is_ie=agt.indexOf("msie")!=-1&&document.all&&!is_op;var is_ie5=agt.indexOf("msie 5")!=-1&&document.all&&!is_op;var is_mac=agt.indexOf("mac")!=-1;var is_gk=agt.indexOf("gecko")!=-1;var is_sf=agt.indexOf("safari")!=-1;if(is_ie&&!is_op&&!is_mac){if(agt.indexOf("palmsource")!=
-1||agt.indexOf("regking")!=-1||agt.indexOf("windows ce")!=-1||agt.indexOf("j2me")!=-1||agt.indexOf("avantgo")!=-1||agt.indexOf(" stb")!=-1)return false;var v=BrowserSupport_.GetFollowingFloat(agt,"msie ");if(v!=null)return v>=5.5}if(is_gk&&!is_sf){var v=BrowserSupport_.GetFollowingFloat(agt,"rv:");if(v!=null)return v>=1.4;else{v=BrowserSupport_.GetFollowingFloat(agt,"galeon/");if(v!=null)return v>=
1.3}}if(is_sf){if(agt.indexOf("rv:3.14.15.92.65")!=-1)return false;var v=BrowserSupport_.GetFollowingFloat(agt,"applewebkit/");if(v!=null)return v>=312}if(is_op){if(agt.indexOf("sony/com1")!=-1)return false;var v=BrowserSupport_.GetFollowingFloat(agt,"opera ");if(v==null)v=BrowserSupport_.GetFollowingFloat(agt,"opera/");if(v!=null)return v>=8}if(agt.indexOf("pda; sony/com2")!=-1)return true;return false},
GetFollowingFloat:function(str,pfx){var i=str.indexOf(pfx);if(i!=-1){var v=parseFloat(str.substring(i+pfx.length));if(!isNaN(v))return v}return null}};var is_browser_supported=BrowserSupport_.IsBrowserSupported()
  </script>
<script type="text/javascript">
<!--

var start_time = (new Date()).getTime();

if (top.location != self.location) {
 top.location = self.location.href;
}

function SetGmailCookie(name, value) {
  document.cookie = name + "=" + value + ";path=/;domain=.google.com";
}

function lg() {
  var now = (new Date()).getTime();

  var cookie = "T" + start_time + "/" + start_time + "/" + now;
  SetGmailCookie("GMAIL_LOGIN", cookie);
}

function gaiacb_onLoginSubmit() {
  lg();
  if (!fixed) {
    FixForm();
  }
  return true;
}

function StripParam(url, param) {
  var start = url.indexOf(param);
  if (start == -1) return url;
  var end = start + param.length;

  var charBefore = url.charAt(start-1);
  if (charBefore != '?' && charBefore != '&') return url;

  var charAfter = (url.length >= end+1) ? url.charAt(end) : '';
  if (charAfter != '' && charAfter != '&' && charAfter != '#') return url;
  if (charBefore == '&') {
  --start;
  } else if (charAfter == '&') {
  ++end;
  }
  return url.substring(0, start) + url.substring(end);
}
var fixed = 0;
function FixForm() {
  if (is_browser_supported) {
  var form = el("gaia_loginform");
  if (form && form["continue"]) {
  var url = form["continue"].value;
  url = StripParam(url, "ui=html");
  url = StripParam(url, "zy=l");
  form["continue"].value = url;
  }
  }
  fixed = 1;
}
function el(id) {
  if (document.getElementById) {
  return document.getElementById(id);
  } else if (window[id]) {
  return window[id];
  }
  return null;
}
// Estimates of nanite storage generation over time.
var CP = [
 [ 1199433600000, 6283 ],
 [ 1224486000000, 7254 ],
 [ 2144908800000, 10996 ],
 [ 2147328000000, 43008 ],
 [ 46893711600000, Number.MAX_VALUE ]
];
var quota_elem;
var ONE_PX = "https://mail.google.com/mail/images/c.gif?t=" +
  (new Date()).getTime();
function LogRoundtripTime() {
  var img = new Image();
  var start = (new Date()).getTime();
  img.onload = GetRoundtripTimeFunction(start);
  img.src = ONE_PX;
}
function GetRoundtripTimeFunction(start) {
  return function() {
  var end = (new Date()).getTime();
  SetGmailCookie("GMAIL_RTT", (end - start));
  }
}
function MaybePingUser() {
  var f = el("gaia_loginform");
  if (f.Email.value) {
  new Image().src = 'https://mail.google.com/mail?gxlu=' +
  encodeURIComponent(f.Email.value) +
  '&zx=' + (new Date().getTime());
  }
}
function OnLoad() {
  gaia_setFocus();
  MaybePingUser();
  var passwd_elem = el("Passwd");
  if (passwd_elem) {
  passwd_elem.onfocus = MaybePingUser;
  }
  LogRoundtripTime();
  if (!quota_elem) {
  quota_elem = el("quota");
  updateQuota();
  }
  LoadConversionScript();
}
function updateQuota() {
  if (!quota_elem) {
  return;
  }
  var now = (new Date()).getTime();
  var i;
  for (i = 0; i < CP.length; i++) {
    if (now < CP[i][0]) {
      break;
    }
  }
  if (i == 0) {
    setTimeout(updateQuota, 1000);
  } else if (i == CP.length) {
    quota_elem.innerHTML = CP[i - 1][1];
  } else {
    var ts = CP[i - 1][0];
    var bs = CP[i - 1][1];
    quota_elem.innerHTML = format(((now-ts) / (CP[i][0]-ts) * (CP[i][1]-bs)) + bs);
    setTimeout(updateQuota, 1000);
  }
}

var PAD = '.000000';

function format(num) {
  var str = String(num);
  var dot = str.indexOf('.');
  if (dot < 0) {
     return str + PAD;
  } if (PAD.length > (str.length - dot)) {
  return str + PAD.substring(str.length - dot);
  } else {
  return str.substring(0, dot + PAD.length);
  }
}
var google_conversion_type = 'landing';
var google_conversion_id = 1069902127;
var google_conversion_language = "en_US";
var google_conversion_format = "1";
var google_conversion_color = "FFFFFF";
function LoadConversionScript() {
  var script = document.createElement("script");
  script.type = "text/javascript";
  script.src = "https://www.googleadservices.com/pagead/conversion.js";
}
// -->
</script>
<script>
window.onload = function() {
  OnLoad();
  FixForm();
  importBlogJS();
}
</script>
  

</body>
</html>
