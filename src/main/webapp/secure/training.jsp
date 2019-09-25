``<%@ page import="javax.servlet.*,javax.servlet.http.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.List" %>
<html>
 <head>
        <style>
        a:link {
          text-decoration: none;
        }
             #training {
                    border: 2px solid black;
                    padding: 3px;
                    border-collapse: collapse;
                    width: 100%;
                }

                #training td, #training th {
                    border: 1px solid #ddd;
                    padding: 8px;
                }

                #training tr:nth-child(even){background-color: #f2f2f2;}

                #training tr:hover {background-color: #ddd;}

                #training th {
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
   <%@ include file="../header.jsp" %>
   </div>
<h1><center>Training Details</center></h1>
<table id="training">
<tr><th>Training Programs Offered</th></tr>
<c:forEach var="program" items="${trainingProgramTypes}">
   <tr><td><a href="trainingProgramDetails?id=${program.id}">${program.name}</a></td></tr>
</c:forEach>
</table>
<br>
<table id="training">
<tr><th>Training courses offered</th></tr>
<c:forEach var="category" items="${courseCategories}">
    <tr><td><a href="certificate?id=${category.id}">${category.name}</a></td></tr>
</c:forEach>
</table>
</body>
</html>