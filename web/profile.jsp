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
    <title>My Profile</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<!-- HEADER -->
<div class="header">
    <h2>Rural Farmer Portal</h2>
    <a href="<%= request.getContextPath() %>/logout">Logout</a>
</div>

<h2 class="page-title">My Profile</h2>

<div class="profile-card">

    <div class="profile-row">
        <span>Name</span>
        <p><%= farmer.getName() %></p>
    </div>

    <div class="profile-row">
        <span>Mobile</span>
        <p><%= farmer.getMobile() %></p>
    </div>

    <div class="profile-row">
        <span>Village</span>
        <p><%= farmer.getVillage() %></p>
    </div>

    <div class="profile-row">
        <span>Farmer ID</span>
        <p>#FRM<%= farmer.getId() %></p>
    </div>

    <!-- ACTION BUTTONS -->
    <div class="profile-actions">
        <a href="editProfile.jsp" class="edit-btn"> Edit Profile</a>
        <a href="changePassword.jsp" class="password-btn"> Change Password</a>
    </div>

</div>

<a href="dashboard.jsp" class="back-btn">Back to Dashboard</a>

<footer class="footer">
    © 2026 Rural Farmer Portal | All Rights Reserved
</footer>

</body>
</html>
