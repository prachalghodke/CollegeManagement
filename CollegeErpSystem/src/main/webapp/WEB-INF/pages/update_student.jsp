<%@ page isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="frm"%>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Student</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
        }

        header {
            text-align: center;
            background-color: #1E3A8A;
            color: white;
            padding: 15px 0;
            font-size: 24px;
        }

        .container {
            width: 500px;
            margin: 50px auto;
            background: white;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px gray;
        }

        h1 {
            color: #1E3A8A;
            text-align: center;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        td {
            padding: 10px;
        }

        input[type="text"], input[type="email"], input[type="number"] {
            width: 95%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        input[type="submit"], input[type="reset"] {
            padding: 10px 15px;
            margin-top: 10px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-size: 14px;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: white;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        input[type="reset"] {
            background-color: #6c757d;
            color: white;
        }

        input[type="reset"]:hover {
            background-color: #5a6268;
        }

        .actions {
            text-align: center;
        }
    </style>
</head>
<body>

<header>My College ERP System</header>

<div class="container">
    <h1>Edit Student Details</h1>

    <frm:form modelAttribute="stud">
        <table>
            <tr>
                <td>Student ID</td>
                <td><frm:input path="sid" readonly="true" /></td>
            </tr>

            <tr>
                <td>Student Name</td>
                <td><frm:input path="sname" /></td>
            </tr>

            <tr>
                <td>Email</td>
                <td><frm:input path="email" /></td>
            </tr>

            <tr class="actions">
                <td colspan="2" style="text-align:center;">
                    <input type="submit" value="Update">
                    <input type="reset" value="Cancel">
                </td>
            </tr>
        </table>
    </frm:form>

</div>

</body>
</html>
