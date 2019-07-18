<%@ page import="javax.servlet.*,javax.servlet.http.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<style>

             #inplant {
                    border: 2px solid black;
                    padding: 3px;
                    border-collapse: collapse;
                    width: 100%;
                }

                #inplant td, #inplant th {
                    border: 1px solid #ddd;
                    padding: 8px;
                }

                #inplant tr:nth-child(even){background-color: #f2f2f2;}

                #inplant tr:hover {background-color: #ddd;}

                #inplant th {
                    padding-top: 12px;
                    padding-bottom: 12px;
                    text-align: left;
                    background-color: #4CAF50;
                    color: white;
                }
        </style>
      </head>
<body>
<h1><center>Inplant Training Info</center></h1>

<table id="inplant">
<tr>
        <th>modeOfTraining</th>
        <th>noOfinplantTrainings</th>
        <th>totalDays</th>
        <th>totalHours</th>
        <th>hoursPerDay</th>
        <th>inplantTrainingPackage</th>
        <th>cost</th>
    </tr>
<c:forEach var="inplantTrainingType" items="${inplantTrainingInfo.inplantTrainingTypes}">
    <tr>
        <td>${inplantTrainingType.modeOfTraining}</td>
        <td>${inplantTrainingType.noOfPrograms}</td>
        <td> ${inplantTrainingType.totalDays}</td>
        <td>${inplantTrainingType.totalHours}</td>
        <td>${inplantTrainingType.hoursPerDay}</td>
        <td>${inplantTrainingType.inplantPackage}</td>
        <td>${inplantTrainingType.cost}</td>
        </tr>
</c:forEach>
</table>

<h3><center>List of courses</center></h3>
<table id="inplant">
<tr><th><h3><center>Course Name</center></h3></th></tr>
<c:forEach var="courseForInplantTraining" items="${inplantTrainingInfo.courses}">
    <tr><td>${courseForInplantTraining.name}</td></tr>
</c:forEach>

</table>
</body>
</html>