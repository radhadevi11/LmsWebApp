    <%@ page import="javax.servlet.*,javax.servlet.http.*" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
      padding: 1px 50px;
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
    .topnav .search-container {
      float: right;
    }

    .topnav input[type=text] {
      padding: 6px;
      margin-top: 8px;
      font-size: 17px;
      border: none;
    }

    .topnav  button.search-btn {
      float: right;
      padding: 6px 10px;
      margin-top: 8px;
      margin-right: 16px;
      background: #ddd;
      font-size: 17px;
      border: none;
      cursor: pointer;
    }

    .topnav  button.search-btn:hover {
      background: #ccc;
    }

    @media screen and (max-width: 600px) {
      .topnav .search-container {
        float: none;
      }
      .topnav a, .topnav input[type=text], .topnav .search-container button {
        float: none;
        display: block;
        text-align: left;
        width: 100%;
        margin: 0;
        padding: 14px;
      }
      .topnav input[type=text] {
        border: 1px solid #ccc;
      }
    }

    </style>
    </head>

    <body>
    <div class="topnav">

    <c:choose>
        <c:when test="${sessionScope.adminName != null}">
             <a href="${pageContext.request.contextPath}/index.jsp"><img src="glosys logo.jpg" width="150" height="50"></a>
             <a style=margin-right:265px>
             </a>
             <a style=margin-right:100px>
             </a>
             <a href="index.jsp"><img src="adminLogo.png" width="40" height="40"><br>${adminName}</a>
             <a href="${pageContext.request.contextPath}/secureadmin/logout"><img src="logout.png" width="40" height="40"><br>Logout</a>

        </c:when>
        <c:when test="${sessionScope.student != null}">
                     <a href="${pageContext.request.contextPath}/index.jsp"><img src="glosys logo.jpg" width="150" height="50"></a>
                     <a style=margin-right:100px>

                                 <form action="search">
                                     <input type="text" placeholder="Search.." name="courseName">
                                     <button class="search-btn"><i class="fa fa-search"></i></button>
                                 </form>

                     </a>
                     <a href="index.jsp"><img src="userLogo.png" width="40" height="40"><br>${student.firstName}</a>
                     <a href="${pageContext.request.contextPath}/secure/logout"><img src="logout.png" width="40" height="40"><br>Logout</a>
                    </div>
                </c:when>
        <c:when test="${sessionScope.trainer != null}">
             <a href="/lmsweb/index.jsp"><img src="glosys logo.jpg" width="150" height="50"></a>
             <a style=margin-right:265px>
             </a>
             <a href="index.jsp"><img src="trainerlogo2.png" width="40" height="40"><br>${trainer.firstName}</a>
             <a href="${pageContext.request.contextPath}/secureTrainer/logout"><img src="logout.png" width="40" height="40"><br>Logout</a>

        </c:when>
        <c:otherwise>
            <a href="/lmsweb/index.jsp"><img src="glosys logo.jpg" width="150" height="50"></a>
             <a >
             <div class="search-container">
                         <form action="${pageContext.request.contextPath}/secure/search">
                             <input type="text" placeholder="Search.." name="courseName">
                             <button type="submit"><i class="fa fa-search"></i></button>
                         </form>
                     </div>

             </a>
                 <a href="login.jsp" ><img src="userLogo.png"  width="40" height="40"><br> Login</a>

             <a href="signup.jsp"><img src="signUpLogo.png" width="40" height="40"><br>Sign Up</a>
             <a href="admin.jsp"><img src="adminLogo.png" width="40" height="40"><br>Admin</a>
             <a href="trainerLogin.jsp"><img src="trainerlogo2.png" width="45" height="45"><br>Trainer</a>
             </div>
         </c:otherwise>
    </c:choose>

    </div>

    </body>

    </html>
