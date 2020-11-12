<%--
  Created by IntelliJ IDEA.
  User: caleb
  Date: 11/10/20
  Time: 12:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Register for our site!" />
    </jsp:include>
</head>
<body>
<form method="POST" action="/register">
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container">
        <h1>Please Fill In Your Information.</h1>
        <c:if test="${requestScope.registerError != null}" >
            <div class="alert alert-danger" role="alert">
                ${requestScope.registerError}
            </div>
        </c:if>
        <form action="/register" method="POST">
            <div class="form-group">
                <label for="username">Username</label>
                <input id="username" name="username" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input id="email" name="email" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input id="password" name="password" class="form-control" type="password">
            </div>
            <div class="form-group">
                <label for="password_confirm">Confirm Password</label>
                <input id="password_confirm" name="password_confirm" class="form-control" type="password">
            </div>
            <input type="submit" class="btn btn-primary btn-block" value="Register">
        </form>
    </div>
</form>
</body>
</html>
