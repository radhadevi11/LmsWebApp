<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
       <script>
        function populateTrainerDropDown(){
                       var trainers=getAvailableTrainers();
                       var dropDownString = "<select name=\"trainerId\">";
                       for(var i=0;i<trainers.length;i++){
                           dropDownString+= "<option value=\""+trainers[i].id+"\">"+trainers[i].firstName+"</option>";
                       }
                       dropDownString+="</select>";
                       document.getElementById("dropDown").innerHTML=dropDownString;
                   }
         $( function() {
           $( "#datepicker" ).datepicker({dateFormat:'dd-mm-yy', minDate:0,onSelect:populateTrainerDropDown });
         } );
         </script>
        <script src="Trainer.js"></script>
        <script src="service.js"></script>

        <link rel="stylesheet" type="text/css" href="workshopPageStyle.css">
        <style>
        p{
        color:"red";
        }
        </style>
    </head>

    <body>

        <div>
            <%@ include file="../header.jsp" %>
        </div>

        <div id="schedule">
             <form action="saveWorkshop" method="POST" enctype="multipart/form-data">
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

                <div id="dropDown"></div>
                </select>
                <br><br>

                <lable>Upload Material</lable><br><br>
                <input type="file" id="file" name="file"  autocomplete="off">
                <br>


                <button type="submit" value="submit">SUBMIT
              </form>
        </div>
</body>
</html>

<!--
<script>
function myFunction() {
  var x = document.getElementById("mySelect").options.length;
  document.getElementById("demo").innerHTML = "Found " + x + " options in the list.";
  var option = document.createElement("OPTION");
  option.text="Mango";
  option.value="mango";
  document.getElementById("mySelect").options.add(option);
}
</script>
-->