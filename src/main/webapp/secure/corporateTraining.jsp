<%@ page import="javax.servlet.*,javax.servlet.http.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<body>
<h1><center>Corporate Training Info</center></h1>

<ul>
<c:forEach var="corporateTrainingType" items="${corporateTrainingInfo.corporateTrainingTypes}">
    <li>${corporateTrainingType.modeOfTraining}
        ${corporateTrainingType.totalDays}</li>
</c:forEach>
</ul>
<ul>
<h3>List of Course</h3>
<c:forEach var="courseForCorporateTraining" items="${corporateTrainingInfo.courses}">
    <li>${courseForCorporateTraining.name}</li>
</c:forEach>
</ul>
</body>
</html>