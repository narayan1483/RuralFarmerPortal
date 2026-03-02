<%@ page import="java.util.List" %>
<%@ page import="model.Crop" %>

<!DOCTYPE html>
<html>
<head>
    <title>Crop Information</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<h2 class="page-title">Crop Information</h2>

<div class="crop-container">
<%
    List<Crop> list = (List<Crop>) request.getAttribute("cropList");
    if (list != null) {
        for (Crop c : list) {
%>
    <div class="crop-card">
        <h3><%= c.getName() %></h3>
        <p><b>Season:</b> <%= c.getSeason() %></p>
        <p><b>Fertilizer:</b> <%= c.getFertilizer() %></p>
        <p><b>Water Need:</b> <%= c.getWaterRequirement() %></p>
    </div>
<%
        }
    }
%>
</div>

<a href="dashboard.jsp" class="back-btn">Back to Dashboard</a>

</body>
</html>
