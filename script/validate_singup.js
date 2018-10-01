var xhtml = new XMLHttpRequest();

function readyFunction(){
	if (xhtml.readyState == 2 && xhtml.status == 400){
		var response = xhtml.responseText;
		console.log("hello world!");
		document.getElementById("answer").InnerHTML = response;
	}
}

function validate(){
	if(xhtml){
		xhtml.open("POST", "srv_apps/check_singup.php", true);
		xhtml.onreadystatechange = readyFunction;
		var name = document.getElementById("user_name").value;
		console.log(name);
		xhtml.send("user_name=" + name);
		
	}
}
