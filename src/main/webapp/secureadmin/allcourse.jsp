    <%@ page import="javax.servlet.*,javax.servlet.http.*" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   <html>
    <head>
        <style>
             #course {
                    border: 2px solid black;
                    padding: 3px;
                    border-collapse: collapse;
                    width: 100%;
                }

                #course td, #course th {
                    border: 1px solid #ddd;
                    padding: 8px;
                }

                #course tr:nth-child(even){background-color: #f2f2f2;}

                #course tr:hover {background-color: #ddd;}

                #course th {
                    padding-top: 12px;
                    padding-bottom: 12px;
                    text-align: left;
                    background-color: #4CAF50;
                    color: white;
                }
        </style>
      </head>
      <body>
      <div>
      <%@ include file="header.jsp" %>
      </div>
        <h2><center>List Of Courses </center></h2>
            <table name="course" id="course">
                <tr>
                <th>Course Code</th>
                <th>Course Name</th>
                </tr>
                <c:forEach var="course" items="${courses}">
                    <tr>
                    <td>${course.code}</td>
                    <td>${course.name}</a></td>
                    <td><a href="editCourse?id=${course.id}"><Button>Edit</Button></a></td>
                    <td><a href="deleteCourse?id=${course.id}"><Button>Delete</Button></a></td>

                    </tr>
                 </c:forEach>
            </table>
      </body>
    </html>