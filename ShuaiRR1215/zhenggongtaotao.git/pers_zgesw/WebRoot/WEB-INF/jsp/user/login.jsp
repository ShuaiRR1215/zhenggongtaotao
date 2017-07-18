<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/template/default/css/global.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/template/default/css/style.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/template/default/css/login.css" />
<script
	src="${pageContext.request.contextPath}/template/default/js/noerr.js"
	type="text/javascript"></script>
<script language="javascript"
	src="${pageContext.request.contextPath}/template/default/js/login.js"></script>
<script
	src="${pageContext.request.contextPath}/template/default/js/jquery.min.js"
	type="text/javascript"></script>
<title>登录 - 郑工淘淘</title>
</head>

<body class="green">
	<div class="mhead">
		<div class="logo">
			<a href="index.html" target="_blank"><img
				style="width: 251px; height: 75px;" src="images/newlogo.png"
				title="郑工淘淘" /></a>
		</div>
		<div class="navigation">
			<a href="${pageContext.request.contextPath}/index_toLoginPage.action"
				class="current">用户登录</a> <a
				href="${pageContext.request.contextPath}/index_toRegPage.action">立即注册</a>
			<a href="${pageContext.request.contextPath}/index_toForgetPwd.action">找回密码</a>
		</div>
	</div>
	<div class="inner">
		<div class="body">
			<div class="log">
				<form name="formLogin" method="post"
					action="${pageContext.request.contextPath}/user_doLogin.action"
					onSubmit="return submitForm();">
					<table class="formlogin" cellpadding="0" cellspacing="0">
						<tr>
							<td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="red"> <s:property
										value="user.idCard" />
							</font></td>
						</tr>
						<tr>
							<td class="tdright">用户名</td>
							<td colspan="2"><input name="username" type="text"
								class="input input-large"
								value="<s:property value="user.username"/>" /></td>
						</tr>
						<tr>
							<td class="tdright">密码</td>
							<td colspan="2"><input name="password" type="password"
								class="input input-large" /></td>
						</tr>
						<tr>
							<td class="tdright">验证码</td>
							<td colspan="2"><input type="text" name="checkCode"
								class="input input-small"> <img id="verifyCodeId"
								src="${pageContext.request.contextPath}/checkImgAction.action"
								alt="看不清，请点击刷新" class="authcode" align="absmiddle"
								onClick="getCode()" /></td>
							<td><font color="red"><s:property value="user.code" /></font></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td class="font12">&nbsp;<label for="remember"><input
									id="remember" name="memory" value="on" type="checkbox"
									class="checkbox" checked="checked" /> 记住用户名</label></td>
							<td class="font12right"><a
								href="${pageContext.request.contextPath}/index_toForgetPwd.action">忘记密码？</a>&nbsp;&nbsp;&nbsp;&nbsp;</td>
						</tr>
						<tr>
							<td class="tdright"></td>
							<td align="left" colspan="2"><input type="submit"
								name="log_submit" class="loginsubmit" value="&nbsp;&nbsp;" /></td>
						</tr>
					</table>
				</form>
			</div>
			<div class="reg">
				<div class="cont">
					<div class="font">还没有帐号？</div>
					<div class="register_submit">
						<a
							href="${pageContext.request.contextPath}/index_toRegPage.action"
							class="registerbutton">注册帐号</a>
					</div>
					<s:debug />
				</div>
			</div>
		</div>
		<div class="clear"></div>
		<div class="footer">
			&copy; 郑工淘淘 <a href="#" target="_blank">关于我们</a>
			<br /> <br />

			<script>
				var _hmt = _hmt || [];
				(function() {
					var hm = document.createElement("script");
					hm.src = "${pageContext.request.contextPath}/template/others/js/hm0fde.js";
					var s = document.getElementsByTagName("script")[0];
					s.parentNode.insertBefore(hm, s);
				})();
			</script>
		</div>
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/template/default/js/selectoption.js"></script>
		<script language="javascript">
			var scrollupimgpath = '<img src="${pageContext.request.contextPath}/template/default/images/global/up.gif" />';
		</script>
		<script
			src="${pageContext.request.contextPath}/template/default/js/scrolltop.js"
			type="text/javascript"></script>
	</div>

	<script type="text/javascript">
		$("#verifyCodeId")
				.click(
						function() {
							this.src = "${pageContext.request.contextPath}/checkImgAction.action?time="
									+ new Date().getTime();
						});
	</script>

</body>

</html>
