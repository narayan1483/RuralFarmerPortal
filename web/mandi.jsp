<%@ page import="java.util.List" %>
<%@ page import="model.MandiPrice" %>

<!DOCTYPE html>
<html>
<head>
    <title>Mandi Prices</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body class="mandi-bg">

<div class="mandi-container">
    <h2 class="mandi-title">Today's Mandi Prices</h2>

    <table class="mandi-table">
        <tr>
            <th>Crop</th>
            <th> Market</th>
            <th> Price ( / Quintal)</th>
            <th> Date</th>
        </tr>

        <%
            List<MandiPrice> list = (List<MandiPrice>) request.getAttribute("mandiList");
            if (list != null) {
                for (MandiPrice m : list) {
        %>
        <tr>
            <td><%= m.getCropName() %></td>
            <td><%= m.getMarket() %></td>
            <td>? <%= m.getPrice() %></td>
            <td><%= m.getPriceDate() %></td>
        </tr>
        <%
                }
            }
        %>
    </table>

    <a href="dashboard.jsp" class="back-btn"> Back to Dashboard</a>
</div>

</body>
</html>
