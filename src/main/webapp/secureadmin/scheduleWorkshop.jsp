<html>
<head>
 <link rel="stylesheet" type="text/css" href="workshopPageStyle.css">
      </head>
<body>

    <div>
        <%@ include file="header.jsp" %>
    </div>

    <div id="schedule">
        <form action="saveWorkshop" method="POST">
        <h2><center><u>MAKE SCHEDULE</u></center></h2>

        <c:if test="${isExistingWorkshop}">
        <p color="red"><b>This workshop is already scheduled in this date</b></p>
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
        <select name="date" placeholder="date">
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
        <option value="6">6</option>
        <option value="7">7</option>
        <option value="8">8</option>
        <option value="9">9</option>
        <option value="10">10</option>
        <option value="11">11</option>
        <option value="12">12</option>
        <option value="13">13</option>
        <option value="14">14</option>
        <option value="15">15</option>
        <option value="16">16</option>
        <option value="17">17</option>
        <option value="18">18</option>
        <option value="19">19</option>
        <option value="20">20</option>
        <option value="21">21</option>
        <option value="22">22</option>
        <option value="23">23</option>
        <option value="24">24</option>
        <option value="25">25</option>
        <option value="26">26</option>
        <option value="27">27</option>
        <option value="28">28</option>
        <option value="29">29</option>
        <option value="30">30</option>
        <option value="31">31</option>
        </select>

        <select name="month" placeholder="month">
            <option value="JANUARY">January</option>
            <option value="FEBRUARY">February</option>
            <option value="MARCH">March</option>
            <option value="APRIL">April</option>
            <option value="MAY">May</option>
            <option value="JUNE">June</option>
            <option value="JULY">July</option>
            <option value="AUGUST">August</option>
            <option value="SEPTEMBER">September</option>
            <option value="OCTOBER">October</option>
            <option value="NOVEMBER">November</option>
            <option value="DECEMBER">December</option>
            </select>

        <select name="year" placeholder="year">
        <option value="2019">2019</option>
        <option value="2020">2020</option>
        <option value="2021">2021</option>
        </select>

        <br>
        <button type="submit" value="submit">SUBMIT
      </form>
    </div>
<!--
for Calender
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>jQuery UI Datepicker - Default functionality</title>
  <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#datepicker" ).datepicker({dateFormat:'dd-mm-yy', minDate:0});
  } );
  </script>
</head>
<body>

<p>Date: <input type="text" id="datepicker"></p>


</body>
</html>
-->