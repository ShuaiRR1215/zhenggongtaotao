<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<div id="top">
	<ul class="inTop clearfix">
	  <s:if test="#session.existUser==null">
		<li class="fr"><a
			href="${pageContext.request.contextPath}/index_toLoginPage.action"
			target="_blank">登陆</a></li>
		<li class="fr"><a
			href="${pageContext.request.contextPath}/index_toRegPage.action"
			target="_blank">免费注册</a></li>
	  </s:if>
	  <s:else>
		<li class="fr"><a
			href="${pageContext.request.contextPath}/user_doQuit.action"
			target="_blank">退出</a> </li>
		<li class="fr">欢迎你，<a
			href="${pageContext.request.contextPath}/user.findUserByUid.action?uid=<s:property value="#session.existUser.uid"/>"
			target="_blank"><font color="red"><s:property value="#session.existUser.username"/></font></a>&nbsp; | </li>
	  </s:else>
	</ul>
</div>
<div id="header">
	<div class="inHeader clearfix">
		<div class="midHeader clearfix">
			<div class="logo fl">
				<a href="${pageContext.request.contextPath }/index.action"><img
					src="images/newlogo.png" title="淘二淘" /></a>
			</div>
			<div class="searchArea fl">
				<form method="get" action="#" target="_blank">
					<input type="text" name="keywords" class="keyword fl"
						placeholder="小伙伴，你想找什么？" /> <input type="submit"
						class="seaBtn fr" value="搜索" />
				</form>
			</div>
			<div class="maimai fr">
				<a href="http://new.taoertao.com/publish">我要卖</a> <a
					href="http://new.taoertao.com/" style="color: #FF7F03;">我要买</a>
			</div>
		</div>
	</div>
</div>
<div id="nav">
	<div class="inNav clearfix">
		<span class="fl">全部二手分类</span>
		<ul class="fl">
			<li><a href="http://www.zzgyxy.com" target="_blank">郑工官网</a></li>
			<li><a href="http://jwweb.zzgyxy.com/" target="_blank">郑工教务处管理系统</a></li>
			<li><a href="#" target="_blank">郑工BBS</a></li>
		</ul>
	</div>
</div>
