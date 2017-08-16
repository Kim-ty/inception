<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->



<style>
@import url('https://fonts.googleapis.com/css?family=Nunito');

@import url('https://fonts.googleapis.com/css?family=Poiret+One');

body, html {
	height: 100%;
	background-repeat: no-repeat;
	/*background-image: linear-gradient(rgb(12, 97, 33),rgb(104, 145, 162));*/
	background: black;
	position: relative;
}

#particles-js {
	width: 100%;
	height: 100%;
	background-size: cover;
	background-position: 50% 50%;
	position: fixed;
	top: 0px;
	z-index: 1;
}
</style>

</head>
<body>


	<div id="particles-js"></div>
	<!--<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/particles.js/2.0.0/particles.min.js"></script>-->

	<script>
		$
				.getScript(
						"https://cdnjs.cloudflare.com/ajax/libs/particles.js/2.0.0/particles.min.js",
						function() {
							particlesJS('particles-js', {
								"particles" : {
									"number" : {
										"value" : 80,
										"density" : {
											"enable" : true,
											"value_area" : 800
										}
									},
									"color" : {
										"value" : "#ffffff"
									},
									"shape" : {
										"type" : "circle",
										"stroke" : {
											"width" : 0,
											"color" : "#ffffff"
										},
										"polygon" : {
											"nb_sides" : 5
										},
										"image" : {
											"width" : 100,
											"height" : 100
										}
									},
									"opacity" : {
										"value" : 0.5,
										"random" : false,
										"anim" : {
											"enable" : false,
											"speed" : 1,
											"opacity_min" : 0.1,
											"sync" : false
										}
									},
									"size" : {
										"value" : 5,
										"random" : true,
										"anim" : {
											"enable" : false,
											"speed" : 40,
											"size_min" : 0.1,
											"sync" : false
										}
									},
									"line_linked" : {
										"enable" : true,
										"distance" : 150,
										"color" : "#ffffff",
										"opacity" : 0.4,
										"width" : 1
									},
									"move" : {
										"enable" : true,
										"speed" : 6,
										"direction" : "none",
										"random" : false,
										"straight" : false,
										"out_mode" : "out",
										"attract" : {
											"enable" : false,
											"rotateX" : 600,
											"rotateY" : 1200
										}
									}
								},
								"interactivity" : {
									"detect_on" : "canvas",
									"events" : {
										"onhover" : {
											"enable" : true,
											"mode" : "repulse"
										},
										"onclick" : {
											"enable" : true,
											"mode" : "push"
										},
										"resize" : true
									},
									"modes" : {
										"grab" : {
											"distance" : 400,
											"line_linked" : {
												"opacity" : 1
											}
										},
										"bubble" : {
											"distance" : 400,
											"size" : 40,
											"duration" : 2,
											"opacity" : 8,
											"speed" : 3
										},
										"repulse" : {
											"distance" : 200
										},
										"push" : {
											"particles_nb" : 4
										},
										"remove" : {
											"particles_nb" : 2
										}
									}
								},
								"retina_detect" : true,
								"config_demo" : {
									"hide_card" : false,
									"background_color" : "#b61924",
									"background_image" : "",
									"background_position" : "50% 50%",
									"background_repeat" : "no-repeat",
									"background_size" : "cover"
								}
							});

						});
	</script>
</body>
</html>