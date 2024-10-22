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
                    <th>Download Materials</th>

                </tr>
                <c:forEach var="training" items="${trainings}">
                    <tr>
                    <td>${training.getName()}</td><!-- name property does not work because it is default method in TrainingProgram Interface -->
                   <td>${training.course.name}</td>
                    <td>${training.date}</td>
                    <td class="whiteSpace">${training.duration}</td>
                    <td><a href="${training.materialPath}">download</a></td>

                    </tr>
                </c:forEach>
            </table>
            <a href="/lms_material/abstract%20example.odt">download</a>
            </c:otherwise>
            </c:choose>


 </body>
</html>
