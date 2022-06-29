<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 6/29/2022
  Time: 5:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Coculator</title>
</head>
<body>
<h2>Coculator</h2>
<form action="/Calculator.jsp" method="post">
  <input type="text" name="First operand" placeholder="Enter First operand: "/>
  <p>Operator</p>
  <select name="calculation">
  <option value="add">add</option>
  <option value="adjective">adjective</option>
  <option value="multiplication">multiplication</option>
  <option value="division">division</option>
</select>
  <input type="text" name="second operand" placeholder="Enter second operand: "/>
  <input type = "submit" id = "add" value = "calculator"/>
</form>
</body>
</html>
