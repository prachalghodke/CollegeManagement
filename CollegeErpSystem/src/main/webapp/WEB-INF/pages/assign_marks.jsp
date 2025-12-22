<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page isELIgnored="false" %>

<html>
<head>
    <title>Assign Marks</title>
    <link rel="stylesheet" href="css/style.css">
    <style>
        .marks-form {
            max-width: 400px;
            margin: 20px auto;
        }

        .marks-form label {
            display: block;
            margin: 10px 0 5px;
            font-weight: bold;
        }

        .marks-form input, .marks-form select {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border-radius: 4px;
            border: 1px solid #ccc;
        }

        .marks-form input[type="submit"] {
            background-color: #1E3A8A;
            color: white;
            border: none;
            cursor: pointer;
            font-weight: bold;
        }

        .marks-form input[type="submit"]:hover {
            background-color: #274472;
        }

        h2 {
            text-align: center;
            color: #1E3A8A;
            margin-top: 20px;
        }
    </style>
</head>
<body>

<header>
    My College ERP System
</header>

<div class="container">
    <h2>Assign Marks to: ${student.sname}</h2>

    <form action="assginmark" method="post" class="marks-form">
        <!-- hidden student id -->
        <input type="hidden" name="sid" value="${student.sid}" />

        <label>Marks:</label>
        <input type="number" name="marks" required />

        <label>Exam Type:</label>
        <select name="examtype" required>
            <option value="Unit Test">Unit Test</option>
            <option value="Mid Exam">Mid Exam</option>
            <option value="Final Exam">Final Exam</option>
        </select>

        <input type="submit" value="Save Marks" />
    </form>
</div>

<footer>
    © 2025 My College Name
</footer>

</body>
</html>
