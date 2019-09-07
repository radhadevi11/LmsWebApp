
<html>
<head>
<title> sign up form
</title>
<style>
input[type=text],[type=password],[type=email], select {
  width: auto;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
form {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
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

</style>
</head>
<body>
<div>
    <%@ include file="header.jsp" %>
</div>

<form action="/lmsweb/signup" method="post">
<h2> Sign up</h2>
<input type="text" name="firstName" placeholder="First name" ><br>
<input type="text" name="lastName" placeholder="Last name" ><br>
<br>
Gender:<input type="radio" name="Gender" value="male">Male
        <input type="radio" name="Gender" value="female">Female
<br>
<br>
<input type="email" name="email" autocomplete="off" placeholder="E-mail"><br>
<input type="text" name="collegeName" placeholder="College Name"><br>
<input type="password" name="password" placeholder="Password"> <br>
<input type="password" name="psw-repeat" placeholder="Re-Enter password"><br>
<br>


<br>
    <button type="submit" value="Submit" >SUBMIT</button>

</form>
</body>
</html>
