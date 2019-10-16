<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: Pavel
  Date: 04.10.2019
  Time: 8:33
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>National Portal Ecology Information of Kyrgyz Republic</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js" type="text/javascript"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css"/>
    <script src="${pageContext.request.contextPath}/resources/script/NOAAdataset.js" type="text/javascript"> </script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/CSS/menu.css"/>
    <script src="${pageContext.request.contextPath}/resources/script/jquery-1.7.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/script/waqi-api-demo.js"></script>

    <style type="text/css">
        .head-banner{
            height: 60px;
            background-image: url("${pageContext.request.contextPath}/resources/images/logoF.jpg");
        }

        table.result {
            width: 100%;
            border: 1px solid black;
            cursor: pointer;
        }
        table.result td:nth-child(n+2) {
            text-align: center;
        }
        table.result tr:hover {
            background-color: yellow;
        }
        h2 {
            margin-bottom: 0;
        }
        input {
            width: 100%;
            font-size: 20px;
            font-family: inherit;;
            margin-bottom: 8px;
        }

        /* CSS Spinner-  https://github.com/webkul/csspin */
        .cp-spinner{width:48px;height:48px;display:inline-block;box-sizing:border-box;position:relative}.cp-meter{border-radius:50%;border-top:solid 6px #0fd6ff;border-right:solid 6px #0fd6ff;border-bottom:solid 6px #0fd6ff;border-left:solid 6px #0fd6ff;width:48px;height:48px;display:inline-block;box-sizing:border-box}.cp-meter:before{border-radius:3px;content:" ";width:6px;height:12px;display:inline-block;box-sizing:border-box;background-color:#0fd6ff;position:absolute;top:5px;left:16px;transform-origin:center bottom;animation:cp-meter-animate-before 1s linear infinite}@keyframes cp-meter-animate-before{0%{transform:rotate(-45deg)}100%{transform:rotate(315deg)}}

    </style>
</head>
<body>
    <header>
        <%@ include file="fragment/header.html"%>
        <ul id="navbar">
            <li><a href="/test/">Noaa</a></li>
            <li><a href="#">Aqicn</a></li>
            <li><a href="#">Sdss</a>
            </li>
        </ul>
    </header>

<h1>Search and Feed</h1>

<div style="float:left;width:49%">
    <h2> Enter the name of station: </h2>
    <input id="input-station" placeholder="for instance &#39;bangalore&#39;">
    <br>
    You can search by the station name, but also by any name refering to the station.<br>
<%--    For instance, for all stations located in Bulgaria, enter <code>Bulgaria</code>.<br>--%>
<%--    You can also search by the <i>native</i> name, for instance for Beijing, enter <code>еЊ—дє¬</code>.<br>--%> <br>
</div>

<div style="float:right;width:49%">
    <h2> Enter your token: </h2>
    <input id="input-token" placeholder="your token - if not set you will use the demo token">
    You can get your own free token from the page <a href="http://aqicn.org/data-platform/register/">
    aqicn.org/data-platform/register</a>. <br>It's free and only requires a valid email to register.
    <br>
</div>

<div style="clear: both"></div>

<br>

<div id="result-search" style="min-height: 300px"></div>

<script>init("#input-token","#input-station","#result-search")</script>

<script>
    try {
        fetch("waqi-api-demo.js").then(function(r){return r.text()}).then(function(code){
            var block = $("<pre>").append($("<code>").text(code))
            $("#code-listing").append(block)
        })
    } catch (e) { }
</script>
</body>
</html>
