<html>
<body>
<h1>This is admin page</h1>
<h3>Welcome <%= session.getAttribute("adminName") %></h3>
</body>
<div>
<%@ include file="header.jsp" %>
</div>
    <form name = "modifyCourse">
        <Button type="submit" value="addCourse" onclick="form.action='adminpage'; form.method='post'; ">Add Course</Button>
        <Button type="submit" value="editCourse" onclick="form.action='listOfCourse'; form.method='post'; ">Edit Course</Button>
</body>
</html>