<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

		<meta name="robots" content="all">
		<meta name="Copyright" content="TENCNET">
		<meta name="author" content="Tencent-TGideas">
		<meta name="keywords" content="英雄联盟,lol,league of legends,lol攻略,lol视频,lol视频攻略,lol英雄资料,lol战争学院,小仓解说视频,101战争学院,英雄">
		<meta name="description" content="英雄联盟101战争学院，推荐攻略，视频攻略，小仓解说视频">
		<title>游戏资料-英雄联盟官方网站-腾讯游戏</title>
		<!-- 设计：帅呆 | 重构：小倪 | 创建：20131028 | 团队博客：http://tgideas.qq.com -->
		<link href="<%=path %>/css/public.css" rel="stylesheet">
		<style>
			 #ddv{
				border: solid 1px black;
				background: #000000;
				opacity: 0.9;
			} 
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
			
			.foot_links .link_map span,
			.foot_links .link_map a {
				font-size: 12px;
				color: #494949
			}
			
			.foot_links li img {
				vertical-align: middle;
				margin-right: 3px;
			}
		</style>
	</head>

	<body style="zoom: 1;">
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
								<li>
									<a href="http://lol.qq.com/web201310/info-heros.shtml" onclick="pgvSendClick()">游戏资料<span>GAME INFO</span></a>
								</li>
								<li>
									<a class="n" href="javascript:void(0)">商城/合作<span>STORE</span></a>
								</li>
								<li>
									<a class="n" href="javascript:void(0)">用户互动<span>COMMUNITY</span></a>
								</li>
								<li>
									<a href="http://lpl.qq.com/" onclick="pgvSendClick()" target="_blank">赛事中心<span>EVENTS</span></a>
								</li>
								<li>
									<a class="n" href="javascript:void(0)">自助系统<span>SYSTEM</span></a>
								</li>
								<!--<li><a href="/web201310/personal.shtml" onclick="pgvSendClick({hottag:'v2.nav.personal.link'})">个人中心<span>user center</span></a></li>-->
							</ul>
							<!--下拉子导航 S-->
							<div id="J_subNav" class="sub-nav">
								<ul class="sub-nav-inner">
									<li class="sub-nav-item">
										<a class="sub-nav-lnk" onclick="pgvSendClick()" href="http://lol.qq.com/web201310/newbie-what.shtml" target="_blank">新手指引</a>
										<a class="sub-nav-lnk" onclick="pgvSendClick()" href="http://lol.qq.com/web201310/info-heros.shtml" target="_blank"><i class="icon-hot"></i>资料库</a>
										<!--<a class="sub-nav-lnk" onclick="pgvSendClick({hottag:'v2.subnav.info.guides'})" href="/web201310/101/guides.shtml">战争学院</a>-->
										<a class="sub-nav-lnk" onclick="pgvSendClick()" href="http://lol.qq.com/guide/" target="_blank">攻略中心</a>
										<a class="sub-nav-lnk" onclick="pgvSendClick()" href="http://lol.qq.com/nexus/pc/" target="_blank"><i class="icon-new"></i>开发者基地</a>
										<!--<a class="sub-nav-lnk" onclick="pgvSendClick({hottag:'v2.subnav.info.rgm'})" href="/act/a20160412rgm/" target="_blank">模式实验室</a>-->
										<a class="sub-nav-lnk" onclick="pgvSendClick()" href="http://lol.qq.com/act/a20171205hextech/" target="_blank">海克斯战利品库</a>
										<a class="sub-nav-lnk" onclick="pgvSendClick()" href="http://lol.qq.com/act/a20161101pbcxym/" target="_blank">屏保下载</a>
										<a class="sub-nav-lnk" onclick="pgvSendClick()" href="http://yz.lol.qq.com/" target="_blank">宇宙官网</a>
									</li>
									<li class="sub-nav-item">
										<a class="sub-nav-lnk" onclick="pgvSendClick()" target="_blank" href="http://lol.qq.com/comm-htdocs/pay/new_index.htm?t=lol"><i class="publicspr ico-h"></i>点券充值</a>
										<a class="sub-nav-lnk" onclick="pgvSendClick()" target="_blank" href="http://daoju.qq.com/lol/">道聚城</a>
										<a class="sub-nav-lnk" onclick="pgvSendClick()" href="http://lolriotmall.qq.com/index.html?ADTAG=lol.rk.gw.top&amp;adunionsid=gwtop" target="_blank"><i class="icon-hot"></i>周边商城</a>
										<a class="sub-nav-lnk" onclick="pgvSendClick()" href="http://lol.qq.com/mvm/?ADTAG=lol.rk.gw.top" target="_blank">LOL桌游</a>
										<a class="sub-nav-lnk" onclick="pgvSendClick()" href="http://lpl.qq.com/es/act/a20170731cmb/" target="_blank">LOL信用卡</a>
										<a class="sub-nav-lnk" onclick="pgvSendClick()" href="http://cafe.qq.com/" target="_blank">网吧特权</a>
									</li>
									<li class="sub-nav-item">
										<a class="sub-nav-lnk" onclick="pgvSendClick()" href="http://kf.qq.com/product/lol.html?pc_scene=web" target="_blank">在线客服</a>
										<a class="sub-nav-lnk" onclick="pgvSendClick()" href="http://lol.qq.com/v/" target="_blank">视频中心</a>
										<!--<a class="sub-nav-lnk" onclick="pgvSendClick({hottag:'v2.subnav.user.active'})" href="/web201310/active.shtml" target="_blank"><i class="icon-hot"></i>活动中心</a>-->
										<a class="sub-nav-lnk" onclick="pgvSendClick()" target="_blank" href="http://bbs.lol.qq.com/forum.php">官方论坛</a>
										<a class="sub-nav-lnk" onclick="pgvSendClick()" href="http://lol.qq.com/act/a20160425wxlol/" target="_blank">官方微信</a>
										<a class="sub-nav-lnk" onclick="pgvSendClick()" href="http://weibo.com/lol" target="_blank">官方微博</a>
										<a class="sub-nav-lnk" onclick="pgvSendClick()" href="http://tr.lol.qq.com/" target="_blank"><i class="icon-new"></i>玩家创作馆</a>
									</li>
									<li class="sub-nav-item">
										<a class="sub-nav-lnk" onclick="pgvSendClick()" target="_blank" href="http://lpl.qq.com/es/msi/2018/"><i class="icon-hot"></i>季中冠军赛</a>
										<a class="sub-nav-lnk" onclick="pgvSendClick()" target="_blank" href="http://lpl.qq.com/es/lpl/"><i class="icon-new"></i>LPL职业联赛</a>
										<a class="sub-nav-lnk" onclick="pgvSendClick()" target="_blank" href="http://lpl.qq.com/es/ldl/">LDL发展联赛</a>
										<a class="sub-nav-lnk" onclick="pgvSendClick()" target="_blank" href="http://lpl.qq.com/es/demacia/2018/">德玛西亚杯</a>
										<a class="sub-nav-lnk" onclick="pgvSendClick()" target="_blank" href="http://lpl.qq.com/es/2017worlds/">全球总决赛</a>
										<a class="sub-nav-lnk" onclick="pgvSendClick()" target="_blank" href="http://lpl.qq.com/es/lcl/">高校联赛</a>
										<a class="sub-nav-lnk" onclick="pgvSendClick()" target="_blank" href="http://lol.qq.com/act/a20161025gxzfs/">高校自发赛</a>
									</li>
									<li class="sub-nav-item">
										<!--<li><a href="/act/a20110613icon/?ADTAG=lolweb.v2" target="_blank" onclick="pgvSendClick({hottag:'v2.sidenav.icon'})"><i class="icon-icon"></i>点亮图标</a></li>-->
										<a class="sub-nav-lnk" onclick="pgvSendClick()" target="_blank" href="http://lol.qq.com/act/a20170608transferzone/index.html?ADTAG=lolweb.v2"><i class="icon-new"></i>转区系统</a>
										<!--<a class="sub-nav-lnk" onclick="pgvSendClick({hottag:'v2.subnav.system.rs'})" target="_blank" href="/rs/">声望系统</a>-->
										<a class="sub-nav-lnk" onclick="pgvSendClick()" target="_blank" href="http://lol.qq.com/act/a20151118fh/"><i class="icon-hot"></i>封号查询</a>
										<a class="sub-nav-lnk" onclick="pgvSendClick()" target="_blank" href="http://lol.qq.com/act/a20110907exp/">体验服申请</a>
										<a class="sub-nav-lnk" onclick="pgvSendClick()" target="_blank" href="http://lol.qq.com/act/a20170728replay/">回放系统</a>
										<a class="sub-nav-lnk" onclick="pgvSendClick()" target="_blank" href="http://lol.qq.com/act/a20150326dqpd/">服务器状态查询</a>
										<a class="sub-nav-lnk" onclick="pgvSendClick()" target="_blank" href="http://lol.qq.com/act/a20171108ambient/index.html"><i class="icon-new"></i>秩序殿堂</a>
										<a class="sub-nav-lnk" onclick="pgvSendClick()" target="_blank" href="http://lol.qq.com/act/a20170704super/index.shtml?e_code=336975"><i class="icon-new"></i>峡谷之巅</a>
									</li>
								</ul>

							</div>
							<!--下拉子导航 E-->
						</div>

						<span id="J_searchClick" class="top-search"><i class="icon-top-search"></i></span>
						<div id="J_search" class="top-search-main" style="display: block">
							<div class="top-search-inner">
								<i class="icon-search-inner"></i>
								<input class="input-search-box" type="text" value="" placeholder="搜索 lol.qq.com" id="J_searchText">
								<span id="J_searchTips" class="input-search-tips">按下回车键进行搜索</span>
								<span id="J_searchClose" class="top-search-close" title="关闭搜索系统"></span>
							</div>
							<div class="top-search-quick" id="J_searchShortcut">
								<h5 class="search-quick-title">快速链接</h5>
								<a href="http://lol.qq.com/act/a20160624search/index.html?&amp;searchType=news&amp;word=%E5%85%A8%E7%90%83%E6%80%BB%E5%86%B3%E8%B5%9B" target="_blank">全球总决赛</a>
								<a href="http://lol.qq.com/act/a20160624search/index.html?&amp;searchType=news&amp;word=%E6%96%B0%E7%9A%AE%E8%82%A4" target="_blank">新皮肤</a>
								<a href="http://lol.qq.com/act/a20160624search/index.html?&amp;searchType=news&amp;word=SKT" target="_blank">SKT</a>
								<a href="http://lol.qq.com/act/a20160624search/index.html?&amp;searchType=news&amp;word=%E5%AD%A3%E5%89%8D%E8%B5%9B" target="_blank">季前赛</a>
								<a href="http://lol.qq.com/act/a20160624search/index.html?&amp;searchType=news&amp;word=%E5%A5%A5%E6%81%A9" target="_blank">奥恩</a>
							</div>
						</div>
						<!--<a class="top-search" href="/act/a20160624search/" onclick="pgvSendClick({hottag:'v2.nav.search'})"  target="_blank" title="前往英雄联盟搜索系统"><i class="icon-top-search"></i></a>-->
						<a class="top-app" href="http://lol.qq.com/app/" target="_blank" title="前往掌上英雄联盟官网"><i class="icon-top-app"></i></a>
						<div id="J_topUser" class="top-user">
							<!--已登录已绑定大区 S-->
							<div id="J_userHover" class="top-user-info" style="display: none">
								<div class="top-user-side">
									<span class="user-mask"></span>
									<img class="jUserIcon" src="http://lol.qq.com/web201310/info-item.shtml">
									<span id="J_userRankNo" class="top-user-rank">30</span>
								</div>
								<div class="top-user-main">
									<h5 class="top-user-name" id="jUserName"></h5>
									<div class="top-user-area">
										<a class="link-switch-area" href="javascript:LW201310_Userinfo.userLogin();" id="jUserArea"></a>
										<a class="link-loginout" href="javascript:LW201310_Userinfo.userLogout();">注销</a>
									</div>
								</div>
							</div>
							<!--已登录已绑定大区 E-->
							<!--未登录 S-->
							<div class="top-user-info" style="">
								<div class="top-user-side">
									<span class="user-mask"></span>
									<img id="jUserIcon" src="images/goods/default.png">
								</div>
								<div class="top-user-main">
									<div class="top-user-unlogin">亲爱的召唤师，欢迎<em onclick="LW201310_Userinfo.userLogin();">登录</em></div>
									<div class="top-user-tips">登录后查看自己的战绩、资产、声望值等</div>
								</div>
								<a class="btn-user-drop" href="http://lol.qq.com/web201310/info-item.shtml"></a>
							</div>
							<!--未登录 S-->
							<!--已登录未绑定大区 S-->
							<div class="top-user-info" style="display: none">
								<div class="top-user-side">
									<span class="user-mask"></span>
									<img class="jUserIcon" src="images/goods/default.png">
								</div>
								<div class="top-user-main">
									<div class="top-user-unlogin">您已登录，请
										<a href="javascript:LW201310_Userinfo.userLogin();">绑定大区</a>或
										<a href="javascript:LW201310_Userinfo.userLogout();">注销</a>
									</div>
									<div class="top-user-tips">绑定大区后查看所在大区的战绩、资产、声望值等</div>
								</div>
								<a class="btn-user-drop" href="http://lol.qq.com/web201310/info-item.shtml"></a>
							</div>
							<!--已登录未绑定大区 E-->
							<div id="J_userDrop" class="top-user-drop" style="visibility: hidden">
								<div id="J_dropTips" class="top-user-drop-tips">登录并且绑定大区后才可查看您的具体信息哦~（包括战绩、资产、声望值等）</div>
								<div class="top-user-data-tips">官网个人信息显示略有延迟，请以游戏内数据为准</div>
								<div id="J_dropContent" class="top-user-drop-content clearfix" style="display: none">
									<div class="pic">
										<img id="J_rankPic" src="images/goods/default(1).png" width="110" height="110" alt="">
										<em id="jUserRank">暂无</em>段位
									</div>
									<div class="info">
										<div class="top-user-item"><strong id="jUserGames">0</strong>总场数</div>
										<div class="top-user-item"><strong id="jUserRP">0</strong>点券</div>
										<div class="top-user-item"><strong id="jUserIP">0</strong>蓝色精粹</div>
										<div class="top-user-item"><strong id="jUserRS">0</strong>声望值</div>
									</div>
								</div>
								<a class="top-link-personal" href="http://lol.qq.com/act/a20180411personal/index.shtml" target="_blank">进入个人中心</a>
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
					<video class="top-back-video" id="topBackVideo" autoplay="" loop="">
						<source src="//ossweb-img.qq.com/images/lol/v2/banner/back-v23.webm" type="video/webm">
						<source src="//ossweb-img.qq.com/images/lol/v2/banner/back-v23.mp4" type="video/mp4">
					</video>
					<div class="top-act">
						<h2 class="top-act-name">海潮汹涌<span>海潮汹涌</span></h2>
						<p class="top-act-desc">比尔吉沃特事件全面来袭</p>
						<!--<div class="top-act-video">-->
						<!--<video class="top-small-video" id="topSmallVideo" autoplay loop>-->
						<!--<source src="//ossweb-img.qq.com/images/lol/v2/banner/small-v9.webm" type="video/webm">-->
						<!--<source src="//ossweb-img.qq.com/images/lol/v2/banner/small-v9.mp4" type="video/mp4">-->
						<!--</video>-->
						<!--<a id="J_play" class="btn-top-play" href="javascript:void(0)"><i class="icon-top-play"></i></a>-->
						<!--</div>-->
						<a class="top-act-link" href="http://lol.qq.com/act/a20180604surging/?ADTAG=lolweb.v2.act" onclick="pgvSendClick()" target="_blank">查看详情</a>
					</div>
					<!--当前活动 E-->

					<div id="J_version" class="top-version">当前游戏版本：<em>Ver 8.11</em>
						<a class="top-version-link" href="http://lol.qq.com/webplat/info/news_version3/152/4579/4580/m3106/201806/725900.shtml?ADTAG=lolweb.v2.home" onclick="pgvSendClick()" target="_blank">版本详情</a>
					</div>

				</div>
			</div>
			<!--[if !IE]>|xGv00|937df7e904a2878909d5cd7a793c2ab8<![endif]-->
			<div class="layout mainer">
				<div id="Navi" class="navi">
					<i class="commspr commico-crumbs"></i>
					<a href="http://lol.qq.com/main.shtml">英雄联盟首页</a>
					<i class="commspr commico-rrow"></i>
					<a href="http://lol.qq.com/web201310/info-heros.shtml#Navi">游戏资料</a>
					<i class="commspr commico-rrow"></i>
					<span>英雄</span>
				</div>

				<div class="colbox">
					<div id="pageTAB" class="pagetab">
						<ul class="pagetab-list pagetab-list2">
							<li class="p-list1">
								<a class="pagetab-list-lnk" href="<%=path%>/hero?status=getHeroList">英雄</a>
							</li>
							<li class="p-list2">
								<a class="pagetab-list-lnk" href="<%=path%>/goods?status=query">物品</a>
							</li>
							<li class="p-list3">
								<a class="pagetab-list-lnk" href="<%=path%>/skills">召唤师技能</a>
							</li>
							<li class="p-list4">
								<a class="pagetab-list-lnk" href="http://lol.qq.com/web201310/info-rune.shtml#Navi">符文</a>
							</li>
						</ul>
					</div>

					<!-- 英雄列表 -->
					<div class="clearfix info-showbox">
						<ul id="seleteCheckItem" class="selete-checklist">
							<li data-item="" class="selete-item current"><span class="ms-radio"><i class="i"></i></span><label>所有物品</label></li>
							<li data-item="defense" class="selete-item"><span class="ms-radio"><i class="i"></i></span><label>防御类</label></li>
							<li data-item="attack" class="selete-item"><span class="ms-radio"><i class="i"></i></span><label>攻击类</label></li>
							<li data-item="magic" class="selete-item"><span class="ms-radio"><i class="i"></i></span><label>法术类</label></li>
							<li data-item="movement" class="selete-item"><span class="ms-radio"><i class="i"></i></span><label>移动速度</label></li>
							<li data-item="consumable" class="selete-item"><span class="ms-radio"><i class="i"></i></span><label>消耗品</label></li>
						</ul>
						<div class="searchbox info-searchbox">
							<input id="jSearchItemInput" class="input-search" type="text" name="goods_name" placeholder="请输入您要搜索的物品名">
							<span class="publicspr tnd btn-search">搜索</span>
						</div>
						<div id="seleteCheckItemSec" class="colbox selete-seccheck" style="display:none">
							<span class="commspr commico-corner sbg sbgmove1"></span>
							<ul id="seleteCheckList" class="selete-checklist">
								<li>
								</li>
							</ul>
						</div>
						<ul id="jSearchItemDiv" class="imgtextlist">
							<c:forEach items="${list }" var="list">
								<li id="${list.goods_id }" data-title="${list.goods_head }" namep="${list.goods_name }" headp="${list.goods_head }" pricep="${list.goods_price }" contentp="${list.goods_content }" lifevaluep="${list.goods_lifevalue }" liferegenerationp="${list.goods_liferegeneration }" armorp="${list.goods_armor }" magicresistancep="${list.goods_magicresistance }" vampirep="${list.goods_vampire }" critp="${list.goods_crit }" attackratep="${list.goods_attackrate }" damagep="${list.goods_damage }" manap="${list.goods_mana }" spellpowerp="${list.goods_spellpower }" cdp="${list.goods_cd }" manaregenerationp="${list.goods_manaregeneration }" class=""><img src="<%=path %>/images/goods/${list.goods_head }.png" alt="">
								<p>${list.goods_name }</p>
								<span class="sbg"><i class="commspr commico-search"></i></span></li>
							</c:forEach>
						</ul>
						<!-- <li><img src="http://ossweb-img.qq.com/images/lol/web201310/101/tmp/tmp-user.jpg" alt=""><p>稻草人</p><span class="sbg"><i class="commspr commico-search"></i></span></li> -->
					</div>
					<!-- end 英雄列表 -->
				</div>

			</div>
			<!-- end mainer -->
		</div>
		<div id="popPupItem" class="poppup-item" style="display: none; left: 540px; top: 860px;">
			<div id="itemFromTop">
				<div class="item-title"><img src="images/goods/1052.png" alt="">
					<h4>增幅典籍</h4>
					<p class="cons">售价或合成费用：<span>435</span></p>
				</div>
				<div class="item-desc">
					<stats>+20法术强度</stats>
				</div>
			</div>
			<div id="itemFromTree" class="item-from"></div>
		</div>
		<div id="setNum" data-num="8.11" data-link="http://lol.qq.com/webplat/info/news_version3/152/4579/4580/m3106/201806/725900.shtml?ADTAG=lolweb.v2.home" data-pic="" style="display:none;"></div>

		<!-- 视频弹窗 S -->
		<div id="Video" class="pop-top-video" style="display:none">
			<div id="VideoContent">加载中...</div>
			<a href="javascript:hidDialogs()" class="pop-close">×</a>
		</div>

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
						<a target="_blank" href="http://ieg.tencent.com/" title="腾讯互动娱乐" class="foot_ieg_logo">腾讯互动娱乐</a>
						<a target="_blank" href="javascript:;" title="RIOT" class="foot_left logo-riot">riot</a>
					</div>
					<ul class="foot_links">
						<li class="link_map">
							<a target="_blank" href="http://ieg.tencent.com/">腾讯互动娱乐</a><span class="f_line">|</span>
							<a target="_blank" href="http://game.qq.com/contract.shtml">服务条款</a><span class="f_line">|</span>
							<a target="_blank" href="http://privacy.qq.com/">隐私政策</a><span class="f_line">|</span>
							<a target="_blank" href="http://game.qq.com/hr/">腾讯游戏招聘</a><span class="f_line">|</span>
							<a target="_blank" href="http://service.qq.com/">腾讯游戏客服</a><span class="f_line">|</span>
							<a target="_blank" href="http://game.qq.com/gnav/">游戏地图</a><span class="f_line">|</span>
							<a target="_blank" href="http://game.qq.com/portal2010/business.htm">商务合作</a><span class="f_line">|</span>
							<a target="_blank" href="http://www.qq.com/">腾讯网</a><span class="f_line">|</span>
							<a target="_blank" href="http://www.qq.com/map/">网站导航</a>
						</li>
						<li class="copyright_zh">
							<a target="_blank" href="http://www.tencent.com/law/mo_law.shtml?/law/copyright.htm">腾讯公司版权所有</a>
						</li>
						<li class="copyright_en">
							<p class="copyright_txt">COPYRIGHT &#169; 1998 - 2018 TENCENT. ALL RIGHTS RESERVED.</p>
							<p class="copyright_txt">COPYRIGHT &#169; 2012 Riot Games,Inc. ALL RIGHTS RESERVED.</p>
						</li>
						<li class="limit_age">本网络游戏适合18+岁的用户使用；为了您的健康，请合理控制游戏时间。</li>
						<li class="copyright_public">
							<a target="_blank" href="http://www.qq.com/culture.shtml">粤网文[2017]6138-1456号</a><span class="f_line">|</span>
							<a target="_blank" href="http://game.qq.com/culture2.htm">新出网证（粤）字010号</a>
						</li>
						<li class="copyright_private">批准文号：新出审字[2011]310号 <span class="f_line">|</span>文网进字[2011] 004号 <span class="f_line">|</span> 出版物号：ISBN 978-7-89989-145-2<span class="f_line">|</span>全国文化市场统一举报电话：12318 </li>
					</ul>
				</div>
			</div>
		</div>
		<div id="ddv" class="poppup-item" style="position: absolute;width: 400px;height: 300px;z-index: 1000;"></div>
		<script src="<%=path %>/js/jquery-1.9.0.min.js" type="text/javascript" charset="utf-8"></script>
		<script>
			$(function(){
				$("#seleteCheckItem li").each(function(index,item){
					$(item).click(function(){
						if(index>=1 && index<4){
							$("#seleteCheckItemSec").show();
						}else{
							$("#seleteCheckItemSec").hide();
						}
						$("#seleteCheckItem li").removeClass("current");
						$(item).addClass("current");
						$("#seleteCheckItemSec span").removeClass();
						$("#seleteCheckItemSec span").addClass("commspr commico-corner sbg sbgmove"+index+"");
						$.ajax({
							type:"POST",
							url:"<%=path%>/goods",
							async:false,
							data:"status=getGoodsListByTag&goods_tag="+$(item).attr("data-item"),
							dataType:'json',
							success:function(msg){
								$("#seleteCheckList").empty();		
								$.each(msg,function(index,item){
									$("#seleteCheckList").append("<li id='ol"+index+"' class='selete-item '><span class='ms-radio'><i class='i'></i></span><label data-item='"+item.data+"'>"+item.text+"</label></li>");
									$("#ol"+index+"").click(function(){
										$("#seleteCheckList li").removeClass("current");
										$("#ol"+index+"").addClass("current");
										$.ajax({
											type:"POST",
											url:"<%=path%>/goods",
											async:false,
											data:"status=getGoodsListByTagOne&goods_tag="+$("#ol"+index+"").find("label").attr("data-item"),
											dataType:'json',
											success:function(msg){
												$("#jSearchItemDiv").empty();
												$.each(msg,function(index1,item1){	
													$("#jSearchItemDiv").append("<li id='"+item1.id+"' onmouseover='jin("+item1.id+",\""+item1.name+"\","+item1.head+","+item1.price+",\""+item1.content+"\","+item1.lifevalue+","+item1.liferegeneration+","+item1.armor+","+item1.magicresistance+","+item1.vampire+","+item1.crit+","+item1.attackrate+","+item1.damage+","+item1.mana+","+item1.spellpower+","+item1.cd+","+item1.manaregeneration+")' onmouseout='chu("+item1.id+")' onmousemove='dong(event)' data-title='"+item1.head+"' class=''><img src='<%=path %>/images/goods/"+item1.head+".png' alt=''><p>"+item1.name+"</p><span class='sbg'><i class='commspr commico-search'></i></span></li>");
												});
											 }
										});
									});
								});
							 }
						})
						$.ajax({
							type:"POST",
							url:"<%=path%>/goods",
							async:false,
							data:"status=getGoodsListByTagOne&goods_tag="+$(item).attr("data-item"),
							dataType:'json',
							success:function(msg){
								$("#jSearchItemDiv").empty();
								$.each(msg,function(index,item){
									$("#jSearchItemDiv").append("<li id='"+item.id+"' onmouseover='jin("+item.id+",\""+item.name+"\","+item.head+","+item.price+",\""+item.content+"\","+item.lifevalue+","+item.liferegeneration+","+item.armor+","+item.magicresistance+","+item.vampire+","+item.crit+","+item.attackrate+","+item.damage+","+item.mana+","+item.spellpower+","+item.cd+","+item.manaregeneration+")' onmouseout='chu("+item.id+")' onmousemove='dong(event)' data-title='"+item.head+"' class=''><img src='<%=path %>/images/goods/"+item.head+".png' alt=''><p>"+item.name+"</p><span class='sbg'><i class='commspr commico-search'></i></span></li>");
									
								});
							 }
						});
					});
				});
				$("#jSearchItemDiv li").each(function(index,item){
					$(item).mouseover(function(event){
						console.log($("#"+item.id+"").attr("contentp"));
						$("#ddv").show();
						$("#"+item.id+"").addClass("current");
						$("#ddv").html("<div class='item-title'><img src='<%=path %>/images/goods/"+$("#"+item.id+"").attr("headp")+".png' /><h4>"+$("#"+item.id+"").attr("namep")+"</h4><p class='cons'>售价或合成费用：<span>"+$("#"+item.id+"").attr("pricep")+"</span></p></div> <div class='item-desc'><stats><p id='lifevalue' style='display:none;'>+"+$("#"+item.id+"").attr("lifevaluep")+"生命值</p><p id='liferegeneration' style='display:none;'>+"+$("#"+item.id+"").attr("liferegenerationp")+"%基础生命回复</p><p id='armor' style='display:none;'>+"+$("#"+item.id+"").attr("armorp")+"护甲</p><p id='magicresistance' style='display:none;'>+"+$("#"+item.id+"").attr("magicresistancep")+"魔法抗性</p><p id='vampire' style='display:none;'>+"+$("#"+item.id+"").attr("vampirep")+"%生命偷取</p><p id='crit' style='display:none;'>+"+$("#"+item.id+"").attr("critp")+"%暴击几率</p><p id='attackrate' style='display:none;'>+"+$("#"+item.id+"").attr("attackratep")+"%攻击速度</p><p id='damage' style='display:none;'>+"+$("#"+item.id+"").attr("damagep")+"攻击力</p><p id='mana' style='display:none;'>+"+$("#"+item.id+"").attr("manap")+"法力值</p><p id='spellpower' style='display:none;'>+"+$("#"+item.id+"").attr("spellpowerp")+"法术强度</p><p id='cd' style='display:none;'>+"+$("#"+item.id+"").attr("cdp")+"%冷却缩减</p><p id='manaregeneration' style='display:none;'>+"+$("#"+item.id+"").attr("manaregenerationp")+"%基础法力回复</p></stats><br><br><unique>"+$("#"+item.id+"").attr("contentp")+"</unique></div> ");
						if($("#"+item.id+"").attr("lifevaluep") > 0){
							$("#lifevalue").show();
						}
						if($("#"+item.id+"").attr("liferegenerationp") > 0){
							$("#liferegeneration").show();
						}
						if($("#"+item.id+"").attr("armorp") > 0){
							$("#armor").show();
						}
						if($("#"+item.id+"").attr("magicresistancep") > 0){
							$("#magicresistance").show();
						}
						if($("#"+item.id+"").attr("vampirep") > 0){
							$("#vampire").show();
						}
						if($("#"+item.id+"").attr("critp") > 0){
							$("#crit").show();
						}
						if($("#"+item.id+"").attr("attackratep") > 0){
							$("#attackrate").show();
						}
						if($("#"+item.id+"").attr("damagep") > 0){
							$("#damage").show();
						}
						if($("#"+item.id+"").attr("manap") > 0){
							$("#mana").show();
						}
						if($("#"+item.id+"").attr("spellpowerp") > 0){
							$("#spellpower").show();
						}
						if($("#"+item.id+"").attr("cdp") > 0){
							$("#cd").show();
						}
						if($("#"+item.id+"").attr("manaregenerationp") > 0){
							$("#manaregeneration").show();
						}
					});
					$(item).mouseout(function(event){
						$("#"+item.id+"").removeClass("current");
						$("#ddv").hide();
					});
					
					$(item).mousemove(function(event){
						//console.log(event.pageX);//获得当前鼠标位置,x轴
						//console.log(event.pageY);//获得当前鼠标位置,y轴
						$("#ddv").css("top",event.pageY+20);
						$("#ddv").css("left",event.pageX+20);
					});
				});
				
				
			});
			function jin(id,name,head,price,content,lifevalue,liferegeneration,armor,magicresistance,vampire,crit,attackrate,damage,mana,spellpower,cd,manaregeneration){
				$("#"+id+"").addClass("current");
				$("#ddv").show();
				$("#ddv").html("<div class='item-title'><img src='<%=path %>/images/goods/"+head+".png' /><h4>"+name+"</h4><p class='cons'>售价或合成费用：<span>"+price+"</span></p></div> <div class='item-desc'><stats><p id='lifevalue' style='display:none;'>+"+lifevalue+"生命值</p><p id='liferegeneration' style='display:none;'>+"+liferegeneration+"%基础生命回复</p><p id='armor' style='display:none;'>+"+armor+"护甲</p><p id='magicresistance' style='display:none;'>+"+magicresistance+"魔法抗性</p><p id='vampire' style='display:none;'>+"+vampire+"%生命偷取</p><p id='crit' style='display:none;'>+"+crit+"%暴击几率</p><p id='attackrate' style='display:none;'>+"+attackrate+"%攻击速度</p><p id='damage' style='display:none;'>+"+damage+"攻击力</p><p id='mana' style='display:none;'>+"+mana+"法力值</p><p id='spellpower' style='display:none;'>+"+spellpower+"法术强度</p><p id='cd' style='display:none;'>+"+cd+"%冷却缩减</p><p id='manaregeneration' style='display:none;'>+"+manaregeneration+"%基础法力回复</p></stats><br><br><unique>"+content+"</unique></div> ");
				if(lifevalue > 0){
					$("#lifevalue").show();
				}
				if(liferegeneration > 0){
					$("#liferegeneration").show();
				}
				if(armor > 0){
					$("#armor").show();
				}
				if(magicresistance > 0){
					$("#magicresistance").show();
				}
				if(vampire > 0){
					$("#vampire").show();
				}
				if(crit > 0){
					$("#crit").show();
				}
				if(attackrate > 0){
					$("#attackrate").show();
				}
				if(damage > 0){
					$("#damage").show();
				}
				if(mana > 0){
					$("#mana").show();
				}
				if(spellpower > 0){
					$("#spellpower").show();
				}
				if(cd > 0){
					$("#cd").show();
				}
				if(manaregeneration > 0){
					$("#manaregeneration").show();
				}
			}
			function chu(id){
				$("#"+id+"").removeClass("current");
				$("#ddv").hide();
			}
			function dong(event){
				$("#ddv").css("top",event.pageY+20);
				$("#ddv").css("left",event.pageX+20);
			}
			$("#jSearchItemInput").keyup(function(){
				$.ajax({
					type:"POST",
					url:"<%=path%>/goods",
					data:"status=getGoodsListBySearch&goods_name="+$("#jSearchItemInput").val(),
					dataType:'json',
					success:function(msg){
						$("#jSearchItemDiv").empty();
						$.each(msg,function(index,item){
							$("#jSearchItemDiv").append("<li id='"+item.id+"' onmouseover='jin("+item.id+",\""+item.name+"\","+item.head+","+item.price+",\""+item.content+"\","+item.lifevalue+","+item.liferegeneration+","+item.armor+","+item.magicresistance+","+item.vampire+","+item.crit+","+item.attackrate+","+item.damage+","+item.mana+","+item.spellpower+","+item.cd+","+item.manaregeneration+")' onmouseout='chu("+item.id+")' onmousemove='dong(event)' data-title='"+item.head+"' class=''><img src='<%=path %>/images/goods/"+item.head+".png' alt=''><p>"+item.name+"</p><span class='sbg'><i class='commspr commico-search'></i></span></li>");
						});	
					}
				});
			});
		</script>

	</body>
	
</html>