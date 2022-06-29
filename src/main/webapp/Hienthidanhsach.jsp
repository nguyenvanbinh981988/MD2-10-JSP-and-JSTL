<%--
Created by IntelliJ IDEA.
User: Admin
Date: 6/29/2022
Time: 3:30 PM
To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.demo.Addlist" %>
<%@ page import="com.example.demo.people" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Simple Dictionary</title>
</head>
<body>

<%
    String search = request.getParameter("Search");
    people person = null;
    for (int i = 0; i < Addlist.danhsach.size(); i++) {
        if (search.equals(Addlist.danhsach.get(i).getName())) ;
        person = Addlist.danhsach.get(i);
        break;
    }

%>
<%
if(person != null) {
    out.println("Name : " + person.getName() +"<br>");
    out.println("birth : " + person.getBirth() +"<br>");
    out.println("address : " + person.getAddress() +"<br>");
    out.println("picture : " + person.getPicture() +"<br>");
} else {
out.println("Not found");
}

%>

</body>
</html>
