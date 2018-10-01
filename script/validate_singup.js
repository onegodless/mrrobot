var xhtml = new XMLHttpRequest();

var user_name_taken = false;
var user_name_syntax = false;


function validateUserName(user_name_taken){

	var advise_box = document.getElementById("advise_box");
	var user_name_taken = user_name_taken;

	advise_box.innerHTML = "";//resets the box.
	console.log(name);
	if(name.includes(" ")){
		var new_paragraph = document.createElement("p");
		new_paragraph.innerHTML = "User name cannot contain spaces.";
		advise_box.appendChild(new_paragraph);
	}else{
		user_name_syntax = true;

	}

	if(user_name_taken && user_name_syntax){
		console.log("succes");
		user_name_not_take = false;
		user_name_syntax = false;
	}

}


function readyFunction(){

	if (xhtml.readyState == 4 && xhtml.status == 200){
		var response = xhtml.responseText;
		document.getElementById("answer").innerHTML = response;
		if(response == "The user name is aviable"){
			user_name_taken = true;
			validateUserName(user_name_taken);
		}
	}
}


function main(){

	var name = document.getElementById("user_name").value;
	var pass = document.getElementById("user_psswd").value;

	if(xhtml){

		xhtml.open("GET", "srv_apps/check_singup.php?user_name=" + name, true);
		xhtml.onreadystatechange = readyFunction;
		xhtml.send();
	}

}
