<html>
<body>
<h1>This is admin page</h1>
<h3>Welcome <%= session.getAttribute("adminName") %></h3>
</body>
    <form name = "modifyCourse">
        <Button type="submit" value="addCourse" onclick="form.action='adminpage'; form.method='post'; ">Add Course</Button>
        <Button type="submit" value="editCourse" onclick="form.action='listOfCourse'; form.method='post'; ">Edit Course</Button>
       