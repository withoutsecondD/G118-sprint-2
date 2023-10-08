<%@ page import="kzbiltab.model.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Profile</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</head>
<body class="d-flex flex-column align-items-center">
    <%@include file="navbar.jsp"%>

    <div class="container mt-4 d-flex flex-column justify-content-center text-center">
        <%
            String name = request.getAttribute("userName").toString();
        %>

        <h1>Hello <%=name%></h1>
        <span style="color: grey; font-size: 20px;">This is your profile page</span>
    </div>
</body>
</html>
