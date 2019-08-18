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
<br>
<br>
<a href="#types">TYPES</a><br>
<a href="#courses">COURSES AVAILABLE FOR WORKSHOP</a><br>
<a href="#enrol">ENROLLMENT OPTIONS</a>
<div id="types">
<h1><center>Workshops Info</center></h1>
<table id="workshop">
    <tr>
        <th>modeOfTraining</th>
        <th>noOfCoursesForWorkshop</th>
        <th>totalDays</th>
        <th>totalHours</th>
        <th>hoursPerDay</th>
        <th>workshopPackage</th>
        <th>cost</th>
    </tr>
<c:forEach var="workshopType" items="${workshopInfo.workshopTypes}">
    <tr>
    <td>${workshopType.modeOfTraining}</td>
    <td>${workshopType.noOfWorkshops}</td>
    <td> ${workshopType.totalDays}</td>
    <td>${workshopType.totalHours}</td>
    <td>${workshopType.hoursPerDay}</td>
    <td>${workshopType.workshopPackage}</td>
    <td>${workshopType.cost}</td>
    </tr>
</c:forEach>
</table><br>
</div>
<div id="courses">
<h3><center>List of courses</center></h3>
<table id="workshop">
<h3><center><tr><th>CourseName</th></tr></center></h3>
<c:forEach var="courseForWorkshop" items="${workshopInfo.courses}">
    <tr><td>${courseForWorkshop.name}</td></tr>
</c:forEach>
</table>
</div>
<div id="enrol">
  <form action="workshopEnrollment" method="POST">
  <h2><center><u>ENROL HERE</u></center></h2>
    <lable>Choose Your Course</lable>
    <select name="courseId">
    <c:forEach var="courseForWorkshop" items="${workshopInfo.courses}">
    <option value="${courseForWorkshop.id}">${courseForWorkshop.name}</option>
    </c:forEach>
    </select>
    <br><br>

    <label>Choose Workshop Type</label><br>
   <c:forEach var="workshopType" items="${workshopInfo.workshopTypes}">
    <input type="checkbox" name="workshopTypeId" value="${workshopType.id}"><a href="#types">${workshopType.totalDays} Days Workshop</a><br>
    </c:forEach>
    <br>
    <button type="submit" value="submit">ENROL
  </form>
</div>
</body>
</html>