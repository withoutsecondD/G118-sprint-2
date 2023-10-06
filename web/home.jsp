<%@ page import="kzbiltab.model.Item" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</head>
<body class="d-flex align-items-center flex-column">
    <%@include file="navbar.jsp"%>

    <h3></h3>

    <div class="d-flex">
        <%
            List<Item> items = (List<Item>) request.getAttribute("items");

            for (Item item : items) {
        %>
        <div class="card col-4">
            <div class="card-header"><%=item.getName()%></div>
            <div class="card-body">
                <h5 class="card-title">$<%=item.getPrice()%></h5>
                <p><%=item.getDescription()%></p>
                <a href="#" class="btn btn-primary w-100">BUY NOW</a>
            </div>
        </div>
        <%
            }
        %>
    </div>
</body>
</html>
