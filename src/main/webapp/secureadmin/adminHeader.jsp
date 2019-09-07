    <%@ page import="javax.servlet.*,javax.servlet.http.*" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style>
    body {
      margin: 0;
      font-family: Arial, Helvetica, sans-serif;
    }

    .topnav {

      overflow: hidden;
      background-color: #333;
    }

    .topnav a {

      float: left;
      color: #f2f2f2;
      text-align: center;
      padding: 1px 70px;
      text-decoration: none;
      font-size: 15px;
    }

    .topnav a:hover {
      background-color: #ddd;
      color: black;
      size:30px;
    }

    .topnav a.active {
      background-color: #4CAF50;
      color: white;
    }
    </style>
    </head>

    <body>
    <form>
    <div class="topnav">
             <a onclick="form.action='adminpage'; form.method='post';">Add Course</a>
              <a onclick="form.action='listOfCourse'; form.method='post'; ">Customize Course</a>

              <a onclick="form.action='trainingProgram'; form.method='get';">Schedule Training Program</a>

    </div>
    </form>
    </body>

    </html>
