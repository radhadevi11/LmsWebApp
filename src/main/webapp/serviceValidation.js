function isExistingMailId(){
     var request = new xmlHttpRequest();
     request.open("GET","http://localhost:8080/lmsweb/checkMailId?email='"+$(#'email').val(),false);
     request.body(null);
     if(request.status != 200){
        alert("Can not get existing mail id");
        return;
     }
     else{
            if (request.responseText === "true"){
                    return true;
            }
            else{
                return false;
            }

     }
}