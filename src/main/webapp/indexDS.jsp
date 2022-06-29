<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 6/29/2022
  Time: 3:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<head>
  <title>Simple Dictionary</title>
  <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<h2>Thêm người vào danh sách</h2>
<form action="/add" method="post">
  <input type="text" name="name" placeholder="Enter name: "/>
  <input type="text" name="birth" placeholder="Enter birth: "/>
  <input type="text" name="address" placeholder="Enter address: "/>
  <input type="text" name="picture" placeholder="Enter picture: "/>
  <input type = "submit" id = "add" value = "add"/>
</form>

<br>
<br>
<br>


<h2>Tìm người trong danh sách</h2>
<form action="Hienthidanhsach.jsp" method="post">
  <input type="text" name="Search" placeholder="Enter find name: "/>
  <input type = "submit" id = "submit" value = "Search"/>
</form>
</body>
</html>
