<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Farmer Login</title>

    <!-- CSS link -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body class="login-body">
   

<div class="login-container">

    <div class="login-card">

        <!-- Left Side (Optional Image / Color Panel) -->
        <div class="login-left">
            <h1>🌾 Rural Farmer Portal</h1>
            <p>Support • Technology • Growth</p>
        </div>

        <!-- Right Side Login Form -->
        <div class="login-right">
            <h2>Farmer Login</h2>

            <form action="<%= request.getContextPath() %>/login" method="post">

                <label>Mobile Number</label>
                <input type="text" name="mobile" placeholder="Enter mobile number" required>

                <label>Password</label>
                <input type="password" name="password" placeholder="Enter password" required>

                <button type="submit">Login</button>
            </form>

            <a href="index.jsp" class="back-link">← Back to Home</a>
        </div>

    </div>

</div>
           

</body>
</html>
