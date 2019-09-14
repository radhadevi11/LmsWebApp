function getAvailableTrainers(){
    var request = new XMLHttpRequest();
    var workshopDate = document.getElementById("datepicker").value;
    request.open('GET','http://localhost:8080/lmsweb/secureadmin/availableTrainers?date='+workshopDate,false);
    request.send(null);
    if(request.status != 200){
        alert("Can not get available trainers");
        return;
    }
    var trainerJsonArray=JSON.parse(request.responseText);
    var trainers=[];
    for(var i=0; i<trainerJsonArray.length; i++){
        trainers.push(new Trainer(trainerJsonArray[i].id,trainerJsonArray[i].firstName,trainerJsonArray[i].lastName));
    }
    return trainers;
}