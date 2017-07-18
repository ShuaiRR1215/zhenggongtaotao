<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>发布信息 - 淘淘</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/template/default/css/global.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/template/default/css/style.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/template/default/css/post.css" />
<script src="${pageContext.request.contextPath}/mypub/noerr.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath}/template/default/js/global.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath}/template/default/js/jquery.min.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath}/template/default/js/validator.common.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath}/template/default/js/validator.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath}/template/default/js/post.js"
	type="text/javascript"></script>
</head>

<body class="green">
	<div class="mhead">
		<div class="logo">
			<a href="index.action" target="_blank"><img
				style="width: 250px; height: 60px;" src="images/newlogo.png"
				title="郑工淘淘" /></a>
		</div>
		<div class="font">
			<span>发布信息&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
				href="index.action">返回首页</a></span></span>
		</div>
	</div>
	<div class="cleafix"></div>
	<div class="body1000">
		<div class="clear15"></div>
		<div class="wrapper" id="main">
			<div id="fenlei2">
				<div class='publish-detail'>
					<form name="form1" method="post" enctype="multipart/form-data"
						onSubmit="return postcheck();" action="">
						<input name="act" value="dopost" type="hidden"> <input
							name="ismember" value="1" type="hidden"> <input
							name="catid" value="161" type="hidden"> <input name="id"
							value="" type="hidden">

						<div class="p-line">
							<label class="p-label"><span class="red required">*</span>
								所属分类：</label>
							<div class="publish-detail-item">
								<select name="categorySecond">
									<option value=""></option>
								</select>
							</div>
						</div>

						<div class="p-line">
							<label class="p-label"><span class="red required">*</span>
								信息标题：</label>
							<div class="publish-detail-item">
								<input type="text" maxlength="50" name="title"
									class="input input-60" value="" require="true" datatype="limit"
									msg="信息标题不能为空" />
							</div>
						</div>

						<div class="p-line">
							<label class="p-label"><span class="red required">*</span>价格：</label>
							<div class="publish-detail-item">
								<input require="true" datatype="limit|double" msg="请填写正确的价格"
									msgid="价格" name="extra[trade_price]" value="" type="text"
									style="width: 50px" class="input"> <span class=units>元</span>
								<span id="价格"></span>
							</div>
						</div>
						<div class="p-line">
							<label class="p-label"><span class="red required">*</span>原购买价格：</label>
							<div class="publish-detail-item">
								<input require="true" datatype="limit|double" msg="请填写正确的价格"
									msgid="价格" name="extra[trade_price]" value="" type="text"
									style="width: 50px" class="input"> <span class=units>元</span>
								<span id="价格"></span>
							</div>
						</div>
						<div class="p-line">
							<label class="p-label"><span class="red required"></span>原购买链接：</label>
							<div class="publish-detail-item">
								<input name="extra[trade_num]" value="" type="text"
									style="width: 50px" class="input">
							</div>
						</div>

						<div class="p-line">
							<label class="p-label"><span class="red required">*</span>新旧程度：</label>
							<div class="publish-detail-item">
								<select name="newDegree" class="input" require="true"
									datatype="limit" msg="新旧程度不能为空"><option value="">请选择新旧程度</option>
									<option value="全新">全新</option>
									<option value="9成新">9成新</option>
									<option value="8成新">8成新</option>
									<option value="7成新">7成新</option>
									<option value="6成新以下">6成新以下</option>
								</select> <span id="新旧程度"></span>
							</div>
						</div>

						<div class="p-line">
							<label class="p-label">上传图片：</label>
							<div class="publish-detail-item">
								<span class="contentinner"> <input class="input"
									type="file" name=mymps_img_0 datatype="filter" msg="图片文件格式不正确"><br />
									<br /> <input class="input" type="file" name=mymps_img_1
									datatype="filter" msg="图片文件格式不正确"><br /> <br /> <input
									class="input" type="file" name=mymps_img_2 datatype="filter"
									msg="图片文件格式不正确"><br /> <br /> <input class="input"
									type="file" name=mymps_img_3 datatype="filter" msg="图片文件格式不正确"><br />
								</span>
							</div>
						</div>

						<div class="p-line">
							<label class="p-label"><span class="red required">*</span>
								内容详情：</label>
							<div class="publish-detail-item">
								<span class="contentinner"><script charset="utf-8"
										src="/include/kindeditor/kindeditor-min.js"></script> <script
										charset="utf-8" src="/include/kindeditor/lang/zh_CN.js"></script>
									<script>
										var editor;
										KindEditor
												.ready(function(K) {
													editor = K
															.create(
																	'textarea[name="content"]',
																	{
																		resizeType : 1,
																		filterMode : true,
																		items : [
																				'fontname',
																				'fontsize',
																				'|',
																				'forecolor',
																				'hilitecolor',
																				'bold',
																				'italic',
																				'underline',
																				'strikethrough',
																				'removeformat',
																				'clearhtml' ]
																	});

												});
									</script> <textarea require="true" datatype="limit" msg="请填写信息内容描述"
										msgid="content" name="content"
										style="width: 400px; height: 300px; visibility: hidden;"></textarea></span><span
									id="content"></span>
							</div>
						</div>

						<div class="contact">

							<div class="p-line">
								<label class="p-label"><span class="red required">*</span>
									联系电话：</label>
								<div class="publish-detail-item">
									<input name="tel" type="text" class="input input-large"
										value="" datatype="limit" require="true"
										msg="固话或手机，固话格式如010-123456">
								</div>
							</div>

							<div class="p-line">
								<label class="p-label"> 联系QQ：</label>
								<div class="publish-detail-item">
									<input name="qq" type="text" class="input input-large" value=""
										require="qq" datatype="qq" msg="请填写准确的QQ号，形式如123456" />
								</div>
							</div>

							<div class="p-line">
								<label class="p-label">电子邮箱：</label>
								<div class="publish-detail-item">
									<input name="email" type="text" class="input input-large"
										value="1225803134@qq.com" require="email" datatype="email"
										msg="请填写准确的电子邮箱帐号">
								</div>
							</div>
						</div>


						<div class="p-line">
							<label class="p-label"><span class="red required">*</span>
								验证码：</label>
							<div class="publish-detail-item">
								<input name="checkcode" type="text" class="input input-small"
									value="" datatype="limit|ajax" require="true" msg="请填写验证码"
									msgid="code"> <img
									src="${pageContext.request.contextPath}/checkImgAction.action"
									title="看不清，请点击刷新" width="80" height="25" align="absmiddle"
									style="cursor: pointer;" id="verifyCodeId" class="authcode" /><span
									id="code"></span>
							</div>
						</div>


						<p class='p-submit'>
							<input type="submit" id="fabu" class="fabu1" value="马上发布"
								ct="submit" onclick="return AllInputCheck();" />
						</p>
						<div class="clear"></div>
						<div id='formsubmittips' class='small p-submit'>
							<div id="divTxt" style="display: none">
								<span style="color: red"><strong>已经上传的图片有：</strong></span><br>
							</div>
							请不要发布虚假信息、重复信息
						</div>
					</form>
				</div>
			</div>
		</div>
		<div class="clear"></div>
		<%@include file="footer.jsp"%>
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/template/default/js/selectoption.js"></script>
		<script language="javascript">
			var scrollupimgpath = '<img src="${pageContext.request.contextPath}/template/default/images/global/up.gif" />';
		</script>
		<script
			src="${pageContext.request.contextPath}/template/default/js/scrolltop.js"
			type="text/javascript"></script>
	</div>
	<script language="javascript" type="text/javascript"
		src="${pageContext.request.contextPath}/template/default/js/validator3.js"></script>
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