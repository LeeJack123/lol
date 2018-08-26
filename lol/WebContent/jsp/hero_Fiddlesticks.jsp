<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=gbk">
<meta charset="gb2312">
<meta name="robots" content="all">
<meta name="Copyright" content="TENCNET">
<meta name="author" content="Tencent-TGideas">
<meta name="keywords"
	content="英雄联盟,lol,league of legends,lol攻略,lol视频,lol视频攻略,lol英雄资料,lol战争学院,小仓解说视频,101战争学院,英雄">
<meta name="description" content="英雄联盟101战争学院，推荐攻略，视频攻略，小仓解说视频">
<title>游戏资料-英雄联盟官方网站-腾讯游戏</title>
<!-- 设计：帅呆 | 重构：小倪 | 创建：20131028 | 团队博客：http://tgideas.qq.com -->
<link
	href="<%=path %>/css/public.css"
	rel="stylesheet">
<style>
/*pop*/
.popupbox {
	position: fixed;
	left: 0;
	top: 0;
	right: 0;
	bottom: 0;
	width: 100%;
	height: 100%;
	z-index: 99999;
	background-color: #000;
}

.popupbox div {
	width: 100%;
	height: 100%
}

/*.pop-close{position: absolute;top: 0;right: -70px;display: block;width: 60px; height: 60px; font:bold 70px/60px simsun; color: #fff;}*/
/*.pop-close:hover{text-decoration: none}*/
</style>
<style>
.foot {
	background: #fff;
	color: #000;
	font: 12px/20px "微软雅黑", "宋体";
	min-width: 960px;
	margin: 0 auto;
	text-align: left;
}

.foot_dark {
	background: #000;
	color: #494949
}

.foot_dark a {
	color: #494949
}

.foot_cpright {
	padding: 15px 20px
}

.foot_cpright:after {
	content: "";
	display: block;
	height: 0;
	line-height: 0;
	visibility: hidden;
	clear: both
}

.f_line {
	margin: 0 2px
}

.foot_lefts {
	float: left;
	display: inline
}

.foot_ieg_logo {
	float: left;
	width: 180px;
	height: 35px;
	text-indent: -999em;
	overflow: hidden;
	margin: 10px 0 0 10px;
	background: url(//game.gtimg.cn/images/js/2018foot/logo/foot-light.png)
}

.foot_dark .foot_ieg_logo {
	background: url(//game.gtimg.cn/images/js/2018foot/logo/foot-dark.png)
}

.foot_left {
	float: left;
	text-indent: -999em;
	overflow: hidden;
	margin: 10px 0 0 10px;
	width: 85px;
	height: 35px;
}

.foot_links {
	display: inline;
	float: right;
	width: 682px;
	list-style: none;
}

.foot_links li {
	line-height: 20px;
	overflow: hidden;
}

.foot_links .link_map {
	font-size: 0;
}

.foot_links .copyright_txt {
	font-size: 10px;
}

.foot_links .link_map span, .foot_links .link_map a {
	font-size: 12px;
	color: #494949
}

.foot_links  li img {
	vertical-align: middle;
	margin-right: 3px;
}
</style>
</head>

<body>
	<div class="wraper">
		<!--[if lt IE 9]>
    <p class="chromeframe">您使用的IE浏览器版本过低，本站不再支持，<a href="//windows.microsoft.com/">升级您的IE浏览器</a>，或使用<a href="//www.google.cn/chrome/">Google Chrome</a>、<a href="//www.firefox.com.cn/download/">Firefox</a>等高级浏览器，将会得到更好的体验！</p>
<![endif]-->
		<div id="header" class="header header-close">

			<!--TOP S-->
			<div class="top">
				<div class="top-inner layout">
					<div id="J_nav" class="main-nav-wrap">
						<ul class="main-nav">
							<li><a href="http://lol.qq.com/web201310/info-heros.shtml"
								onclick="pgvSendClick({hottag:'v2.nav.info.link'})">游戏资料<span>GAME
										INFO</span></a></li>
							<li><a class="n" href="javascript:void(0)">商城/合作<span>STORE</span></a></li>
							<li><a class="n" href="javascript:void(0)">用户互动<span>COMMUNITY</span></a></li>
							<li><a href="http://lpl.qq.com/"
								onclick="pgvSendClick({hottag:'v2.nav.match.link'})"
								target="_blank">赛事中心<span>EVENTS</span></a></li>
							<li><a class="n" href="javascript:void(0)">自助系统<span>SYSTEM</span></a></li>
							<!--<li><a href="/web201310/personal.shtml" onclick="pgvSendClick({hottag:'v2.nav.personal.link'})">个人中心<span>user center</span></a></li>-->
						</ul>
						<!--下拉子导航 S-->
						<div id="J_subNav" class="sub-nav">
							<ul class="sub-nav-inner">
								<li class="sub-nav-item"><a class="sub-nav-lnk"
									onclick="pgvSendClick({hottag:'v2.subnav.info.what'})"
									href="http://lol.qq.com/web201310/newbie-what.shtml"
									target="_blank">新手指引</a> <a class="sub-nav-lnk"
									onclick="pgvSendClick({hottag:'v2.subnav.info.heros'})"
									href="http://lol.qq.com/web201310/info-heros.shtml"
									target="_blank"><i class="icon-hot"></i>资料库</a> <!--<a class="sub-nav-lnk" onclick="pgvSendClick({hottag:'v2.subnav.info.guides'})" href="/web201310/101/guides.shtml">战争学院</a>-->
									<a class="sub-nav-lnk"
									onclick="pgvSendClick({hottag:'v2.subnav.info.guides'})"
									href="http://lol.qq.com/guide/" target="_blank">攻略中心</a> <a
									class="sub-nav-lnk"
									onclick="pgvSendClick({hottag:'v2.subnav.info.nexus'})"
									href="http://lol.qq.com/nexus/pc/" target="_blank"><i
										class="icon-new"></i>开发者基地</a> <!--<a class="sub-nav-lnk" onclick="pgvSendClick({hottag:'v2.subnav.info.rgm'})" href="/act/a20160412rgm/" target="_blank">模式实验室</a>-->
									<a class="sub-nav-lnk"
									onclick="pgvSendClick({hottag:'v2.subnav.info.loot'})"
									href="http://lol.qq.com/act/a20171205hextech/" target="_blank">海克斯战利品库</a>
									<a class="sub-nav-lnk"
									onclick="pgvSendClick({hottag:'v2.subnav.info.protect'})"
									href="http://lol.qq.com/act/a20161101pbcxym/" target="_blank">屏保下载</a>
									<a class="sub-nav-lnk"
									onclick="pgvSendClick({hottag:'v2.subnav.info.yz'})"
									href="http://yz.lol.qq.com/" target="_blank">宇宙官网</a></li>
								<li class="sub-nav-item"><a class="sub-nav-lnk"
									onclick="pgvSendClick({hottag:'v2.subnav.store.pay'})"
									target="_blank"
									href="http://lol.qq.com/comm-htdocs/pay/new_index.htm?t=lol"><i
										class="publicspr ico-h"></i>点券充值</a> <a class="sub-nav-lnk"
									onclick="pgvSendClick({hottag:'v2.subnav.store.daoju'})"
									target="_blank" href="http://daoju.qq.com/lol/">道聚城</a> <a
									class="sub-nav-lnk"
									onclick="pgvSendClick({hottag:'v2.subnav.store.mall'})"
									href="http://lolriotmall.qq.com/index.html?ADTAG=lol.rk.gw.top&amp;adunionsid=gwtop"
									target="_blank"><i class="icon-hot"></i>周边商城</a> <a
									class="sub-nav-lnk"
									onclick="pgvSendClick({hottag:'v2.subnav.store.mvm'})"
									href="http://lol.qq.com/mvm/?ADTAG=lol.rk.gw.top"
									target="_blank">LOL桌游</a> <a class="sub-nav-lnk"
									onclick="pgvSendClick({hottag:'v2.subnav.store.cmb'})"
									href="http://lpl.qq.com/es/act/a20170731cmb/" target="_blank">LOL信用卡</a>
									<a class="sub-nav-lnk"
									onclick="pgvSendClick({hottag:'v2.subnav.store.netbar'})"
									href="http://cafe.qq.com/" target="_blank">网吧特权</a></li>
								<li class="sub-nav-item"><a class="sub-nav-lnk"
									onclick="pgvSendClick({hottag:'v2.subnav.user.online'})"
									href="http://kf.qq.com/product/lol.html?pc_scene=web"
									target="_blank">在线客服</a> <a class="sub-nav-lnk"
									onclick="pgvSendClick({hottag:'v2.subnav.user.video'})"
									href="http://lol.qq.com/v/" target="_blank">视频中心</a> <!--<a class="sub-nav-lnk" onclick="pgvSendClick({hottag:'v2.subnav.user.active'})" href="/web201310/active.shtml" target="_blank"><i class="icon-hot"></i>活动中心</a>-->
									<a class="sub-nav-lnk"
									onclick="pgvSendClick({hottag:'v2.subnav.user.bbs'})"
									target="_blank" href="http://bbs.lol.qq.com/forum.php">官方论坛</a>
									<a class="sub-nav-lnk"
									onclick="pgvSendClick({hottag:'v2.subnav.user.weixin'})"
									href="http://lol.qq.com/act/a20160425wxlol/" target="_blank">官方微信</a>
									<a class="sub-nav-lnk"
									onclick="pgvSendClick({hottag:'v2.subnav.user.weibo'})"
									href="http://weibo.com/lol" target="_blank">官方微博</a> <a
									class="sub-nav-lnk"
									onclick="pgvSendClick({hottag:'v2.subnav.user.tr'})"
									href="http://tr.lol.qq.com/" target="_blank"><i
										class="icon-new"></i>玩家创作馆</a></li>
								<li class="sub-nav-item"><a class="sub-nav-lnk"
									onclick="pgvSendClick({hottag:'v2.subnav.match.lpl'})"
									target="_blank" href="http://lpl.qq.com/es/lpl/2018/"><i
										class="icon-new"></i>LPL职业联赛</a> <a class="sub-nav-lnk"
									onclick="pgvSendClick({hottag:'v2.subnav.match.msi'})"
									target="_blank" href="http://lpl.qq.com/es/msi/2018/"><i
										class="icon-hot"></i>季中冠军赛</a> <a class="sub-nav-lnk"
									onclick="pgvSendClick({hottag:'v2.subnav.match.ldl'})"
									target="_blank" href="http://lpl.qq.com/es/ldl/">LDL发展联赛</a> <a
									class="sub-nav-lnk"
									onclick="pgvSendClick({hottag:'v2.subnav.match.demacia'})"
									target="_blank" href="http://lpl.qq.com/es/demacia/2018/">德玛西亚杯</a>
									<a class="sub-nav-lnk"
									onclick="pgvSendClick({hottag:'v2.subnav.match.s7'})"
									target="_blank" href="http://lpl.qq.com/es/2017worlds/">全球总决赛</a>
									<a class="sub-nav-lnk"
									onclick="pgvSendClick({hottag:'v2.subnav.match.lcl'})"
									target="_blank" href="http://lpl.qq.com/es/lcl/">高校联赛</a> <!--<a class="sub-nav-lnk" onclick="pgvSendClick({hottag:'v2.subnav.match.gxzfs'})" target="_blank" href="/act/a20161025gxzfs/">高校自发赛</a>-->
									<a class="sub-nav-lnk"
									onclick="pgvSendClick({hottag:'v2.subnav.match.city'})"
									target="_blank" href="http://lpl.qq.com/es/city/">城市英雄争霸赛 </a>
								</li>
								<li class="sub-nav-item">
									<!--<li><a href="/act/a20110613icon/?ADTAG=lolweb.v2" target="_blank" onclick="pgvSendClick({hottag:'v2.sidenav.icon'})"><i class="icon-icon"></i>点亮图标</a></li>-->
									<a class="sub-nav-lnk"
									onclick="pgvSendClick({hottag:'v2.subnav.system.icon'})"
									target="_blank"
									href="http://lol.qq.com/act/a20170608transferzone/index.html?ADTAG=lolweb.v2"><i
										class="icon-new"></i>转区系统</a> <!--<a class="sub-nav-lnk" onclick="pgvSendClick({hottag:'v2.subnav.system.rs'})" target="_blank" href="/rs/">声望系统</a>-->
									<a class="sub-nav-lnk"
									onclick="pgvSendClick({hottag:'v2.subnav.system.fenghao'})"
									target="_blank" href="http://lol.qq.com/act/a20151118fh/"><i
										class="icon-hot"></i>封号查询</a> <a class="sub-nav-lnk"
									onclick="pgvSendClick({hottag:'v2.subnav.system.exp'})"
									target="_blank" href="http://lol.qq.com/act/a20110907exp/">体验服申请</a>
									<a class="sub-nav-lnk"
									onclick="pgvSendClick({hottag:'v2.subnav.system.replay'})"
									target="_blank" href="http://lol.qq.com/act/a20170728replay/">回放系统</a>
									<a class="sub-nav-lnk"
									onclick="pgvSendClick({hottag:'v2.subnav.system.server'})"
									target="_blank" href="http://lol.qq.com/act/a20150326dqpd/">服务器状态查询</a>
									<a class="sub-nav-lnk"
									onclick="pgvSendClick({hottag:'v2.subnav.system.justice'})"
									target="_blank"
									href="http://lol.qq.com/act/a20171108ambient/index.html"><i
										class="icon-new"></i>秩序殿堂</a> <a class="sub-nav-lnk"
									onclick="pgvSendClick({hottag:'v2.subnav.system.cjf'})"
									target="_blank"
									href="http://lol.qq.com/act/a20170704super/index.shtml?e_code=336975"><i
										class="icon-new"></i>峡谷之巅</a>
								</li>
							</ul>

						</div>
						<!--下拉子导航 E-->
					</div>

					<span id="J_searchClick" class="top-search"><i
						class="icon-top-search"></i></span>
					<div id="J_search" class="top-search-main" style="display: none">
						<div class="top-search-inner">
							<i class="icon-search-inner"></i> <input class="input-search-box"
								placeholder="搜索 lol.qq.com" id="J_searchText" type="text">
							<span id="J_searchTips" class="input-search-tips">按下回车键进行搜索</span>
							<span id="J_searchClose" class="top-search-close" title="关闭搜索系统"></span>
						</div>
						<div class="top-search-quick" id="J_searchShortcut">
							<h5 class="search-quick-title">快速链接</h5>
							<a
								href="http://lol.qq.com/act/a20160624search/index.html?&amp;searchType=news&amp;word=%E5%85%A8%E7%90%83%E6%80%BB%E5%86%B3%E8%B5%9B"
								target="_blank">全球总决赛</a><a
								href="http://lol.qq.com/act/a20160624search/index.html?&amp;searchType=news&amp;word=%E6%96%B0%E7%9A%AE%E8%82%A4"
								target="_blank">新皮肤</a><a
								href="http://lol.qq.com/act/a20160624search/index.html?&amp;searchType=news&amp;word=SKT"
								target="_blank">SKT</a><a
								href="http://lol.qq.com/act/a20160624search/index.html?&amp;searchType=news&amp;word=%E5%AD%A3%E5%89%8D%E8%B5%9B"
								target="_blank">季前赛</a><a
								href="http://lol.qq.com/act/a20160624search/index.html?&amp;searchType=news&amp;word=%E5%A5%A5%E6%81%A9"
								target="_blank">奥恩</a>
						</div>
					</div>
					<!--<a class="top-search" href="/act/a20160624search/" onclick="pgvSendClick({hottag:'v2.nav.search'})"  target="_blank" title="前往英雄联盟搜索系统"><i class="icon-top-search"></i></a>-->
					<a class="top-app" href="http://lol.qq.com/app/" target="_blank"
						title="前往掌上英雄联盟官网"><i class="icon-top-app"></i></a>
					<div id="J_topUser" class="top-user">
						<!--已登录已绑定大区 S-->
						<div id="J_userHover" class="top-user-info" style="display: none">
							<div class="top-user-side">
								<span class="user-mask"></span> <img class="jUserIcon" src="">
								<span id="J_userRankNo" class="top-user-rank">30</span>
							</div>
							<div class="top-user-main">
								<h5 class="top-user-name" id="jUserName"></h5>
								<div class="top-user-area">
									<a class="link-switch-area"
										href="javascript:LW201310_Userinfo.userLogin();"
										id="jUserArea"></a><a class="link-loginout"
										href="javascript:LW201310_Userinfo.userLogout();">注销</a>
								</div>
							</div>
						</div>
						<!--已登录已绑定大区 E-->
						<!--未登录 S-->
						<div class="top-user-info" style="">
							<div class="top-user-side">
								<span class="user-mask"></span> <img id="jUserIcon"
									src="%E6%B8%B8%E6%88%8F%E8%B5%84%E6%96%99-%E8%8B%B1%E9%9B%84%E8%81%94%E7%9B%9F%E5%AE%98%E6%96%B9%E7%BD%91%E7%AB%99-%E8%85%BE%E8%AE%AF%E6%B8%B8%E6%88%8F_files/default.png">
							</div>
							<div class="top-user-main">
								<div class="top-user-unlogin">
									亲爱的召唤师，欢迎<em onclick="LW201310_Userinfo.userLogin();">登录</em>
								</div>
								<div class="top-user-tips">登录后查看自己的战绩、资产、声望值等</div>
							</div>
							<a class="btn-user-drop" href=""></a>
						</div>
						<!--未登录 S-->
						<!--已登录未绑定大区 S-->
						<div class="top-user-info" style="display: none">
							<div class="top-user-side">
								<span class="user-mask"></span> <img class="jUserIcon"
									src="%E6%B8%B8%E6%88%8F%E8%B5%84%E6%96%99-%E8%8B%B1%E9%9B%84%E8%81%94%E7%9B%9F%E5%AE%98%E6%96%B9%E7%BD%91%E7%AB%99-%E8%85%BE%E8%AE%AF%E6%B8%B8%E6%88%8F_files/default.png">
							</div>
							<div class="top-user-main">
								<div class="top-user-unlogin">
									您已登录，请<a href="javascript:LW201310_Userinfo.userLogin();">绑定大区</a>或<a
										href="javascript:LW201310_Userinfo.userLogout();">注销</a>
								</div>
								<div class="top-user-tips">绑定大区后查看所在大区的战绩、资产、声望值等</div>
							</div>
							<a class="btn-user-drop" href=""></a>
						</div>
						<!--已登录未绑定大区 E-->
						<div id="J_userDrop" class="top-user-drop"
							style="visibility: hidden">
							<div id="J_dropTips" class="top-user-drop-tips">登录并且绑定大区后才可查看您的具体信息哦~（包括战绩、资产、声望值等）</div>
							<div class="top-user-data-tips">官网个人信息显示略有延迟，请以游戏内数据为准</div>
							<div id="J_dropContent" class="top-user-drop-content clearfix"
								style="display: none">
								<div class="pic">
									<img id="J_rankPic"
										src="%E6%B8%B8%E6%88%8F%E8%B5%84%E6%96%99-%E8%8B%B1%E9%9B%84%E8%81%94%E7%9B%9F%E5%AE%98%E6%96%B9%E7%BD%91%E7%AB%99-%E8%85%BE%E8%AE%AF%E6%B8%B8%E6%88%8F_files/default_002.png"
										alt="" height="110" width="110"> <em id="jUserRank">暂无</em>段位
								</div>
								<div class="info">
									<div class="top-user-item">
										<strong id="jUserGames">0</strong>总场数
									</div>
									<div class="top-user-item">
										<strong id="jUserRP">0</strong>点券
									</div>
									<div class="top-user-item">
										<strong id="jUserIP">0</strong>蓝色精粹
									</div>
									<div class="top-user-item">
										<strong id="jUserRS">0</strong>声望值
									</div>
								</div>
							</div>
							<a class="top-link-personal"
								href="http://lol.qq.com/act/a20180411personal/index.shtml"
								target="_blank">进入个人中心</a>
						</div>
					</div>
				</div>
			</div>
			<!--TOP E-->


			<div class="header-inner layout">
				<div class="logo">
					<a href="http://lol.qq.com/">英雄联盟</a>
				</div>

				<!--当前活动 S-->
				<video class="top-back-video" id="topBackVideo" autoplay="autoplay"
					loop="">
					<source
						src="%E6%B8%B8%E6%88%8F%E8%B5%84%E6%96%99-%E8%8B%B1%E9%9B%84%E8%81%94%E7%9B%9F%E5%AE%98%E6%96%B9%E7%BD%91%E7%AB%99-%E8%85%BE%E8%AE%AF%E6%B8%B8%E6%88%8F_files/back-v23.webm"
						type="video/webm">
					<source
						src="%E6%B8%B8%E6%88%8F%E8%B5%84%E6%96%99-%E8%8B%B1%E9%9B%84%E8%81%94%E7%9B%9F%E5%AE%98%E6%96%B9%E7%BD%91%E7%AB%99-%E8%85%BE%E8%AE%AF%E6%B8%B8%E6%88%8F_files/back-v23.mpeg"
						type="video/mp4">
				</video>
				<div class="top-act">
					<h2 class="top-act-name">
						海潮汹涌<span>海潮汹涌</span>
					</h2>
					<p class="top-act-desc">比尔吉沃特事件全面来袭</p>
					<!--<div class="top-act-video">-->
					<!--<video class="top-small-video" id="topSmallVideo" autoplay loop>-->
					<!--<source src="//ossweb-img.qq.com/images/lol/v2/banner/small-v9.webm" type="video/webm">-->
					<!--<source src="//ossweb-img.qq.com/images/lol/v2/banner/small-v9.mp4" type="video/mp4">-->
					<!--</video>-->
					<!--<a id="J_play" class="btn-top-play" href="javascript:void(0)"><i class="icon-top-play"></i></a>-->
					<!--</div>-->
					<a class="top-act-link"
						href="http://lol.qq.com/act/a20180604surging/?ADTAG=lolweb.v2.act"
						onclick="pgvSendClick({hottag:'v2.activity.btn.link'})"
						target="_blank">查看详情</a>
				</div>
				<!--当前活动 E-->

				<div id="J_version" class="top-version">
					当前游戏版本：<em>Ver 8.12</em> <a class="top-version-link"
						href="http://lol.qq.com/webplat/info/news_version3/152/22006/m14290/201806/731275.shtml"
						onclick="pgvSendClick({hottag:'v2.version.btn.link'})"
						target="_blank">版本详情</a>
				</div>

			</div>
		</div>
		<!--[if !IE]>|xGv00|2c83436ed5984608bbe0fbba63e9367d<![endif]-->
		<div class="layout mainer">
			<div id="Navi" class="navi">
				<i class="commspr commico-crumbs"></i> <a
					href="http://lol.qq.com/main.shtml">英雄联盟首页</a> <i
					class="commspr commico-rrow"></i> <a
					href="http://lol.qq.com/web201310/info-heros.shtml#Navi">游戏资料</a> <i
					class="commspr commico-rrow"></i> <a
					href="http://lol.qq.com/web201310/info-heros.shtml#Navi">全部英雄</a> <i
					class="commspr commico-rrow"></i> <span id="DATAnametitle">末日使者
					费德提克</span>
			</div>

			<div class="infodefail">
				<div id="defailDATA" class="defail-data">
					<h1 id="DATAname">末日使者</h1>
					<h2 id="DATAtitle">费德提克</h2>
					<div id="DATAtags" class="defail-tags">
						<span>法师</span><span>辅助</span>
					</div>
					<div id="defailVideo" class="defail-vod" title="点击观看视频">
						<i class="commspr commico-vod"></i>
					</div>
					<dl id="DATAinfo" class="defail-stat">
						<dt>物理攻击</dt>
						<dd>
							<i class="up up1" title="2" style="width: 20%"></i>
						</dd>
						<dt>魔法攻击</dt>
						<dd>
							<i class="up up2" title="9" style="width: 90%"></i>
						</dd>
						<dt>防御能力</dt>
						<dd>
							<i class="up up3" title="3" style="width: 30%"></i>
						</dd>
						<dt>上手难度</dt>
						<dd>
							<i class="up up4" title="9" style="width: 90%"></i>
						</dd>
					</dl>
					<div class="defail-buy">
						<a id="defailBuy" href="#" target="_blank"
							class="commspr commbtn-buy">购买英雄</a>
					</div>
				</div>
				<span class="sbg"></span>
				<div class="defail-skin">
					<ul id="skinBG" class="defail-skin-bg" style="left: 0px;">
						<li title="默认皮肤"><img
							src="<%=path %>/images/hero/Fiddlesticks/big9000.jpg"
							alt="默认皮肤"></li>
						<li title="幽魂 费德提克"><img
							src="<%=path %>/images/hero/Fiddlesticks/big9001.jpg"
							alt="幽魂 费德提克"></li>
						<li title="联合王国 费德提克"><img
							src="<%=path %>/images/hero/Fiddlesticks/big9002.jpg"
							alt="联合王国 费德提克"></li>
						<li title="荒野幽灵 费德提克"><img
							src="<%=path %>/images/hero/Fiddlesticks/big9003.jpg"
							alt="荒野幽灵 费德提克"></li>
						<li title="南瓜头 费德提克"><img
							src="<%=path %>/images/hero/Fiddlesticks/big9004.jpg"
							alt="南瓜头 费德提克"></li>
						<li title="铁钩船长 费德提克"><img
							src="<%=path %>/images/hero/Fiddlesticks/big9005.jpg"
							alt="铁钩船长 费德提克"></li>
						<li title="惊悚派对 费德提克"><img
							src="<%=path %>/images/hero/Fiddlesticks/big9006.jpg"
							alt="惊悚派对 费德提克"></li>
						<li title="糖果使徒 费德提克"><img
							src="<%=path %>/images/hero/Fiddlesticks/big9007.jpg"
							alt="糖果使徒 费德提克"></li>
						<li title="重生之沙 费德提克"><img
							src="<%=path %>/images/hero/Fiddlesticks/big9008.jpg"
							alt="重生之沙 费德提克"></li>
					</ul>
					<div class="defail-skin-nav">
						<div class="defail-skin-name">
							<span id="skinName">默认皮肤</span>
						</div>
						<ul id="skinNAV">
							<li rel="_0" class="current"><a title="默认皮肤"><img
									src="<%=path %>/images/hero/Fiddlesticks/small9000.jpg"
									alt="默认皮肤" height="60" width="60"><span class="sbor"></span></a></li>
							<li rel="_1" class=""><a title="幽魂 费德提克"><img
									src="<%=path %>/images/hero/Fiddlesticks/small9001.jpg"
									alt="幽魂 费德提克" height="60" width="60"><span class="sbor"></span></a></li>
							<li rel="_2" class=""><a title="联合王国 费德提克"><img
									src="<%=path %>/images/hero/Fiddlesticks/small9002.jpg"
									alt="联合王国 费德提克" height="60" width="60"><span class="sbor"></span></a></li>
							<li rel="_3" class=""><a title="荒野幽灵 费德提克"><img
									src="<%=path %>/images/hero/Fiddlesticks/small9003.jpg"
									alt="荒野幽灵 费德提克" height="60" width="60"><span class="sbor"></span></a></li>
							<li rel="_4" class=""><a title="南瓜头 费德提克"><img
									src="<%=path %>/images/hero/Fiddlesticks/small9004.jpg"
									alt="南瓜头 费德提克" height="60" width="60"><span class="sbor"></span></a></li>
							<li rel="_5" class=""><a title="铁钩船长 费德提克"><img
									src="<%=path %>/images/hero/Fiddlesticks/small9005.jpg"
									alt="铁钩船长 费德提克" height="60" width="60"><span class="sbor"></span></a></li>
							<li rel="_6" class=""><a title="惊悚派对 费德提克"><img
									src="<%=path %>/images/hero/Fiddlesticks/small9006.jpg"
									alt="惊悚派对 费德提克" height="60" width="60"><span class="sbor"></span></a></li>
							<li rel="_7" class=""><a title="糖果使徒 费德提克"><img
									src="<%=path %>/images/hero/Fiddlesticks/small9007.jpg"
									alt="糖果使徒 费德提克" height="60" width="60"><span class="sbor"></span></a></li>
							<li rel="_8" class=""><a title="重生之沙 费德提克"><img
									src="<%=path %>/images/hero/Fiddlesticks/small9008.jpg"
									alt="重生之沙 费德提克" height="60" width="60"><span class="sbor"></span></a></li>
						</ul>
					</div>
				</div>
				<div id="defailVodPlayer" class="defail-vod-player"
					style="display: none;">
					<div id="VideoContent">
						<p class="loading">视频加载中...</p>
					</div>
					<a id="closePlayer" href="javascript:hidVod()" class="popclose">×</a>
				</div>
			</div>

			<div class="clearfix">
				<div class="infoleftcont">
					<h4 class="infotitle">背景故事</h4>
					<div class="colbox bgstroy">
						<div id="DATAlore">费德提克是一个骇人的活体稻草人，一个徘徊在黑暗中的憎恶之物，他挥舞着一把镰刀并捕食着粗心的生物们。在群鸦们的凶蛮啄杀的协助下，费德提克会先品味猎物们的恐惧，然后再于飓风般的羽毛与溅血的利喙之中取走猎物们的性命。</div>
						<a id="Gmore" href="javascript:;" class="cgray">查看更多...</a> <a
							id="Hmore" href="javascript:;" class="cgray"
							style="display: none;">收起...</a>
					</div>
					<h4 class="infotitle">技能介绍</h4>
					<ul id="DATAspellsNAV" class="infotab">
						<li class="current"><img
							src="<%=path %>/images/hero/Fiddlesticks/Fiddlesticks_Passive.png"
							alt=""></li>
						<li class=""><img
							src="<%=path %>/images/hero/Fiddlesticks/Terrify.png"
							alt=""></li>
						<li class=""><img
							src="<%=path %>/images/hero/Fiddlesticks/Drain.png"
							alt=""></li>
						<li class=""><img
							src="<%=path %>/images/hero/Fiddlesticks/FiddlesticksDarkWind.png"
							alt=""></li>
						<li class=""><img
							src="<%=path %>/images/hero/Fiddlesticks/Crowstorm.png"
							alt=""></li>
					</ul>
					<div id="DATAspells" class="colbox infoskillbox">
						<div class="skilltitle">
							<h5>恐惧降临</h5>
							<em>被动技能</em>
						</div>
						<p class="skilltip">
							在站立不动或引导技能状态下持续1.5秒，就会用【恐惧降临】强化费德提克。定身类控制效果会重置它的计时器。<br>
							<br>【恐惧降临】提供移动速度，但在费德提克开始移动后仅持续1.5秒。
						</p>
					</div>
					<h4 class="infotitle">推荐装备</h4>
					<div id="jSearchItemDiv" class="colbox infospells">
						<div class="pagetab">
							<ul id="infospellsTAB" class="pagetab-list pagetablist-sec">
								<li class="current" rel="classBlocks"><a
									class="pagetab-list-lnk">召唤师峡谷</a></li>
								<li rel="aramBlocks" class=""><a class="pagetab-list-lnk">极地大乱斗</a></li>
							</ul>
						</div>
						<dl id="infospellsTABclassBlocks" style="display: block;">
							<dt>起始装备</dt>
							<dd class="borlineX">
								<img data-title="1056"
									src="<%=path %>/images/goods/1056.png"
									alt="" class=""><img data-title="2003"
									src="<%=path %>/images/goods/2003.png"
									alt=""><img data-title="3340"
									src="<%=path %>/images/goods/3340.png"
									alt="">
							</dd>
							<dt>核心物品</dt>
							<dd class="borlineX">
								<img data-title="3020"
									src="<%=path %>/images/goods/3020.png"
									alt=""><img data-title="3285"
									src="<%=path %>/images/goods/3285.png"
									alt="" class=""><img data-title="3157"
									src="<%=path %>/images/goods/3157.png"
									alt="">
							</dd>
						</dl>
						<dl id="infospellsTABaramBlocks" style="display: none;">
							<dt>起始装备</dt>
							<dd class="borlineX">
								<img data-title="3073"
									src="<%=path %>/images/goods/3073.png"
									alt="" class=""><img data-title="1001"
									src="<%=path %>/images/goods/1001.png"
									alt="" class=""><img data-title="2003"
									src="<%=path %>/images/goods/2003.png"
									alt="" class="">
							</dd>
							<dt>核心物品</dt>
							<dd class="">
								<img data-title="3007"
									src="<%=path %>/images/goods/3007.png"
									alt="" class=""><img data-title="3020"
									src="<%=path %>/images/goods/3020.png"
									alt=""><img data-title="3157"
									src="<%=path %>/images/goods/3157.png"
									alt="">
							</dd>
							<dt>进攻型物品</dt>
							<dd class="borlineX">
								<img data-title="3151"
									src="<%=path %>/images/goods/3151.png"
									alt=""><img data-title="3089"
									src="<%=path %>/images/goods/3089.png"
									alt=""><img data-title="3135"
									src="<%=path %>/images/goods/3135.png"
									alt="">
							</dd>
							<dt>防御型物品</dt>
							<dd class="">
								<img data-title="3116"
									src="<%=path %>/images/goods/3116.png"
									alt="" class=""><img data-title="3001"
									src="<%=path %>/images/goods/3001.png"
									alt="" class=""><img data-title="3029"
									src="<%=path %>/images/goods/3029.png"
									alt="">
							</dd>
						</dl>
					</div>

					<h4 class="infotitle">使用技巧</h4>
					<div class="colbox arttips">
						<dl id="DATAallytips" class="borlineX">
							<dt>当你使用末日使者</dt>
							<dd>
								<p>- 使用暗黑之风来击杀大量小兵，试着对小兵使用生命吸取来获得最大的吸血效果。</p>
								<p>- 在发起群鸦风暴或生命吸取前对敌人使用恐惧可以确保造成最大伤害。</p>
								<p>- 如果你购买增强法术的物品，费德提克会显得很脆弱。试着用符文和物品取得攻守平衡。</p>
							</dd>
						</dl>
						<dl id="DATAenemytips">
							<dt>敌人使用末日使者</dt>
							<dd>
								<p>- 不要在你靠近友军时发起攻击。黑暗之风会在你和友军之间来回反弹，并延长其沉默时间。</p>
								<p>- 如果费德提克使用了群鸦风暴技能，你可使用晕眩或减速技能，并逃出技能射程，直到该技能消散。</p>
								<p>- 如果费德提克消失不见，则要小心他是否埋伏在树林中引导群鸦风暴。</p>
							</dd>
						</dl>
					</div>
				</div>

				<div class="inforightcont">
					<div id="jUserRecInfo" class="clearfix infotitle">
						<h4 class="fl">我的记录</h4>
						<p id="jUserHeroArea" class="fr more"></p>
					</div>
					<div id="jUserRecList" class="colbox">
						<div id="jUserHeroinfo" class="clearfix pageuserline-shout">
							您无法查看使用该英雄的记录，请<a class="cgreen"
								href="javascript:LW201310_Userinfo.userLogin();">[登陆]</a>，并绑定所在大区。
						</div>
						<div id="jUserRecH5" class="hisbox-title" style="display: none;">
							<h5 class="fl">近期使用记录</h5>
							<p class="fr more">
								<a id="jUserPersonalPage" class="cgray publicspr ico-more2"
									href="http://lol.qq.com/web201310/personal.shtml">查看更多</a>
							</p>
						</div>

						<ul id="jUserHeroBattle" class="hisbox-list clearfix"></ul>
					</div>


					<div class="clearfix infotitle">
						<h4 class="fl">推荐攻略</h4>
						<div class="fr more">
							<a class="cgray publicspr ico-more2"
								href="javascript:window.open('http://lol.qq.com/guide/list.shtml?key='%20+%20encodeURIComponent(LW201310_ChampionInfo.dHeroName),%20'_blank');">查看更多</a>
						</div>
					</div>
					<div class="colbox info-medialist">
						<ol id="jMediaList" class="ghot-list">
							<li class="item-normal"><p class="gt1">
									<a title="恐惧大魔王——末日中单"
										href="http://lol.qq.com/guide/page.shtml?id=379854"
										class="names" target="_blank"><i class="spr ico-arrow"></i><span>恐惧大魔王——末日中单</span></a>
								</p>
								<p class="gt2">2017-06-18</p>
								<p class="gt3">
									<span class="gfrom">来源：</span>玩家投稿
								</p>
								<p class="gt4">
									<span class="ghot">评分：</span><span class="sidbar"><i
										class="empt"></i><i class="upbar-green" style="width: 40%"></i></span>
								</p></li>
							<li class="item-normal"><p class="gt1">
									<a title="新晋Carry型辅助 辅助末日"
										href="http://lol.qq.com/guide/page.shtml?id=379689"
										class="names" target="_blank"><i class="spr ico-arrow"></i><span>新晋Carry型辅助
											辅助末日</span></a>
								</p>
								<p class="gt2">2017-06-16</p>
								<p class="gt3">
									<span class="gfrom">来源：</span>玩家投稿
								</p>
								<p class="gt4">
									<span class="ghot">评分：</span><span class="sidbar"><i
										class="empt"></i><i class="upbar-green" style="width: 65%"></i></span>
								</p></li>
							<li class="item-normal"><p class="gt1">
									<a title="单排上分好手 末日打野强势归来"
										href="http://lol.qq.com/guide/page.shtml?id=379687"
										class="names" target="_blank"><i class="spr ico-arrow"></i><span>单排上分好手
											末日打野强势归来</span></a>
								</p>
								<p class="gt2">2017-06-16</p>
								<p class="gt3">
									<span class="gfrom">来源：</span>玩家投稿
								</p>
								<p class="gt4">
									<span class="ghot">评分：</span><span class="sidbar"><i
										class="empt"></i><i class="upbar-green" style="width: 90%"></i></span>
								</p></li>
							<li class="item-normal"><p class="gt1">
									<a title="他的R能打出团灭！稻草人打野思路详解"
										href="http://lol.qq.com/guide/page.shtml?id=375259"
										class="names" target="_blank"><i class="spr ico-arrow"></i><span>他的R能打出团灭！稻草人打野思路详解</span></a>
								</p>
								<p class="gt2">2017-03-31</p>
								<p class="gt3">
									<span class="gfrom">来源：</span>不详
								</p>
								<p class="gt4">
									<span class="ghot">评分：</span><span class="sidbar"><i
										class="empt"></i><i class="upbar-green" style="width: 80%"></i></span>
								</p></li>
							<li class="item-normal"><p class="gt1">
									<a title="7.3蚂蚱婕拉双双被削 ta完美接替辅助之位"
										href="http://lol.qq.com/guide/page.shtml?id=21933"
										class="names" target="_blank"><i class="spr ico-arrow"></i><span>7.3蚂蚱婕拉双双被削
											ta完美接替辅助之位</span></a>
								</p>
								<p class="gt2">2017-02-18</p>
								<p class="gt3">
									<span class="gfrom">来源：</span>52PK
								</p>
								<p class="gt4">
									<span class="ghot">评分：</span><span class="sidbar"><i
										class="empt"></i><i class="upbar-green" style="width: 0%"></i></span>
								</p></li>
							<li class="item-normal"><p class="gt1">
									<a title="黑科技末日辅助胜率飙升"
										href="http://lol.qq.com/guide/page.shtml?id=20732"
										class="names" target="_blank"><i class="spr ico-arrow"></i><span>黑科技末日辅助胜率飙升</span></a>
								</p>
								<p class="gt2">2017-01-03</p>
								<p class="gt3">
									<span class="gfrom">来源：</span>不详
								</p>
								<p class="gt4">
									<span class="ghot">评分：</span><span class="sidbar"><i
										class="empt"></i><i class="upbar-green" style="width: 100%"></i></span>
								</p></li>
							<li class="item-normal"><p class="gt1">
									<a title="控到就能直接秒！这个奇葩辅助太变态"
										href="http://lol.qq.com/guide/page.shtml?id=20250"
										class="names" target="_blank"><i class="spr ico-arrow"></i><span>控到就能直接秒！这个奇葩辅助太变态</span></a>
								</p>
								<p class="gt2">2016-12-18</p>
								<p class="gt3">
									<span class="gfrom">来源：</span>15W
								</p>
								<p class="gt4">
									<span class="ghot">评分：</span><span class="sidbar"><i
										class="empt"></i><i class="upbar-green" style="width: 0%"></i></span>
								</p></li>
							<li class="item-normal"><p class="gt1">
									<a title="双重控制沉默3.5秒 末日辅助登顶胜率榜"
										href="http://lol.qq.com/guide/page.shtml?id=20155"
										class="names" target="_blank"><i class="spr ico-arrow"></i><span>双重控制沉默3.5秒
											末日辅助登顶胜率榜</span></a>
								</p>
								<p class="gt2">2016-12-15</p>
								<p class="gt3">
									<span class="gfrom">来源：</span>兔玩
								</p>
								<p class="gt4">
									<span class="ghot">评分：</span><span class="sidbar"><i
										class="empt"></i><i class="upbar-green" style="width: 80%"></i></span>
								</p></li>
							<li class="item-normal"><p class="gt1">
									<a title="99%玩家都不知道！ 新一代版本Poke王"
										href="http://lol.qq.com/guide/page.shtml?id=9464"
										class="names" target="_blank"><i class="spr ico-arrow"></i><span>99%玩家都不知道！
											新一代版本Poke王</span></a>
								</p>
								<p class="gt2">2016-08-01</p>
								<p class="gt3">
									<span class="gfrom">来源：</span>不详
								</p>
								<p class="gt4">
									<span class="ghot">评分：</span><span class="sidbar"><i
										class="empt"></i><i class="upbar-green" style="width: 0%"></i></span>
								</p></li>
							<li class="item-normal"><p class="gt1">
									<a title="劣势五杀只有他能做到！打野稻草人已然崛起"
										href="http://lol.qq.com/guide/page.shtml?id=7758"
										class="names" target="_blank"><i class="spr ico-arrow"></i><span>劣势五杀只有他能做到！打野稻草人已然崛起</span></a>
								</p>
								<p class="gt2">2016-07-13</p>
								<p class="gt3">
									<span class="gfrom">来源：</span>www.loldk.com
								</p>
								<p class="gt4">
									<span class="ghot">评分：</span><span class="sidbar"><i
										class="empt"></i><i class="upbar-green" style="width: 0%"></i></span>
								</p></li>
							<li class="item-normal"><p class="gt1">
									<a title="打野稻草人教你正确开大"
										href="http://lol.qq.com/guide/page.shtml?id=7210"
										class="names" target="_blank"><i class="spr ico-arrow"></i><span>打野稻草人教你正确开大</span></a>
								</p>
								<p class="gt2">2016-06-28</p>
								<p class="gt3">
									<span class="gfrom">来源：</span>lol.tuwan.com
								</p>
								<p class="gt4">
									<span class="ghot">评分：</span><span class="sidbar"><i
										class="empt"></i><i class="upbar-green" style="width: 0%"></i></span>
								</p></li>
						</ol>
					</div>
				</div>
			</div>

		</div>
		<!-- end mainer -->
	</div>
	<div id="setNum" data-num="8.12"
		data-link="http://lol.qq.com/webplat/info/news_version3/152/22006/m14290/201806/731275.shtml"
		data-pic="" style="display: none;"></div>


	<!-- 视频弹窗 S -->
	<div id="Video" class="pop-top-video" style="display: none">
		<div id="VideoContent">加载中...</div>
		<a href="javascript:hidDialogs()" class="pop-close">×</a>
	</div>
	<!-- 视频弹窗 E -->

	<!--<div id="footer" class="footer">-->
	<!--<div class="footer-inner layout clearfix">-->
	<!--<ul class="footer-flst">-->
	<!--<li>-->
	<!--<a target="_blank" href="http://ieg.tencent.com/" class="c4F6">腾讯互动娱乐</a><span class="f9 plr10">|</span><a target="_blank" href="http://www.qq.com/contract.shtml" class="c4F6">服务条款</a><span class="f9 plr10">|</span><a target="_blank" href="http://adver.qq.com/" class="c4F6">广告服务</a><span class="f9 plr10">|</span><a target="_blank" href="http://game.qq.com/hr/" class="c4F6">腾讯游戏招聘</a><span class="f9 plr10">|</span><a target="_blank" href="http://service.qq.com/" class="c4F6">腾讯游戏客服</a><span class="f9 plr10">|</span><a target="_blank" href="http://tgact.qq.com/?g=lol" class="c4F6">游戏活动</a><span class="f9 plr10">|</span><a target="_blank" href="http://game.qq.com/gnav/" class="c4F6">游戏地图</a><span class="f9 plr10">|</span><a target="_blank" href="http://game.qq.com/portal2010/business.htm" class="c4F6">商务合作</a><span class="f9 plr10">|</span><a target="_blank" href="http://www.qq.com/" class="c4F6">腾讯网</a><span class="f9 plr10">|</span><a target="_blank" href="http://www.qq.com/map/" class="c4F6">网站导航</a>-->
	<!--</li>-->
	<!--<li>-->
	<!--<a target="_blank" href="http://www.tencent.com/law/mo_law.shtml?/law/copyright.htm" class="c4F6">腾讯公司版权所有</a><span class="f9 plr10">|</span><a target="_blank" href="https://jiazhang.qq.com/jz/home.html?ADTAG=lol" class="c4F6">成长守护平台</a></li>-->
	<!--<li class="f9">COPYRIGHT &copy; 1998 - 2018 TENCENT. ALL RIGHTS RESERVED.</li>-->
	<!--<li class="f9">&copy; 2012 Riot Games, Inc. ALL RIGHTS RESERVED.</li>-->
	<!--<li>文网进字[2011] 004号 <span class="f9 plr10">|</span> ISBN 978-7-89989-145-2<span class="f9 plr10">|</span>新出审字[2011]310号<span class="f9 plr10">|</span><a target="_blank" class="c4F6" href="http://game.qq.com/culture2.htm-->
	<!--">新出网证（粤）字010号</a><span class="f9 plr10">|</span><a target="_blank" class="c4F6" href="http://game.qq.com/culture.htm-->
	<!--">粤网文【2017】6138-1456号</a></li>-->
	<!--</ul>-->
	<!--</div>-->
	<!--</div>-->

	<style>
.foot_dark {
	padding: 30px 0 !important;
	zoom: 1;
	color: #A5A5A5 !important;
}

.foot_dark a {
	color: #A5A5A5 !important;
}

.foot_dark a:hover {
	text-decoration: underline
}

.foot_links {
	width: 740px !important;
}

.foot_lefts {
	margin-top: 30px
}

.foot_dark .foot_ieg_logo {
	margin-top: 25px !important;
}

.logo-riot {
	width: 77px !important;
	height: 65px !important;
	background: url('//ossweb-img.qq.com/images/lol/v2/logo-riot.png');
	float: left;
	text-indent: -9999em;
	margin: 10px 0 0 10px;
	overflow: hidden;
}

.foot_cpright {
	width: 1240px;
	padding: 0 !important;
	margin: 0 auto;
	zoom: 1;
	color: #A5A5A5;
}
</style>

	<div id="gfooter" ams="152/35206/m131" age="18" dark="1" ieg-logo="1">
		<div class="foot foot_dark">
			<div class="foot_cpright">
				<div class="foot_lefts">
					<a target="_blank" href="http://ieg.tencent.com/" title="腾讯互动娱乐"
						class="foot_ieg_logo">腾讯互动娱乐</a><a target="_blank"
						href="javascript:;" title="RIOT" class="foot_left logo-riot">riot</a>
				</div>
				<ul class="foot_links">
					<li class="link_map"><a target="_blank"
						href="http://ieg.tencent.com/">腾讯互动娱乐</a><span class="f_line">|</span><a
						target="_blank" href="http://game.qq.com/contract.shtml">服务条款</a><span
						class="f_line">|</span><a target="_blank"
						href="http://privacy.qq.com/">隐私政策</a><span class="f_line">|</span><a
						target="_blank" href="http://game.qq.com/hr/">腾讯游戏招聘</a><span
						class="f_line">|</span><a target="_blank"
						href="http://service.qq.com/">腾讯游戏客服</a><span class="f_line">|</span><a
						target="_blank" href="http://game.qq.com/gnav/">游戏地图</a><span
						class="f_line">|</span><a target="_blank"
						href="http://game.qq.com/portal2010/business.htm">商务合作</a><span
						class="f_line">|</span><a target="_blank"
						href="http://www.qq.com/">腾讯网</a><span class="f_line">|</span><a
						target="_blank" href="http://www.qq.com/map/">网站导航</a></li>
					<li class="copyright_zh"><a target="_blank"
						href="http://www.tencent.com/law/mo_law.shtml?/law/copyright.htm">腾讯公司版权所有</a></li>
					<li class="copyright_en"><p class="copyright_txt">COPYRIGHT
							&#169; 1998 - 2018 TENCENT. ALL RIGHTS RESERVED.</p>
						<p class="copyright_txt">COPYRIGHT &#169; 2012 Riot Games,Inc.
							ALL RIGHTS RESERVED.</p></li>
					<li class="limit_age">本网络游戏适合18+岁的用户使用；为了您的健康，请合理控制游戏时间。</li>
					<li class="copyright_public"><a target="_blank"
						href="http://www.qq.com/culture.shtml">粤网文[2017]6138-1456号</a><span
						class="f_line">|</span><a target="_blank"
						href="http://game.qq.com/culture2.htm">新出网证（粤）字010号</a></li>
					<li class="copyright_private">批准文号：新出审字[2011]310号 <span
						class="f_line">|</span>文网进字[2011] 004号 <span class="f_line">|</span>
						出版物号：ISBN 978-7-89989-145-2<span class="f_line">|</span>全国文化市场统一举报电话：12318
					</li>
				</ul>
			</div>
		</div>
	</div>
<script>
		if (typeof (pgvMain) == 'function') {
			pgvMain();
		}
	</script>

	<!--[if !IE]>|xGv00|752b19373474918d91a3bc8cbd323ff4<![endif]-->

	<div id="popPupItem" class="poppup-item"
		style="display: none; left: 112px; top: 2365px;">
		<div id="itemFromTop">
			<div class="item-title">
				<img
					src="/3116.png"
					alt="">
				<h4>瑞莱的冰晶节杖</h4>
				<p class="cons">
					售价或合成费用：<span>915</span>
				</p>
			</div>
			<div class="item-desc">
				<stats>+300生命值<br>
				+90法术强度</stats>
				<br>
				<br>
				<unique>唯一被动：</unique>
				伤害型的法术和技能会使敌人的移动速度减少20%，持续1秒。
			</div>
		</div>
		<div id="itemFromTree" class="item-from">
			<h5>合成所需</h5>
			<div class="clearfix item-tree item-depth2">
				<div class="tree-lv">
					<img
						src="/3116.png"
						alt="瑞莱的冰晶节杖" title="瑞莱的冰晶节杖"><i class="line1"></i>
				</div>
				<div class="tree-lv" style="width: 100%">
					<i class="line0" style="width: 66.66666666666667%"></i>
					<ul>
						<li class="tree-count3"><i class="line2"></i><img
							src="/1026.png"
							alt="爆裂魔杖" title="爆裂魔杖"></li>
						<li class="tree-count3"><i class="line2"></i><img
							src="/1052.png"
							alt="增幅典籍" title="增幅典籍"></li>
						<li class="tree-count3"><i class="line2"></i><img
							src="/1028.png"
							alt="红水晶" title="红水晶"></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- 视频弹窗-->
	<div id="EggVideo" class="popupbox" style="display: none">
		<div id="EggVideoContent">加载中...</div>
		<!--<a href="javascript:hidEgg()" class="pop-close">&times;</a>-->
	</div>
<script>
		var dataEgg = {
			'time' : {
				'0' : [ '2015-12-27 00:00:00', '2015-12-29 00:00:00' ],
				'1' : [ '2015-12-29 00:00:00', '2015-12-31 00:00:00' ],
				'2' : [ '2015-12-31 00:00:00', '2016-1-2 00:00:00' ],
				'3' : [ '2016-1-2 00:00:00', '2016-1-4 00:00:00' ]
			},
			'hero' : [ 'Zed', 'Sona', 'Garen', '' ],
			'video' : [ 'r0178zbnnw9', 'g0178yqw0w5', 'q0178y9qd4q', '' ]
		};
		function timeTransform(times) {
			var timeStr = times.replace('-', ' ').replace('-', ' ').split(' ');
			return new Date(timeStr[0] + '/' + timeStr[1] + '/' + timeStr[2]
					+ ' ' + timeStr[3]).getTime();
		}
		for ( var t in dataEgg['time']) {
			for (var j = 0; j < 2; j++) {
				dataEgg['time'][t][j] = timeTransform(dataEgg['time'][t][j]);
			}
		}
		var nowtime = timeTransform(json_curdate);
		for ( var m in dataEgg['time']) {
			if (nowtime > dataEgg['time'][m][0]
					&& nowtime < dataEgg['time'][m][1]) {
				if (((/id=([a-zA-Z]+)/ig).exec(window.location.search)[1] == dataEgg['hero'][m])
						&& dataEgg['video'][m] != '') {
					showEgg(m);
				}
			}
		}

		function showEgg(o) {
			g('EggVideo').style.display = 'block';
			var video = new tvp.VideoInfo();
			video.setVid(dataEgg['video'][o]);
			var player = new tvp.Player();
			player
					.create({
						width : '100%',
						height : '100%',
						video : video,
						modId : "EggVideoContent", //mod_player是刚刚在页面添加的div容器
						autoplay : true,
						vodFlashSkin : 'http://imgcache.qq.com/minivideo_v1/vd/res/skins/TencentPlayerMiniSkin.swf',
						flashWmode : "opaque",
						onallended : function() {
							g('EggVideo').innerHTML = '';
							g('EggVideo').style.display = 'none';
						}
					});
		}

		//视频
		var insertFlash = function(elm, eleid, url, w, h) {
			if (!g(elm))
				return;
			var str = '';
			str += '<object width="'+w+'" height="'+h+'" id="'+eleid+'" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=10,0,0,0">';
			str += '<param name="movie" value="'+url+'" />';
			str += '<param value="true" name="allowFullScreen">';
			str += '<param name="allowScriptAccess" value="always" />';
			str += '<param name="wmode" value="transparent" />';
			str += '<param name="quality" value="autohigh" />';
			str += '<embed width="'+w+'" height="'+h+'" name="'+eleid+'" src="'+url+'" quality="autohigh" swLiveConnect="always" wmode="transparent" allowFullScreen="true" allowScriptAccess="always" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer"></embed>';
			str += '</object>';
			g(elm).innerHTML = str
		}, pcPlayer = function(u) {
			insertFlash("VideoContent", "v", u, 610, 376)
		}, showVideos = function(strVideoUrl) {
			if (strVideoUrl.indexOf("qq.com") != -1
					&& strVideoUrl.indexOf("=") != -1) {
				strVideoId = strVideoUrl.split("?")[1].split("vid=")[1]
						.split("&")[0];
				var video = new tvp.VideoInfo(), player;
				video.setVid(strVideoId);
				player = new tvp.Player(610, 376);
				player.setCurVideo(video);
				player
						.addParam("flashskin",
								"http://imgcache.qq.com/minivideo_v1/vd/res/skins/TencentPlayerMiniSkin.swf")
				player.addParam("extvars", {
					showend : 0,
					share : 0,
					light : 0,
					popup : 0,
					showlogo : 0,
					favorite : 0,
					searchbar : 0,
					searchpanel : 0
				})
				player.write("VideoContent");
			} else if (strVideoUrl.indexOf("youku.com") != -1) {
				var ua = navigator.userAgent.toLowerCase();
				if (ua.indexOf('ipad') > 0 || ua.indexOf('iphone') > 0
						|| ua.indexOf('ipod') > 0) {
					var regxs = [
							'http://\\w+\.youku\.com/player\.php/sid/(\\w+)/v\.swf',
							'http://\\w+\.youku\.com/.*VideoIDS=(\\w+)' ], result = [];
					for (var i = 0; i < 2; i++) {
						result = new RegExp(regxs[i], 'ig').exec(strVideoUrl);
						if (result != null)
							break;
					}
					if (result) {
						g("VideoContent").innerHTML = '<video id="yk-html5-play" width="610" height="376" controls autoplay src="http://v.youku.com/player/getRealM3U8/vid/' + result[1] + '/type//video.m3u8"></video>';
					}
				} else {
					pcPlayer(strVideoUrl)
				}
			} else {
				pcPlayer(strVideoUrl)
			}
		}, hidVod = function() {
			g("defailVodPlayer").style.display = "none";
		}, showVideosDialogs = function(key) {
			var selfdata = LOLherojs.otherthings.data[key];
			if (selfdata.buylink != "") {
				var lnk = selfdata.buylink.split("/")[5].split(".shtml")[0];
				g("defailBuy").href = selfdata.buylink
						+ "?ADTAG=cop.innercop.lol_guanwang.hero_" + lnk;
				g("defailBuy").onclick = function() {
					pgvSendClick({
						hottag : 'infodefail.link.buy.' + key
					})
				};
			} else {
				g("defailBuy").href = "javascript:alert('暂未开启，敬请期待哦！');";
				g("defailBuy").target = "_self";
			}
			g("defailVideo").onclick = function() {
				if (selfdata.vodlink != "") {
					showVideos(selfdata.vodlink);
					g("defailVodPlayer").style.display = "block";
					move("defailVodPlayer", 1, "-305", "left");
					g("defailBuy").onclick = function() {
						pgvSendClick({
							hottag : 'infodefail.link.video.' + key
						})
					};
				} else {
					alert('近期会开放视频，敬请期待哦！');
				}

			}
		},
		//end
		//皮肤
		showSkin = function() {
			var skin = LOLherojs.champion[heroid].data.skins, ids = null, names = null, nav = [], bg = [], title = [], url = 'http://ossweb-img.qq.com/images/lol/web201310/skin/';
			for (var i = 0, len = skin.length; i < len; i++) {
				ids = skin[i].id;
				names = skin[i].name;
				if (names.indexOf('default') != -1) {
					names = "默认皮肤"
				}
				;
				// loadScript(url+'small'+ids+'.jpg',function(){console.log(0);});
				nav
						.push('<li rel="_'+i+'"><a title="'+names+'"><img width="60" height="60" src="'+url+'small'+ids+'.jpg" alt="'+names+'"><span class="sbor"></span></a></li>');
				bg
						.push('<li title="'+names+'"><img src="'+url+'big'+ids+'.jpg" alt="'+names+'"></li>');
				title.push(names);
			}
			g('skinNAV').innerHTML = nav.join('');
			g('skinBG').innerHTML = bg[0];
			g('skinName').innerHTML = title[0];
			var sw = gets.tag('skinNAV', "li"), ord = 0;
			sw[0].className = "current";
			for (var j = sw.length; j--;) {
				sw[j].count = j;
				sw[j].onclick = function() {
					var simg = gets.tag('skinBG', "li");
					if (!simg[this.count]) {
						g('skinBG').innerHTML = bg.join('');
					}
					move("skinBG", this.count, 1240, "left");
					sw[ord].className = "";
					this.className = "current";
					g('skinName').innerHTML = title[this.count];
					ord = this.count;
				}
			}
		},
		//end
		//页面内容
		showInfo = {
			"Top" : function(heroid) {
				//topinfo
				var data = LOLherojs.champion[heroid].data, tg = [], tmp, inf = [];
				g("DATAnametitle").innerHTML = data.name + ' ' + data.title;
				g("DATAname").innerHTML = data.name;
				g("DATAtitle").innerHTML = data.title;
				for ( var i in data.tags) {
					tmp = data.tags[i];
					tg.push('<span>' + getTag(tmp) + '</span>');
				}
				;
				g("DATAtags").innerHTML = tg.join('');
				inf.push('<dt>物理攻击</dt><dd><i class="up up1" title="'
						+ data.info.attack + '" style="width:'
						+ data.info.attack + '0%"></i></dd>');
				inf.push('<dt>魔法攻击</dt><dd><i class="up up2" title="'
						+ data.info.magic + '" style="width:' + data.info.magic
						+ '0%"></i></dd>');
				inf.push('<dt>防御能力</dt><dd><i class="up up3" title="'
						+ data.info.defense + '" style="width:'
						+ data.info.defense + '0%"></i></dd>');
				inf.push('<dt>上手难度</dt><dd><i class="up up4" title="'
						+ data.info.difficulty + '" style="width:'
						+ data.info.difficulty + '0%"></i></dd>');
				g("DATAinfo").innerHTML = inf.join('');
				loadScript("js/herovideo.js", function() {
					showVideosDialogs(heroid);
				});
			},
			"BG" : function(heroid) {
				//背景故事
				var data = LOLherojs.champion[heroid].data;
				g("DATAlore").innerHTML = data.blurb;
				g("Hmore").style.display = "none";
				g("Gmore").onclick = function() {
					g("DATAlore").innerHTML = data.lore;
					g("Gmore").style.display = "none";
					g("Hmore").style.display = "inline";
				};
				g("Hmore").onclick = function() {
					g("DATAlore").innerHTML = data.blurb;
					g("Gmore").style.display = "inline";
					g("Hmore").style.display = "none";
				};
			},
			"Spell" : function(heroid) {
				//技能介绍
				var data = LOLherojs.champion[heroid].data, stab = [], scont = [], spe = data.spells, len = spe.length, lv = [], url, skey = [
						"Q", "W", "E", "R" ], url2 = gets.u
						+ data.passive.image.group + "/"
						+ data.passive.image.full;
				stab
						.push('<li class="current"><img src="'+url2+'" alt=""></li>');
				scont.push('<div class="skilltitle"><h5>' + data.passive.name
						+ '</h5><em>被动技能</em></div><p class="skilltip">'
						+ data.passive.description + '</p>');
				for (var i = 0, sp; i < len; i++) {
					sp = spe[i];
					url = gets.u + sp.image.group + "/" + sp.image.full;
					stab.push('<li><img src="'+url+'" alt=""></li>');
					if (!!sp.leveltip) {
						for (var k = 0, lvlen = sp.leveltip.label.length; k < lvlen; k++) {
							lv.push('<li>' + sp.leveltip.label[k] + '：'
									+ sp.leveltip.effect[k] + '</li>');
						}
						if (sp.leveltip.label.length == 1
								&& sp.leveltip.label[0] == '') {
							scont.push('<div class="skilltitle"><h5>' + sp.name
									+ '</h5><em>快捷键：' + skey[i]
									+ '</em></div><p class="skilltip">'
									+ sp.tooltip + '</p>')
						} else {
							scont.push('<div class="skilltitle"><h5>' + sp.name
									+ '</h5><em>快捷键：' + skey[i]
									+ '</em></div><p class="skilltip">'
									+ sp.tooltip + '</p><ul class="skillstat">'
									+ lv.join('') + '</ul>')
						}
					} else {
						scont.push('<div class="skilltitle"><h5>' + sp.name
								+ '</h5><em>快捷键：' + skey[i]
								+ '</em></div><p class="skilltip">'
								+ sp.tooltip + '</p>')
					}
					lv = [];
				}
				g("DATAspellsNAV").innerHTML = stab.join('');
				g("DATAspells").innerHTML = scont[0];
				var sw = gets.tag("DATAspellsNAV", "li"), ord = 0;
				for (i = 0; i < len + 1; i++) {
					sw[i].count = i;
					sw[i].onclick = function() {
						sw[ord].className = "";
						this.className = "current";
						g("DATAspells").innerHTML = scont[this.count];
						ord = this.count;
					}
				}
			},
			"Item" : function(heroid) {
				//推荐装备
				var data = LOLherojs.champion[heroid].data, itemsHtml = [], ddHtml = [], type = {
					"starting" : "起始装备",
					"essential" : "核心物品",
					"offensive" : "进攻型物品",
					"defensive" : "防御型物品"
				}, typeN = [ {
					"starting" : false,
					"essential" : false,
					"offensive" : false,
					"defensive" : false
				}, {
					"starting" : false,
					"essential" : false,
					"offensive" : false,
					"defensive" : false
				} ], typeNum = 0, blocks = data.blocks;

				for (var i = 0, lent = blocks.length; i < lent; i++) {
					if ((blocks[i].map == "1" && blocks[i].mode == "CLASSIC")
							|| (blocks[i].map == "12" && blocks[i].mode == "ARAM")) {
						if (blocks[i].map == "1" && blocks[i].mode == "CLASSIC") {
							typeNum = 0;
						}
						if (blocks[i].map == "12" && blocks[i].mode == "ARAM") {
							typeNum = 1;
						}
						var classbk = blocks[i].recommended, itemURL = gets.u
								+ "item/", items, itemID;
						for (var j = 0, ln = classbk.length - 1; j < ln; j++) {
							items = classbk[j].items;
							if (classbk[j].type == 'starting'
									|| classbk[j].type == 'essential'
									|| classbk[j].type == 'offensive'
									|| classbk[j].type == 'defensive') {
								if (!typeN[typeNum][classbk[j].type]) {
									for (var t = 0, l = items.length; t < l; t++) {
										itemID = items[t].id;
										itemsHtml
												.push('<img data-title="'+itemID+'" src="'+itemURL+itemID+'.png" alt="">');
									}
									ddHtml.push('<dt>' + type[classbk[j].type]
											+ '</dt><dd class="borlineX">'
											+ itemsHtml.join('') + '</dd>');
									itemsHtml = [];
								}
								typeN[typeNum][classbk[j].type] = true;
							}
						}
						if (blocks[i].map == "1") {
							g("infospellsTABclassBlocks").innerHTML = ddHtml
									.join('');
						} else {
							g("infospellsTABaramBlocks").innerHTML = ddHtml
									.join('');
						}
						ddHtml = [];
					}
				}
				var nobor = gets.tag("jSearchItemDiv", "dd");
				nobor[nobor.length - 1].className = "";
				nobor[3].className = "";
				JSwrap("infospellsTAB", "li", false, false, "click");
				loadScript("http://lol.qq.com/biz/hero/item.js", function() {
					showPopup("jSearchItemDiv", "img");
				});
			},
			"Skill" : function(heroid) {
				//使用技巧
				var data = LOLherojs.champion[heroid].data, atips = data.allytips, etips = data.enemytips, aTmp = [];
				for (var i = 0, l = atips.length; i < l; i++) {
					aTmp.push('<p>' + atips[i] + '</p>')
				}
				g("DATAallytips").innerHTML = '<dt>当你使用' + data.name
						+ '</dt><dd>' + aTmp.join('') + '</dd>';
				aTmp = [];
				for (var i = 0, l = etips.length; i < l; i++) {
					aTmp.push('<p>' + etips[i] + '</p>')
				}
				g("DATAenemytips").innerHTML = '<dt>敌人使用' + data.name
						+ '</dt><dd>' + aTmp.join('') + '</dd>';
			}
		};
		//运行
		var heroid = encodeReg(GetUrlParamByName("id"));

		if (!JisLetter(heroid)) {
			location.href = "/web201310/info-heros.shtml";
		} else {
			g("DATAname").innerHTML = GetUrlParamByName("id");
			loadScript("http://lol.qq.com/biz/hero/" + heroid + ".js",
					function() {
						if (LOLherojs.champion[heroid] != null) {
							showInfo.Top(heroid);
						}
					});
			need([ "biz.delayLoad" ]);
		}
	</script>
<script type="text/javascript" src="<%=path %>/ckplayer/ckplayer.js" charset="utf-8"></script>
<script type="text/javascript">
	var flashvars={
		p:0,
		e:1,
		i:'<%=path %>/videos/Fiddlesticks.JPG'
		};
	var video=['<%=path %>/videos/Fiddlesticks.mp4->video/mp4'];
	var support=['all'];
	CKobject.embedHTML5('VideoContent','ckplayer_a1',600,380,video,flashvars,support);
</script>
	<script src="<%=path %>/js/jquery-1.9.0.min.js"></script>
	<script >
		$(function(){
			$("#defailVideo").click(function(){
				$("#defailVodPlayer").show();
			});
			$("#closePlayer").click(function(){
				$("#defailVodPlayer").hide();
			});
			$("#skinNAV li").each(function(index,item){
				$(item).click(function(){
					$("#skinNAV li").removeClass("current");
					$(item).addClass("current");
					$("#skinName").text($(item).find("a").attr("title"));
					$("#skinBG").css({"left":"-"+(1240*index)+"px"});
					
				});
			});
			$("#DATAspellsNAV li").each(function(index,item){
				$(item).click(function(){
					$("#DATAspellsNAV li").removeClass("current");
					$(item).addClass("current");
				});
			});
			
		});
		
	</script>
</body>
</html>
<!--[if !IE]>|xGv00|b929139089d78693ed027af548028b05<![endif]-->