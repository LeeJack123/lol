<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>

<!DOCTYPE html>
<!-- saved from url=(0049)http://lol.qq.com/web201310/info-heros.shtml#Navi -->
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=GBK">

		<meta name="robots" content="all">
		<meta name="Copyright" content="TENCNET">
		<meta name="author" content="Tencent-TGideas">
		<meta name="keywords" content="英雄联盟,lol,league of legends,lol攻略,lol视频,lol视频攻略,lol英雄资料,lol战争学院,小仓解说视频,101战争学院,英雄">
		<meta name="description" content="英雄联盟101战争学院，推荐攻略，视频攻略，小仓解说视频">
		<title>游戏资料-英雄联盟官方网站-腾讯游戏</title>
		<!-- 设计：帅呆 | 重构：小倪 | 创建：20131028 | 团队博客：http://tgideas.qq.com -->
		<link href="<%=path %>/css/public.css" rel="stylesheet">
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
			<div id="header" class="header header-close">

				<!--TOP S-->
				<div class="top">
					<div class="top-inner layout">
						<div id="J_nav" class="main-nav-wrap">
						
						</div>

						<span id="J_searchClick" class="top-search"><i class="icon-top-search"></i></span>
						<div id="J_search" class="top-search-main" style="display: none">
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
									<img class="jUserIcon" src="http://lol.qq.com/web201310/info-heros.shtml">
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
									<img id="jUserIcon" src="<%=path%>/images/head/default.png">
								</div>
								<div class="top-user-main">
									<div class="top-user-unlogin">亲爱的召唤师，欢迎<em onclick="LW201310_Userinfo.userLogin();">登录</em></div>
									<div class="top-user-tips">登录后查看自己的战绩、资产、声望值等</div>
								</div>
								<a class="btn-user-drop" href="http://lol.qq.com/web201310/info-heros.shtml"></a>
							</div>
							<!--未登录 S-->
							<!--已登录未绑定大区 S-->
							<div class="top-user-info" style="display: none">
								<div class="top-user-side">
									<span class="user-mask"></span>
									<img class="jUserIcon" src="<%=path%>/images/head/default.png">
								</div>
								<div class="top-user-main">
									<div class="top-user-unlogin">您已登录，请
										<a href="javascript:LW201310_Userinfo.userLogin();">绑定大区</a>或
										<a href="javascript:LW201310_Userinfo.userLogout();">注销</a>
									</div>
									<div class="top-user-tips">绑定大区后查看所在大区的战绩、资产、声望值等</div>
								</div>
								<a class="btn-user-drop" href="http://lol.qq.com/web201310/info-heros.shtml"></a>
							</div>
							<!--已登录未绑定大区 E-->
							<div id="J_userDrop" class="top-user-drop" style="visibility: hidden">
								<div id="J_dropTips" class="top-user-drop-tips">登录并且绑定大区后才可查看您的具体信息哦~（包括战绩、资产、声望值等）</div>
								<div class="top-user-data-tips">官网个人信息显示略有延迟，请以游戏内数据为准</div>
								<div id="J_dropContent" class="top-user-drop-content clearfix" style="display: none">
									<div class="pic">
										<img id="J_rankPic" src="<%=path%>/images/head/default(1).png" width="110" height="110" alt="">
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
						<source src="//ossweb-img.qq.com/<%=path%>/images/head/lol/v2/banner/back-v23.webm" type="video/webm">
						<source src="//ossweb-img.qq.com/<%=path%>/images/head/lol/v2/banner/back-v23.mp4" type="video/mp4">
					</video>
					<div class="top-act">
						<h2 class="top-act-name">海潮汹涌<span>海潮汹涌</span></h2>
						<p class="top-act-desc">比尔吉沃特事件全面来袭</p>
						<a class="top-act-link" href="http://lol.qq.com/act/a20180604surging/?ADTAG=lolweb.v2.act" onclick="pgvSendClick()" target="_blank">查看详情</a>
					</div>
					<!--当前活动 E-->

					<div id="J_version" class="top-version">当前游戏版本：<em>Ver 8.11</em>
						<a class="top-version-link" href="http://lol.qq.com/webplat/info/news_version3/152/4579/4580/m3106/201806/725900.shtml?ADTAG=lolweb.v2.home" onclick="pgvSendClick()" target="_blank">版本详情</a>
					</div>

				</div>
			</div>
			<!--[if !IE]>|xGv00|937df7e904a2878909d5cd7a793c2ab8<![endif]-->
			<!-------------从这里开始写了------------------->
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
						<ul class="pagetab-list pagetab-list1">
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
						<ul id="seleteChecklist" class="selete-checklist">
							<li class="selete-item <c:if test="${hero_tag == '' }">current</c:if>"><span class="ms-radio"><i class="i"></i></span><label data-id="">所有英雄</label></li>
							<li class="selete-item <c:if test="${hero_tag == '战士' }">current</c:if>"><span class="ms-radio"><i class="i"></i></span><label data-id="Fighter">战士</label></li>
							<li class="selete-item <c:if test="${hero_tag == '法师' }">current</c:if>"><span class="ms-radio"><i class="i"></i></span><label data-id="Mage">法师</label></li>
							<li class="selete-item <c:if test="${hero_tag == '刺客' }">current</c:if>"><span class="ms-radio"><i class="i"></i></span><label data-id="Assassin">刺客</label></li>
							<li class="selete-item <c:if test="${hero_tag == '坦克' }">current</c:if>"><span class="ms-radio"><i class="i"></i></span><label data-id="Tank">坦克</label></li>
							<li class="selete-item <c:if test="${hero_tag == '射手' }">current</c:if>"><span class="ms-radio"><i class="i"></i></span><label data-id="Marksman">射手</label></li>
							<li class="selete-item <c:if test="${hero_tag == '辅助' }">current</c:if>"><span class="ms-radio"><i class="i"></i></span><label data-id="Support">辅助</label></li>
						</ul>
						
							<div class="searchbox info-searchbox">
								<input id="jSearchHeroInput" class="input-search" type="text" name="hero_chineseName" />
							</div>
						<form action="<%=path%>/hero?status=getHeroListByTag" method="post">
						<ul id="jSearchHeroDiv" class="imgtextlist">
							
							<c:forEach items="${list }" var="list">
								<li>
								<a href="<%=path %>/herodetail?status=getHeroList&hero_name=${list.hero_name }"  title="<c:out value="${list.hero_nickname }"></c:out> <c:out value="${list.hero_chineseName }" />">
									<img src="<%=path %>/images/head/<c:out value="${list.hero_name }" />.png" alt="<c:out value="${list.hero_nickname }"></c:out> <c:out value="${list.hero_chineseName }" />">
									<p>${list.hero_nickname }</p>
									<span class="sbg"><i class="commspr commico-search"></i></span></a>
							</li>	
							</c:forEach>
						</ul>
					</div>
					<!-- end 英雄列表 -->
				</div>

			</div>
			<!-- end mainer -->
			<!---------------------这里结束了,以上就是要写代码的地方------------------------>
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
	</body>
	<script src="<%=path %>/js/jquery-1.9.0.min.js"></script>
	<script>
		$(function(){
			$("#seleteChecklist li").each(function(index,item){
				$(item).click(function(){
					$("#seleteChecklist li").removeClass("current");
					$(item).addClass("current");
					//alert($(item).find("label").text());
					//console.log($(item).find("label").attr("data-id"));
					window.location.href="<%=path %>/hero?status=getHeroListByTag&hero_tag="+$(item).find("label").attr("data-id");
					
				});
			});
			$("#jSearchHeroInput").keyup(function(){
				$.ajax({
					type:"POST",
					url:"<%=path%>/hero",
					data:"status=getHeroListByText&hero_chineseName="+$("#jSearchHeroInput").val(),
					dataType:'json',
					success:function(msg){
						$("#jSearchHeroDiv").empty();
						$.each(msg,function(index,item){
							$("#jSearchHeroDiv").append("<li><a href='<%=path %>/herodetail?status=getHeroList&hero_name="+item.hero_name+"' title='"+item.hero_nickname+" "+item.hero_chineseName+"'> <img src='<%=path %>/images/head/"+item.hero_name+".png' alt='"+item.hero_nickname+""+item.hero_chineseName+"'> <p>"+item.hero_nickname+"</p> <span class='sbg'><i class='commspr commico-search'></i></span></a></li>");
						});
					 }
				});	
			});
		});
	</script>
	
</html>