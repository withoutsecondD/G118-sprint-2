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

    <h1 class="mt-4"><b>Welcome to BITLAB SHOP</b></h1>
    <span class="mb-4" style="color: grey; font-size: 20px;">Electronic devices with high quality and service</span>
    <div class="col-6 d-flex flex-column">
        <%
            List<Item> items = (List<Item>) request.getAttribute("items");
            int rowsNumber = items.size() / 3;
            if (items.size() % 3 != 0)
                rowsNumber++;
            int cardIndex = 0;

            for (int i = 0; i < rowsNumber; i++) {
        %>
            <div class="row w-100 justify-content-between mb-4">
                <%
                    for (int j = cardIndex; j < cardIndex + 3; j++) {
                        if (j == items.size())
                            break;
                %>
                <div class="card shadow g-0" style="width: 30%;">
                    <div class="card-header d-flex justify-content-center"><%=items.get(j).getName()%></div>
                    <div class="card-body d-flex flex-column align-items-center">
                        <h5 class="card-title" style="color: #0d6efd;">$<%=items.get(j).getPrice()%></h5>
                        <p class="text-center"><%=items.get(j).getDescription()%></p>
                        <a href="#" class="btn btn-primary w-100">BUY NOW</a>
                    </div>
                </div>
                <%
                    }

                    cardIndex += 3;
                %>
            </div>
        <%
            }
        %>
    </div>
</body>
</html>
