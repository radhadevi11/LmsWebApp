<%@ page import="javax.servlet.*,javax.servlet.http.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
 <style>

             #workshop {
                    border: 2px solid black;
                    padding: 3px;
                    border-collapse: collapse;
                    width: 100%;
                }

                #workshop td, #workshop th {
                    border: 1px solid #ddd;
                    padding: 8px;
                }

                #workshop tr:nth-child(even){background-color: #f2f2f2;}

                #workshop tr:hover {background-color: #ddd;}

                #workshop th {
                    padding-top: 12px;
                    padding-bottom: 12px;
                    text-align: left;
                    background-color: #4CAF50;
                    color: white;
                }
        </style>
      </head>
<body>


<h3>Welcome <%= session.getAttribute("email") %></h3>
<h1><center>Workshops Info</center></h1>
<table id="workshop">
    <tr>
        <th>modeOfTraining</th>
        <th>noOfWorkshops</th>
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
</table>
<h3><center>List of courses</center></h3>
<table id="workshop">
<tr><th>CourseName</th></tr>
<c:forEach var="courseForWorkshop" items="${workshopInfo.courses}">
    <tr><td>${courseForWorkshop.name}</td></tr>
</c:forEach>
</body>
</html>