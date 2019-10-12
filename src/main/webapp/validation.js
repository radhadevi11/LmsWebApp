function isPasswordMatch() {
    var password = $("#password").val();
    var confirmPassword = $("#psw-repeat").val();

    if (password != confirmPassword) $("#divCheckPassword").html("Passwords do not match!");
    else $("#divCheckPassword").html("Passwords match.");
}

$(document).ready(function () {
    $("#psw-repeat").keyup(isPasswordMatch);
});

$(function(){
	$('#password').keyup(function(){
		$('#result').html(checkStrength($('#password').val()))
	})});

    function checkStrength(password){
        //initial strength
		var strength = 0

		//if the password length is less than 6, return message.
		if (password.length < 5) {
			$('#result').removeClass()
			$('#result').addClass('short')
			return 'Too short'
		}

		//length is ok, lets continue.

		//if length is 8 characters or more, increase strength value
		if (password.length > 5) strength += 1

		//if password contains both lower and uppercase characters, increase strength value
		if (password.match(/([a-z].*[A-Z])|([A-Z].*[a-z])/))  strength += 1

		//if it has numbers and characters, increase strength value
		if (password.match(/([a-zA-Z])/) && password.match(/([0-9])/))  strength += 1

		//if it has one special character, increase strength value
		if (password.match(/([!,%,&,@,#,$,^,*,?,_,~])/))  strength += 1

		//if it has two special characters, increase strength value
		if (password.match(/(.*[!,%,&,@,#,$,^,*,?,_,~].*[!,%,&,@,#,$,^,*,?,_,~])/)) strength += 1

		//now we have calculated strength value, we can return messages

		//if value is less than 2
		if (strength < 2 )
		{
			$('#result').removeClass()
			$('#result').addClass('weak')
			return 'Weak'
		}
		else if (strength == 2 )
		{
			$('#result').removeClass()
			$('#result').addClass('good')
			return 'Good'
		}
		else
		{
			$('#result').removeClass()
			$('#result').addClass('strong')
			return 'Strong'
		}
	}
	function avoidSubmission(){
            if(checkStrength($('#password').val()) == 'Weak' || 'Too short'){
                alert("password is too short");
                return false;
            }
            else{
                return true;
            }
    }
    function isExistingMailId(){
         var request = new XMLHttpRequest();
         request.open("GET","http://localhost:8080/lmsweb/checkMailId?email="+$('#email').val(),false);
         request.send(null);
         if(request.status != 200){
            alert("Can not get existing mail id");
            return;
         }
         else{

                if (request.responseText.toString().toLowerCase()==="true"){

                        return true;
                }
                else{

                    return false;
                }

         }
    }
    $(function(){
    	$('#email').keyup(function(){
    		$('#emailResult').html(checkMailId($('#email').val()))
    	})
    function checkMailId(email){
        var result = isExistingMailId();
        alert(result);
        if(result==true){
            $('#emailResult').removeClass()
            $('#emailResult').addClass('email Id exist')
            return 'email Id exist'

        }
        else{
            $('#emailResult').removeClass()
            $('#emailResult').addClass('email Id available for you')
            return 'email Id available for you'

        }


    }});


