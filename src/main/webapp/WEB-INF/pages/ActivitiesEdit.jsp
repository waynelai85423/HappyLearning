<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <title>活動編輯</title>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <base href="<%=request.getContextPath()%>/">
        <link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.png" />
        <link
            href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i&display=swap"
            rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Lato:300,300i,400,400i,700,700i&display=swap"
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
        <link rel="stylesheet" href="assets/js/fancybox/source/jquery.fancybox.css">
        <link rel="stylesheet" href="assets/css/jquery.scrollbar.min.css">
        <link rel="stylesheet" href="assets/css/mobile-menu.css">
        <link rel="stylesheet" href="assets/fonts/flaticon/flaticon.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="ActivityResources/css/ActivitiesEdit.css">
        <style>
            .ck-editor__editable[role="textbox"] {
                /* editing area */
                min-height: 450px;
            }
        </style>
    </head>

    <body class="inblog-page">
        <jsp:include page="Header.jsp" />
        <div class="main-content main-content-checkout">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="breadcrumb-trail breadcrumbs">
                            <ul class="trail-items breadcrumb">
                                <li class="trail-item trail-begin"><a href="index.html">Home</a></li>
                                <li class="trail-item trail-end active">管理活動 </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="checkout-wrapp" style="width: 80%; margin: auto;">
                    <div class=" shipping-address-form-wrapp">
                        <div class=" shipping-address-form checkout-form">
                            <div class="">
                                <div class="shipping-address">
                                    <h3 class="custom_blog_title">我的活動</h3>
                                    <p class="form-row "><label class="text">活動圖片</label>
                                        <img class="activityActivityImage"
                                            src="ActivityResources\Images\default-image.jpg" alt=""
                                            style="height: 450px;width: 870px;;">
                                        <input type="file" class="activityActivityInput" accept=".jpg">
                                    </p>
                                    <br>
                                    <hr>
                                    <p class="form-row ">
                                        <label class="text">活動預覽圖片</label>
                                        <img class="activityPreviewImage"
                                            src="ActivityResources\Images\default-image.jpg" alt=""
                                            style="height: 275px;width: 270px;;">
                                        <input type="file" class="activityPreviewInput" accept=".jpg">
                                    </p>
                                    <br>
                                    <hr>
                                    <br>
                                    <p class="form-row "><label class="text ">活動標題</label>
                                        <input type="text" class="input-text activityTitle">
                                        <span><font class="activityTitleError error" color="red"></font></span>
                                    </p>
                                    <p class="form-row  "><label class="text">可參加人數</label>
                                        <input style="width: 15%" type="number" class="input-text activityNumberLimit"><br>
										<span><font class="activityNumberLimitError error" color="red"></font></span>
                                    </p>

                                    <p class="form-row form-row-first"><label class="text">活動開始時間</label><input
                                            type="datetime-local" class="input-text activityStartTime">
                                            <span><font class="activityStartTimeError error" color="red"></font></span>
                                    </p>
                                    <p class="form-row form-row-last"><label class="text">活動結束時間</label><input
                                            type="datetime-local" class="input-text activityEndTime">
                                            <span><font class="activityEndTimeError error" color="red"></font></span>
                                    </p>
                                    <div class="activityPlaceDiv">
                                        <p class="form-row form-row-first" style="width: 27%;"><label
                                                class="text">縣市</label>
                                            <input type="text" class="input-text activityPlace">
                                            <span><font class="activityPlaceError error" color="red"></font></span>
                                        </p>
                                        <p class="form-row  form-row-last" style="width: 70%;"><label
                                                class="text">地址</label>
                                            <input type="text" class="input-text activityAddress">
                                        </p>
                                
                                        
                                    </div>
                                    <p class="form-row ">
                                        <label class="text">活動內容</label>
                                        <textarea id="ckeditor5" style="min-width: 100%; min-height:400px"
                                            class="activityContent"></textarea>
                                    </p>
                                </div>
                                <a class="button  " onclick="onePieceOfInput()">一鍵輸入</a>
                            </div>
                        </div><a class="button button-payment saveActivityButton">送出</a>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://cdn.ckeditor.com/ckeditor5/35.2.0/super-build/ckeditor.js"></script>
        <script src="ActivityResources/js/ActivitiesEdit.js"></script>
        <script src="ActivityResources/js/createCkeditor5.js"></script>
    </body>

    </html>