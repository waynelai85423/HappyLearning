<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" type="image/x-icon" href="images/smalllogo.png" />
<link href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Lato:300,300i,400,400i,700,700i&display=swap" rel="stylesheet">
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/owl.carousel.min.css">
<link rel="stylesheet" href="assets/css/animate.min.css">
<link rel="stylesheet" href="assets/css/jquery-ui.css">
<link rel="stylesheet" href="assets/css/slick.css">
<link rel="stylesheet" href="assets/css/chosen.min.css">
<link rel="stylesheet" href="assets/css/pe-icon-7-stroke.css">
<link rel="stylesheet" href="assets/css/magnific-popup.min.css">
<link rel="stylesheet" href="assets/css/lightbox.min.css">
<link rel="stylesheet" href="assets/js/fancybox/source/jquery.fancybox.css">
<link rel="stylesheet" href="assets/css/jquery.scrollbar.min.css">
<link rel="stylesheet" href="assets/css/mobile-menu.css">
<link rel="stylesheet" href="assets/fonts/flaticon/flaticon.css">
<link rel="stylesheet" href="css/style.css">

<style>
.main-header1 {
	height: 50px;
	padding: 50px 0
}

.font{
   font-size: 1.2em;
   font-weight: bold;
}
</style>
<title>Header</title>
<%request.getServletContext().setAttribute("PATH", request.getContextPath()); %>
<script>
	function myFunction() {
		$.getJSON("cart/cartCount", function(data) {
			$("#msg").html(data);
		});
		if("${sessionScope.user}" == ""){
			$("#msg").html(0);
		}
	}
</script>
</head>

<body onload="myFunction()" class="home">
	<header class="header style7">
		<div class="top-bar">
			<div class="container">
				<div class="top-bar-left">
					<div class="header-message font">Welcome ! 歡迎來到好學生學習平台</div>
				</div>
				<div class="top-bar-right">
					<div class="header-language"></div>
					<c:choose>
						<c:when test="${sessionScope.user == null }">

							<ul class="header-user-links">
								<li class="font"><a href="login.controller" id="btn">登入</a> | <a
									href="register.controller">註冊</a></li>
								<li></li>
							</ul>
						</c:when>
						
						<c:when test="${sessionScope.user.status == 4 }">

							<ul class="header-user-links">
								<c:if test="${sessionScope.user.nick == null}">

								</c:if>
								<li  class="font"><a href="#"><b>${sessionScope.user.nick}(審核中)</b></a> |
									<a href="logout">登出</a></li>

								<li></li>
							</ul>
						</c:when>

						<c:when test="${sessionScope.user.status == 1 }">

							<ul class="header-user-links">
								<c:if test="${sessionScope.user.nick == null}">

								</c:if>

								<li  class="font"><a href="#"><b>${sessionScope.user.nick}(學生)</b></a> |
									<a href="logout">登出</a></li>

								<li></li>
							</ul>
						</c:when>
						
						<c:when test="${sessionScope.user.status == 2 }">

							<ul class="header-user-links">

								<li  class="font"><a href="#"><b>${sessionScope.user.nick}(老師)</b></a> |
									<a href="logout">登出</a></li>

								<li></li>
							</ul>
						</c:when>

						<c:otherwise>
							<c:if test="${sessionScope.user.status == 3}">
								<ul class="header-user-links">

									<li  class="font"><a href="#"><b>${sessionScope.user.nick}(管理員)</b></a>
										| <a href="logout">登出</a></li>

									<li></li>
								</ul>

							</c:if>
							<%-- 							<c:if test="${sessionScope.user.status != 3}"> --%>
							<!-- 								<ul class="header-user-links"> -->
							<%-- 								<c:when test="${sessionScope.user.nick == null}"> --%>
							<!-- 								<li><a href=""><b>歡迎~</b></a> | <a -->
							<!-- 										onclick="if( !(confirm('確認登出?') ) ) return false" -->
							<!-- 										href="logout.controller">登出</a></li> -->
							<!-- 									<li></li> -->

							<%-- 								</c:when> --%>
							<%-- 								<c:otherwise> --%>

							<%-- 									<li><a href=""><b>${sessionScope.user.nick}</b></a> | <a --%>
							<!-- 										onclick="if( !(confirm('確認登出?') ) ) return false" -->
							<!-- 										href="logout.controller">登出</a></li> -->
							<!-- 									<li></li> -->
							<%--        							</c:otherwise> --%>
							<!-- 								</ul> -->
							<%-- 							</c:if> --%>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>

		<div class="container">
			<div class="main-header1">
				<div class="row1">
					<div
						class="col-lg-3 col-sm-4 col-md-3 col-xs-7 col-ts-12 header-element">
						<div class="logo">
							<a href="Index"><img src="assets/images/log.png" alt="img"
								width="175px" height="150px"></a>
						</div>
					</div>
					<div class="col-lg-7 col-sm-8 col-md-6 col-xs-5 col-ts-12">
						<div class="block-search-block"></div>
					</div>
					<div class="col-lg-2 col-sm-12 col-md-3 col-xs-12 col-ts-12">
						<div class="header-control">
							<div class="block-minicart teamo-mini-cart block-header ">

								<a href="cart" class="shopcart-icon" data-teamo="teamo-dropdown">Cart
									<span class="count" id="msg"></span>
								</a>
								<div class="shopcart-description teamo-submenu">
									<div class="content-wrap"></div>
								</div>
							</div>

							<div class="block-account block-header ">
								<a href="user.controller" data-teamo="teamo-dropdown"><span
									class="flaticon-user"></span></a>
								<div class="header-account teamo-submenu">
									<div class="header-user-form-tabs"></div>
								</div>
							</div>
						</div>
						<a class="menu-bar mobile-navigation menu-toggle" href="#"><span></span><span></span><span></span></a>
					</div>
				</div>
			</div>
		</div>
		<div class="header-nav-container">
			<div class="container">
				<div class="header-nav-wapper main-menu-wapper">
					<div class="vertical-wapper block-nav-categori">
						<div class="block-title">
							<span class="icon-bar "><span></span><span></span><span></span></span><span
								class="text font">全部分類</span>
						</div>
						<div class="block-content verticalmenu-content">
							<ul
								class="teamo-nav-vertical vertical-menu teamo-clone-mobile-menu">
								<li class="menu-item"><a href="searchLearn"
									class="teamo-menu-item-title" title="New Arrivals">我的學習</a></li>
								<li class="menu-item"><a title="Hot Sale" href="ExamMyMemController"
									class="teamo-menu-item-title">我的試卷</a></li>

								<li class="menu-item menu-item-has-children">
									<a href="Activity" class="teamo-menu-item-title" title="Blog Style">活動</a>
									<span class="toggle-submenu"></span>
                                    <ul class="submenu">
                                       <li class="menu-item"><a href="myActivities">我的活動</a></li>
                                       <li class="menu-item"><a href="ManageActivities">管理活動</a></li>
                                    </ul>
                                </li>

								<li class="menu-item"><a title="Variegated" href="coursefront.collectAll"
									class="teamo-menu-item-title">我的收藏</a></li>

								<li class="menu-item"><a title="Variegated" href="cart"
									class="teamo-menu-item-title">我的購物車</a></li>
								<li class="menu-item"><a title="Variegated"
									href="orderList" class="teamo-menu-item-title">我的訂單</a></li>
							</ul>

						</div>

					</div>
					<div class="header-nav">
						<div class="container-wapper">
							<ul class="teamo-clone-mobile-menu teamo-nav main-menu "
								id="menu-main-menu">
<!-- 								<li><a href="coursefront1.list" -->
<!-- 									class="teamo-menu-item-title" title="Home">課程</a><span -->
<!-- 									class="toggle-submenu"></span> -->
<!-- 								<li class="menu-item "><a href="Exam.jsp" -->
								<li><a href="coursefront1.list" class="teamo-menu-item-title"

									title="Home" style="font-size:1.2em">課程</a><span class="toggle-submenu"></span>
									
								<li class="menu-item"><a href="ExamFrontController"
									class="teamo-menu-item-title" title="Shop" style="font-size:1.2em">試卷</a><span
									class="toggle-submenu"></span>

								<li class="menu-item menu-item-has-children"><a href="Activity"
                                        class="teamo-menu-item-title" style="font-size:1.2em">活動</a><span
                                        class="toggle-submenu"></span>
                                    <ul class="submenu">
                                        <li class="menu-item"><a href="myActivities">我的活動</a></li>
                                        <li class="menu-item"><a href="ManageActivities">管理活動</a></li>
                                        
                                    </ul>
                                </li>

								
								<li class="menu-item  menu-item-has-children"><a href="ColumnFrontEnd"
                                        class="teamo-menu-item-title" title="Home" style="font-size:1.2em">專欄</a><span
                                        class="toggle-submenu"></span>
                                    <ul class="submenu">
                                    <c:if test="${sessionScope.user.status == 2}">
                                        <li class="menu-item"><a href="ColumnTeacherFront">講師專區</a></li>
                                     </c:if>
<!--                                         <li class="menu-item"><a href="home2.html">Home 02</a></li> -->
<!--                                         <li class="menu-item"><a href="home3.html">Home 03</a></li> -->
                                    </ul>
                                </li>

								<li class="menu-item"><a href="cart"
									class="teamo-menu-item-title" title="About" style="font-size:1.2em">購物車</a></li>
								
								<c:if test="${sessionScope.user.status == 3}">

									<li class="menu-item"><a href="backendIndex"
										class="teamo-menu-item-title" title="About" style="font-size:1.2em">後台管理</a></li>
								</c:if>
								<c:if test="${sessionScope.user.status == 2}">

									<li class="menu-item"><a href="coursefront2.list"
										class="teamo-menu-item-title" title="About" style="font-size:1.2em">講師專區</a></li>
								</c:if>
							
								
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<script src="assets/js/jquery-1.12.4.min.js"></script>
	<script src="assets/js/jquery.plugin-countdown.min.js"></script>
	<script src="assets/js/jquery-countdown.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/owl.carousel.min.js"></script>
	<script src="assets/js/magnific-popup.min.js"></script>
	<script src="assets/js/isotope.min.js"></script>
	<script src="assets/js/jquery.scrollbar.min.js"></script>
	<script src="assets/js/jquery-ui.min.js"></script>
	<script src="assets/js/mobile-menu.js"></script>
	<script src="assets/js/chosen.min.js"></script>
	<script src="assets/js/slick.js"></script>
	<script src="assets/js/jquery.elevateZoom.min.js"></script>
	<script src="assets/js/jquery.actual.min.js"></script>
	<script src="assets/js/fancybox/source/jquery.fancybox.js"></script>
	<script src="assets/js/lightbox.min.js"></script>
	<script src="assets/js/owl.thumbs.min.js"></script>
	<script src="assets/js/jquery.scrollbar.min.js"></script>
	<script
		src='http://www.google.cn/maps/api/js?key=AIzaSyC3nDHy1dARR-Pa_2jjPCjvsOR4bcILYsM'></script>
	<script src="assets/js/frontend-plugin.js"></script>
	<!-- 	DataTable jQuery -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script type="text/javascript" charset="utf8"
		src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.js"></script>
		<script src="https://kit.fontawesome.com/9d965cf88e.js" crossorigin="anonymous"></script>
		<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

</body>
</html>