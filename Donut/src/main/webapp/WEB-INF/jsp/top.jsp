<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<header>
	<div class="menu-bar">
		<div class="container">
			<div class="row">
				<nav class="navbar">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<a class="navbar-brand" href="index.do"><img src="resources/assets/img/logo.png" alt="image"></a>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav navbar-right">
							<li><a href="index.do">Home</a></li>
							<li><a href="donationList.do">Donate</a></li>
							<li><a href="benefitList.do">Benefit</a></li>
							<li><a href="reviewList.do">Review</a></li>
							<li><a href="contact.do">Contact Us</a></li>
							<li><a href="myPage.do">My Page</a></li>
						</ul>
					</div><!-- /.navbar-collapse -->
					<div class="home-donate donate-btn-1 text-uppercase">
						<c:choose>
							<c:when test="${sessionScope.userId == null}">
								<a href="loginForm.do">Sign in</a>
							</c:when>
							<c:otherwise>
								<a href="logout.do">Sign out</a>
							</c:otherwise>
						</c:choose>
					</div>
				</nav>
				<div class="wrap">
					<!--MENU-->
					<div id="main-menu">
						<div class="menu-btn">
							<div class="menu-btn-line menu-btn-line-1"></div>
							<div class="menu-btn-line menu-btn-line-2"></div>
							<div class="menu-btn-line menu-btn-line-3"></div>
						</div>
						<div class="moduletable_menu">
							<ul class="nav menu">
								<li><a href="index.do">Home</a></li>
								<li><a href="donationList.do">Donate</a></li>
								<li><a href="benefitList.do">Benefit</a></li>
								<li><a href="reviewList.do">Review</a></li>
								<li><a href="contact.do">Contact Us</a></li>
								<li><a href="myPage.do">My Page</a></li>
							</ul>
						</div>
					</div>
					<!-- END menu -->
				</div><!--/wrap  -->
			</div><!--/row  -->
		</div><!--/container  -->
	</div><!--/menu-bar  -->
</header>