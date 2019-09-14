<html>
<head>
<link rel="stylesheet" type="text/css" href="workshopPageStyle.css">
</head>
<body>
<div>
    <%@ include file="header.jsp" %>
</div>

<form action="saveTrainer" method="post">
<h2><center> Add Trainer</center></h2>
<label for="firstName">First name</label><br>
<input type="text" name="firstName" placeholder="First name" ><br>
<label for="lastName">Last name</label><br>
<input type="text" name="lastName" placeholder="Last name" ><br>
<br>
<label for="gender">Gender</label><br><br>
<input type="radio" name="Gender" value="male">Male
<input type="radio" name="Gender" value="female">Female<br>
<br><label for="knownCourses">KnownCourses</label><br><br>
<textarea name="knownCourses" rows="10" cols="50" placeholder="KnownCourses">
</textarea><br>
<br><label for="UserName">UserName</label><br>
<input type="text" name="userName" placeholder="UserName"><br>
<label for="password">Password</label><br>
<input type="password" name="password" placeholder="Password"> <br>
<label for="Re-Password">Re-Enter password</label><br>
<input type="password" name="psw-repeat" placeholder="Re-Enter password"><br>
<br>


<br>
    <button type="submit" value="Submit" >ADD TRAINER</button>

</form>
</body>
</html>
