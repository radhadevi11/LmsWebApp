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
        <c:when test="${isEmptySearchResult}">
            <center> <h2> "NO AVAILABLE RESULT FOR COURSE ${courseName}"</h2></center>
        </c:when>
        <c:otherwise>
            <table id="workshop">
                <tr>
                    <th>Course Code</th>
                    <th>CourseName</th>
                    <th>Training Program / Certificate Name</th>
                    <th>Date</th>
                    <th>Duration</th>
                    <th>Cost</th>
                    <th>Enroll</th>

                </tr>
                <c:forEach var="searchResult" items="${searchResults}">
                    <tr>
                        <td>${searchResult.course.code}</td>
                        <td>${searchResult.course.name}</td>
                        <td>${searchResult.getName()}</td><!-- name property does not work because it is default method in TrainingProgram Interface -->
                        <td>${searchResult.date}</td>
                        <td class="whiteSpace">${searchResult.duration}</td>
                        <td>${searchResult.cost}</td>
                    <td></td>

                    </tr>
                </c:forEach>
            </table>
            </c:otherwise>
            </c:choose>


 </body>
</html>
