<%@ page import="javax.servlet.*,javax.servlet.http.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
 <head>
 <link rel="stylesheet" type="text/css" href="workshopPageStyle.css">
      </head>
<body>
<div>
<%@ include file="header.jsp" %>
</div>
<h1><center>Available Workshops For Enrolment</center></h1>
<form action="saveEnrolment" method="POST">
<table id="workshop">
    <tr>
        <th>Course Name</th>
        <th>Date</th>
        <th>Total Days</th>
        <th>HoursPerDay</th>
        <th>WorkshopPackage</th>
        <th>cost</th>
        <th>Enroll</th>
    </tr>
<c:forEach var="availableWorkshopsForStudent" items="${availableWorkshopsForStudent}">
    <tr>
    <input type="hidden" name="workshopId" value="${availableWorkshopsForStudent.id}"/>
    <td>${availableWorkshopsForStudent.course.name}</td>
    <td>${availableWorkshopsForStudent.date}</td>
    <td> ${availableWorkshopsForStudent.workshopType.totalDays}</td>
    <td>${availableWorkshopsForStudent.workshopType.hoursPerDay}</td>
    <td>${availableWorkshopsForStudent.workshopType.workshopPackage}</td>
    <td>${availableWorkshopsForStudent.workshopType.cost}</td>
    <td><button type="submit">Enroll Now</button> </td>
    </tr>
</c:forEach>
</table><br>
</form>
</div>