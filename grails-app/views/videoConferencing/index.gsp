<%--
  Created by IntelliJ IDEA.
  User: vijay
  Date: 30/4/15
  Time: 12:33 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Audio and Video with Recording</title>

    <link rel="stylesheet" type="text/css" href="${resource(dir: 'css',file: 'easyrtc.css')}" />

    <!-- Assumes global locations for socket.io.js and easyrtc.js -->
    <g:javascript src="socket.io/socket.io.js"/>
    <g:javascript src="easyrtc/easyrtc.js"/>
    <g:javascript src="video_conference.js"/>

</head>
<body>
<div id="demoContainer">
    <div id="connectControls">
        <input type="checkbox" checked="checked" id="shareAudio" />Share audio
        <input type="checkbox" checked="checked" id="shareVideo" />Share video<br />
        <input type="checkbox" checked="checked" id="expectAudio" />Expect audio
        <input type="checkbox" checked="checked" id="expectVideo" />Expect video<br />

        <input type="checkbox" id="useFreshIce" onclick="easyrtc.setUseFreshIceEachPeerConnection(this.value);"/>Fresh Ice<br />
        <button id="connectButton" onclick="connect()">Connect</button>
        <button onclick="disconnect()">Disconnect</button>
        <button id="hangupButton" disabled="disabled" onclick="hangup()">Hangup</button>
        <div id="iam">Not yet connected...</div>
        <br />
        <strong>Connected users:</strong>
        <div id="otherClients"></div>
    </div>

    <div id="videos">
        <video autoplay="autoplay" id="selfVideo"  class="easyrtcMirror" muted="muted" volume="0"></video>
        <video autoplay="autoplay" id="callerVideo"></video>
        <div id="acceptCallBox"> <!-- Should be initially hidden using CSS -->
            <div id="acceptCallLabel"></div>
            <button id="callAcceptButton" >Accept</button> <button id="callRejectButton">Reject</button>
        </div>
    </div>
</div>
</body>
</html>