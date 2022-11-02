<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: christiancarter
  Date: 11/1/22
  Time: 3:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>


<form method="POST" action="login.jsp">
<div class="input-group mb-3">
    <%--@declare id="username"--%><label for="username">Username</label>
    <span class="input-group-text" id="basic-addon1">@</span>
    <input type="text" class="form-control" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1" name="username">
</div>

<div class="mb-3 row">
    <label for="inputPassword" class="col-sm-2 col-form-label">Password</label>
    <div class="col-sm-10">
        <input type="password" class="form-control" id="inputPassword" name="password">
    </div>
</div>
    <div class="col-auto">
        <button type="submit" class="btn btn-primary mb-3">Login</button>
    </div>
</form>



<p>username: ${param.username}</p>
<p>password: ${param.password}</p>



<%--<c:if test="${param.username == null}">--%>
<%--    <h1>Username needs to be valid.</h1>--%>
<%--</c:if>--%>

<c:choose>
    <c:when test="${param.username.equals('admin') && param.password.equals('password')}">
    <% response.sendRedirect("/profile.jsp"); %>
    </c:when>
    <c:otherwise>
        <c:if test="${param.username != null && param.password != null}">
            <p>Please enter your username and password</p>
        </c:if>
    </c:otherwise>
</c:choose>

<%--<c:if test="${param.password == null}">--%>
<%--    <h1>Password needs to be valid.</h1>--%>
<%--</c:if>--%>

<c:choose>
    <c:when test='${param.password.equals("123")}'>
        <h1>Valid password</h1>
    </c:when>
    <c:otherwise>
        <h1>Not a valid password</h1>
    </c:otherwise>
</c:choose>





<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
