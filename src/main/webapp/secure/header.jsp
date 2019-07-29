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
    <div class="topnav">

    <c:choose>
        <c:when test="${session != null && adminName != null}">
             <a href="index.jsp"><img src="glosys logo.jpg" width="150" height="50"></a>
             <a style=margin-right:265px>
             </a>
             <a href="admin.html"><img src="adminLogo.png" width="40" height="40"><br>"${adminName}"</a>
             <a href="signup.html"><img src="logout.png" width="40" height="40"><br>Logout</a>

        </c:when>
        <c:when test="${session != null && email != null}">
                     <a href="index.jsp"><img src="glosys logo.jpg" width="150" height="50"></a>
                     <a style=margin-right:265px>
                     </a>
                     <a href="admin.html"><img src="adminLogo.png" width="40" height="40"><br>"${email}"</a>
                     <a href="signup.html"><img src="logout.png" width="40" height="40"><br>Logout</a>

                </c:when>
        <c:otherwise>
            <a href="index.jsp"><img src="glosys logo.jpg" width="150" height="50"></a>
             <a style=margin-right:265px>
                 <a href="login.html" ><img src="userLogo.png"  width="40" height="40"><br> Login</a>
              </a>
             <a href="signup.html"><img src="signUpLogo.png" width="40" height="40"><br>Sign Up</a>
             <a href="admin.html"><img src="adminLogo.png" width="40" height="40"><br>Admin</a>
         </c:otherwise>
    </c:choose>

    </div>

    </body>

    </html>
