<%--
  Created by IntelliJ IDEA.
  User: vijay
  Date: 30/4/15
  Time: 9:04 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>EasyRTC Practice</title>

    <link rel="stylesheet" type="text/css" href="${resource(dir: 'css',file: 'easyrtc.css')}" />
    <!-- Assumes global locations for socket.io.js and easyrtc.js -->
    <g:javascript src="socket.io/socket.io.js"/>
    <g:javascript src="easyrtc/easyrtc.js"/>
    <g:javascript src="myScript.js"/>

</head>
<body>
<div id="videoDemoContainer">
    <div id="connectControls">
        <button id="connectButton" onclick="connect()">Connect</button>
        <button id="hangupButton" disabled="disabled" onclick="hangup()">Hangup</button>
        <div id="iam">Not yet connected...</div>
        <br />
        <strong>Connected users:</strong>
        <div id="otherClients"></div>
    </div>
    <div id="videos">
        <video autoplay="autoplay" id="selfVideo" class="easyrtcMirror"></video>
        <video autoplay="autoplay" id="callerVideo"></video>
        <div id="acceptCallBox"> <!-- Should be initially hidden using CSS -->
            <div id="acceptCallLabel"></div>
            <button id="callAcceptButton" >Accept</button> <button id="callRejectButton">Reject</button>
        </div>
    </div>
</div>
</body>
</html>