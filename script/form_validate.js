
var xmlHtmlObject = createXmlHttpObject();

function createXmlHttpObject(){

	var xmlHttpObject;
	xmlHttpObject = new XMLHttpRequest();
	return xmlHttpObject;
}


function handleRequestStateChange(){
	
	console.log(xmlHtmlObject.responseText);
	if(xmlHtmlObject.readyState == 4 && xmlHtmlObject.status == 200){
		document.getElementById("search_results").innerHTML = xmlHtmlObject.responseText;
	}
}


function check_form(){

	var search_field = document.getElementById("user_search").value;
	var trim_search_field = search_field.trim();
	if(trim_search_field.length >= 3){
		//var search_form = document.getElementById("search_form").submit();
	}
	if(xmlHtmlObject){
		xmlHtmlObject.open("GET","server_applications/search_application.php?user_search="+ search_field,true);
		xmlHtmlObject.onreadystatechange = handleRequestStateChange;
		xmlHtmlObject.send(null);
	}else{
		console.log("xmlHtmlObject not created");
	}
}
