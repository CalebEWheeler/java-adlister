<%--
  Created by IntelliJ IDEA.
  User: caleb
  Date: 11/3/20
  Time: 12:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<jsp:include page="partials/header.jsp"/>
<%
    if(request.getMethod().equalsIgnoreCase("post")) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if (username.equalsIgnoreCase("admin") && (password.equals("password"))) {
            response.sendRedirect("/profile.jsp");
        }
    }
%>
<form method="POST" action="/login.jsp">
    <div>
        <label for="username">Username: </label>
        <input type="text" id="username" name="username" placeholder="username ">
    </div>
    <div>
        <label for="password">Password: </label>
        <input type="text" id="password" name="password" placeholder="password ">
    </div>
    <button type="submit">Submit</button>
</form>
<jsp:include page="partials/footer.jsp"/>
</body>
</html>
