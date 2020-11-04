<%--
  Created by IntelliJ IDEA.
  User: caleb
  Date: 11/3/20
  Time: 11:37 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%! String name;%>
<% name = "Caleb".toUpperCase(); %>
<!doctype html>
<html>
<head>
    <title>Implicit Object Example</title>
</head>
<body>
<h1>Welcome To The Site!</h1>
<p>Path: <%= request.getRequestURL() %></p>
<p>Query String: <%= request.getQueryString() %></p>
<p>"name" parameter: <%= request.getParameter("name") %></p>
<p>"name" parameter with EL: ${param.name}</p>
<p>"method" attribute: <%= request.getMethod() %></p>
<p>User-Agent header: <%= request.getHeader("user-agent") %></p>

<h1>Your Shopping Cart</h1>

<c:choose>

<c:when test="${cart.isEmpty()}">
    <h2>No items in your cart (yet).</h2>
</c:when>

<c:otherwise>
<c:forEach var="item" items="${cart.items}">
<item class="item">
    <h3>${item.name}</h3>
    <p>${item.description}</p>
    <p>${item.price}</p>
    <c:if test="${item.isOnSale}">
    <p>This item is on sale!</p>
    </c:if>
    </item>
    </c:forEach>
    </c:otherwise>

    </c:choose>

<c:choose>
    <c:when test="${boolean_expression_1}">
        <p>boolean_expression_1 was true</p>
    </c:when>
    <c:when test="${boolean_expression_2}">
        <p>boolean_expression_1 was false, and boolean_expression_2 was true</p>
    </c:when>
    <c:otherwise>
        <p>none of the above tests were true</p>
    </c:otherwise>
</c:choose>

<% request.setAttribute("Price", 45); %>;
<p>Price is : $${Price}</p>
</body>
</html>
