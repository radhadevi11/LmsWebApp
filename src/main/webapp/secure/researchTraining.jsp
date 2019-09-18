<%@ page import="javax.servlet.*,javax.servlet.http.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<style>

             #research {
                    border: 2px solid black;
                    padding: 3px;
                    border-collapse: collapse;
                    width: 100%;
                }

                #research td, #research th {
                    border: 1px solid #ddd;
                    padding: 8px;
                }

                #research tr:nth-child(even){background-color: #f2f2f2;}

                #research tr:hover {background-color: #ddd;}

                #research th {
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
<h1><center>Research Training Info</center></h1>
<table id="research">
 <tr>

        <th>modeOfTraining</th>
        <th>duration</th>
        <th>noOfCourses</th>
        <th>cost</th>
    </tr>
<c:forEach var="researchTraining" items="${researchTrainingInfo.researchTrainings}">
    <tr>
        <td>${researchTraining.modeOfTraining}</td>
        <td>${researchTraining.duration}</td>
        <td> ${researchTraining.noOfCourses}</td>
        <td>${researchTraining.cost}</td>
    </tr>
</c:forEach>
</table>


<h3><center>List of courses</center></h3>
<table id="research">
<center><h1><tr><th>CourseName</th></tr></h1></center>
<c:forEach var="courseForResearchTraining" items="${researchTrainingInfo.courses}">
    <tr><td>${courseForResearchTraining.name}</td></tr>
</c:forEach>
</table>
</body>
</html>