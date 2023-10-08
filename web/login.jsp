<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sign in</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</head>
<body class="d-flex flex-column align-items-center">
<%@include file="navbar.jsp" %>

<div class="container row col-4 d-flex justify-content-center">
    <div class="card mt-4 g-0 shadow">
        <h4 class="card-header">Login Page</h4>
        <div class="card-body">
            <form class="d-flex flex-column justify-content-around" action="/LoginServlet" method="post">
                <div class="d-flex justify-content-between">
                    <label class="col-3" for="email">Email</label>
                    <input style="border-color: #c4c4c4;" class="form-control" type="text" name="email" id="email">
                </div>
                <div class="d-flex mt-4">
                    <label class="col-3" for="password">Password</label>
                    <input style="border-color: #c4c4c4;" class="form-control" type="password" name="password"
                           id="password">
                </div>
                <button class="btn btn-primary mt-4 col-2">Login</button>
            </form>
        </div>
    </div>
</div>

<%
    boolean userNotFound = (boolean) request.getAttribute("error");
    if (userNotFound) {
%>
    <div class="card mt-3 col-lg-4 border-0" style="background-color: #ffb8b8;">
        <div class="card-body">
            <span style="color: darkred;">Incorrect <b>email</b> or <b>password</b>!</span>
        </div>
    </div>
<%
    }
%>
</body>
</html>
