<%@ page import="javax.servlet.*,javax.servlet.http.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<body>
<h1><center>Inplant Training Info</center></h1>

<ul>
<c:forEach var="inplantTrainingType" items="${inplantTrainingInfo.inplantTrainingTypes}">
    <li>${inplantTrainingType.modeOfTraining}
        ${inplantTrainingType.totalDays}</li>
</c:forEach>
</ul>
<h3>List of Courses</h3>
<ul>
<c:forEach var="courseForInplantTraining" items="${inplantTrainingInfo.courses}">
    <li>${courseForInplantTraining.name}</li>
</c:forEach>
</ul>
</body>
</html>