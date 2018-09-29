
var xmlHtmlObject = createXmlHttpObject();

function createXmlHttpObject(){

	var xmlHttpObject;
	xmlHttpObject = new XMLHttpRequest();
	return xmlHttpObject;
}


function handleRequestStateChange(){
	
	if(xmlHtmlObject.readyState == 4 && xmlHtmlObject.status == 200){
		document.getElementById("search_results").innerHTML = xmlHtmlObject.responseText;
	}
}


function check_form(){

	var search_field = document.getElementById("user_search").value;
	var trim_search_field = search_field.trim();
	trim_search_field = trim_search_field.toLowerCase();
	trim_search_field = trim_search_field.replace(/ /g, "_");
	trim_search_field = trim_search_field.replace(/:/g, "");
	if(trim_search_field.length >2){
		if(xmlHtmlObject){
			xmlHtmlObject.open("GET","srv_apps/search_app.php?user_search=" + trim_search_field,true);
			xmlHtmlObject.onreadystatechange = handleRequestStateChange;
			xmlHtmlObject.send(null);
		}else{
			console.log("xmlHtmlObject not created");
		}
	}
}
