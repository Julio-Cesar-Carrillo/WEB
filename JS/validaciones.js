// Validacion de Email

function validateEmail(){
	var emailField = document.getElementById('user-email');
	var validEmail =  /^\w+([.-_+]?\w+)*@\w+([.-]?\w+)*(\.\w{2,10})+$/;
    if( validEmail.test(emailField.value) ){
		return true;
	}else{
		alert('Email invalido');
		return false;
	}
}
