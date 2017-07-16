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
	<div id="top">
		<ul class="inTop clearfix">
			<li class="fr"><a href="${pageContext.request.contextPath}/jsp/user/login.jsp"
				target="_blank">登陆</a></li>
			<li class="fr"><a href="${pageContext.request.contextPath}/jsp/user/register.jsp" target="_blank">免费注册</a></li>
		</ul>
	</div>
	<div id="header">
		<div class="inHeader clearfix">
			<div class="midHeader clearfix">
				<div class="logo fl">
					<a href="index.html"><img src="images/newlogo.png" title="淘二淘" /></a>
				</div>
				<div class="searchArea fl">
					<form method="get" action="http://www.taoertao.com/search.php?"
						target="_blank">
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
				<li><a href="http://new.taoertao.com/" target="_blank">郑工BBS</a></li>
			</ul>
		</div>
	</div>
	<div id="main">
		<div class="mainTop clearfix">
			<div id="classification" class="fl">
				<ul>
					<s:iterator var="c" value="cList">
						<li>
							<p>
								<a
									href="${pageContext.request.contextPath }/categoryAction.action?cid=<s:property value="#c.cid"/>"
									target="_blank"><s:property value="#c.cname" /></a>
							</p>
							<div class="menu">
								<dl>
									<s:iterator var="cs" value="#c.categorySeconds">
										<dd>
											<a class="goodLink"
												href="${pageContext.request.contextPath }/categorySecondAction.action?csid=<s:property value="#cs.csid"/>"
												target="_blank" title="<s:property value="#cs.csname"/>"><s:property
													value="#cs.csname" /></a>
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
						<li><a title="新闻一" href="#" >新闻一</a></li>
						<li><a title="新闻一" href="#" >新闻一</a></li>
						<li><a title="新闻一" href="#" >新闻一</a></li>
						<li><a title="新闻一" href="#" >新闻一</a></li>
						<li><a title="新闻一" href="#" >新闻一</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="mainMid">
			<div class="ershou clearfix">
				<div class="classTit">
					<span class="fl"><i class="iconfont">&#xe604;</i> 最新发布</span><span
						class="fr"><a href="category-catid-154.html"
						target="_blank">更多></a></span>
				</div>
				<div class="imgShow fl">
					<ul class="clearfix">
						<li><a href="information-id-2474.html"
							title="2015秋冬装新款毛呢外套女韩版修身显瘦中长款加厚超长呢子大" target="_blank"><img
								src="attachment/information/201601/pre_1452055736uuv4g.jpg"></a></li>
						<li><a href="information-id-2471.html"
							title="精仿苹果6SPlus 真指纹 八核支持iphoneQQ在线" target="_blank"><img
								src="attachment/information/201601/pre_14520444982j8ji.png"></a></li>
						<li><a href="information-id-2469.html"
							title="2016年款男式PU机车皮衣批发 男神款 把妹神器" target="_blank"><img
								src="attachment/information/201601/pre_14519849832ptew.jpg"></a></li>
						<li><a href="information-id-2461.html"
							title="全新）盘扣羊毛羔内胆毛领羊毛手工毛衣连帽外套" target="_blank"><img
								src="attachment/information/201601/pre_1451895108wg9nv.jpg"></a></li>
						<li><a href="information-id-2456.html" title="个人转让苹果6S玫瑰金64G"
							target="_blank"><img
								src="attachment/information/201601/pre_14517369130cwqg.jpg"></a></li>
						<li><a href="information-id-2391.html"
							title="出售三把尤克里里，大学协会的学生学了几次没耐心留下的" target="_blank"><img
								src="attachment/information/201512/pre_1449294444fy8dk.jpg"></a></li>
					</ul>
				</div>
				<div class="ershouInfo fr">
					<ul>
						<li>[音响/乐器/影音] <a href="information-id-5476.html"
							target="_blank">戴尔笔记本一台</a> 05-09
						</li>
						<li>[服饰/箱包/鞋帽] <a href="information-id-5466.html"
							target="_blank">原件299元买回来试穿了不合适驾驭</a> 05-08
						</li>
						<li>[手机/数码产品] <a href="information-id-5456.html"
							target="_blank">95新iPhone se 32G版 金色 说箱书</a> 05-08
						</li>
						<li>[艺术/工艺/收藏品] <a href="information-id-5453.html"
							target="_blank">限量版非卖品蒙牛牛奶果汁杯梅森瓶</a> 05-08
						</li>
						<li>[艺术/工艺/收藏品] <a href="information-id-5445.html"
							target="_blank">多肉工艺花盆</a> 05-07
						</li>
						<li>[小功率电器] <a href="information-id-5443.html"
							target="_blank">苏泊尔正品电磁炉</a> 05-07
						</li>
						<li>[音响/乐器/影音] <a href="information-id-5442.html"
							target="_blank">出售二手吉他，原件500，现价220，</a> 05-07
						</li>
						<li>[音响/乐器/影音] <a href="information-id-5440.html"
							target="_blank">出古琴二张</a> 05-07
						</li>
						<li>[小功率电器] <a href="information-id-5434.html"
							target="_blank">正品苏泊尔电磁炉</a> 05-06
						</li>
						<li>[其他日用品] <a href="information-id-5432.html"
							target="_blank">炫彩发光无线蓝牙插卡迷你小音箱带</a> 05-06
						</li>
						<li>[服饰/箱包/鞋帽] <a href="information-id-5427.html"
							target="_blank">闲置物品处理</a> 05-06
						</li>
						<li>[服饰/箱包/鞋帽] <a href="information-id-5414.html"
							target="_blank">木林森夏季网鞋新款透气网鞋男款韩</a> 05-05
						</li>
					</ul>
				</div>
			</div>
			<div class="book">
				<div class="classTit">
					<span class="fl"><i class="iconfont">&#xe601;</i> 书籍资料</span><span
						class="fr"><a href="category-catid-167.html">更多></a></span>
				</div>
				<ul>
					<s:iterator>
						<li>· <a href="information-id-5469.html" target="_blank">考研复习资料</a></li>
						<li>· <a href="information-id-5469.html" target="_blank">考研复习资料</a></li>
						<li>· <a href="information-id-5469.html" target="_blank">考研复习资料</a></li>
						<li>· <a href="information-id-5469.html" target="_blank">考研复习资料</a></li>
						<li>· <a href="information-id-5469.html" target="_blank">考研复习资料</a></li>
						<li>· <a href="information-id-5469.html" target="_blank">考研复习资料</a></li>
						<li>· <a href="information-id-5469.html" target="_blank">考研复习资料</a></li>
						<li>· <a href="information-id-5469.html" target="_blank">考研复习资料</a></li>
					</s:iterator>

				</ul>
			</div>
			<div class="digital">
				<div class="classTit">
					<span class="fl"><i class="iconfont">&#xe605;</i> 数码产品</span><span
						class="fr"><a href="category-catid-162.html">更多></a></span>
				</div>
				<ul>
					<li>· <a href="information-id-5456.html" target="_blank">95新iPhone
							se 32G版 金色 说箱书票齐全</a></li>
					<li>· <a href="information-id-5410.html" target="_blank">惊爆促销手机（全网通）</a></li>
					<li>· <a href="information-id-5400.html" target="_blank">苹果
							三星系列全网通 低价直销</a></li>
					<li>· <a href="information-id-5396.html" target="_blank">三星W2014便宜转让</a></li>
					<li>· <a href="information-id-5384.html" target="_blank">免费赠送手机，送完即止！</a></li>
					<li>· <a href="information-id-5381.html" target="_blank">【出售手机】浪漫的初夏，我想与你来一场VIVOX9
							说来就来</a></li>
					<li>· <a href="information-id-5367.html" target="_blank">中国电信4G流量卡，移动流量卡，联通上网卡，全国通用，0月租</a></li>
					<li>· <a href="information-id-5346.html" target="_blank">尼康D80单反套机+18-55VR套头</a></li>
				</ul>
			</div>
		</div>
	</div>

	<div id="footer">
		<div class="infooter">
			<div class="mokuai clearfix">
				<dl>
					<dt>关于我们</dt>
					<dd>
						<a href="about0b4c.html?part=aboutus&amp;id=1" target="_blank">自我介绍</a>
						<a href="about81f8.html?part=aboutus&amp;id=3" target="_blank">联系我们</a>
						<a href="aboutde24.html?part=announce" target="_blank">网站公告</a>
					</dd>
				</dl>
				<dl>
					<dd style="width: 500px">
						<br>
						<p>本站所有信息均为用户自由发布，本站不对信息的真实性负任何责任，交易时请注意识别信息的真假如有网站内容侵害了您的权益请联系我们删除，举报电话：18203699422</p>
					</dd>
				</dl>
			</div>
		</div>
	</div>
	<div id="go-top">
		<a class="go"></a>
	</div>

	<s:debug></s:debug>


	<script type="text/javascript"
		src="${pageContext.request.contextPath}/template/default/mystyle/js/jquery-1.11.2.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/template/default/mystyle/js/index.js"></script>
</body>

</html>