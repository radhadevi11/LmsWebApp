<html>
<head>
    <title>login form
    </title>
    <style>

input[type=text],[type=password],[type=email],select {
  width: auto;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}


button[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

button[type=submit]:hover {
  background-color: #45a049;
}
form {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
        </style>
</head>
<body>
<div>
<%@ include file="header.jsp" %>
</div>
<div class="log">
    <form name="loginform" action="/lmsweb/admin" method="POST">
        <center><h2><font face="Comic Sans MS">LOGIN</font></h2></center>
        &nbsp; <img src="user-image.png"style="height: 30px" "width:20px">
        <input type=text name="adminName" placeholder="Admin Name" autocomplete="off"><br>
         &nbsp;<img src="pass.png"style="height: 30px" "width:20px">
        <input type="password" name="password" placeholder="Password">

        <br><br><br>

        <center><button type="submit" name="login" >LOGIN</button></center>

    </form>
</div>
</body>
</html>