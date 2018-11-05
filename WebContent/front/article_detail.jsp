<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ page import="java.sql.ResultSet"%>	
<jsp:useBean id="chStr" scope="page" class="com.tools.ChStr" />
<jsp:useBean id="conn" scope="page" class="com.tools.ConnDB" />
<%@ page import="java.sql.*"%>
  <%@ page import="com.dao.method"%>
<%@ page import="com.tools.ConnDB"%>
<%@ page import="com.model.User" %>
<%@ page import="com.model.Article" %>
<%@ page import="com.model.Reply" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>

    <% 
  
   

   String articleid= String.valueOf((Integer)session.getAttribute("articleid"));
  
 
   int artid=(Integer.parseInt(articleid));
    	 
 
    
    
    Connection connection = null;
    ResultSet resultSet = null;
    PreparedStatement pstmt = null;
     String content="";
     Date date=null;
 	connection = ConnDB.getConnection();
 	String sql1 = "SELECT * FROM t_article WHERE id=?";
 	pstmt = connection.prepareStatement(sql1);
 	pstmt.setInt(1,artid);
 	resultSet = pstmt.executeQuery();
     
   while(resultSet.next()){
   content=resultSet.getString("content");
   date=resultSet.getDate("pub_date");
   
   }
   
   
   List<Reply> reply=new ArrayList();
   method method=new method();
   reply=method.findbyArticleid(artid);
  
   
     

    %>
    
    
    
<!DOCTYPE HTML>
<html>
<head>
<title>老王个人博客 — 一个站在java开发之路上的草根程序员个人博客网站</title>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<meta name="keywords" content="个人博客,王风宇个人博客,个人博客系统,老王博客,王风宇">
<meta name="description" content="Lao王博客系统，一个站在java开发之路上的草根程序员个人博客网站。">
<LINK rel="Bookmark" href="favicon.ico" >
<LINK rel="Shortcut Icon" href="favicon.ico" />
<!--[if lt IE 9]>
<script type="text/javascript" src="/staticRes/js/html5shiv.js"></script>
<script type="text/javascript" src="/staticRes/js/respond.min.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css" href="plugin/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="plugin/Hui-iconfont/1.0.8/iconfont.min.css" />
<link rel="stylesheet" type="text/css" href="css/common.css" />
<link rel="stylesheet" type="text/css" href="plugin/pifu/pifu.css" />
<link rel="stylesheet" type="text/css" href="plugin/wangEditor/css/wangEditor.min.css">
<!--[if lt IE 9]>
<link href="/staticRes/lib/h-ui/css/H-ui.ie.css" rel="stylesheet" type="text/css" />
<![endif]-->
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } function showSide(){$('.navbar-nav').toggle();}</script>
</head>
<body>
<header class="navbar-wrapper">
    <div class="navbar navbar-fixed-top">
        <div class="container cl">
            <a class="navbar-logo hidden-xs" href="index.html">
                <img class="logo" src="img/logo.png" alt="Lao王博客" />
            </a>
            <a class="logo navbar-logo-m visible-xs" href="index.html">Lao王博客</a>
            <a aria-hidden="false" class="nav-toggle Hui-iconfont visible-xs" href="javascript:void(0);" onclick="showSide();">&#xe667;</a>
            <nav class="nav navbar-nav nav-collapse w_menu" role="navigation">
                <ul class="cl">
                    <li class="active"> <a href="index.jsp" data-hover="首页">首页</a> </li>
                    <li> <a href="about.jsp" data-hover="关于我">关于我</a> </li>
                    <li> <a href="mood.jsp" data-hover="碎言碎语">碎言碎语</a> </li>
                    <li><a href="article.jsp" data-hover="文章">文章</a></li>
                    <li> <a href="board.jsp" data-hover="留言板">发表文章</a> </li>
                </ul>
            </nav>
            <nav class="navbar-nav navbar-userbar hidden-xs hidden-sm " style="top: 0;">
                <ul class="cl">
                    <li class="userInfo dropDown dropDown_hover">
                            <!--<a href="javascript:;" ><img class="avatar radius" src="img/40.jpg" alt="丶似浅 "></a>
                            <ul class="dropDown-menu menu radius box-shadow">
                                <li><a href="/app/loginOut">退出</a></li>
                            </ul>-->
                            <a href="/app/qq" onclick="layer.msg('正在通过QQ登入', {icon:16, shade: 0.1, time:0})" ><img class="avatar size-S" src="img/qq.jpg" title="登入">登入</a>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
</header>

<!--导航条-->
<nav class="breadcrumb">
  <div class="container"> <i class="Hui-iconfont">&#xe67f;</i> <a href="index.html" class="c-primary">首页</a> <span class="c-gray en">&gt;</span>  <span class="c-gray">文章</span> <span class="c-gray en">&gt;</span>  <span class="c-gray">个人博客应该选择什么样的域名和域名后缀</span></div>
</nav>

<section class="container pt-20">
	
	<div class="row w_main_row">
				
				
				<div class="col-lg-9 col-md-9 w_main_left">
					<div class="panel panel-default  mb-20">
						<div class="panel-body pt-10 pb-10">
							<h2 class="c_titile">我的个人博客之——阿里云空间选择</h2>
							<p class="box_c"><span class="d_time">发布时间：<%=date%></span><span>编辑：<a href="mailto:wfyv@qq.com">wilco</a></span><span>阅读（88646）</span></p>
							<ul class="infos">
								  <p><%=content%></p>    

							</ul>
															
							<div class="keybq">
						    	<p><span>关键字</span>：<a class="label label-default">个人博客</a><a class="label label-default">阿里云</a><a class="label label-default">空间</a></p>    
						    </div>
							
							
							
							<div class="nextinfo">
								<p class="last">上一篇：<a href="#">免费收录网站搜索引擎登录口大全</a></p>
								<p class="next">下一篇：<a href="#">javascript显示年月日时间代码</a></p>
						    </div>
							
						</div>
					</div>
					
		<div class="panel panel-default  mb-20">
					
					
			<div class="tab-category">	
                <a href=""><strong>评论区</strong></a>
            </div>
						<div class="panel-body">
						
						
			<div class="panel-body" style="margin: 0 3%;">
                   
                    <div class="mb-20">
                    	<ul class="commentList">
                    	<%
			           for(Reply rp: reply){
                        %>	
                            <li class="item cl"> <a href="#"><i class="avatar size-L radius"><img alt="" src="http://qzapp.qlogo.cn/qzapp/101388738/1CF8425D24660DB8C3EBB76C03D95F35/100"></i></a>
                                <div class="comment-main">
                                    <header class="comment-header">
                                        <div class="comment-meta"><a class="comment-author" href="#"><%=rp.getUsername()%></a>        
                                        <time title="2014年8月31日 下午3:20" datetime="2014-08-31T03:54:20" class="f-r"><%=rp.getTime()%>></time>
                                        </div>
                                    </header>
                                    <div class="comment-body">
                                        <p><%=rp.getContent() %></p>
                                    </div>
                                </div>
                           </li>
                       <%}
                    	%>    

                        </ul>
    
                    </div>
                    
                    <div class="line"></div>
                    
                    
                    
                    
                    <!--用于评论--> 
               <center><h1>留言板</h2><br>      
                   <form action="../commentManage" method="post">
              <table border="1" bgcolor="pink">
                  <tr><td>发言人</td><td><input type="text" name="author" width="150px"></td></tr>
                  <tr><td>留言内容</td><td><textarea name="message" rows="6" cols="130"></textarea></td></tr>
                  <tr><td colspan="2"><center><input type="submit" name="submit" value="提交"></center></td></tr>
              </table>
               </form>
               </center>
                    
        

                    
       
            
   
                    
                </div>
          </div>
          
          
          
          
					</div>
				</div>
				<div class="col-lg-3 col-md-3">
					<!--热门推荐-->
  	<div class="bg-fff box-shadow radius mb-20">
			<div class="tab-category">
				<a href=""><strong>热门推荐</strong></a>
			</div>
			<div class="tab-category-item">
				<ul class="index_recd">
					<li>
						<a href="#">阻止a标签href默认跳转事件</a>
						<p class="hits"><i class="Hui-iconfont" title="点击量">&#xe622;</i> 276 </p>
					</li>
					<li >
						<a href="#">PHP面试题汇总</a>
						<p class="hits"><i class="Hui-iconfont" title="点击量">&#xe622;</i> 276 </p>
					</li>
					<li >
						<a href="#">阻止a标签href默认跳转事件</a>
						<p class="hits"><i class="Hui-iconfont" title="点击量">&#xe622;</i> 276 </p>
					</li>
					<li >
						<a href="#">阻止a标签href默认跳转事件</a>
						<p class="hits"><i class="Hui-iconfont" title="点击量">&#xe622;</i> 276 </p>
					</li>
					<li >
						<a href="#">PHP面试题汇总</a>
						<p class="hits"><i class="Hui-iconfont" title="点击量">&#xe622;</i> 276 </p>
					</li>
				</ul>
			</div>
		</div>
						
					<!--图片-->
		<div class="bg-fff box-shadow radius mb-20">
			<div class="tab-category">
				<a href=""><strong>扫我关注</strong></a>
			</div>
			<div class="tab-category-item">
				<img data-original="temp/gg.jpg" class="img-responsive lazyload" alt="响应式图片">
			</div>
		</div>
					
				</div>
			</div>
	
</section>
<footer class="footer mt-20">
		<p>Copyright &copy;2017 wfyvv.com All Rights Reserved. <br>
			<a href="http://www.miitbeian.gov.cn/" target="_blank" rel="nofollow">皖ICP备17002922号</a>  更多模板：<a href="http://www.mycodes.net/" target="_blank">源码之家</a><br>
		</p>
</footer>
<script type="text/javascript" src="plugin/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="plugin/layer/3.0/layer.js"></script>
<script type="text/javascript" src="plugin/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="plugin/pifu/pifu.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<script> $(function(){ $(window).on("scroll",backToTopFun); backToTopFun(); }); </script>
<script type="text/javascript" src="plugin/wangEditor/js/wangEditor.min.js"></script>
<script type="text/javascript">
    $(function () {
    		$("img.lazyload").lazyload({failurelimit : 3});
    	
        wangEditor.config.printLog = false;
        var editor1 = new wangEditor('textarea1');
        editor1.config.menus = ['insertcode', 'quote', 'bold', '|', 'img', 'emotion', '|', 'undo', 'fullscreen'];
        editor1.config.emotions = { 'default': { title: '老王表情', data: 'plugin/wangEditor/emotions1.data'}, 'default2': { title: '老王心情', data: 'plugin/wangEditor/emotions3.data'}, 'default3': { title: '顶一顶', data: 'plugin/wangEditor/emotions2.data'}};
        editor1.create();

        //show reply
        $(".hf").click(function () {
            pId = $(this).attr("name");
            $(this).parents(".commentList").find(".cancelReply").trigger("click");
            $(this).parent(".comment-body").append($(".comment").clone(true));
            $(this).parent(".comment-body").find(".comment").removeClass("hidden");
            $(this).hide();
        });
        //cancel reply
        $(".cancelReply").on('click',function () {
            $(this).parents(".comment-body").find(".hf").show();
            $(this).parents(".comment-body").find(".comment").remove();
        });
    });

</script>
</body>
</html>
