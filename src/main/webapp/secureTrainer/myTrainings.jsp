<%@ page import="javax.servlet.*,javax.servlet.http.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
 <head>
 <link rel="stylesheet" type="text/css" href="workshopPageStyle.css">
      </head>
 <body>
    <div>
        <%@ include file="../header.jsp" %>
    </div>
    <c:choose>
        <c:when test="${isEmptyTrainings}">
            <center> <h2> "NO AVAILABLE TRAININGS FOR YOU"</h2></center>
        </c:when>
        <c:otherwise>
            <table id="workshop">
                <tr>
                    <th>Training Program Name</th>
                    <th>Course Name</th>
                    <th>Date</th>
                    <th>Total Days</th>
                    <th>HoursPerDay</th>
                </tr>
                <c:forEach var="training" items="${trainings}">
                    <tr>
                    <td>Name</td>
                   <td>${training.course.name}</td>
                    <td>${training.date}</td>
                    <td>days</td>
                    <td>hours</td>
                    </tr>
                </c:forEach>
            </table>
            </c:otherwise>
            </c:choose>


 </body>
</html>
