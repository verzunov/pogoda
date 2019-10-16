<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Pavel
  Date: 22.08.2019
  Time: 14:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html >
<head>
    <title>National Portal Ecology Information of Kyrgyz Republic</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js" type="text/javascript"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css"/>
    <script src="${pageContext.request.contextPath}/resources/script/NOAAdataset.js" type="text/javascript"> </script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/CSS/menu.css"/>

    <style type="text/css">
        .head-banner{
            height: 60px;
            background-image: url("${pageContext.request.contextPath}/resources/images/logoF.jpg");
        }
    </style>
</head>
<body>
     <header>
         <%@ include file="fragment/header.html"%>
         <ul id="navbar">
             <li><a href="#">Noaa</a></li>
             <li><a href="aqicn">Aqicn</a></li>
             <li><a href="#">Sdss</a>
             </li>
         </ul>
     </header>


     <div class="content-area">
         <div  id = "selectType">
         </div>

         <div class="selectDateTime">
             <p>
                 <label for = "all" >Выберите период  времени </label>
                 <br><label for = "start"> Начало </label>
                 <input type = "date" id ="start" value="2018-06-01">
                 <label for = "end"> Конец </label>
                 <input type = "date" id ="end" value="2018-07-17">
             </p>
         </div>
         <div class="button">
             <button onclick ="requestNOAA();" > Запросить информацию </button>
         </div>
     </div>

     <footer>


     </footer>
</body>
</html>


