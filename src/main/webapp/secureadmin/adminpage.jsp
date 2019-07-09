<html>
<body>
<h1>This is admin page</h1>
<h3>Welcome<%= session.getAttribute("adminName") %></h3>
</body>
    <form name = "modifyCourse" action="adminpage" method="post">
        <button type="submit">Add Course</button>
    </form>

</body>
</html>