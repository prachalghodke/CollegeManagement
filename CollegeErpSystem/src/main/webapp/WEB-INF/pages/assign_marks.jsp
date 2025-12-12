<%@ page isELIgnored="false" %>

<h2>Assign Marks to: ${student.sname}</h2>

<form action="assginmark" method="post">

    <!-- hidden student id -->
    <input type="hidden" name="sid" value="${student.sid}" />

    Marks:
    <input type="number" name="marks" required /><br><br>

    Exam Type:
    <select name="examtype" required>
        <option value="Unit Test">Unit Test</option>
        <option value="Mid Exam">Mid Exam</option>
        <option value="Final Exam">Final Exam</option>
    </select><br><br>

    <input type="submit" value="Save Marks" />
</form>
