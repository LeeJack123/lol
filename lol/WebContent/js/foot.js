(function(){function m(a){return"outerHTML"in document.body||"outerHTML"in document.documentElement?a.outerHTML:document.createElement("DIV").appendChild(a.cloneNode(!0)).parentNode.innerHTML}function n(a,d){if(0<a.length){var e=document.createElement("script");e.setAttribute("src",a);document.body.appendChild(e);-1!=navigator.userAgent.indexOf("MSIE")?e.onreadystatechange=function(){this.readyState&&"loading"==this.readyState||d&&d()}:(e.onload=function(){d&&d()},e.onerror=function(){console.log("\u4f60\u7684AMS\u914d\u7f6e\u6709\u95ee\u9898\uff0c\u5bfc\u81f4\u7248\u53f7\u62c9\u53d6\u5931\u8d25");
d&&d()})}else d&&d()}function p(){for(var a=["up.qq.com"],d="//game.qq.com/contract.shtml",e=0,g=a.length;e<g;e++)if(-1!=location.href.indexOf(a[e])){d="//www.qq.com/contract.shtml";break}return d}function r(){var a=document.getElementById("gfooter").getAttribute("age")||"",d="0"==document.getElementById("gfooter").getAttribute("ieg-logo")?0:1,e=[],g="";if("undefined"!=typeof newsIndexData){for(var c=0,b=newsIndexData.length;c<b;c++)""!=decodeURIComponent(newsIndexData[c].sRedirectAddress)?e.unshift('<a target="_blank" href="'+
decodeURIComponent(newsIndexData[c].sRedirectAddress)+'"><img src="//game.gtimg.cn/images/js/2018foot/logo/icplogo.png" width="13" height="15">'+decodeURIComponent(newsIndexData[c].sTitle)+"</a>"):-1!=newsIndexData[c].sTitle.indexOf(12318)?g=decodeURIComponent(newsIndexData[c].sTitle):e.push(decodeURIComponent(newsIndexData[c].sTitle));""!=g&&e.push(g)}var f=document.getElementsByClassName("foot_left","gfooter");g=[];if(0<f.length)for(c=0,b=f.length;c<b;c++)g.push(m(f[c]));var h=document.getElementsByClassName("foot_top",
"gfooter");f=[];if(0<h.length)for(c=0,b=h.length;c<b;c++)f.push(m(h[c]));var k=document.getElementsByClassName("foot_bottom","gfooter");h=[];if(0<k.length)for(c=0,b=k.length;c<b;c++)h.push(m(k[c]));var l=document.getElementsByClassName("copyright_txt","gfooter");k=[];if(0<l.length)for(c=0,b=l.length;c<b;c++)k.push(m(l[c]));c=[];c.push('.foot{background:#fff;color:#000;font:12px/20px "\u5fae\u8f6f\u96c5\u9ed1","\u5b8b\u4f53";min-width:960px;margin:0 auto;text-align:left;}');c.push(".foot_dark{background:#000;color:#494949}");
c.push(".foot_dark a{color:#494949}");c.push(".foot_cpright{padding:15px 20px}");c.push('.foot_cpright:after{content:"\u0010";display:block;height:0;line-height:0;visibility:hidden;clear:both}');c.push(".f_line{margin:0 2px}");c.push(".foot_lefts{float:left;display:inline}");c.push(".foot_ieg_logo{float:left;width:180px;height:35px;text-indent:-999em;overflow:hidden;margin:10px 0 0 10px;background:url(//game.gtimg.cn/images/js/2018foot/logo/foot-light.png)}");c.push(".foot_dark .foot_ieg_logo{background:url(//game.gtimg.cn/images/js/2018foot/logo/foot-dark.png)}");
c.push(".foot_left{float:left;text-indent:-999em;overflow:hidden;margin:10px 0 0 10px;width:85px;height:35px;}");c.push(".foot_links{display:inline;float:right;width:682px;list-style: none;}");c.push(".foot_links li{line-height:20px;overflow:hidden;}");c.push(".foot_links .link_map{font-size:0;}");c.push(".foot_links .copyright_txt{font-size:10px;}");c.push(".foot_links .link_map span,.foot_links .link_map a{font-size:12px;color:#494949}");c.push(".foot_links  li img{vertical-align:middle;margin-right:3px;}");
b=[];l="1"==document.getElementById("gfooter").getAttribute("dark")?"foot foot_dark":"foot";b.push('<div class="'+l+'">');b.push(f.join(""));b.push('<div class="foot_cpright">');b.push('<div class="foot_lefts">');d&&b.push('<a target="_blank" href="//ieg.tencent.com/" title="\u817e\u8baf\u4e92\u52a8\u5a31\u4e50" class="foot_ieg_logo">\u817e\u8baf\u4e92\u52a8\u5a31\u4e50</a>');b.push(g.join(""));b.push("</div>");b.push('<ul class="foot_links">');b.push('<li class="link_map">');b.push('<a target="_blank" href="//ieg.tencent.com/">\u817e\u8baf\u4e92\u52a8\u5a31\u4e50</a>');
b.push('<span class="f_line">|</span>');location.href&&b.push('<a target="_blank" href="'+p()+'">\u670d\u52a1\u6761\u6b3e</a>');b.push('<span class="f_line">|</span>');b.push('<a target="_blank" href="//privacy.qq.com/">\u9690\u79c1\u653f\u7b56</a>');b.push('<span class="f_line">|</span>');b.push('<a target="_blank" href="//game.qq.com/hr/">\u817e\u8baf\u6e38\u620f\u62db\u8058</a>');b.push('<span class="f_line">|</span>');b.push('<a target="_blank" href="//service.qq.com/">\u817e\u8baf\u6e38\u620f\u5ba2\u670d</a>');
b.push('<span class="f_line">|</span>');b.push('<a target="_blank" href="//game.qq.com/gnav/">\u6e38\u620f\u5730\u56fe</a>');b.push('<span class="f_line">|</span>');b.push('<a target="_blank" href="//game.qq.com/portal2010/business.htm">\u5546\u52a1\u5408\u4f5c</a>');b.push('<span class="f_line">|</span>');b.push('<a target="_blank" href="//www.qq.com/">\u817e\u8baf\u7f51</a>');b.push('<span class="f_line">|</span>');b.push('<a target="_blank" href="//www.qq.com/map/">\u7f51\u7ad9\u5bfc\u822a</a>');
b.push("</li>");b.push('<li class="copyright_zh"><a target="_blank" href="//www.tencent.com/law/mo_law.shtml?/law/copyright.htm">\u817e\u8baf\u516c\u53f8\u7248\u6743\u6240\u6709</a></li>');b.push('<li class="copyright_en">');b.push('<p class="copyright_txt">COPYRIGHT &copy; 1998 - 2018 TENCENT. ALL RIGHTS RESERVED.</p>');b.push(k.join(""));b.push("</li>");"0"==a?b.push('<li class="limit_age">\u672c\u7f51\u7edc\u6e38\u620f\u9002\u5408\u5168\u5e74\u9f84\u7684\u7528\u6237\u4f7f\u7528\uff1b\u4e3a\u4e86\u60a8\u7684\u5065\u5eb7\uff0c\u8bf7\u5408\u7406\u63a7\u5236\u6e38\u620f\u65f6\u95f4\u3002</li>'):
""!=a&&b.push('<li class="limit_age">\u672c\u7f51\u7edc\u6e38\u620f\u9002\u5408'+a+"+\u5c81\u7684\u7528\u6237\u4f7f\u7528\uff1b\u4e3a\u4e86\u60a8\u7684\u5065\u5eb7\uff0c\u8bf7\u5408\u7406\u63a7\u5236\u6e38\u620f\u65f6\u95f4\u3002</li>");b.push('<li class="copyright_public">');b.push('<a target="_blank" href="//www.qq.com/culture.shtml">\u7ca4\u7f51\u6587[2017]6138-1456\u53f7</a>');b.push('<span class="f_line">|</span><a target="_blank" href="//game.qq.com/culture2.htm">\u65b0\u51fa\u7f51\u8bc1\uff08\u7ca4\uff09\u5b57010\u53f7</a>');
b.push("</li>");0<e.length&&(b.push('<li class="copyright_private">'),b.push(e.join('<span class="f_line">|</span>')),b.push("</li>"));b.push("</ul>");b.push("</div>");b.push(h.join(""));b.push("</div>");"createStyleSheet"in document?document.createStyleSheet().cssText=c.join(""):(a=document.createElement("style"),a.innerHTML=c.join(""),document.getElementsByTagName("head")[0].appendChild(a));document.getElementById("gfooter").innerHTML=b.join("")}function q(a){var d=document.getElementById("afooter");
if(d)if("script"==d.tagName.toLocaleLowerCase()){var e=document.createElement("div");e.id="afooter";e.innerHTML=a;d.parentNode.insertBefore(e,d);d.removeAttribute("id")}else d.innerHTML=a;else e=document.createElement("div"),e.id="afooter",e.innerHTML=a,document.getElementsByTagName("body")[0].appendChild(e)}function t(){var a=[];a.push('<div id="footer_ieg">');a.push('<div class="wrap_ieg">');a.push("<p>");a.push('<a href="//ieg.tencent.com" target="_blank">\u817e\u8baf\u4e92\u52a8\u5a31\u4e50</a>');
a.push('&nbsp;|&nbsp;<a href="'+p()+'" target="_blank">\u670d\u52a1\u6761\u6b3e</a>');a.push('&nbsp;|&nbsp;<a href="//privacy.qq.com/" target="_blank">\u9690\u79c1\u653f\u7b56</a>');a.push('&nbsp;|&nbsp;<a href="//game.qq.com/hr/" target="_blank">\u817e\u8baf\u6e38\u620f\u62db\u8058</a>');a.push('&nbsp;|&nbsp;<a href="//service.qq.com/" target="_blank">\u817e\u8baf\u6e38\u620f\u5ba2\u670d</a>');a.push('&nbsp;|&nbsp;<a href="//game.qq.com/gnav" target="_blank">\u6e38\u620f\u5730\u56fe</a>');a.push('&nbsp;|&nbsp;<a href="https://jiazhang.qq.com/jz/home.html?ADTAG=gamepcbottom" target="_blank">\u6210\u957f\u5b88\u62a4\u5e73\u53f0</a>');
a.push('&nbsp;|&nbsp;<a href="//game.qq.com/brand/business.htm" target="_blank">\u5546\u52a1\u5408\u4f5c</a>');a.push('&nbsp;|&nbsp;<a href="//www.qq.com/map/" target="_blank">\u7f51\u7ad9\u5bfc\u822a</a>');a.push("</p>");a.push('<p class="e copyright_en">COPYRIGHT &copy; 1998 \u2013 2018 TENCENT. ALL RIGHTS RESERVED.</p>');a.push('<p class="copyright_zh"><a href="//www.tencent.com/law/mo_law.shtml?/law/copyright.htm" target="_blank">\u817e\u8baf\u516c\u53f8 \u7248\u6743\u6240\u6709</a></p>');a.push("</div>");
a.push("</div>");q(a.join(""));n("//ossweb-img.qq.com/images/js/dr/dr.js")}function u(){var a=""==location.pathname.split("/m/")[0]?1:0,d=[];d.push('<footer class="foot">');d.push('<p class="copyright_en">COPYRIGHT &copy; 1998 - 2018 TENCENT.ALL RIGHTS RESERVED.</p>');d.push('<p class="copyright_zh">\u817e\u8baf\u516c\u53f8 \u7248\u6743\u6240\u6709</p>');if(a||document.getElementById("afooter")&&1==document.getElementById("afooter").getAttribute("isOs"))d.push('<p class="copyright_public">'),d.push('<a target="_blank" href="//www.qq.com/culture.shtml" style="display:inline">\u7ca4\u7f51\u6587[2017]6138-1456\u53f7</a>'),
d.push('<span style="margin:0 2px;display:inline;">|</span><a style="display:inline" target="_blank" href="//game.qq.com/culture2.htm">\u65b0\u51fa\u7f51\u8bc1\uff08\u7ca4\uff09\u5b57010\u53f7</a>'),d.push("</p>");d.push("</footer>");q(d.join(""));n("//ossweb-img.qq.com/images/js/dr/dr.js")}"getElementsByClassName"in document||(document.getElementsByClassName=function(a,d){var e=[];d=d?document.getElementById(d).getElementsByTagName("*"):document.getElementsByTagName("*");for(var f=0,c=d.length;f<
c;f++)-1!=d[f].className.indexOf(a)&&e.push(d[f]);return e});var f=navigator.userAgent;-1!=f.indexOf("iPhone")||-1!=f.indexOf("iPad")||-1!=f.indexOf("iPod")||-1!=f.indexOf("Android")?u():document.getElementById("gfooter")?(f="",document.getElementById("gfooter").getAttribute("ams")?(location.origin||(location.origin=location.protocol+"//"+location.hostname+(location.port?":"+location.port:"")),f=location.origin+"/webplat/info/news_version3/"+document.getElementById("gfooter").getAttribute("ams")+
"/index.js"):console.log("AMS\u5c5e\u6027\u672a\u8bbe\u7f6e\uff0c\u4e0d\u80fd\u6b63\u5e38\u663e\u793a\u7248\u6743\u4fe1\u606f"),n(f,r)):t();window.console=window.console||function(){var a={};a.log=a.warn=a.debug=a.info=a.error=a.time=a.dir=a.profile=a.clear=a.exception=a.trace=a.assert=function(){};return a}();console.log("\u60a8\u73b0\u5728\u6b63\u5728\u4f7f\u7528\u4e92\u5a31\u901a\u7528foot\u7ec4\u4ef6,\u6587\u6863\u8bf7\u53c2\u9605:http://tgideas.qq.com/foot/")})();