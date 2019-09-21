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
                    <th>Duration</th>

                </tr>
                <c:forEach var="training" items="${trainings}">
                    <tr>
                    <td>${training.name}</td>
                   <td>${training.course.name}</td>
                    <td>${training.date}</td>
                    <td class="whiteSpace">${training.duration}</td>

                    </tr>
                </c:forEach>
            </table>
            </c:otherwise>
            </c:choose>


 </body>
</html>
