<%@ page import="model.Farmer" %>

<%
    Farmer farmer = (Farmer) session.getAttribute("farmer");
    if (farmer == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Farmer Dashboard</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<!-- HEADER -->
<div class="header">
    <h2>Rural Farmer Portal</h2>
    <a href="<%= request.getContextPath() %>/logout">Logout</a>
</div>

<!-- WELCOME -->
<div class="welcome">
    <h3>Welcome <%= farmer.getName() %></h3>
    <p>Village: <%= farmer.getVillage() %></p>
</div>

<!-- DASHBOARD MENU -->
<div class="cards">
    <a href="<%= request.getContextPath() %>/mandi" class="card"> Mandi Prices</a>

    <a href="<%= request.getContextPath() %>/crops" class="card"> Crop Info</a>
    <a href="<%= request.getContextPath() %>/weather" class="card"> Weather Update</a>

        <a href="contact.jsp" class="card"> Contact</a>

    <a href="<%= request.getContextPath() %>/schemes" class="card"> Government Schemes</a>

    <a href="profile.jsp" class="card">Profile</a>

</div>

<!-- FOOTER -->
<footer class="footer">
    © 2026 Rural Farmer Portal | All Rights Reserved
</footer>

</body>
</html>

