<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>首页 - 郑工淘淘</title>
<%-- <link rel="stylesheet"
	href="${pageContext.request.contextPath}/template/default/mystyle/css/mycs.css" /> --%>
<%-- <script type="text/javascript"
	src="${pageContext.request.contextPath}/template/default/mystyle/js/bootstrap.min.js"></script> --%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/template/default/mystyle/css/style.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/template/default/mystyle/js/jquery-2.1.4.min.js"></script>


<style type="text/css">
#banner {
	position: relative;
	width: 570px;
	height: 328px;
	border: 1px solid #666;
	overflow: hidden;
}

#banner_list img {
	border: 0px;
}

#banner_bg {
	position: absolute;
	bottom: 0;
	background-color: #000;
	height: 30px;
	filter: Alpha(Opacity = 30);
	opacity: 0.3;
	z-index: 1000;
	cursor: pointer;
	width: 478px;
}

#banner_info {
	position: absolute;
	bottom: 0;
	left: 5px;
	height: 22px;
	color: #fff;
	z-index: 1001;
	cursor: pointer
}

#banner_text {
	position: absolute;
	width: 120px;
	z-index: 1002;
	right: 3px;
	bottom: 3px;
}

#banner ul {
	position: absolute;
	list-style-type: none;
	filter: Alpha(Opacity = 80);
	opacity: 0.8;
	border: 1px solid #fff;
	z-index: 1002;
	margin: 0;
	padding: 0;
	bottom: 3px;
	right: 5px;
}

#banner ul li {
	padding: 0px 8px;
	float: left;
	display: block;
	color: #FFF;
	border: #e5eaff 1px solid;
	background: #6f4f67;
	cursor: pointer
}

#banner ul li.on {
	background: #900
}

#banner_list a {
	position: absolute;
}
<!--
让四张图片都可以重叠在一起--
>
</style>

<script type="text/javascript">
	var t = n = 0, count;
	$(document)
			.ready(
					function() {
						count = $("#banner_list a").length;
						$("#banner_list a:not(:first-child)").hide();
						$("#banner_info").html(
								$("#banner_list a:first-child").find("img")
										.attr('alt'));
						$("#banner_info").click(
								function() {
									window.open($("#banner_list a:first-child")
											.attr('href'), "_blank")
								});
						$("#banner li")
								.click(
										function() {
											var i = $(this).text() - 1;//获取Li元素内的值，即1，2，3，4
											n = i;
											if (i >= count)
												return;
											$("#banner_info").html(
													$("#banner_list a").eq(i)
															.find("img").attr(
																	'alt'));
											$("#banner_info")
													.unbind()
													.click(
															function() {
																window
																		.open(
																				$(
																						"#banner_list a")
																						.eq(
																								i)
																						.attr(
																								'href'),
																				"_blank")
															})
											$("#banner_list a").filter(
													":visible").fadeOut(500)
													.parent().children().eq(i)
													.fadeIn(1000);
											document.getElementById("banner").style.background = "";
											$(this).toggleClass("on");
											$(this).siblings().removeAttr(
													"class");
										});
						t = setInterval("showAuto()", 4000);
						$("#banner").hover(function() {
							clearInterval(t)
						}, function() {
							t = setInterval("showAuto()", 4000);
						});
					})

	function showAuto() {
		n = n >= (count - 1) ? 0 : ++n;
		$("#banner li").eq(n).trigger('click');
	}
</script>

</head>

<body>
	<div>
		<%@include file="header.jsp"%>
	</div>
	<div id="main">
		<div class="mainTop clearfix">
			<div id="classification" class="fl">
				<ul>
					<s:iterator var="c" value="cList">
						<li>
							<p>
								<a
									href="/pers_zgesw/sel_findSellListByCid.action?cid=<s:property value="#c.cid"/>&page=1"
									target="_blank"><s:property value="#c.cname" /></a>
							</p>
							<div class="menu">
								<dl>
									<s:iterator var="cs" value="#c.categorySeconds">
										<dd>
											<a class="goodLink"
												href="/pers_zgesw/sel_findSellListByCsid.action?csid=<s:property value="#cs.csid"/>&page=1"
												target="_blank"><s:property value="#cs.csname" /></a>
										</dd>
									</s:iterator>


								</dl>
							</div>
						</li>
					</s:iterator>
				</ul>
			</div>

			<!-- **************************** -->
			<div class="indexMid fl">
				<div id="banner" class="indexMid fl">
					<div id="banner_bg"></div>
					<!--标题背景-->
					<div id="banner_info"></div>
					<!--标题-->
					<ul>
						<li class="on">1</li>
						<li>2</li>
						<li>3</li>
						<li>4</li>
						<li>5</li>
					</ul>
					<div id="banner_list">
						<a href="#" target="_blank"><img
							src="${pageContext.request.contextPath}/images/bootstrap/s3.jpg"
							title="橡树小屋的blog" alt="橡树小屋的blog" /></a> <a href="#" target="_blank"><img
							src="${pageContext.request.contextPath}/images/bootstrap/s4.jpg"
							title="橡树小屋的blog" alt="橡树小屋的blog" /></a> <a href="#" target="_blank"><img
							src="${pageContext.request.contextPath}/images/bootstrap/s1.jpg"
							title="橡树小屋的blog" alt="橡树小屋的blog" /></a> <a href="#" target="_blank"><img
							src="${pageContext.request.contextPath}/images/bootstrap/s5.jpg"
							title="橡树小屋的blog" alt="橡树小屋的blog" /></a> <a href="#" target="_blank"><img
							src="${pageContext.request.contextPath}/images/bootstrap/s2.jpg"
							title="橡树小屋的blog" alt="橡树小屋的blog" /></a>
					</div>
				</div>
			</div>

			<!-- ******************************** -->
			<div class="siteActivity fr">
				<div class="siteNews">
					<ul>
						<li class="newsTit">淘淘新闻<span><a href="#">更多></a></span></li>
						<li><a href="#">新闻一</a></li>
						<li><a href="#">新闻一</a></li>
						<li><a href="#">新闻一</a></li>
						<li><a href="#">新闻一</a></li>
						<li><a href="#">新闻一</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="mainMid">
			<div class="ershou clearfix">
				<div class="classTit">
					<span class="fl"><i class="iconfont">&#xe604;</i> 最新发布</span><span
						class="fr"><a href="sel_findAllWithPage.action?page=1"
						target="_blank">更多>></a></span>
				</div>
				<div class="ershouInfo fr">
					<ul>
						<s:iterator var="s" value="sList">
							<li>[<s:property value="#s.categorySecond.csname" />] <a
								href="sel_findSellInfoBySid.action?sid=<s:property value="#s.sid"/>"
								target="_blank"><s:property value="#s.sTitle" /></a> <font
								color="red">|</font>浏览量：<s:property value="#s.sViews" /><font
								color="red">|</font>发布时间：<s:date name="#s.pubDate"
									format="yyyy-MM-dd HH:MM:SS" /> &nbsp;&nbsp;&nbsp;>>
							</li>
						</s:iterator>
					</ul>
				</div>
			</div>

		</div>
		<%@include file="footer.jsp"%>
	</div>
</body>

</html>