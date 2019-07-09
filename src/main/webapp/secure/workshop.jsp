<%@ page import="javax.servlet.*,javax.servlet.http.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<body>
<h1><center>Workshops Info</center></h1>

<h3>Welcome <%= session.getAttribute("email") %></h3>

<ul>
<c:forEach var="workshopType" items="${workshopInfo.workshopTypes}">
    <li>${workshopType.modeOfTraining}
        ${workshopType.totalDays}</li>
</c:forEach>
</ul>
<h3>List of courses</h3>
<ul>
<c:forEach var="courseForWorkshop" items="${workshopInfo.courses}">
    <li>${courseForWorkshop.name}</li>
</c:forEach>
</ul>
</body>
</html>