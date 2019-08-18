<html>
<head>
    <title>login form
    </title>
    <style>
	body
	{
	background:white;
	background:white;
	}
	.log
	{
    height:470px;
	width:350px;
    margin:auto;
	background-image:url("login.gif");
	margin-top:100px;
	padding:0px;
	}
	form
	{
	padding:20px;
	font-family:arial;
    border-style: inset;
    border-color:lightskyblue;
    height:450px;
	border-radius:5px;
	margin:10px;
	}
	h2
	{
	text-align:center;
	background: dodgerblue;
    color:white;
	padding:5px;
	border-radius:10px;
	}
	input
	{
	padding:10px;
	margin:5px;
	border-radius:5px;
    background: transparent;
    font-weight: bold;
    font-size:12px;


    font-style:Comic Sans MS;

	border-style: double red;
	}
	input[type=email],input[type=password]
	{
	width:95%;
	}
	button
	{
	width:20%;
	background: transparent;

    border: none;

	cursor:pointer;


	}
        button[name="login"]:hover
	{
	background-color:#80FF00;
    border: none;
    border-radius:60%;

	}
	/*button
	{
	padding:0px;
	wi
	border-radius:5px;
	}*/

        </style>
</head>
<body>
<div>
<%@ include file="header.jsp" %>
</div>
<div class="log">
    <form name="loginform" action="/lmsweb/admin" method="POST">
        <h2><font face="Comic Sans MS">LOGIN</font></h2>



        &nbsp; <img src="user-image.png"style="height: 30px" "width:20px"><br>
        <input type=text name="adminName" placeholder="Admin Name" autocomplete="off"><br>
        <img src="pass.png"style="height: 30px" "width:20px">
        <input type="password" name="password" placeholder="Password">

        <br><br><br>

        <center><button name="login" style="height:45px" "width:10px" > <img src="p1.png" style="height: 45px""width: 60px"><b><font face="Comic Sans MS">LOGIN</font></b></button></center>

    </form>
</div>
</body>
</html>