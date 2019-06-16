function sendDataForSignUp(){

var firstName = document.getElementById("firstName").value;
var lastName = document.getElementById("lastName").value;
var email = document.getElementById("email").value;
var collegeName = document.getElementById("collegeName").value;
var psw = document.getElementById("psw").value;
var rePsw = document.getElementById("rePsw").value;

var request = new XMLHttpRequest();
         request.open('POST','http://localhost:8080/lms/signup?firstName='+firstName+
                     '&lastName='+lastName+'&email='+email+'&collegeName='+collegeName+'&psw='+psw+'&psw-repeat='+rePsw,false);
         request.send(null);
}