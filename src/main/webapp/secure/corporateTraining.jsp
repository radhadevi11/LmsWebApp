<%@ page import="javax.servlet.*,javax.servlet.http.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<style>

             #corporate {
                    border: 2px solid black;
                    padding: 3px;
                    border-collapse: collapse;
                    width: 100%;
                }

                #corporate td, #corporate th {
                    border: 1px solid #ddd;
                    padding: 8px;
                }

                #corporate tr:nth-child(even){background-color: #f2f2f2;}

                #corporate tr:hover {background-color: #ddd;}

                #corporate th {
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
<h1><center>Corporate Training Info</center></h1>
<table id="corporate">
 <tr>
        <th>modeOfTraining</th>
        <th>noOfCorporateTrainings</th>
        <th>totalDays</th>
        <th>totalHours</th>
        <th>hoursPerDay</th>
        <th>corporateTrainingPackage</th>
        <th>cost</th>
    </tr>
<c:forEach var="corporateTrainingType" items="${corporateTrainingInfo.corporateTrainingTypes}">
    <tr>
        <td>${corporateTrainingType.modeOfTraining}</td>
        <td>${corporateTrainingType.noOfCertificationCourses}</td>
        <td> ${corporateTrainingType.totalDays}</td>
        <td>${corporateTrainingType.totalHours}</td>
        <td>${corporateTrainingType.hoursPerDay}</td>
        <td>${corporateTrainingType.corporatePackage}</td>
        <td>${corporateTrainingType.cost}</td>
        </tr>
</c:forEach>
</table>


<h3><center>List of courses</center></h3>
<table id="corporate">
<center><h1><tr><th>CourseName</th></tr></h1></center>
<c:forEach var="courseForCorporateTraining" items="${corporateTrainingInfo.courses}">
    <tr><td>${courseForCorporateTraining.name}</td></tr>
</c:forEach>
</table>
</body>
</html>