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
    <title>Edit Profile</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">

    <style>
        *{
            margin:0;
            padding:0;
            box-sizing:border-box;
            font-family:'Poppins',sans-serif;
        }

        body{
            height:100vh;
            display:flex;
            justify-content:center;
            align-items:center;
            background:linear-gradient(135deg,#11998e,#38ef7d);
        }

        .card{
            width:400px;
            padding:40px;
            border-radius:20px;
            background:rgba(255,255,255,0.2);
            backdrop-filter:blur(15px);
            box-shadow:0 20px 40px rgba(0,0,0,0.2);
            animation:fadeIn 0.8s ease-in-out;
        }

        h2{
            text-align:center;
            margin-bottom:30px;
            color:white;
        }

        .input-box{
            margin-bottom:20px;
        }

        .input-box input{
            width:100%;
            padding:12px;
            border:none;
            border-radius:10px;
            outline:none;
            font-size:15px;
        }

        .btn{
            width:100%;
            padding:12px;
            border:none;
            border-radius:10px;
            background:#fff;
            font-weight:600;
            cursor:pointer;
            transition:0.3s;
        }

        .btn:hover{
            background:#222;
            color:white;
            transform:scale(1.05);
        }

        .back{
            display:block;
            text-align:center;
            margin-top:20px;
            color:white;
            text-decoration:none;
        }

        .back:hover{
            text-decoration:underline;
        }

        @keyframes fadeIn{
            from{opacity:0; transform:translateY(-20px);}
            to{opacity:1; transform:translateY(0);}
        }

    </style>
</head>
<body>

<div class="card">
    <h2>Edit Profile</h2>

    <form action="EditProfileServlet" method="post">

        <div class="input-box">
            <input type="text" name="name"
                value="<%= farmer.getName() %>" required>
        </div>

        <div class="input-box">
            <input type="text" name="village"
                value="<%= farmer.getVillage() %>" required>
        </div>

        <button type="submit" class="btn">Update Profile</button>
    </form>

    <a href="profile.jsp" class="back">Back to Profile</a>
</div>

</body>
</html>