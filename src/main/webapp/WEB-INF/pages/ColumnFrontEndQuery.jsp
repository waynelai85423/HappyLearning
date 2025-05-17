<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="fourth.bean.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<%
response.setContentType("text/html;charset=UTF-8");
response.setHeader("Cache-Control", "no-cache"); // HTTP 1.1
response.setHeader("Pragma", "no-cache"); // HTTP 1.0
response.setDateHeader("Expires", -1); // Prevents caching at the proxy server
%>

<html lang="en">

<head>
<title>好學生專欄</title>
<meta charset="UTF-8">
<meta http-equiv="X-UA-compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/x-icon"
	href="assets/images/favicon.png" />
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Lato:300,300i,400,400i,700,700i&display=swap"
	rel="stylesheet">
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
<link rel="stylesheet"
	href="assets/js/fancybox/source/jquery.fancybox.css">
<link rel="stylesheet" href="assets/css/jquery.scrollbar.min.css">
<link rel="stylesheet" href="assets/css/mobile-menu.css">
<link rel="stylesheet" href="assets/fonts/flaticon/flaticon.css">
<link rel="stylesheet" href="assets/css/style.css">
</head>

<body class="inblog-page">
	<jsp:include page="Header.jsp" />

	<div class="header-device-mobile">
		<div class="wapper">
			<div class="item mobile-logo">
				<div class="logo">
					<a href="#"><img src="assets/images/logo.png" alt="img"></a>
				</div>
			</div>
			<div class="item item mobile-search-box has-sub">
				<a href="#"><span class="icon"><i class="fa fa-search"
						aria-hidden="true"></i></span></a>
				<div class="block-sub">
					<a href="#" class="close"><i class="fa fa-times"
						aria-hidden="true"></i></a>
					<div class="header-searchform-box">
						<form class="header-searchform">
							<div class="searchform-wrap">
								<input type="text" class="search-input"
									placeholder="Enter keywords to search..."><input
									type="submit" class="submit button" value="Search">
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="item mobile-settings-box has-sub">
				<a href="#"><span class="icon"><i class="fa fa-cog"
						aria-hidden="true"></i></span></a>
				<div class="block-sub">
					<a href="#" class="close"><i class="fa fa-times"
						aria-hidden="true"></i></a>
					<div class="block-sub-item">
						<h5 class="block-item-title">Currency</h5>
						<form class="currency-form teamo-language">
							<ul class="teamo-language-wrap">
								<li class="active"><a href="#"><span>English(USD)
									</span></a></li>
								<li><a href="#"><span>French(EUR) </span></a></li>
								<li><a href="#"><span>Japanese(JPY) </span></a></li>
							</ul>
						</form>
					</div>
				</div>
			</div>
			<div class="item menu-bar">
				<a class=" mobile-navigation  menu-toggle" href="#"><span></span><span></span><span></span></a>
			</div>
		</div>
	</div>
	<div class="main-content main-content-blog list right-sidebar">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb-trail breadcrumbs">
						<ul class="trail-items breadcrumb">
							<!--                             <li class="trail-item trail-begin"><a href="index.html">Home</a></li> -->
							<!--                             <li class="trail-item trail-end active">好學生專欄</li> -->
						</ul>
					</div>
				</div>
			</div>
			<div class="row">
				<div
					class="content-area content-blog col-lg-9 col-md-8 col-sm-12 col-xs-12">
					<div class="site-main">
						<h3 class="custom_blog_title">專欄</h3>
<c:choose>

						<c:when test="${queryEnglish !=null }">
							<c:forEach var="c" items="${queryEnglish }">
								<div class="blog-list list-style">
									<div class="blog-item">
										<div class="post-format">
											<a href="#"><img
												src="<c:out value="${c.picture}"></c:out>" alt="img"></a>
										</div>
										<div class="post-info">

											<h3 class="post-title">
												<a
													href="details?article_no=<c:out value="${c.article_no }"></c:out>"><c:out
														value="${c.title }"></c:out></span></a>
											</h3>
											<div class="main-info-post">
												<p class="des">
													<c:out value="${c.summary }"></c:out>
												</p>
											</div>
											<div class="author-view">
												<div class="author">

													<h3 class="name">
														作者:
														<c:out value="${c.author }"></c:out>
													</h3>
												</div>
												<div class="review">
													<div class="view">
														<span class="icon-view"><i class="fa fa-eye"
															aria-hidden="true"></i></span><span class="count">631 </span>
													</div>
													<div class="s-comments">
														<span class="icon-cmt"><i class="fa fa-commenting"
															aria-hidden="true"></i></span><span class="count">82 </span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
						</c:when>

						<c:when test="${queryToeic !=null }">
							<c:forEach var="c" items="${queryToeic}">
								<div class="blog-list list-style">
									<div class="blog-item">
										<div class="post-format">
											<a href="#"><img
												src="<c:out value="${c.picture}"></c:out>" alt="img"></a>
										</div>
										<div class="post-info">

											<h3 class="post-title">
												<a
													href="details?article_no=<c:out value="${c.article_no }"></c:out>"><c:out
														value="${c.title }"></c:out></span></a>
											</h3>
											<div class="main-info-post">
												<p class="des">
													<c:out value="${c.summary}"></c:out>
												</p>
											</div>
											<div class="author-view">
												<div class="author">

													<h3 class="name">
														作者:
														<c:out value="${c.author }"></c:out>
													</h3>
												</div>
												<div class="review">
													<div class="view">
														<span class="icon-view"><i class="fa fa-eye"
															aria-hidden="true"></i></span><span class="count">631 </span>
													</div>
													<div class="s-comments">
														<span class="icon-cmt"><i class="fa fa-commenting"
															aria-hidden="true"></i></span><span class="count">82 </span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
						</c:when>
						
						<c:when test="${queryMath !=null }">
							<c:forEach var="c" items="${queryMath }">
								<div class="blog-list list-style">
									<div class="blog-item">
										<div class="post-format">
											<a href="#"><img
												src="<c:out value="${c.picture}"></c:out>" alt="img"></a>
										</div>
										<div class="post-info">

											<h3 class="post-title">
												<a
													href="details?article_no=<c:out value="${c.article_no }"></c:out>"><c:out
														value="${c.title }"></c:out></span></a>
											</h3>
											<div class="main-info-post">
												<p class="des">
													<c:out value="${c.summary}"></c:out>
												</p>
											</div>
											<div class="author-view">
												<div class="author">

													<h3 class="name">
														作者:
														<c:out value="${c.author }"></c:out>
													</h3>
												</div>
												<div class="review">
													<div class="view">
														<span class="icon-view"><i class="fa fa-eye"
															aria-hidden="true"></i></span><span class="count">631 </span>
													</div>
													<div class="s-comments">
														<span class="icon-cmt"><i class="fa fa-commenting"
															aria-hidden="true"></i></span><span class="count">82 </span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
						</c:when>
						<c:otherwise>
<!-- 						if no data is found, how do I show an alert here? -->
						</c:otherwise>
						</c:choose>





					</div>
				</div>
				<div
					class="sidebar sidebar-blog col-lg-3 col-md-4 col-sm-12 col-xs-12">
					<div class="wrapper-sidebar">
						<div class="widget widget-socials">
							<h3 class="widgettitle">Follow us</h3>
							<div class="content-socials">
								<div class="social-list">
									<a href="#" target="_blank" class="social-item"><i
										class="fa fa-facebook-square" aria-hidden="true"></i></a><a
										href="#" target="_blank" class="social-item"><i
										class="fa fa-twitter" aria-hidden="true"></i></a><a href="#"
										target="_blank" class="social-item"><i
										class="fa fa-instagram" aria-hidden="true"></i></a>
								</div>
							</div>
						</div>
						<div class="widget widget-categories">
							<h3 class="widgettitle">Categories</h3>
							<ul class="list-categories">




								<li><a href="queryEnglish"><h6>英文</h6></a></li>
								<li><h6>
										<a href="queryToeic">多益</a>
									</h6></li>
								<li><h6>
										<a href="queryMath">數學</a>
									</h6></li>

							</ul>
						</div>



					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="footer-device-mobile">
		<div class="wapper">
			<div class="footer-device-mobile-item device-home">
				<a href="index.html"><span class="icon"><i
						class="fa fa-home" aria-hidden="true"></i></span>Home </a>
			</div>
			<div class="footer-device-mobile-item device-home device-wishlist">
				<a href="#"><span class="icon"><i class="fa fa-heart"
						aria-hidden="true"></i></span>Wishlist </a>
			</div>
			<div class="footer-device-mobile-item device-home device-cart">
				<a href="#"><span class="icon"><i
						class="fa fa-shopping-basket" aria-hidden="true"></i><span
						class="count-icon">0 </span></span><span class="text">Cart</span></a>
			</div>
			<div class="footer-device-mobile-item device-home device-user">
				<a href="#"><span class="icon"><i class="fa fa-user"
						aria-hidden="true"></i></span>Account </a>
			</div>
		</div>
	</div>
	<a href="#" class="backtotop"><i class="fa fa-angle-double-up"></i></a>


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
</body>

</html>