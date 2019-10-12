<html>
<head>
<link rel="stylesheet" type="text/css" href="workshopPageStyle.css">

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="../validation.js"></script>

</head>
<body>
<div>
    <%@ include file="../header.jsp" %>
</div>

<form action="saveTrainer" onsubmit="return avoidSubmission()" method="post">
<h2><center> Add Trainer</center></h2>
<label for="firstName">First name</label><br>
<input type="text" name="firstName" placeholder="First name" ><br>
<label for="lastName">Last name</label><br>
<input type="text" name="lastName" placeholder="Last name" ><br>
<br>
<label for="gender">Gender</label><br><br>
<input type="radio" name="Gender" value="male" checked>Male
<input type="radio" name="Gender" value="female">Female<br>
<br><label for="knownCourses">KnownCourses</label><br><br>
<textarea name="knownCourses" rows="10" cols="50" placeholder="KnownCourses">
</textarea><br>
<br><label for="UserName">UserName</label><br>
<input type="text" name="userName" id="userName" placeholder="UserName"><div id="status"></div><br>
<label for="password">Password</label><br>
<span id="result"></span>
<input type="password" name="password" id="password" placeholder="Password"> <br>
<label for="Re-Password">Re-Enter password</label><br>
<input type="password" name="psw-repeat" id="psw-repeat" placeholder="Re-Enter password" onChange="isPasswordMatch();"><br>
<div id="divCheckPassword"></div>
<br>


<br>
    <button type="submit" value="Submit" >ADD TRAINER</button>

</form>
</body>
</html>
