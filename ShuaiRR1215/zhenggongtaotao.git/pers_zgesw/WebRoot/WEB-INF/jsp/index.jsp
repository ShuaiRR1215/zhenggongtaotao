<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>首页 - 郑工淘淘</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/template/default/mystyle/css/style.css" />
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
			<div class="indexMid fl">
				<div class="focusMap fl">
					<span class="prev"><i class="iconfont">&#xe603;</i></span> <span
						class="next"><i class="iconfont">&#xe602;</i></span>
					<ul class="rImg"></ul>
					<ul class="button"></ul>
				</div>
				<div class="recommend clearfix">
					<ul>
					</ul>
				</div>
			</div>
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
							<li><s:property value="#s.categorySecond.csname" /> <a
								href="sel_findSellInfoBySid.action?sid=<s:property value="#s.sid"/>"
								target="_blank"><s:property value="#s.sTitle" /></a> <font
								color="red">|</font>浏览量：<s:property value="#s.sViews" /><font
								color="red">|</font>发布时间：<s:property value="#s.pubDate" />&nbsp;&nbsp;&nbsp;>></li>
						</s:iterator>
					</ul>
				</div>
			</div>

		</div>
		<%@include file="footer.jsp"%>
	</div>
</body>

</html>