function ForgetpassFormCheck(){
	if (document.ForgetpassForm.userid.value=="") {
		alert('请填写你要找回密码的用户名');
		document.ForgetpassForm.userid.focus();
		return false;
	}
	if (document.ForgetpassForm.userpwd.value=="") {
		alert('请填写你的新密码');
		document.ForgetpassForm.userpwd.focus();
		return false;
	}
	if (document.ForgetpassForm.reuserpwd.value=="") {
		alert('请重新填写你的新密码');
		document.ForgetpassForm.reuserpwd.focus();
		return false;
	}
	if (document.ForgetpassForm.checkcode.value=="") {
		alert('请填写验证码！');
		document.ForgetpassForm.checkcode.focus();
		return false;
	}
	return true;
}