<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
	
	<style>
	.postContent {
		display: -webkit-box;
		-webkit-line-clamp: 2;
		-webkit-box-orient:vertical;
		overflow: hidden;
		text-overflow: ellipsis;
	}
	</style>
</head>
<!-- /end of head -->

<body>
	<div id="preloader"></div>
	<!-- Start of Header 
	============================================= -->
	<jsp:include page="top.jsp"/>
	<!-- End of Header 
	============================================= -->
	
	<!-- Start of Donate Section 
	============================================= -->
	<section id="donates-page-content" class="donates-page-section">
		<div class="container">
			<div class="row section-content">
				<div class="section-title text-center">
					<div class="section-title-text text-uppercase">
						<p>Donate</p>
					</div>
					<div class="section-title-text">
						<h2>Donate</h2>
					</div>
				</div>
				
				<!-- Donation Title
				=====================================================================-->
				
				<div class="side-bar-search mb40">
					<form action="#" method="get">
						<input type="text" class="" placeholder="Search here...">
							<button type="submit"><span class="ti-search"></span></button>
					</form>
				</div>
				
				<!-- Donation Search
				=====================================================================-->						
				
				<div class="causes-page-item">
					<div class="causes-page-left-item">
						<div class="causes-item">
							<div class="row">
								
								<!-- Start of Donation List
								=====================================================================-->
								
								<c:forEach items="${donationList}" var="donation">
								
									<!-- Start of Donation Item
									=====================================================================-->
								
									<div class="col-sm-4">
										<div class="recent-causes-pic-text causes colmd4">
											<div class="recent-causes-pic">
												<img src="resources/assets/img/${donation.album.cover}" alt="image">
											</div>
											
											<!-- Donation Album Cover
											=====================================================================-->
											
											<div class="cause-text" style="padding-top: 50px; padding-bottom: 50px;">
												<div class="gola-reach" style="text-align:center; height: 100px;">
													<p><b>
														<font color="#FFCC48">TITLE : </font>
														${donation.album.albumName}
													</b></p>
													<p><b>
														<font color="#FFCC48">QUANTITY : </font>
														${donation.donationAlbumQuantity}
													</b></p>
													<p><b>
														<font color="#FFCC48">DONOR : </font>
														${donation.userId}
													</b></p>
												</div>
												<div class="cause-text-head pt15 pb20 p10" style="height: 100px; font-size:12px;">
													<h3 class="postContent">${donation.donationContent}</h3>
												</div>
												<div class="donate-now-btn">
													<div class="donate-btn margin0 text-uppercase">
														<a href="<c:url value="donationItem.do"><c:param name="donationId" value="${donation.donationId}"></c:param></c:url>">request now</a>
													</div>
												</div>
											</div>
										</div>
									</div>
								
									<!-- End of Donation Item
									=====================================================================-->
								
								</c:forEach>
								
								<!-- End of Donation List
								=====================================================================-->
								
							</div>
						</div>
					</div>
				</div>
				
				<div class="container">
					<div class="row section-btn">
						<div class="col-sm-offset-8 col-sm-4">
							<div class="home-donate donate-btn-1 text-uppercase">
								<a href="createDonationItemForm.do">Create</a>
							</div>
						</div>
					</div>
				</div>
				
				<!-- Donation Create Button
				=====================================================================-->
				
				<div class="blog-pagination text-center">
					<ul class="pagination">
						<li><a href="#"><span class="ti-angle-double-left"></span></a></li>
						<li class="active"><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#"><span class="ti-angle-double-right"></span></a></li>
					</ul>
				</div>
				
				<!-- Donation List Paging
				=====================================================================-->
				
			</div>
		</div>
	</section>

	<!-- End of Donate Section 
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