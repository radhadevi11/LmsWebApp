<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
  font-family: Arial;
  font-size: 17px;
  padding: 8px;
}

* {
  box-sizing: border-box;
}

.row {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  margin: 0 -16px;
}

.col-25 {
  -ms-flex: 25%; /* IE10 */
  flex: 25%;
}

.col-50 {
  -ms-flex: 50%; /* IE10 */
  flex: 50%;
}

.col-75 {
  -ms-flex: 75%; /* IE10 */
  flex: 75%;
}

.col-25,
.col-50,
.col-75 {
  padding: 0 16px;
}

.container {
  background-color: #f2f2f2;
  padding: 5px 20px 15px 20px;
  border: 1px solid lightgrey;
  border-radius: 3px;
}

input[type=text],select {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

label {
  margin-bottom: 10px;
  display: block;
}

.icon-container {
  margin-bottom: 20px;
  padding: 7px 0;
  font-size: 24px;
}

.btn {
  background-color: #4CAF50;
  color: white;
  padding: 12px;
  margin: 10px 0;
  border: none;
  width: 100%;
  border-radius: 3px;
  cursor: pointer;
  font-size: 17px;
}

.btn:hover {
  background-color: #45a049;
}

a {
  color: #2196F3;
}

hr {
  border: 1px solid lightgrey;
}

span.price {
  float: right;
  color: grey;
}

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */
@media (max-width: 800px) {
  .row {
    flex-direction: column-reverse;
  }
  .col-25 {
    margin-bottom: 20px;
  }
}
</style>
</head>
<body>
<div>
<%@ include file="header.jsp" %>
</div>
<center><h2>Payment</h2></center>
<div class="row">
  <div class="col-75">
    <div class="container">
      <form action="savePayment" method="post">
            <label for="courseName">CourseName</label>
            <input type="text" name="courseName" value="${courseName}" readonly>
            <label for="cost">Cost</label>
            <input type="text" name="cost" value="${cost}" readonly>
            <label for="cardname">Card Holder Name</label>
            <input type="text"  name="cardHolderName" placeholder="James Matthew">
            <label for="cardnumber">Credit card number</label>
            <input type="text" id="cardNumber" name="cardNumber" placeholder="1111 2222 3333 4444" maxlength = "16">
            <label for="cardType">Card Type</label>
            <input type="text" name="cardType" placeholder="Visa">
            <label for="expmonth">Expiration Month</label>
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
            <div class="row">
              <div class="col-50">
                <label for="expyear">Expiration Year</label>
                <input type="text" id="expYear" name="expYear" placeholder="2018">
              </div>
              <div class="col-50">
                <label for="cvv">CVV</label>
                <input type="text" id="cvv" name="cvv" placeholder="352">
              </div>
            </div>
          </div>
          
        </div>
        
        <button type="submit" value="Proceed To Pay" class="btn">
      </form>
    </div>
  </div>
 
</div>

</body>
</html>

