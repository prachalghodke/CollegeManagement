<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Student Login</title>
    <style>
        body {
            font-family: Arial;
            background-color: #f2f2f2;
        }
        .login-container {
            width: 350px;
            margin: 120px auto;
            background: white;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px gray;
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        input[type="email"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-top: 10px;
            border: 1px solid gray;
            border-radius: 5px;
        }
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin-top: 15px;
            background-color: #007bff;
            border: none;
            color: white;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
        .error {
            color: red;
            text-align: center;
            margin-top: 10px;
        }
    </style>
</head>

<body>

<div class="login-container">
    <h2>Student Login</h2>

    <form action="student_login" method="post">
        <label>Email</label>
        <input type="email" name="email" required>

        <label>Password</label>
        <input type="password" name="password" required>

        <input type="submit" value="Login">
    </form>

    <div class="error">
        ${errorMsg}
    </div>
</div>

</body>
</html>
