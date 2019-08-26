<html>
<head>
<style>
.topnav {

      overflow: hidden;
      background-color: #333;
    }

    .topnav Button {

      float: left;
      color: #f2f2f2;
      text-align: center;
      padding: 1px 70px;
      text-decoration: none;
      font-size: 15px;
    }

    .topnav Button:hover {
      background-color: #ddd;
      color: black;
      size:30px;
    }

    .topnav Button.active {
      background-color: #4CAF50;
      color: white;
    }
    </style>
</head>
<body>
<div>
<%@ include file="header.jsp" %>
</div>


    <form name = "modifyCourse">
        <Button type="submit" value="addCourse" onclick="form.action='adminpage'; form.method='post'; ">Add Course</Button>
        <Button type="submit" value="customizeCourse" onclick="form.action='listOfCourse'; form.method='post'; ">Customize Course</Button>
        <Button type="submit" value="scheduleTrainingPrograms" onclick="form.action='trainingProgram'; form.method='get';">
        Schedule Training Program</Button>
</body>
</html>