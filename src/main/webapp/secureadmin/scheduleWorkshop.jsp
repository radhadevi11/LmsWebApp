<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script>
          $( function() {
            $( "#datepicker" ).datepicker({dateFormat:'dd-mm-yy', minDate:0});
          } );
        </script>
        <link rel="stylesheet" type="text/css" href="workshopPageStyle.css">
        <style>
        p{
        color:"red";
        }
        </style>
    </head>

    <body>

        <div>
            <%@ include file="header.jsp" %>
        </div>

        <div id="schedule">
             <form action="saveWorkshop" method="POST">
                <h2><center><u>MAKE SCHEDULE</u></center></h2>

                <c:if test="${isExistingWorkshop}">
                <p ><b><h2>This workshop is already scheduled in this date</h2></b></p>
                </c:if>

              <label>Choose Workshop Type</label><br>
              <select name="workshopTypeId">
                 <c:forEach var="workshopType" items="${workshopInfo.workshopTypes}">
                  <option value="${workshopType.id}" ${workshop == null ?"":(workshop.workshopType.id==workshopType.id?"selected":"")}>${workshopType.totalDays} Days Workshop</option>
                  </c:forEach>
              </select><br>

                <lable>Choose  Course</lable><br>
                <select name="courseId">
                <c:forEach var="courseForWorkshop" items="${workshopInfo.courses}">
                <option value="${courseForWorkshop.id}" ${workshop==null?"":(workshop.course.id==courseForWorkshop.id?"selected":"")}> ${courseForWorkshop.name}</option>
                </c:forEach>
                </select>
                <br><br>

                <lable>Choose Date</lable><br>
                <input type="text" id="datepicker" name="date"  autocomplete="off">
                <br>

                <lable>Choose  Trainer</lable><br>
                <select name="trainerId">
                <c:forEach var="trainer" items="${trainers}">
                <option value="${trainer.id}" ${workshop==null?"":(trainer.id==workshop.trainer.id?"selected":"")}>
                ${trainer.firstName}</option>
                </c:forEach>
                </select>
                <br><br>


                <button type="submit" value="submit">SUBMIT
              </form>
        </div>
</body>
</html>