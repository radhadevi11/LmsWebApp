<%@ page import="javax.servlet.*,javax.servlet.http.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.glosys.lms.controller.TrainingProgramTypeController,com.glosys.lms.TrainingProgramType,java.util.List" %>
<html>
<body>
<h1><center>This is Courses.jsp</center></h1>

<h3>Welcome <%= session.getAttribute("email") %></h3>

<ul>
<c:forEach var="program" items="${trainingProgramTypes}">
    <li><a href="trainingProgramDetails?id=${program.id}">${program.name}</a></li>
</c:forEach>
</ul>
</body>
</html>