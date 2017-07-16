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
<script
	src="${pageContext.request.contextPath}/template/default/js/global.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath}/template/default/js/jquery.min.js"
	type="text/javascript"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/template/default/js/validator.common.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/template/default/js/validator.js"></script>
<!-- 引入js文件 -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/easy_ui/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/easy_ui/jquery.easyui.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/easy_ui/easyui-lang-zh_CN.js"></script>
<!-- 引入样式文件 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/easy_ui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/easy_ui/themes/icon.css">


<script type="text/javascript">
	function doCheck() {
		if ($("#usernameId").val().length >= 6) {

			$
					.ajax({
						type : "POST",
						url : "${pageContext.request.contextPath}/user_checkName.action",
						data : {
							username : $("#usernameId").val()
						},
						success : function(backData) {
							//alert(backData);
							//alert(textStatus);
							//alert(ajax);
							//var json=evel("("+backData+")");
							//alert(json);
							//alert($("#showName").html());
							var showmsg = document.getElementById("showmsg");
							//alert(showmsg.innerHTML);
							if (backData == "用户名可用") {
								showmsg.innerHTML = "<font color='green'>用户名可用</font>";
							} else if (backData == "用户名已存在")
								showmsg.innerHTML = "<font color='red'>用户名已存在</font>";
						}
					});
		}

		if ($("#reg_username").val().length < 6) {

		}
	}
</script>


<title>注册 - 郑工淘淘</title>
</head>

<body class="green">
	<div class="mhead">
		<div class="logo">
			<a href="index.html" target="_blank"><img
				style="width: 250px; height: 60px;" src="images/newlogo.png"
				title="郑工淘淘" /></a>
		</div>
		<div class="navigation">
			<a href="${pageContext.request.contextPath}/index_toLoginPage.action">用户登录</a>
			<a href="${pageContext.request.contextPath}/index_toRegPage.action"
				class="current">立即注册</a> <a
				href="${pageContext.request.contextPath}/index_toForgetPwd.action">找回密码</a>
		</div>
	</div>
	<div class="inner">
		<div class="body">
			<div class="registerpart">
				<div class="regdetail">
					<div class="partname">
						<div class="li1">帐号信息</div>
						<div class="li2">
							(带<font color="red">*</font>为必填项)
						</div>
					</div>
					<form id="registerForm" method="post"
						action="${pageContext.request.contextPath}/user_doRegister.action"
						name="registerform" id="registerform">
						<div class="partinput">

							<table class="formlogin" cellpadding="0" cellspacing="0">
								<tr>
									<td class="tdright"><font color=red>*</font>用户名：</td>
									<td><input onblur="doCheck()" name="username"
										id="usernameId" type="text" class="input input-large"
										value="<s:property value="user.username"/>">&nbsp; <span
										id="showmsg"></span></td>

								</tr>
								<tr>
									<td class="tdright"><font color=red>*</font>密码：</td>
									<td><input id="passwordId" name="password" type="password"
										class="input input-large" maxlength="16"></td>
								</tr>
								<tr>
									<td scope="row" class="tdright">密码强度：</td>
									<td>
										<div id="pw_check_1" class="pw_check">
											<span><strong class="c_orange">弱</strong></span> <span>中</span>
											<span>强</span>
										</div>
										<div id="pw_check_2" class="pw_check" style="display: none;">
											<span>弱</span> <span><strong class="c_orange">中</strong></span>
											<span>强</span>
										</div>
										<div id="pw_check_3" class="pw_check" style="display: none;">
											<span>弱</span> <span>中</span> <span><strong
												class="c_orange">强</strong></span>
										</div>
									</td>
								</tr>
								<tr>
									<td class="tdright"><font color=red>*</font>确认密码：</td>
									<td><input id="repasswordId" name="repassword"
										type="password" class="input input-large" id="repassword"></td>
								</tr>
								<tr>
									<td class="tdright"><font color=red>*</font>电子邮箱：</td>
									<td><input id="emailId" name="email" type="text"
										class="input input-large"
										value="<s:property value="user.email"/>"></td>
								</tr>
								<tr>
									<td class="tdright">密码问题：</td>
									<td><select name='safequestion' id='safequestion'
										class='input'><option value='0'>请选择安全提示问题</option>
											<option value='1'>你最喜欢的格言什么？</option>
											<option value='2'>你家乡的名称是什么？</option>
											<option value='3'>你读的小学叫什么？</option>
											<option value='4'>你的父亲叫什么名字？</option>
											<option value='5'>你的母亲叫什么名字？</option>
											<option value='6'>你最喜欢的偶像是谁？</option>
											<option value='7'>你最喜欢的歌曲是什么？</option>
									</select></td>
									<td><font color="red"> <s:fielderror
												name="safequestion" />
									</font></td>
								</tr>
								<tr>
									<td class="tdright">密码答案：</td>
									<td><input type="text" name="safeanswer"
										class="input input-large" /></td>
								</tr>
								<tr>
									<td class="tdright"><font color=red>*</font>验证码：</td>
									<td><input type="text" name="checkCode"
										class="input" id="checkcode" maxlength="4"> <img
										src="${pageContext.request.contextPath}/checkImgAction.action"
										id="verifyCodeId" title="看不清，请点击刷新" class="authcode" /></td>
									<td><font color="red"> <s:property value="user.code"/></font></td>
								</tr>
								<tr>
									<td class="tdright" style="height: 44px"></td>
									<td style="height: 44px"><input type="submit"
										name="log_submit" value="同意协议，完成注册"
										onclick="return AllInputCheck();" id="agreereg" class="go_reg" />
									</td>
								</tr>
							</table>
						</div>
					</form>

					<div class="xiyi">
						<div id="xieyi">
							<div class="xieye_nr">
								<p>
									欢迎光临郑工淘淘网站。郑工淘淘致力于为您提供最优质、最便捷的服务。在访问郑工淘淘的同时，也请您仔细阅读我们的协议条款。您需要同意该条款才能注册成为我们的用户。一经注册，将视为接受并遵守该条款的所有约定。<br />
								</p>
								<p>
									1．用户应按照郑工淘淘的注册、登陆程序和相应规则进行注册、登陆，注册信息应真实可靠，信息内容如有变动应及时更新。<br />
									<br />
									2．用户应在适当的栏目或地区发布信息，所发布信息内容必须真实可靠，不得违反郑工淘淘对发布信息的禁止性规定。用户对其自行发表、上传或传送的内容负全部责任。<br />
									<br />
									3．遵守中华人民共和国相关法律法规，包括但不限于《中华人民共和国计算机信息系统安全保护条例》、《计算机软件保护条例》、《最高人民法院关于审理涉及计算机网络著作权纠纷案件适用法律若干问题的解释(法释[2004]1号)》、《互联网电子公告服务管理规定》、《互联网新闻信息服务管理规定》、《互联网著作权行政保护办法》和《信息网络传播权保护条例》等有关计算机互联网规定和知识产权的法律和法规、实施办法。<br />
									<br />
									4．所有用户不得在郑工淘淘任何版块发布、转载、传送含有下列内容之一的信息，否则郑工淘淘有权自行处理并不通知用户：<br />
									(1)违反宪法确定的基本原则的； (2)危害国家安全，泄漏国家机密，颠覆国家政权，破坏国家统一的；
									(3)损害国家荣誉和利益的； (4)煽动民族仇恨、民族歧视，破坏民族团结的； (5)破坏国家宗教政策，宣扬邪教和封建迷信的；
									(6)散布淫秽、色情、赌博、暴力、恐怖或者教唆犯罪的； (7)侮辱或者诽谤他人，侵害他人合法权益的；
									(8)含有法律、行政法规禁止的其他内容的。<br />
								</p>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
		<div class="clear"></div>
		<div class="footer">
			&copy; 郑工淘淘 <a href="aboutus.html" target="_blank">关于我们</a> <a
				href="http://www.miibeian.gov.cn/" target="_blank">浙ICP备16002812号</a>
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

</body>
<script type="text/javascript">
	//更换验证码
	$("#verifyCodeId")
			.click(
					function() {
						this.src = "${pageContext.request.contextPath}/checkImgAction.action?time="
								+ new Date().getTime();
					});

	//验证两次密码是否一样
	function check() {

		//if(repassword==null && repassword!="")
		// 校验确认密码:
		var password = document.getElementById("reg_password").value;
		var repassword = document.getElementById("repassword").value;
		if (repassword != null && repassword != "") {
			if (repassword != password) {
				document.getElementById("reImg111").src = "${pageContext.request.contextPath}/images/pwderror.jpg";
			} else {
				document.getElementById("reImg111").src = "${pageContext.request.contextPath}/images/pwdok.jpg";
			}
		} else if (repassword == null && repassword == "") {
			document.getElementById("reImg111").src = "";
		}

	}
</script>
<script type="text/javascript">
	$('#usernameId').validatebox({
		required : true,
		validType : "length[6,12]",
		missingMessage : "用户名不能为空",
		invalidMessage : "用户名长度必须在6~12个字符"
	});
	$('#nameId').validatebox({
		required : true,
		validType : "length[4,8]",
		missingMessage : "昵称不能为空",
		invalidMessage : "昵称长度必须在4~8个字符"
	});
	$('#passwordId').validatebox({
		required : true,
		validType : "length[6,12]",
		missingMessage : "密码不能为空",
		invalidMessage : "密码长度必须在6~12个字符"
	});
	$('#repasswordId').validatebox({
		required : true,
		validType : "equalTo['#passwordId']",
		missingMessage : "必须再次输入密码",
		invalidMessage : "两次密码不一致"
	});
	$('#emailId').validatebox({
		required : true,
		validType : "email",
		missingMessage : "邮箱不能为空",
		invalidMessage : "邮箱格式不正确"
	});
	$('#verfiyCodeId').validatebox({
		required : true,
		missingMessage : "验证码不能为空"
	});

	/* $("#registerForm").form({           
	    onSubmit: function () {           
	       return $("#registerForm").form('validate');
	    },
	    success: function (data) {
	        alert(data);
	    }
	 }); */

	function mySubmit(flag) {
		return flag;
	}

	$("#registerForm").submit(function() {
		return mySubmit($("#registerForm").form('validate'));
	});

	$.extend($.fn.validatebox.defaults.rules, {
		/*必须和某个字段相等*/
		equalTo : {
			validator : function(value, param) {
				return $(param[0]).val() == value;
			},
			message : '字段不匹配'
		}
	});
</script>

<script language="javascript" type="text/javascript"
	src="${pageContext.request.contextPath}/template/default/js/validator2.js"></script>
</html>
