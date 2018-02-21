//identify input fields 

var frm = document.getElementById('frm');
var begin = document.getElementById('beginBtn');

begin.onclick = validateFrm;

//capture data

function validateFrm(e) {
	e.preventDefault();
	
	var firstName = document.getElementById('firstName').value;
	var lastName = document.getElementById('lastName').value;
	var email = document.getElementById('email').value;
	var error = document.getElementById('error');

	if (firstName.length >= 2 || lastName.length >= 2 && email.length != ""){
		frm.submit();
	}

	error.innerHTML = 'Please fill out the form completely!';

	firstName.value = "";
	lastName.value = "";
	email.value = "";
}

//validate data

//submit data

