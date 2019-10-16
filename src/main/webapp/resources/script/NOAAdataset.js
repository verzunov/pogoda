function getTypeD ()
{
    var sel = document.getElementById("textDatasets");
    var ind = sel.options[sel.selectedIndex].value;
    return ind;

}


var metaDataDatasets;

//запрашивает все действующие наборы данных
(function () {
    $.ajax({
        type: "GET",
        url: "https://www.ncei.noaa.gov/access/services/search/v1/datasets",
        //dataType: 'JSON',
        //headers:{ token:"HprYockpKYMpfjloJbzUypUiIEVvoZRW" },
        //data: {ajax: true}
    }).success(function (data){

        console.log(data);
        metaDataDatasets = data;
        createSelectDatasets(metaDataDatasets);
        alert('Данные с сервера пришли');
        // reqNN(data,datasetID);
    }).error(function(jqXHR, textStatus, errorThrown){
        console.log('Ошибка получения ответа с сервера', jqXHR, textStatus, errorThrown);
        alert ('Ошибка !  информацию  см в console log');
    });
}());

function  createSelectDatasets(Datasets) {
    var sel  = document.createElement('select');
    sel.id = "textDatasets";

    for (var i=0; i<Datasets['results']['length'];i++)
    {
        var opt = document.createElement('option');
        opt.textContent = Datasets['results'][i]['name'];
        opt.value = Datasets['results'][i]['id'];
        sel.appendChild(opt);
    }
    var divSelect = document.getElementById("selectType");
    divSelect.appendChild(sel);
}

function requestNOAA () {
    var StationID = "KG000038353";//dt['results'][i]['id'];
    var datasetID = getTypeD();
    console.log(datasetID);
    console.log('Отправляем запрос на сервер');
    var startD = document.getElementById("start");
    var endD = document.getElementById("end");
    console.log(startD.value,endD.value);
    //
    $.ajax({
        type: "GET",
        //url: "https://www.ncei.noaa.gov/access/services/data/v1?dataset=" + datasetID +"&dataTypes=DP01,DP05,DP10,DSND,DSNW,DT00,DT32,DX32,DX70,DX90,SNOW,PRCP" +"&stations=" + StationID + "&startDate=" + startD.value + "&endDate=" + endD.value + "&includeAttributes=true&format=json",
        url: "https://www.ncei.noaa.gov/access/services/data/v1?dataset=" + datasetID +"&dataTypes=DP01,DP05,DP10,DSND,DSNW,DT00,DT32,DX32,DX70,DX90,SNOW,PRCP" +"&stations=" + StationID + "&startDate=" + startD.value + "&endDate=" + endD.value + "&includeAttributes=true&format=json"
        // url: "https://www.ncei.noaa.gov/access/services/search/v1/data?dataset=daily-summaries&startDate=2010-01-01T00:00:00&endDate=2016-12-31T23:09:59&boundingBox=35.462327,-82.563951,35.412327,-82.513951&dataTypes=PRCP  ",
        //dataType: 'JSON',
        //headers:{ token:"HprYockpKYMpfjloJbzUypUiIEVvoZRW" },
        //data: {ajax: true}
    }).success(function (data){

        console.log(data);
        metaDataDatasets = data;
        alert('Данные с сервера пришли');
       // reqNN(data,datasetID);
    }).error(function(jqXHR, textStatus, errorThrown){
        console.log('Ошибка получения ответа с сервера', jqXHR, textStatus, errorThrown);
        alert ('Ошибка !  информацию  см в console log');
    });
}