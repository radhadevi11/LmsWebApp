<%@ page import="javax.servlet.*,javax.servlet.http.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title> addCourse
</title>
<style>
body
{
 background:;
background:url();
padding:10px;
margin:5px;
border-radius:5px;
}
.wrap
{
width:350px;
margin:auto;
background:#6E6E6E;
margin-top:50px;
padding:1px 0px;
border-radius: 15px 50px 30px;
}
form
{
padding:10px;
font-family:arial;
border:1px dotted whitesmoke;
border-radius: 15px 50px 30px;
margin:10px;
}
p{
color:red;
}
select {
        width: 150px;
        margin: 10px;
}
select:focus {
        min-width: 150px;
        width: auto;
}
h2
{
text-align:center;
background:red;
color:whitesmoke;
padding:10px;
border-radius: 50px;
}
input
{
padding:10px;
margin:5px;
border-radius: 5px 5px;
border:none;
}
input[type=text],input[type=number],input[type=number],input[type=password],input[type=checkbox]
{
 width:95%;
}
input[type=submit]
{
width:95%;
background:red;
cursor:pointer;
font-size:18px;
font-weight:bold;
color:white;
border-radius:20px;
}
input[type=submit]:hover
{
 background:green;
}
textarea{
padding:10px;
margin:5px;
border-radius: 5px 5px;
border:none;
}
select
{
padding:10px;
width:42%;
border-radius: 50px;
}
</style>
</head>
<body>
<c:if test="${isExistingCourse}">
    <p><b> The course code is already exist can not add existing course</b></p>
</c:if>
<div class="wrap">
<form action="addcourse" method="POST">
<h2> Add course</h2>
<input type="text" name="courseName" placeholder="Course name" value="${course == null?"":course.name}"><br>
<input type="text" name="courseCode" placeholder="Course code" ><br>
    <span style="font-size:18px;">Syllabus</span>
<br>
<textarea name="syllabus" rows="10" cols="30" placeholder="Syllabus">
</textarea>
<br>
<span style="font-size:18px;">Training Course</span>
<br>
<select name="cc">
<c:forEach var="category" items="${courseCategories}">
<option value="${category.id}">${category.name}</option>
</c:forEach>
</select>
<input type="checkbox" name="workshop_eligibility" value="TRUE">Workshop Eligibility<br>
<input type="checkbox" name="inplant_training_eligibility" value="TRUE">Inplant Training Eligibility<br>
<input type="checkbox" name="corporate_training_eligibility" value="TRUE">Corporate Training Eligibility<br>
<input type="checkbox" name="research_training_eligibility" value="TRUE">Research Training Eligibility<br>
 <br>
<br>
 <input type="submit" value="Save" >

</form>
</div>
</body>
</html>
