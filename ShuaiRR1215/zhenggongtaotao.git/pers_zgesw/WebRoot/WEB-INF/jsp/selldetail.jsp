<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>SellInfo详情</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/template/default/mystyle/css/style.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/template/default/css/global.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/template/default/css/style.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/template/default/css/information.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/template/default/css/information_comment.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/template/default/css/jquery.lightbox.css"
	media="screen" />
<script src="${pageContext.request.contextPath}/mypub/noerr.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath}/template/default/js/global.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath}/template/default/js/jquery.min.js"
	type="text/javascript"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/template/default/js/jquery.lightbox.js"></script>
<script language="javascript">
	var current_domain = '${pageContext.request.contextPath}';//用于二级目录安装时弹出窗口图标路径
</script>
<script src="${pageContext.request.contextPath}/mypub/messagebox.js"
	type="text/javascript"></script>
</head>

<body class="green">
	<%@include file="header.jsp"%>
	<div class="body1000">
		<div class="location">
			当前位置：<a href="${pageContext.request.contextPath}/index.action">郑工淘淘</a>
			<code> &gt; </code>
			<a href="${pageContext.request.contextPath}/index.action"><s:property
					value="sellInfo.categorySecond.category.cname" /></a>
			<code> &gt; </code>
			<a href="${pageContext.request.contextPath}/category-catid-166.html"><s:property
					value="sellInfo.categorySecond.csname" /></a>
			<code>&gt;</code>
			&nbsp;
			<s:property value="sellInfo.sTitle" />
		</div>
		<div class="clear"></div>
		<div class="wrapper">
			<div class="information_hd ">
				<div class="information_title">
					<s:property value="sellInfo.sTitle" />
				</div>
				<div class="information_time">
					<span class="viewhits">浏览：<font id="hit" color="red"><s:property
								value="sellInfo.sViews" /></font> 次
					</span> <span class="begintime">发布时间：<s:property
							value="sellInfo.pubDate" />
					</span>
				</div>
			</div>
			<div class="shadow"></div>
			<div class="clear"></div>
			<div class="information_bd">
				<div class="bd_left">
					<div class="extra_contact">
						<div class="extra">
							<ul>

								<li><span>来自用户：</span><a target=_blank href="#"><s:property
											value="sellInfo.user.username" /></a></li>
								<li><span>联系人：</span> <s:property
										value="sellInfo.user.realName" /></li>
								<li><span>联系电话：</span><font class="tel"><s:property
											value="sellInfo.user.phone" /></font></li>
								<li><span>QQ号码：</span> <s:property value="sellInfo.user.qq" /></li>
								<li><span>电子邮箱：</span> <s:property
										value="sellInfo.user.email" /></li>


							</ul>

						</div>
						<div class="contact">
							<ul>
								<li style="color: red; font-weight: bold;"><span>价格：</span>
									<s:property value="sellInfo.sPrice" />元</li>
								<li style=""><span>原购买价格：</span> <s:property
										value="sellInfo.sBuyPrice" />元</li>
								<li style=""><span>原购买链接：</span><a
									href="<s:property value="sellInfo.sLink"/>" target="_blank">点我一下</a></li>
								<li style=""><span>新旧程度：</span> <s:property
										value="sellInfo.newDegree" /></li>
								<li><div class="tips">联系我时请说明是在郑工淘淘看到的，谢谢！</div></li>

							</ul>
						</div>
					</div>
					<div class="clear15"></div>
					<div class="view_hd">
						<div>
							<a href="" class="currentr"><span></span>信息详情</a>
						</div>
					</div>
					<div class="view_bd">
						<div class="clear"></div>


						<div class="hd">信息评论</div>
						<div class="bd"></div>
					</div>
				</div>
				<div class="bd_right">


					</br> <br />
					<div class="boxer_hd cfix">分享到...</div>
					<!-- JiaThis Button BEGIN -->
					<div class="jiathis_style_24x24">
						<a class="jiathis_button_qzone"></a> <a
							class="jiathis_button_tsina"></a> <a class="jiathis_button_tqq"></a>
						<a class="jiathis_button_weixin"></a> <a
							class="jiathis_button_renren"></a> <a
							href="http://www.jiathis.com/share"
							class="jiathis jiathis_txt jtico jtico_jiathis" target="_blank"></a>
						<a class="jiathis_counter_style"></a>
					</div>
					<script type="text/javascript"
						src="http://v3.jiathis.com/code/jia.js?uid=1407980334005398"
						charset="utf-8"></script>
					<!-- JiaThis Button END -->
					<br /> <br /> <br />
					<div class="boxer_hd cfix">
						信息管理<font color="#999999">（ID：<s:property
								value="sellInfo.sid" />）
						</font>
					</div>
					<div class="boxer_bd cfix action">
						<ul>
							<li><a rel="nofollow"
								href="${pageContext.request.contextPath}/user_addSellInfo?uid=<s:property value="#session.existUser.uid"/>">收藏</a></li>
							<li><a rel="nofollow"
								href="${pageContext.request.contextPath}/sel_deleteBySid?sid=<s:property value="sellInfo.sid"/>"
								title="一旦删除将不能恢复！">删除</a></li>
							<li><a rel="nofollow"
								href="${pageContext.request.contextPath}/sel_updateBySid?sid=<s:property value="sellInfo.sid"/>"
								target="_blank">修改</a></li>
						</ul>
					</div>

					<div class="boxer_hd cfix">您感兴趣的分类</div>
					<div class="boxer_bd cfix noborder short">
						<ul>
							
						</ul>
					</div>

				</div>
			</div>
		</div>
	</div>
	<%@include file="footer.jsp"%>
</body>
</html>