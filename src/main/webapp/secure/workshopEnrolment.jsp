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
    <h1><center><%=session.getAttribute("student").name>'s Enrolment</center></h1>
    <form >
        <c:choose>
            <c:when test="${isEmptyEnrolment}">
                <center> <h2> "NO ENROLMENTS YET"</h2></center>
            </c:when>
            <c:otherwise>
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
                <c:forEach var="workshopEnrolment" items="${workshopEnrolments}">
                    <tr>
                    <td>${workshopEnrolment.workshop.course.name}</td>
                    <td>${workshopEnrolment.workshop.date}</td>
                    <td> ${workshopEnrolment.workshop.workshopType.totalDays}</td>
                    <td>${workshopEnrolment.workshop.workshopType.hoursPerDay}</td>
                    <td>${workshopEnrolment.workshop.workshopType.workshopPackage}</td>
                    <td>${workshopEnrolment.workshop.workshopType.cost}</td>
                    <td><button type="submit">PAY NOW</button> </td>
                    </tr>
                </c:forEach>
                </table><br>
            </c:otherwise>
        </c:choose>
</form>
</div>