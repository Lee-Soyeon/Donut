<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="zxx">
<head>
	<meta charset="utf-8">
	<title>Donut</title>
	<link rel="shortcut icon" href="resources/assets/img/icon.png">

	<meta name="keywords" content="Premium HTML Template">

	<meta name="author" content="HTMLmate">

	<!-- Mobile Specific Meta -->
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- css-include -->

	<!-- boorstrap -->
	<link rel="stylesheet" type="text/css" href="resources/assets/css/bootstrap.min.css">
	<!-- themify-icon.css -->
	<link rel="stylesheet" type="text/css" href="resources/assets/css/themify-icons.css">
	<!-- owl-carousel -->
	<link rel="stylesheet" type="text/css" href="resources/assets/css/owl.carousel.css">
	<!-- Video-min -->
	<link rel="stylesheet" type="text/css" href="resources/assets/css/video.min.css">
	<!-- animate.css -->
	<link rel="stylesheet" type="text/css" href="resources/assets/css/animate.css">
	<!-- REVOLUTION STYLE SHEETS -->
	<link rel="stylesheet" type="text/css" href="resources/rev-slider/css/settings.css">
	<!-- REVOLUTION LAYERS STYLES -->
	<link rel="stylesheet" type="text/css" href="resources/rev-slider/css/layers.css">
	<!-- REVOLUTION NAVIGATION STYLES -->
	<link rel="stylesheet" type="text/css" href="resources/rev-slider/css/navigation.css">
	<!-- menu style -->
	<link rel="stylesheet" type="text/css" href="resources/assets/css/menu.css">
	<!-- style -->
	<link rel="stylesheet" type="text/css" href="resources/assets/css/style.css">
	<!-- responsive.css -->
	<link rel="stylesheet" type="text/css" href="resources/assets/css/responsive.css">
</head>
<!-- /end of head -->

<body>
	<div id="preloader"></div>
	<!-- Start of Header 
	============================================= -->
	<jsp:include page="top.jsp"/>
	<!-- End of Header 
	============================================= -->

	<!-- Start of Benefit Item Section  
	============================================= -->
	<section id="blog-details" class="blog-details-section pt60 pb80">
		<div class="container">
			<div class="row">
				<div class="blog-details-section-content">
					<div class="row">
						<div class="col-sm-12">
							<div class="blog-details-section-left-side" style="text-align:center;">
								<div class="blog-details-main-pic">
									<img src="resources/assets/img/${benefit.album.cover}" alt="image">
								</div>
								<br><br>
								<!-- Benefit Item Album Cover
								============================================= -->
								<div class="blog-single-text  pb50">
									<div class="blog-head-title pt15 pb20">
										<h2 class="black"><a href="#">${benefit.album.artist} - ${benefit.album.albumName}</a></h2>
									</div>
									<div class="blog-recent-post-meta">
										<ul class="meta-list pb20 mb20">
											<li><span class="mr5 ti-pencil"></span>${benefit.userId}&nbsp;&nbsp;</li>
											<li><span class="mr5 ti-timer"></span>${benefit.benefitDate}&nbsp;&nbsp;</li>
											<li><span class="mr5 ti-heart"></span><b>${benefit.benefitAlbumQuantity}장&nbsp;&nbsp;</b></li>
										</ul>
									</div>
									<div class="blog-details-text">
										<p>${benefit.benefitContent}</p>
									</div>
								</div>
								<!-- Benefit Item Detail
								============================================= -->
							</div>
							
							<div class="container">
								<div class="row section-btn">
									<c:if test="${sessionScope.isWriter == 'me'}">
										<div class="col-sm-offset-10 col-sm-1">
											<div class="home-donate donate-btn-1 text-uppercase">
												<a href="<c:url value="updateBenefitItemForm.do">
															<c:param name="benefitId" value="${benefit.benefitId}"></c:param>
														 </c:url>">Update</a>
											</div>
										</div>
										
										<div class="col-sm-1">
											<div class="home-donate donate-btn-1 text-uppercase">
												<a href="<c:url value="deleteBenefitItem.do">
															<c:param name="benefitId" value="${benefit.benefitId}"></c:param>
														 </c:url>">Delete</a>
											</div>
										</div>							
									</c:if>
									<!-- Donation Update / Delete Button
									============================================= -->
								</div>
							</div>
							<!-- Donation Item
							============================================= -->

							<div class="comment-area">
								<div class="reply-comment mb50">
									<div class="side-bar-title mb40">
										<h2>Commnents</h2>
									</div>
									<c:forEach items="${donationRequestList}" var="donationRequest">
										<div class="leave-comment-form pb50 clearfix" style="padding:30px;">
											<div class="comment-form">
												<form id="contact_form" action="matchBenefit.do" method="POST">
													<div class="client-name-reply">
														<div class="name-reply-text">
															<div class="name-reply pb20">
																<span class="client-name"><a href="#">${donationRequest.userId}</a></span><br>
																<span class="designation">${donationRequest.drDate}</span><br>
																<span>QUANTITY : ${donationRequest.drAlbumQuantity}</span>
																<c:if test="${sessionScope.isWriter == 'me'}">
																	<div class="send-button text-uppercase pull-right">
																		<button type="submit" value="Submit">MATCH</button> 
																	</div>
																</c:if>
																<div class="reply-text">
																	<p>${donationRequest.drContent}</p>
																</div>
															</div>
														</div>
													</div>
												</form>
											</div>
										</div>
									</c:forEach>
								</div>
								
								<!-- Donation Request List
								============================================= -->
								
								<div class="leave-comment">
									<div class="side-bar-title mb40">
										<h2>Leave a Comment</h2>
									</div>
									<div class="leave-comment-form pb50 clearfix" style="padding:30px;">
										<div class="comment-form">
											<form id="contact_form" action="requestDonation.do" method="POST">
												<div class="leave-commen-info">
													<input name="benefitId" type="hidden" value="${benefit.benefitId}">
												</div>
												<div class="leave-commen-info">
													<input name="drAlbumQuantity" type="number" placeholder="Album Quantity">
												</div>
												<div class="leave-commen-info mt25">
													<textarea name="drContent" placeholder="Message Here" rows="7" cols="30"></textarea>
												</div>
												<div class="send-button text-uppercase pull-right">
													<button type="submit" value="Submit">SEND REQUEST</button> 
												</div>
											</form>
										</div>
									</div>
								</div>
								<!-- Send Donation Request
								============================================= -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End of Benefit Section
	============================================= -->

	<!-- Start of footer section
	============================================= -->
	
	<jsp:include page="bottom.jsp"/>
	
	<!-- End of footer section
	============================================= -->


	<!-- js -->
	<script type="text/javascript" src="resources/assets/js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="resources/assets/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="resources/assets/js/owl.carousel.min.js"></script>
	<script type="text/javascript" src="resources/assets/js/jquery.magnific-popup.min.js"></script>
	<script type="text/javascript" src="resources/assets/js/waypoints.min.js"></script>
	<script type="text/javascript" src="resources/assets/js/jquery.counterup.min.js"></script>
	<script type="text/javascript" src="resources/assets/js/parallax.min.js"></script>
	<script type="text/javascript" src="resources/assets/js/wow.min.js"></script>
	<script type="text/javascript">new WOW().init();</script>
	<script type="text/javascript" src="resources/assets/js/circle-progress.js"></script>
	<!-- REVOLUTION JS FILES -->
	<script type="text/javascript" src="resources/rev-slider/js/jquery.themepunch.tools.min.js"></script>
	<script type="text/javascript" src="resources/rev-slider/js/jquery.themepunch.revolution.min.js"></script>

    <!-- SLIDER REVOLUTION 5.0 EXTENSIONS (Load Extensions only on Local File Systems !
    The following part can be removed on Server for On Demand Loading) -->

    <script type="text/javascript" src="resources/rev-slider/js/revolution.extension.actions.min.js"></script>
    
    <script type="text/javascript" src="resources/rev-slider/js/revolution.extension.layeranimation.min.js"></script>
    <script type="text/javascript" src="resources/rev-slider/js/revolution.extension.navigation.min.js"></script>
    <script type="text/javascript" src="resources/rev-slider/js/revolution.extension.parallax.min.js"></script>
    <script type="text/javascript" src="resources/rev-slider/js/revolution.extension.slideanims.min.js"></script>
    <script type="text/javascript" src="resources/rev-slider/js/revolution.extension.video.min.js"></script>
    <script type="text/javascript" src="resources/assets/js/function.js"></script>
</body> 
</html>