
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
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="validation.js"></script>
</head>
<body>
<div>
    <%@ include file="header.jsp" %>
</div>

<form action="/lmsweb/signup" onsubmit="return avoidSubmission()" method="post" >
<h2> Sign up</h2>
<input type="text" name="firstName" placeholder="First name" ><br>
<input type="text" name="lastName" placeholder="Last name" ><br>
<br>
Gender:<input type="radio" name="Gender" value="male" checked>Male
        <input type="radio" name="Gender" value="female">Female
<br>
<br>
<span id="emailResult"></span>
<input type="email" name="email" id="email" autocomplete="off" placeholder="E-mail"><br>
<span id="result"></span>
<input type="password" name="password" placeholder="Password" id="password"> <br>
<input type="password" name="psw-repeat" placeholder="Re-Enter password" id="psw-repeat" onChange="isPasswordMatch();"><br>
<div id="divCheckPassword"></div>
<br>


<br>
    <button type="submit" value="Submit" >SUBMIT</button>

</form>
</body>
</html>
