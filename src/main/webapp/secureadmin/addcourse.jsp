<%@ page import="javax.servlet.*,javax.servlet.http.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
 <link rel="stylesheet" type="text/css" href="workshopPageStyle.css">
      </head>
<body>
<div>
<%@ include file="../header.jsp" %>
</div>
<c:if test="${isExistingCourse}">
    <p><b> The course code ${course.code} is already exist can not add existing course</b></p>
</c:if>
<div class="wrap">
<form action="addcourse" method="POST">
<center><h2> Add course</h2></center>
<input type="text" name="courseName" placeholder="Course name" value="${course == null?"":course.name}"><br>
<input type="text" name="courseCode" placeholder="Course code" value="${course == null?"":course.code}" ><br>
    <span style="font-size:18px;">Syllabus</span>
<br>
<textarea name="syllabus" rows="10" cols="30" placeholder="Syllabus" >
${course == null?"":course.syllabus}
</textarea>
<br>
<span style="font-size:18px;">Training Course</span>
<br>
<select name="cc">
<c:forEach var="category" items="${courseCategories}">
<option value="${category.id}" ${course==null?"":(course.courseCategory.id==category.id?"selected":"")}>${category.name}</option>
</c:forEach>
</select><br>
<input type="checkbox" name="workshop_eligibility" value="TRUE" ${course == null ?"":(course.workshopEligibility ?"checked":"")} >Workshop Eligibility<br>
<input type="checkbox" name="inplant_training_eligibility" value="TRUE" ${course == null ?"":(course.inplantTrainingEligibility ?"checked":"")}>Inplant Training Eligibility<br>
<input type="checkbox" name="corporate_training_eligibility" value="TRUE" ${course == null ?"":(course.corporateTrainingEligibility ?"checked":"")}>Corporate Training Eligibility<br>
<input type="checkbox" name="research_training_eligibility" value="TRUE" ${course == null ?"":(course.researchTrainingEligibility ?"checked":"")}>Research Training Eligibility<br>
 <br>
<br>
 <button type="submit" value="Save" >SAVE</button>

</form>
</div>
</body>
</html>
