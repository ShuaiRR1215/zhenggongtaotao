function submitForm(){
	if (document.formLogin.userid.value=="") {
		alert('����д�����û���!');
		document.formLogin.userid.focus();
		return false;
	}
	if (document.formLogin.userpwd.value=="") {
		alert('�������¼���룡');
		document.formLogin.userpwd.focus();
		return false;
	}
	return true;
}