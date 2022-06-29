<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head><meta charset="UTF-8"><title>c:out example</title></head>
<body>
<h2>c:out example</h2>
<c:out value="${'This is true: 10 > 1 '}" />
<br/>
Tag: <c:out value="${'<atag> , &'}"/>

<br>
<br>
<br>
<br>
<br>

<p>c:remove</p>
<h2>c:remove example</h2>
<c:set scope="request" var="greeting" value="Hello every body" />
Greeting: <c:out value="${greeting}"/>
<br/><br/>
<c:remove scope="request" var="greeting" />
After remove:
<br/>
Greeting: <c:out value="${greeting}"/>


<br>
<br>
<br>
<br>
<br>

<h2>c:catch example</h2>
<c:catch var ="ex">
    <%
        int a = 100/0;
    %>
</c:catch>
<c:if test = "${ex != null}">
    Exception : ${ex}
    <br />
    Message: ${ex.message}
</c:if>


<br>
<br>
<br>
<br>
<br>

<c:set var = "salary" scope = "session" value = "${2000*2}"/>
<c:if test = "${salary > 2000}">
<p>My salary is:  <c:out value = "${salary}"/><p>
    </c:if>

        <br>
        <br>
        <br>
        <br>
        <br>

        <c:set var = "salary" scope = "session" value = "${2000*2}"/>
<p>Your salary is : <c:out value = "${salary}"/></p>
<c:choose>
    <c:when test = "${salary <= 0}">
        Salary is very low to survive.
    </c:when>
    <c:when test = "${salary > 1000}">
        Salary is very good.
    </c:when>
    <c:otherwise>
        No comment sir...
    </c:otherwise>
</c:choose>


<br>
<br>
<br>
<br>
<br>


<h2>c:choose,c:when,c:otherwise example</h2>
<c:choose>
    <%-- Khi tham số color == 'red' --%>
    <c:when test="${param.color=='red'}">
        <p style="color:red;">RED COLOR</p>
    </c:when>
    <%-- Khi tham số color == 'blue' --%>
    <c:when test="${param.color=='blue'}">
        <p style="color:blue;">BLUE COLOR</p>
    </c:when>
    <%-- Các trường hợp khác --%>
    <c:otherwise>
        <b>Other color</b>
    </c:otherwise>
</c:choose>


<br>
<br>
<br>
<br>
<br>

<c:set var = "salary" scope = "session" value = "${2000*2}"/>
<p>Your salary is : <c:out value = "${salary}"/></p>
<c:choose>
    <c:when test = "${salary <= 0}">
        Salary is very low to survive.
    </c:when>

    <c:when test = "${salary > 1000}">
        Salary is very good.
    </c:when>

    <c:otherwise>
        No comment sir...
    </c:otherwise>
</c:choose>


<br>
<br>
<br>
<br>
<br>

<c:forEach var = "i" begin = "1" end = "5">
Item <c:out value = "${i}"/><p>
    </c:forEach>


        <br>
        <br>
        <br>
        <br>
        <br>

<h2>c:forTokens example</h2>
<c:forTokens items="Tom,Jerry,Donald" delims="," var="name">
<c:out value="${name}"/><p>
    </c:forTokens>


</body>
</html>