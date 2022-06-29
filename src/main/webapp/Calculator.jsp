<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 6/29/2022
  Time: 5:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  Double A = Double.parseDouble(request.getParameter("First operand"));
  Double B = Double.parseDouble(request.getParameter("second operand"));
  String calculation = request.getParameter("calculation");


  if (calculation.equals("add")) {
    Double result = A + B;
    out.println("Result: A + B = " + result);
  } else if (calculation.equals("adjective")) {
    Double result = A - B;
    out.println("Result: A + B = " + result);
  } else if (calculation.equals("multiplication")) {
    Double result = A * B;
    out.println("Result: A + B = " + result);
  } else {
    Double result = A / B;
    out.println("Result: A + B = " + result);
  }

%>

</body>
</html>
