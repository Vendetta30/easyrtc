<%--
  Created by IntelliJ IDEA.
  User: vijay
  Date: 30/4/15
  Time: 12:51 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Testing Custome User Easy Setup</title>
    <!-- Adding CSS and Script file for EasyRTC-->
    <link href="${resource(dir: 'css', file: 'easyrtc.css')}" rel="stylesheet" type="text/css"/>
    <g:javascript src="easyrtc/easyrtc.js"/>
    <g:javascript src="socket.io/socket.io.js"/>
    <g:javascript src="custom.js"/>

    <!--Customizing our own Script-->
</head>
<body onload="my_init()">
    <video  style="float:left" id="self" width="300" height="200" muted="muted"></video>
    <div style="position:relative;float:left;width:300px">
        <video id="caller" width="300" height="200"></video>
    </div>
    <div id="otherClients"> </div>
</body>
</html>