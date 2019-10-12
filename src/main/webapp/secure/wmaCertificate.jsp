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
        <c:when test="${isEmptyCertificate}">
            <center> <h2> "NO AVAILABLE CERTIFICATE"</h2></center>
        </c:when>
        <c:otherwise>
            <table id="workshop">
                <tr>
                    <th>Course Code</th>
                    <th>CourseName</th>
                    <th>Certificate Name</th>
                    <th>Date</th>
                    <th>Duration</th>
                    <th>Cost</th>


                </tr>
                <c:forEach var="certificate" items="${certificate}">
                    <form action="saveEnrolment" method="post">
                    <tr>
                        <td>${certificate.course.code}</td>
                        <td>${certificate.course.name}</td>
                        <td>${certificate.name}</td><!-- name property does not work because it is default method in TrainingProgram Interface -->
                        <td>${certificate.date}</td>
                        <td class="whiteSpace">${certificate.duration}</td>
                        <td>${certificate.cost}</td>

                    </tr>
                    </form>
                </c:forEach>
            </table>
            </c:otherwise>
            </c:choose>


 </body>
</html>
