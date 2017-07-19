<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>列表 - 郑工淘淘</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/template/default/mystyle/css/style.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/template/default/css/global.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/template/default/css/style.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/template/default/css/category.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/template/default/css/pagination2.css" />
<script src="${pageContext.request.contextPath}/mypub/noerr.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath}/template/default/js/global.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath}/template/default/js/jquery.min.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath}/template/default/js/hover_bg.js"
	type="text/javascript"></script>
</head>

<body class="green">

	<!-- 引入头开始 -->
	<%@include file="header.jsp"%>
	<!-- 引入头结束 -->

	<div class="body1000">
		<div class="clear"></div>
		<div class="location">
			当前位置：<a href="index.action">郑工淘淘</a>
			<code> &gt; </code>
			<a href="#">信息列表</a>
		</div>
		<div class="shadow"></div>
		<div class="clear"></div>
		<div style="width: 1000px">
			<div class="listhd">
				<div class="listhdleft">
					<div>
						<a href="#" class="currentr"><span></span>所有信息</a>
					</div>
				</div>
			</div>
			<div class="infolists">
				<div class='section'>
					<ul class='sep'>
						<s:iterator var="sellinfo" value="pageBean.list">
							<li class='hover media cfix '><a
								href='sel_findSellInfoBySid.action' target='_blank'
								class='media-caps'><img src='images/nophoto.gif'></a>
								<div class='media-body'>
									<div class='media-body-title'>
										<span class='pull-rights'><span class="highlights"></span></span>
										<a
											href="sel_findSellInfoBySid.action?sid=<s:property value="#sellinfo.sid"/>"
											target="_blank" style=""><s:property
												value="#sellinfo.sTitle" /></a> <font color="green"><s:property
												value="#sellinfo.newDegree" /></font>
									</div>
									<div class='typo-smalls'>
										<s:property value="#sellinfo.categorySecond.csname" />
										|
										<s:date name="#sellinfo.pubDate" format="yyyy-MM-dd HH:MM:SS" />
										</span> <span class='highlight'></span>
									</div>
								</div></li>

						</s:iterator>
					</ul>
				</div>
				<div class="clear"></div>
				<div class="pagination2">
					<s:iterator var="i" begin="1" end="pageBean.totalPage">
						<s:if test="pageBean.page!=#i">
							<a
								href='sel_findSellListByCsid.action?page=<s:property value="#i"/>'><s:property
									value="#i" /></a>
						</s:if>
						<s:else>
							<span class=current><s:property value="#i" /></span>
						</s:else>
					</s:iterator>
				</div>
				<div class="totalpost">
					<a href="index_toPublishInfoPage.action" target="_blank">马上发布一条售卖信息>>></a>
				</div>
			</div>
		</div>
		<div class="cateintro">
			<div class="introleft">注意：</div>
			<div class="introright">
				①要求预付定金、加Q详聊、邮寄交易等均存在欺骗行为！&nbsp;&nbsp;&nbsp;<br />
				②价格低廉、内容里留有电话的要谨慎！&nbsp;&nbsp;&nbsp;<br /> ③谨防以任何形式冒用本站网址的钓鱼网站！
			</div>
		</div>

		<!-- 引入尾开始 -->
		<%@include file="footer.jsp"%>
		<!-- 引入尾结束 -->
</html>




