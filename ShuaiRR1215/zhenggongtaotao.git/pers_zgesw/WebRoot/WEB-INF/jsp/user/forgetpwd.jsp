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
	src="${pageContext.request.contextPath}/template/default/js/jquery.min.js"
	type="text/javascript"></script>
</head>

<body class="green" style="background-color: #66CDAA">
	<div class="mhead">
		<div class="logo">
			<a href="index.action" target="_blank"><img
				style="width: 251px; height: 75px;" src="images/newlogo.png"
				title="" /></a>
		</div>
		<div class="navigation">
			<a href="${pageContext.request.contextPath}/index_toLoginPage.action">用户登录</a>
			<a href="${pageContext.request.contextPath}/index_toRegPage.action">立即注册</a>
			<a href="${pageContext.request.contextPath}/index_toForgetPwd.action"
				class="current">找回密码</a>
		</div>
	</div>
	<div class="inner">
		<div class="clearfix"></div>
		<div class="body" style="background-color: #66CDAA">
			<div class="forpass">
				<form name="ForgetpassForm" method="post"
					action="${pageContext.request.contextPath}/user_forgetPassword.action"
					onSubmit="return ForgetpassFormCheck();">
					<input name="action" type="hidden" value="doreset">
					<table cellpadding="0" cellspacing="0" class="formlogin">
						<tr>
							<td class="tdright" style="height: 30px !important;"><font
								color="red">*</font><font size="3">用户名：</font></td>
							<td><input name="username" type="text"
								class="input input-230"
								value="<s:property value="user.username"/>"></td>
						</tr>
						<tr>
							<td class="tdright" style="height: 30px !important;"><font
								size="3"><font color="red">*</font>提示问题：</font></td>
							<td><select name="safequestion" id="safequestion"
								class="input"><option value="0">请选择安全提示问题</option>
									<option value="1">你最喜欢的格言什么？</option>
									<option value="3">你家乡的名称是什么？</option>
									<option value="3">你读的小学叫什么？</option>
									<option value="3">你的父亲叫什么名字？</option>
									<option value="5">你的母亲叫什么名字？</option>
									<option value="6">你最喜欢的偶像是谁？</option>
									<option value="7">你最喜欢的歌曲是什么？</option>
							</select></td>
						</tr>
						<tr>
							<td class="tdright" style="height: 30px !important;"><font
								color="red">*</font><font size="3">提示答案：</font></td>
							<td><input name="safeanswer" id="safeanswer"
								class="input input-230"></td>
						</tr>
						<tr>
							<td class="tdright" style="height: 30px !important;"><font
								color="red">*</font><font size="3">新密码：</font></td>
							<td><input name="password" class="input input-230"
								type="password"></td>
						</tr>
						<tr>
							<td class="tdright" style="height: 30px !important;"><font
								color="red">*</font><font size="3">再次输入：</font></td>
							<td><input name="repassword" class="input input-230"
								type="password"></td>
						</tr>
						<tr>
							<td class="tdright" style="height: 30px !important; width: 200px"><font
								color="red">*</font><font size="3">验证码：</font></td>
							<td><input type="text" name="checkCode"
								class="input input-230" style="width: 60px" /> <img
								id="verifyCodeId"
								src="${pageContext.request.contextPath}/checkImgAction.action"
								alt="看不清，请点击刷新" class="authcode" onClick="getCode()" /></td>
							<td><font color="red"><s:property value="user.code" /></font></td>
						</tr>
						<tr>
							<td class="tdright" style="height: 30px !important;">&nbsp;</td>
							<td><input type="submit" name="log_submit" class="go_reg"
								value="提交找回密码"></td>
						</tr>
					</table>
				</form>
			</div>
			<div class="reg">
				<div class="cont">
					<div class="font">
						找回密码遇到问题，请联系<br /> <font color="#0192CD">手机：18203699422<br />
							<font color="#0192CD">企鹅：1225803134<br />某信：ns1225803134
						</font></font>

					</div>
				</div>
			</div>
		</div>
		<div class="footer" style="background-color: #66CDAA">
			&copy; 郑工淘淘 <a href="#" target="_blank">关于我们</a> <br /> <br />

			<script>
				var _hmt = _hmt || [];
				(function() {
					var hm = document.createElement("script");
					hm.src = "${pageContext.request.contextPath}/${pageContext.request.contextPath}/template/others/js/hm0fde.js";
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