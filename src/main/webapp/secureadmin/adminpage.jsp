<html>
<body>
<div>
<%@ include file="../header.jsp" %>
</div>
    <form name = "modifyCourse">
        <Button type="submit" value="addCourse" onclick="form.action='adminpage'; form.method='post'; ">Add Course</Button>
        <Button type="submit" value="customizeCourse" onclick="form.action='listOfCourse'; form.method='post'; ">Customize Course</Button>
        <Button type="submit" value="scheduleTrainingPrograms" onclick="form.action='trainingProgram'; form.method='get';">Schedule Training Program</Button>
        <Button type="submit" value="addTrainer" onclick="form.action='addTrainer.jsp'">Add Trainer</Button>
</form>
</body>
</html>