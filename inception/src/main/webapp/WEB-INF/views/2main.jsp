<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Guide &mdash; 100% Free Fully Responsive HTML5 Template
	by FREEHTML5.co</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
<meta name="keywords"
	content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
<meta name="author" content="FREEHTML5.CO" />

<!-- Facebook and Twitter integration -->
<meta property="og:title" content="" />
<meta property="og:image" content="" />
<meta property="og:url" content="" />
<meta property="og:site_name" content="" />
<meta property="og:description" content="" />
<meta name="twitter:title" content="" />
<meta name="twitter:image" content="" />
<meta name="twitter:url" content="" />
<meta name="twitter:card" content="" />

<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="favicon.ico">

<link
	href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,600,400italic,700'
	rel='stylesheet' type='text/css'>

<!-- Animate.css -->
<link rel="stylesheet" href="css/animate.css">
<!-- Flexslider -->
<link rel="stylesheet" href="css/flexslider.css">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet" href="css/icomoon.css">
<!-- Magnific Popup -->
<link rel="stylesheet" href="css/magnific-popup.css">
<!-- Bootstrap  -->
<link rel="stylesheet" href="css/bootstrap.css">

<link rel="stylesheet" href="css/red.css">


<style>
/* For demo purpose only */

/*

	RED
	FA5555
	TURQUOISE
	27E1CE
	
	*/

/* For Demo Purposes Only ( You can delete this anytime :-) */
#colour-variations {
	padding: 10px;
	-webkit-transition: 0.5s;
	-o-transition: 0.5s;
	transition: 0.5s;
	width: 140px;
	position: fixed;
	left: 0;
	top: 100px;
	z-index: 999999;
	background: #fff;
	/*border-radius: 4px;*/
	border-top-right-radius: 4px;
	border-bottom-right-radius: 4px;
	-webkit-box-shadow: 0 0 9px 0 rgba(0, 0, 0, .1);
	-moz-box-shadow: 0 0 9px 0 rgba(0, 0, 0, .1);
	-ms-box-shadow: 0 0 9px 0 rgba(0, 0, 0, .1);
	box-shadow: 0 0 9px 0 rgba(0, 0, 0, .1);
}

#colour-variations.sleep {
	margin-left: -140px;
}

#colour-variations h3 {
	text-align: center;;
	font-size: 11px;
	letter-spacing: 2px;
	text-transform: uppercase;
	color: #777;
	margin: 0 0 10px 0;
	padding: 0;;
}

#colour-variations ul, #colour-variations ul li {
	padding: 0;
	margin: 0;
}

#colour-variations ul {
	margin-bottom: 20px;
	float: left;
}

#colour-variations li {
	list-style: none;
	display: inline;
}

#colour-variations li a {
	width: 20px;
	height: 20px;
	position: relative;
	float: left;
	margin: 5px;
}

#colour-variations li a[data-theme="style"] {
	background: #8dc63f;
}

#colour-variations li a[data-theme="red"] {
	background: #FA5555;
}

#colour-variations li a[data-theme="turquoise"] {
	background: #27E1CE;
}

#colour-variations li a[data-theme="blue"] {
	background: #2772DB;
}

#colour-variations li a[data-theme="orange"] {
	background: #FF7844;
}

#colour-variations li a[data-theme="yellow"] {
	background: #FCDA05;
}

#colour-variations li a[data-theme="pink"] {
	background: #F64662;
}

#colour-variations li a[data-theme="purple"] {
	background: #7045FF;
}

#colour-variations a[data-layout="boxed"], #colour-variations a[data-layout="wide"]
	{
	padding: 2px 0;
	width: 48%;
	border: 1px solid #ededed;
	text-align: center;
	color: #777;
	display: block;
}

#colour-variations a[data-layout="boxed"]:hover, #colour-variations a[data-layout="wide"]:hover
	{
	border: 1px solid #777;
}

#colour-variations a[data-layout="boxed"] {
	float: left;
}

#colour-variations a[data-layout="wide"] {
	float: right;
}

.option-toggle {
	position: absolute;
	right: 0;
	top: 0;
	margin-top: 5px;
	margin-right: -30px;
	width: 30px;
	height: 30px;
	background: #8dc63f;
	text-align: center;
	border-top-right-radius: 4px;
	border-bottom-right-radius: 4px;
	color: #fff;
	cursor: pointer;
	-webkit-box-shadow: 0 0 9px 0 rgba(0, 0, 0, .1);
	-moz-box-shadow: 0 0 9px 0 rgba(0, 0, 0, .1);
	-ms-box-shadow: 0 0 9px 0 rgba(0, 0, 0, .1);
	box-shadow: 0 0 9px 0 rgba(0, 0, 0, .1);
}

.option-toggle i {
	top: 2px;
	position: relative;
}

.option-toggle:hover, .option-toggle:focus, .option-toggle:active {
	color: #fff;
	text-decoration: none;
	outline: none;
}
</style>
<!-- End demo purposes only -->


<!-- Modernizr JS -->
<script src="js/modernizr-2.6.2.min.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

</head>

<body>

	<!-- Loader -->
	<div class="fh5co-loader"></div>

	<div id="fh5co-page">



		<section id="fh5co-header">
			<div class="container">
				<nav role="navigation">
					<ul class="pull-left left-menu">
						<li><a href="#fh5co-features-2">Image</a></li>
						<li><a href="#fh5co-features-3">Board</a></li>
					</ul>
					<h1 id="fh5co-logo">
						<a href="/test">Inception<span>.</span></a>
					</h1>
					<ul class="pull-right right-menu">
						<li><c:choose>
								<c:when test="${not empty sessionScope.loginInfo}">
									<span>welcome ${sessionScope.loginInfo.userid} !! </span>
									<a href="/profile/${sessionScope.loginInfo.userid}/">profile</a>
									<a href="/user/logout">Log out</a>
								</c:when>
								<c:otherwise>
									<a href="/user/login"> Login </a>
								</c:otherwise>
							</c:choose></li>
						<li class="fh5co-cta-btn"><a href="/user/join">Sign up</a></li>
					</ul>
				</nav>
			</div>
		</section>
		<!-- #fh5co-header -->

		<section id="fh5co-hero" class="js-fullheight"
			style="background-image: url(images/hero_bg.jpg);" data-next="yes">
			<div class="fh5co-overlay"></div>
			<div class="container">
				<div class="fh5co-intro js-fullheight">
					<div class="fh5co-intro-text">
						<!-- 
							INFO:
							Change the class to 'fh5co-right-position' or 'fh5co-center-position' to change the layout position
							Example:
							<div class="fh5co-right-position">
						-->
						<div class="fh5co-left-position">
							<h2 class="animate-box">Create Awesome Things for Better Web</h2>
							<p class="animate-box">
								<a href="https://vimeo.com/channels/staffpicks/93951774"
									class="btn btn-outline popup-vimeo btn-video"><i
									class="icon-play2"></i> Watch video</a> <a
									href="http://freehtml5.co" target="_blank"
									class="btn btn-primary">Visit FREEHTML5.co</a>
							</p>
						</div>
					</div>
				</div>
			</div>
			<div class="fh5co-learn-more animate-box">
				<a href="#" class="scroll-btn"> <span class="text">Explore
						more about us</span> <span class="arrow"><i
						class="icon-chevron-down"></i></span>
				</a>
			</div>
		</section>
		<!-- END #fh5co-hero -->


		<section id="fh5co-features-2" class="js-fullheight"
			style="background-image: url(images/hero_bg.jpg);" data-next="yes">
			<div class="container">
				<div class="col-md-6 col-md-push-6">
					<figure class="fh5co-feature-image animate-box">
						<br>
						<br>
						<br>
						<br>
						<center>
							<form id="form1" runat="server" action="inception" method="post"
								enctype="multipart/form-data">
								<p>
									<input id="imgInp" type="file" name="uploadfile"
										required="required" style="display: none;" /> <img
										src="data:image/png;base64,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"
										border="0" onclick="document.all.uploadfile.click();"
										id="imgbtn"> <br> <img id="blah"
										style="width: 80%; height: auto;" /> <br> <br> <input
										type="submit" value="Search">
								</p>
							</form>
						</center>
					</figure>
				</div>
				<div class="col-md-6 col-md-pull-6">
					<h2 class="fh5co-lead animate-box">이미지 검색기</h2>
					<div class="fh5co-feature">
						<div class="fh5co-icon animate-box">
							<i class="icon-check2"></i>
						</div>
						<div class="fh5co-text animate-box">
							<h3>Step.1</h3>
							<p>카메라 그림을 클릭하세요</p>
						</div>
					</div>
					<div class="fh5co-feature">
						<div class="fh5co-icon animate-box">
							<i class="icon-check2"></i>
						</div>
						<div class="fh5co-text animate-box">
							<h3>Step.2</h3>
							<p>분석을 원하시는 그림파일을 선택해주세요</p>
						</div>
					</div>
					<div class="fh5co-feature">
						<div class="fh5co-icon animate-box">
							<i class="icon-check2"></i>
						</div>
						<div class="fh5co-text animate-box">
							<h3>Step.3</h3>
							<p>검색을 누르시고 원하는 결과를 눌러확인해주세요</p>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section id="fh5co-features-3" data-next="yes">
			<div class="container">
				<div class="row row-bottom-padded-md">
					<div class="col-md-6 col-md-offset-3 text-center">
						<h2 class="fh5co-lead animate-box">Our Boards</h2>
						<p class="fh5co-sub-lead animate-box">Far far away, behind the
							word mountains, far from the countries Vokalia and Consonantia,
							there live the blind texts.</p>
					</div>
				</div>

				<div class="row">
					<div class="col-md-12 col-sm-12 col-xxs-12 animate-box">
						<div style="border: solid 1px;">
							<c:import url="/category"></c:import>
						</div>

						<div class="col-xs-9" style="border: solid 1px; height: inherit;">
							<ul>
								<c:forEach var="vo" items="${boardList}">
									<li><a href="/board/boardDetail/${vo.bidx}">${vo.thumbnail}</a>
										<div>
											<h3>
												<a href="/board/boardDetail/${vo.bidx}"> ${vo.title}</a>
											</h3>
										</div>
										<div>
											<a href="/board/boardDetail/${vo.bidx}">${vo.contents}</a>
										</div>
										<div>
											<span>${ vo.category }</span> | <span>${ vo.hitcnt }></span>
											| <span>${ vo.gcnt }</span> | <span>${ vo.bcnt }</span> | <span>${ vo.userid }</span>
											| <span>${ vo.writedate }</span> | <span>${ vo.scrapecnt }</span>
											| <span>${ vo.rpcnt }</span>
										</div></li>
								</c:forEach>
							</ul>
						</div>

						<div class="col-xs-3" style="border: solid 1px;">
							<c:import url="/board/hottagList"></c:import>
						</div>

						<script type="text/javascript">
							function removeTag(content) {
								return content.replace(/(<([^>]+)>)/gi, "");
							}
							$(function() {
								$("#popbutton").click(function() {
									$('div.modal').modal({
										remote : 'layer.html'
									});
								})
							})
						</script>
					</div>

				</div>
			</div>
			<hr>
		</section>
		<!-- END #fh5co-projects -->

		<section id="fh5co-features">
			<div class="container">
				<div class="row text-center row-bottom-padded-md">
					<div class="col-md-8 col-md-offset-2">
						<figure class="fh5co-devices animate-box">
							<img src="images/img_devices.png"
								alt="Free HTML5 Bootstrap Template" class="img-responsive">
						</figure>
						<h2 class="fh5co-lead animate-box">Perfect Display in All
							Devices</h2>
						<p class="fh5co-sub-lead animate-box">Far far away, behind the
							word mountains, far from the countries Vokalia and Consonantia,
							there live the blind texts. Separated they live in Bookmarksgrove
							right at the coast of the Semantics, a large language ocean. A
							small river named Duden flows.</p>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 col-sm-6 col-xs-12 animate-box">
						<div class="fh5co-feature">
							<div class="fh5co-icon">
								<i class="icon-power"></i>
							</div>
							<h3>Best For Startup</h3>
							<p>Far far away, behind the word mountains, far from the
								countries Vokalia and Consonantia, there live the blind texts.
								Separated they live in Bookmarksgrove right .</p>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 col-xs-12 animate-box">
						<div class="fh5co-feature">
							<div class="fh5co-icon">
								<i class="icon-flag2"></i>
							</div>
							<h3>Easy To Use</h3>
							<p>Far far away, behind the word mountains, far from the
								countries Vokalia and Consonantia, there live the blind texts.
								Separated they live in Bookmarksgrove right .</p>
						</div>
					</div>
					<div class="clearfix visible-sm-block"></div>
					<div class="col-md-4 col-sm-6 col-xs-12 animate-box">
						<div class="fh5co-feature">
							<div class="fh5co-icon">
								<i class="icon-anchor"></i>
							</div>
							<h3>Robust In Mind</h3>
							<p>Far far away, behind the word mountains, far from the
								countries Vokalia and Consonantia, there live the blind texts.
								Separated they live in Bookmarksgrove right .</p>
						</div>
					</div>

					<div class="col-md-4 col-sm-6 col-xs-12 animate-box">
						<div class="fh5co-feature">
							<div class="fh5co-icon">
								<i class="icon-paragraph"></i>
							</div>
							<h3>Beautiful Typography</h3>
							<p>Far far away, behind the word mountains, far from the
								countries Vokalia and Consonantia, there live the blind texts.
								Separated they live in Bookmarksgrove right .</p>
						</div>
					</div>
					<div class="clearfix visible-sm-block"></div>
					<div class="col-md-4 col-sm-6 col-xs-12 animate-box">
						<div class="fh5co-feature">
							<div class="fh5co-icon">
								<i class="icon-umbrella"></i>
							</div>
							<h3>Eco Friendly</h3>
							<p>Far far away, behind the word mountains, far from the
								countries Vokalia and Consonantia, there live the blind texts.
								Separated they live in Bookmarksgrove right .</p>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 col-xs-12 animate-box">
						<div class="fh5co-feature">
							<div class="fh5co-icon">
								<i class="icon-toggle"></i>
							</div>
							<h3>Wide and Boxed</h3>
							<p>Far far away, behind the word mountains, far from the
								countries Vokalia and Consonantia, there live the blind texts.
								Separated they live in Bookmarksgrove right .</p>
						</div>
					</div>
					<div class="clearfix visible-sm-block"></div>
				</div>
			</div>
		</section>

		<!-- END #fh5co-features -->


		<section id="fh5co-features-2">
			<div class="container">
				<div class="col-md-6 col-md-push-6">
					<figure class="fh5co-feature-image animate-box">
						<img src="images/macbook.png"
							alt="Free HTML5 Bootstrap Template by FREEHTML5.co">
					</figure>
				</div>
				<div class="col-md-6 col-md-pull-6">
					<span class="fh5co-label animate-box">See Features</span>
					<h2 class="fh5co-lead animate-box">Superb Features</h2>
					<div class="fh5co-feature">
						<div class="fh5co-icon animate-box">
							<i class="icon-check2"></i>
						</div>
						<div class="fh5co-text animate-box">
							<h3>Beautiful Typography</h3>
							<p>Far far away, behind the word mountains, far from the
								countries Vokalia and Consonantia, there live the blind texts.</p>
						</div>
					</div>
					<div class="fh5co-feature">
						<div class="fh5co-icon animate-box">
							<i class="icon-check2"></i>
						</div>
						<div class="fh5co-text animate-box">
							<h3>Eco Friendly</h3>
							<p>Far far away, behind the word mountains, far from the
								countries Vokalia and Consonantia, there live the blind texts.</p>
						</div>
					</div>
					<div class="fh5co-feature">
						<div class="fh5co-icon animate-box">
							<i class="icon-check2"></i>
						</div>
						<div class="fh5co-text animate-box">
							<h3>Wide and Boxed</h3>
							<p>Far far away, behind the word mountains, far from the
								countries Vokalia and Consonantia, there live the blind texts.</p>
						</div>
					</div>

					<div class="fh5co-btn-action animate-box">
						<a href="#" class="btn btn-primary btn-cta">More Features</a>
					</div>

				</div>
			</div>
		</section>
		<!-- END #fh5co-features-2 -->

		<section id="fh5co-testimonials">
			<div class="container">
				<div class="row row-bottom-padded-sm">
					<div class="col-md-6 col-md-offset-3 text-center">
						<div class="fh5co-label animate-box">Testimonials</div>
						<h2 class="fh5co-lead animate-box">Join the 1 Million Users
							using Our Products</h2>
					</div>
				</div>
				<div class="row">
					<div class="col-md-8 col-md-offset-2 text-center animate-box">
						<div class="flexslider">
							<ul class="slides">
								<li>
									<blockquote>
										<p>&ldquo;Creativity is just connecting things. When you
											ask creative people how they did something, they feel a
											little guilty because they didn’t really do it, they just saw
											something. It seemed obvious to them after a while.&rdquo;</p>
										<p>
											<cite>&mdash; Steve Jobs</cite>
										</p>
									</blockquote>
								</li>
								<li>
									<blockquote>
										<p>&ldquo;I think design would be better if designers were
											much more skeptical about its applications. If you believe in
											the potency of your craft, where you choose to dole it out is
											not something to take lightly.&rdquo;</p>
										<p>
											<cite>&mdash; Frank Chimero</cite>
										</p>
									</blockquote>
								</li>
								<li>
									<blockquote>
										<p>&ldquo;Design must be functional and functionality must
											be translated into visual aesthetics, without any reliance on
											gimmicks that have to be explained.&rdquo;</p>
										<p>
											<cite>&mdash; Ferdinand A. Porsche</cite>
										</p>
									</blockquote>
								</li>
							</ul>
						</div>
						<div class="flexslider-controls">
							<ol class="flex-control-nav">
								<li class="animate-box"><img src="images/person4.jpg"
									alt="Free HTML5 Bootstrap Template by FREEHTML5.co"></li>
								<li class="animate-box"><img src="images/person2.jpg"
									alt="Free HTML5 Bootstrap Template by FREEHTML5.co"></li>
								<li class="animate-box"><img src="images/person3.jpg"
									alt="Free HTML5 Bootstrap Template by FREEHTML5.co"></li>
							</ol>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- END #fh5co-testimonials -->

		<section id="fh5co-subscribe">
			<div class="container">

				<h3 class="animate-box">
					<label for="email">Subscribe to our newsletter</label>
				</h3>
				<form action="#" method="post" class="animate-box">
					<i class="fh5co-icon icon-paper-plane"></i> <input type="email"
						class="form-control" placeholder="Enter your email" id="email"
						name="email"> <input type="submit" value="Send"
						class="btn btn-primary">
				</form>

			</div>
		</section>
		<!-- END #fh5co-subscribe -->

		<footer id="fh5co-footer">
			<div class="container">
				<div class="row row-bottom-padded-md">
					<div class="col-md-3 col-sm-6 col-xs-12 animate-box">
						<div class="fh5co-footer-widget">
							<h3>Company</h3>
							<ul class="fh5co-links">
								<li><a href="#">About Us</a></li>
								<li><a href="#">Careers</a></li>
								<li><a href="#">Feature Tour</a></li>
								<li><a href="#">Pricing</a></li>
								<li><a href="#">Team</a></li>
							</ul>
						</div>
					</div>

					<div class="col-md-3 col-sm-6 col-xs-12 animate-box">
						<div class="fh5co-footer-widget">
							<h3>Support</h3>
							<ul class="fh5co-links">
								<li><a href="#">Knowledge Base</a></li>
								<li><a href="#">24/7 Call Support</a></li>
								<li><a href="#">Video Demos</a></li>
								<li><a href="#">Terms of Use</a></li>
								<li><a href="#">Privacy Policy</a></li>
							</ul>
						</div>
					</div>

					<div class="col-md-3 col-sm-6 col-xs-12 animate-box">
						<div class="fh5co-footer-widget">
							<h3>Contact Us</h3>
							<p>
								<a href="mailto:info@freehtml5.co">info@freehtml5.co</a> <br>
								198 West 21th Street, <br> Suite 721 New York NY 10016 <br>
								<a href="tel:+123456789">+12 34 5677 89</a>
							</p>
						</div>
					</div>

					<div class="col-md-3 col-sm-6 col-xs-12 animate-box">
						<div class="fh5co-footer-widget">
							<h3>Follow Us</h3>
							<ul class="fh5co-social">
								<li><a href="#"><i class="icon-twitter"></i></a></li>
								<li><a href="#"><i class="icon-facebook"></i></a></li>
								<li><a href="#"><i class="icon-google-plus"></i></a></li>
								<li><a href="#"><i class="icon-instagram"></i></a></li>
								<li><a href="#"><i class="icon-youtube-play"></i></a></li>
							</ul>
						</div>
					</div>

				</div>

			</div>
			<div class="fh5co-copyright animate-box">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<p class="fh5co-left">
								<small>&copy; 2016 <a href="index.html">Guide</a> free
									html5. All Rights Reserved.
								</small>
							</p>
							<p class="fh5co-right">
								<small class="fh5co-right">Designed by <a
									href="http://freehtml5.co" target="_blank">FREEHTML5.co</a>
									Demo Images: <a href="http://unsplash.com" target="_blank">Unsplash</a></small>
							</p>
						</div>
					</div>
				</div>
			</div>
		</footer>
		<!-- END #fh5co-footer -->
	</div>
	<!-- END #fh5co-page -->

	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Flexslider -->
	<script src="js/jquery.flexslider-min.js"></script>
	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/magnific-popup-options.js"></script>

	<!-- Main JS (Do not remove) -->
	<script src="js/main.js"></script>
	<script>
		$(function() {
			$("#imgInp").on('change', function() {
				readURL(this);
			});
		});

		function readURL(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader();
				reader.onload = function(e) {
					$('#blah').attr('src', e.target.result);
				}
				reader.readAsDataURL(input.files[0]);
			}
		}
	</script>


</body>
</html>

