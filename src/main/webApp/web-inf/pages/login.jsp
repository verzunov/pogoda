<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Pavel
  Date: 12.10.2019
  Time: 12:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Login</title>
    <!-- Source: https://github.com/dansup/bulma-templates -->
    <link data-th-href="@{/webjars/bulma/css/bulma.css}" rel="stylesheet"/>
    <link rel="stylesheet" data-th-href="@{/webjars/font-awesome/css/font-awesome.min.css}"/>
    <link rel="stylesheet" data-th-href="@{/webjars/highcharts/css/highcharts.css}"/>
    <script type="text/javascript" data-th-src="@{/webjars/highcharts/highcharts.js}"></script>
    <script type="text/javascript" data-th-src="@{/webjars/highcharts/modules/annotations.js}"></script>
    <link rel="stylesheet" data-th-href="@{/webjars/flatpickr/dist/flatpickr.css}"/>
    <script type="text/javascript" data-th-src="@{/webjars/flatpickr/dist/flatpickr.js}"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/CSS/login.css"/>

</head>
<body>
<section class="hero is-fullheight">
    <div class="hero-body">
        <div class="container has-text-centered">

            <div class="column is-4 is-offset-4">
                <div class="box">
                    <figure class="avatar">
                        <img src="${pageContext.request.contextPath}/resources/images/springboot.png"/>
                    </figure>
                    <c:url value="/login" var="loginUrl" />
                    <form action="${loginUrl}" method="post">
                        <h2 class="form-signin-heading">Please sign in</h2>

                        <div class="field">
                            <div class="control">
                                <input type="text" class="form-control" name="j_username" placeholder="Email address" required autofocus value="colibri">
                            </div>
                        </div>

                        <div class="field">
                            <div class="control">
                                <input type="password" class="form-control" name="j_password" placeholder="Password" required value="1234">
                            </div>
                        </div>

                        <button class="btn btn-lg btn-primary btn-block" type="submit">Войти</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>
