<%@ page import="javax.servlet.*,javax.servlet.http.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
 <link rel="stylesheet" type="text/css" href="workshopPageStyle.css">
      </head>
<body>
<div>
<%@ include file="header.jsp" %>
</div>
<div class="wrap">
<form action="updateCourse" method="POST">
<center><h2> Edit course</h2></center>
<input type="hidden" name="id" value="${course.id}">
<input type="text" name="courseName" placeholder="Course name" value="${course.name}"><br>
<input type="text" name="courseCode" placeholder="Course code" value="${course.code}" ><br>
    <span style="font-size:18px;">Syllabus</span>
<br>
<textarea name="syllabus" rows="10" cols="60" placeholder="Syllabus" >
${course.syllabus}
</textarea>
<br>
<span style="font-size:18px;">Training Course</span>
<br>
<select name="cc">
<c:forEach var="category" items="${courseCategories}">
<option value="${category.id}" ${(course.courseCategory.id==category.id?"selected":"")}>${category.name}</option>
</c:forEach>
</select><br>
<input type="checkbox" name="workshop_eligibility" value="TRUE" ${(course.workshopEligibility ?"checked":"")} >Workshop Eligibility<br>
<input type="checkbox" name="inplant_training_eligibility" value="TRUE" ${(course.inplantTrainingEligibility ?"checked":"")}>Inplant Training Eligibility<br>
<input type="checkbox" name="corporate_training_eligibility" value="TRUE" ${(course.corporateTrainingEligibility ?"checked":"")}>Corporate Training Eligibility<br>
<input type="checkbox" name="research_training_eligibility" value="TRUE" ${(course.researchTrainingEligibility ?"checked":"")}>Research Training Eligibility<br>
 <br>
<br>
 <button type="submit" value="Update" >Update</button>

</form>
</div>
</body>
</html>
