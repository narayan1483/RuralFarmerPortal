<%@ page import="java.util.List" %>
<%@ page import="model.GovtScheme" %>

<html>
<head>
    <title>Government Schemes</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<h2 class="page-title">Government Schemes for Farmers</h2>

<div class="scheme-container">
    
    
    
<%
    List<GovtScheme> schemes =
        (List<GovtScheme>) request.getAttribute("schemes");

    if (schemes != null) {
        for (GovtScheme s : schemes) {
%>
    <div class="scheme-card">
        <h3><%= s.getName() %></h3>
        <p><span>Benefit:</span> <%= s.getBenefit() %></p>
        <p><span>Eligibility:</span> <%= s.getEligibility() %></p>
        <p><span>Apply Mode:</span> <%= s.getApplyMode() %></p>

        <a href="<%= s.getLink() %>"
           target="_blank"
           class="apply-btn">
           Apply / Details
        </a>

    </div>
<%
        }
    }
%>
</div>

<div style="text-align:center;">
    <a href="dashboard.jsp" class="back-btn">Back to Dashboard</a>
</div>

</body>
</html>