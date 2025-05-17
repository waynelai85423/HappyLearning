<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*,fourth.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>課程列表</title>
<link rel="shortcut icon" type="image/x-icon" href="backend/img/smalllogo.png" />
<style type="text/css">
.cb{
background-color: white;
color:black;
border:solid 0.5px;
border-radius: 5px;
}
</style>
</head>
<body>
<jsp:include page="Header.jsp"/>
<body class="productsgrid-page">

    <div class="header-device-mobile">
        <div class="wapper">
            <div class="item mobile-logo">
                <div class="logo"><a href="#"><img src="assets/images/logo.png" alt="img"></a></div>
            </div>
            <div class="item item mobile-search-box has-sub"><a href="#"><span class="icon"><i class="fa fa-search"
                            aria-hidden="true"></i></span></a>
                <div class="block-sub"><a href="#" class="close"><i class="fa fa-times" aria-hidden="true"></i></a>
                    <div class="header-searchform-box">
                        <form class="header-searchform">
                            <div class="searchform-wrap"><input type="text" class="search-input"
                                    placeholder="Enter keywords to search..."><input type="submit" class="submit button"
                                    value="Search"></div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="item mobile-settings-box has-sub"><a href="#"><span class="icon"><i class="fa fa-cog"
                            aria-hidden="true"></i></span></a>
                <div class="block-sub"><a href="#" class="close"><i class="fa fa-times" aria-hidden="true"></i></a>
                    <div class="block-sub-item">
                        <h5 class="block-item-title">Currency</h5>
                        <form class="currency-form teamo-language">
                            <ul class="teamo-language-wrap">
                                <li class="active"><a href="#"><span>English(USD) </span></a></li>
                                <li><a href="#"><span>French(EUR) </span></a></li>
                                <li><a href="#"><span>Japanese(JPY) </span></a></li>
                            </ul>
                        </form>
                    </div>
                </div>
            </div>
            <div class="item menu-bar"><a class=" mobile-navigation  menu-toggle"
                    href="#"><span></span><span></span><span></span></a></div>
        </div>
    </div>
    <br>
    <div class="main-content main-content-product left-sidebar">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-trail breadcrumbs">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="content-area shop-grid-content no-banner col-lg-9 col-md-9 col-sm-12 col-xs-12">
                    <div class="site-main">
                        <div class="shop-top-control">
                               <form action="coursefront.qname" method="post">
                                <div class="form-content">
                                    <div class="inner"><input type="text" class="input" name="keyword" value=""
                                            placeholder="請輸入課程名稱" style="background-color: white"><button  type="submit"><span
                                                class="icon-search"> <i class="fa-solid fa-magnifying-glass"></i> </span></button></div>
                                </div>
                                </form><p>${errorMsgMap.QueryError}</p>
                            <div class="grid-view-mode">
                                <div class="inner">
<!--                                 <a href="coursefront2.list" class="modes-mode mode-list"> -->
                                <span></span><span></span></a>
<!--                                         <a href="coursefront1.list" class="modes-mode mode-grid  active"> -->
                                        <span></span><span></span><span></span><span></span></a>
                                </div>
                            </div>
                        </div>

						<ul class="row list-products auto-clear equal-container product-grid">
							<c:if test="${queryResult2 != null }">
								<c:forEach var="course" items="${queryResult2}">
									<c:if test="${course.course_status == 2}">
										<li class="product-item product-type-variable col-lg-4 col-md-6 col-sm-6 col-xs-6 col-ts-12 style-1">
											<div class="product-inner equal-element">
												<div class="product-top"></div>
												<div class="product-thumb">
													<div class="thumb-inner">
														<a
															href="coursefront.details?courseId=${course.courseId}"><img
															src="<c:out value="${course.course_picture}" />"
															alt="img"></a>
														<div class="thumb-group"></div>
													</div>
												</div>
												<div class="product-info">
													<h5 class="product-name product_title" style="font-size:1.2em">
														<a
															href="coursefront.details?courseId=${course.courseId}"><c:out
																value="${course.course_name}" /></a>
													</h5>
													<div class="group-info">
														<div class="stars-rating">
															<div class="star-rating">
																<span class="star-5"></span>
															</div>
															<div class="count-star">(5)</div>
														</div>
														<div class="price">
															<ins>
																$
																<c:out value="${course.course_price}" />
															</ins>
														</div>
														<br> <a href=""><button>
																加入購物車 <i class="fa-solid fa-cart-shopping"></i>
															</button></a>

													</div>
												</div>
											</div>
										</li>
									</c:if>
								</c:forEach>
							</c:if>
							<c:if test="${queryResult3 != null }">
								<c:forEach var="course" items="${queryResult3}">
									<c:if test="${course.course_status == 2}">
										<li class="product-item product-type-variable col-lg-4 col-md-6 col-sm-6 col-xs-6 col-ts-12 style-1">
											<div class="product-inner equal-element">
												<div class="product-top"></div>
												<div class="product-thumb">
													<div class="thumb-inner">
														<a
															href="coursefront.details?courseId=${course.courseId}"><img
															src="<c:out value="${course.course_picture}" />"
															alt="img"></a>
														<div class="thumb-group"></div>
													</div>
												</div>
												<div class="product-info">
													<h5 class="product-name product_title" style="font-size:1.2em">
														<a
															href="coursefront.details?courseId=${course.courseId}"><c:out
																value="${course.course_name}" /></a>
													</h5>
													<div class="group-info">
														<div class="stars-rating">
															<div class="star-rating">
																<span class="star-5"></span>
															</div>
															<div class="count-star">(5)</div>
														</div>
														<div class="price">
															<ins>
																$
																<c:out value="${course.course_price}" />
															</ins>
														</div>
														<br> <a href=""><button>
																加入購物車 <i class="fa-solid fa-cart-shopping"></i>
															</button></a>

													</div>
												</div>
											</div>
										</li>
										</c:if>
								</c:forEach>
							</c:if>
								<c:if test="${queryResult1 != null }">
								<c:forEach var="course" items="${queryResult1}">
									<c:if test="${course.course_status == 2}">
										<li
											class="product-item product-type-variable col-lg-4 col-md-6 col-sm-6 col-xs-6 col-ts-12 style-1">
											<div class="product-inner equal-element">
												<div class="product-top"></div>
												<div class="product-thumb">
													<div class="thumb-inner">
														<a
															href="coursefront.details?courseId=${course.courseId}"><img
															src="<c:out value="${course.course_picture}" />"
															alt="img"></a>
														<div class="thumb-group"></div>
													</div>
												</div>
												<div class="product-info">
													<h5 class="product-name product_title" style="font-size:1.2em">
														<a
															href="coursefront.details?courseId=${course.courseId}"><c:out
																value="${course.course_name}" /></a>
													</h5>
													<div class="group-info">
														<div class="stars-rating">
															<div class="star-rating">
																<span class="star-5"></span>
															</div>
															<div class="count-star">(5)</div>
														</div>
														<div class="price">
															<ins>
																$
																<c:out value="${course.course_price}" />
															</ins>
														</div>
														<br> <a href=""><button>
																加入購物車 <i class="fa-solid fa-cart-shopping"></i>
															</button></a>

													</div>
												</div>
											</div>
										</li>

									</c:if>
								</c:forEach>
							</c:if>
							<c:if test="${queryResult4 != null }">
								<c:forEach var="course" items="${queryResult4}">
								  <c:if test="${course.course_status == 2}">
									<li class="product-item product-type-variable col-lg-4 col-md-6 col-sm-6 col-xs-6 col-ts-12 style-1">
										<div class="product-inner equal-element">
											<div class="product-top"></div>
											<div class="product-thumb">
												<div class="thumb-inner">
													<a href="coursefront.details?courseId=${course.courseId}"><img
														src="<c:out value="${course.course_picture}" />" alt="img"></a>
													<div class="thumb-group"></div>
												</div>
											</div>
											<div class="product-info">
												<h5 class="product-name product_title" style="font-size:1.2em">
													<a href="coursefront.details?courseId=${course.courseId}"><c:out
															value="${course.course_name}" /></a>
												</h5>
												<div class="group-info">
													<div class="stars-rating">
														<div class="star-rating">
															<span class="star-5"></span>
														</div>
														<div class="count-star">(5)</div>
													</div>
													<div class="price">
														<ins>
															$
															<c:out value="${course.course_price}" />
														</ins>
													</div>
													<br> <a href=""><button>
															加入購物車 <i class="fa-solid fa-cart-shopping"></i>
														</button></a>

												</div>
											</div>
										</div>
									</li>
								  </c:if>	
								</c:forEach>
							</c:if>
							<c:if test="${queryResult5 != null }">
									<c:forEach var="course" items="${queryResult5}">
									  <c:if test="${course.course_status == 2}">
										<li class="product-item product-type-variable col-lg-4 col-md-6 col-sm-6 col-xs-6 col-ts-12 style-1">
											<div class="product-inner equal-element">
												<div class="product-top"></div>
												<div class="product-thumb">
													<div class="thumb-inner">
														<a
															href="coursefront.details?courseId=${course.courseId}"><img
															src="<c:out value="${course.course_picture}" />"
															alt="img"></a>
														<div class="thumb-group"></div>
													</div>
												</div>
												<div class="product-info">
													<h5 class="product-name product_title" style="font-size:1.2em">
														<a
															href="coursefront.details?courseId=${course.courseId}"><c:out
																value="${course.course_name}" /></a>
													</h5>
													<div class="group-info">
														<div class="stars-rating">
															<div class="star-rating">
																<span class="star-5"></span>
															</div>
															<div class="count-star">(5)</div>
														</div>
														<div class="price">
															<ins>
																$
																<c:out value="${course.course_price}" />
															</ins>
														</div>
														<br> <a href=""><button>
																加入購物車 <i class="fa-solid fa-cart-shopping"></i>
															</button></a>

													</div>
												</div>
											</div>
										</li>
									</c:if>


									</c:forEach>
								</c:if>
							<c:if test="${queryResult6 != null }">
								<c:forEach var="course" items="${queryResult6}">
								  <c:if test="${course.course_status == 2}">
									<li class="product-item product-type-variable col-lg-4 col-md-6 col-sm-6 col-xs-6 col-ts-12 style-1">
										<div class="product-inner equal-element">
											<div class="product-top"></div>
											<div class="product-thumb">
												<div class="thumb-inner">
													<a href="coursefront.details?courseId=${course.courseId}"><img
														src="<c:out value="${course.course_picture}" />" alt="img"></a>
													<div class="thumb-group"></div>
												</div>
											</div>
											<div class="product-info">
												<h5 class="product-name product_title" style="font-size:1.2em">
													<a href="coursefront.details?courseId=${course.courseId}"><c:out
															value="${course.course_name}" /></a>
												</h5>
												<div class="group-info">
													<div class="stars-rating">
														<div class="star-rating">
															<span class="star-5"></span>
														</div>
														<div class="count-star">(5)</div>
													</div>
													<div class="price">
														<ins>
															$
															<c:out value="${course.course_price}" />
														</ins>
													</div>
													<br> <a href=""><button>
															加入購物車 <i class="fa-solid fa-cart-shopping"></i>
														</button></a>

												</div>
											</div>
										</div>
									</li>
                                  </c:if>
								</c:forEach>
							</c:if>


						</ul>

                    </div>
                </div>
               
                <div class="sidebar col-lg-3 col-md-3 col-sm-12 col-xs-12">
                    <div class="wrapper-sidebar shop-sidebar">
                        <div class="widget woof_Widget">
                            <div class="widget widget-categories">
                                <h3 class="widgettitle">課程分類</h3>
                                <ul class="list-categories">
                                <li><a href="coursefront.qenglish"><button type="submit" class="cb" id="cb1">英文</button></a>
                                    <a href="coursefront.qmath"><button type="submit" class="cb" id="cb1">數學</button></a>
                                    <a href="coursefront.qtoeic"><button type="submit" class="cb" id="cb1">多益</button></a></li>
<!--                                     <li><input type="checkbox" id="cb1"><label for="cb1" class="label-text">英文 -->
<!--                                         </label></li> -->
<!--                                     <li><input type="checkbox" id="cb2"><label for="cb2" class="label-text">數學 -->
<!--                                         </label></li> -->
<!--                                     <li><input type="checkbox" id="cb3"><label for="cb3" class="label-text">多益 -->
<!--                                         </label></li> -->

                                </ul>
                            </div>
                            <div class="widget widget-brand">
                                <h3 class="widgettitle">程度</h3>
                                <ul class="list-brand">
                                <li><a href="coursefront.qjunior"><button type="submit" class="cb" id="cb7">國中</button></a>
                                    <a href="coursefront.qsenior"><button type="submit" class="cb" id="cb8">高中</button></a>
                                    <a href="coursefront.qaldult"><button type="submit" class="cb" id="cb9">成人</button></a></li>
                                
<!--                                     <li><input id="cb7" type="checkbox"><label for="cb7" class="label-text">國中</label> -->
<!--                                     </li> -->
<!--                                     <li><input id="cb8" type="checkbox"><label for="cb8" class="label-text">高中</label> -->
<!--                                     </li> -->
<!--                                     <li><input id="cb9" type="checkbox"><label for="cb9" class="label-text">成人</label> -->
<!--                                     </li> -->

                                </ul>
                            </div>


                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
<jsp:include page="Footer.jsp"/>

</body>
</html>