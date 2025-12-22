<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <title>College ERP System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            text-align: center;
            margin-top: 100px;
        }

        h1.title {
            color: #c53030; /* red */
            margin-bottom: 50px;
        }

        .login-links a {
            display: block;
            margin: 15px auto;
            width: 200px;
            padding: 12px;
            background-color: #3182ce; /* blue */
            color: white;
            text-decoration: none;
            border-radius: 6px;
            font-size: 18px;
        }

        .login-links a:hover {
            background-color: #2b6cb0;
        }
    </style>
</head>
<body>

    <h1 class="title">College ERP System</h1>

    <div class="login-links">
        <a href="admin_login">Admin Login</a>
        <a href="faculty_login">Faculty Login</a>
        <a href="student_login">Student Login</a>
    </div>

</body>
</html>
