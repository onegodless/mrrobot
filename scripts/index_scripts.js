var xmlHtmlObject = createXmlHttpObject();

function createXmlHttpObject(){

	var xmlHttpObject;
	xmlHttpObject = new XMLHttpRequest();
	return xmlHttpObject;
}


function items(response){ //creates html elements to present the items brought from the database.

	response.forEach(function(element){

	var new_article = document.createElement("article");//create an <article> element.
	var article_att = document.createAttribute("class");
	article_att.value = "game_box";
	new_article.setAttributeNode(article_att);

	var new_img = document.createElement("img");//creates an <img> element.
	var img_att = document.createAttribute("src");
	var img_att_clss = document.createAttribute("class");
	img_att.value = element.cover_img_link;
	img_att_clss.value = "cover_img";
	new_img.setAttributeNode(img_att);
	new_img.setAttributeNode(img_att_clss);

	var new_section = document.createElement("section");//creates a <section> element that contains the info of the item.
	var section_att = document.createAttribute("class");
	section_att.value = "game_info";
	new_section.setAttributeNode(section_att);
	
	var new_name = document.createElement("p");//creates a <p> element.
	new_name.innerHTML = element.name;
	new_section.appendChild(new_name);

	var new_price = document.createElement("p");//creates a <p> element for the price of the item.
	new_price.innerHTML = element.price + '€';
	new_section.appendChild(new_price);


	new_article.appendChild(new_img);
	new_article.appendChild(new_section);
	document.getElementById("search_results").appendChild(new_article);

	});
}


function handleRequest(){
	
	if(xmlHtmlObject.readyState == 4 && xmlHtmlObject.status == 200){
		var response = JSON.parse(xmlHtmlObject.responseText);
		items(response);
	}
}


function async_func(trim_search_field){

	if(xmlHtmlObject){
		xmlHtmlObject.open("GET","apps/search.php?user_search=" + trim_search_field,true);
		xmlHtmlObject.onreadystatechange = handleRequest;
		xmlHtmlObject.send(null);
	}else{
		console.log("xmlHtmlObject not created");
	}
}


function check_form(){

	document.getElementById("search_results").innerHTML = "";//wipes the results section before adding any new result.
	var search_field = document.getElementById("user_search").value;
	var trim_search_field = search_field.trim();
	trim_search_field = trim_search_field.toLowerCase();
	trim_search_field = trim_search_field.replace(/ /g, "_");
	trim_search_field = trim_search_field.replace(/:/g, "");
	if(trim_search_field.length >2){
		async_func(trim_search_field);
	}
}


function login(){
	var login_form = document.getElementById('login_form');
	login_form.hidden=false;
}
