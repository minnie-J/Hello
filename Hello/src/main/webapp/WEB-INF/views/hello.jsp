<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<title>Hello :)</title>

<!-- 포트폴리오 modal, carousel에 필요 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

<style>

/* 웹폰트 적용 */
@import url('https://fonts.googleapis.com/css?family=Doppio+One|Dosis:200,400,500|Inconsolata:400,700|Lekton:400,700|Nanum+Myeongjo:400,700|Poiret+One|Secular+One|Ubuntu+Mono:400,700|Noto+Sans+KR:300,400&effect=emboss');

/* 상단 메뉴 링크 밑줄 방지 */
a:hover {
	text-decoration: none;
}

/* 클릭된 링크 , 버튼 점선 제거 */
a:focus, 
button:focus{
	outline: none;
}

.image-btn:hover {
	cursor: pointer;
}

/* 모달관련  */
.modal {
	position: fixed;
	height: 100%;
	z-index: 10000;
}

/* 모달 이미지 가로 세로 비율 */
.carousel-inner img {
	width: 100%;
	/*height: auto;*/
	height: 100%;
}

/* 모달 배경 흑막 opacity */  
.modal-backdrop.show {
	opacity: 0.8;
}

/* 모달 테두리, 모서리 라운딩 제거, 그림자 효과 약간  */
.modal-content {
	-webkit-border-radius: 0px !important;
	-moz-border-radius: 0px !important;
	border-radius: 0px !important;
	border: 0px;
	-webkit-box-shadow: 0 3px 7px rgba(0, 0, 0, 0.3);
	-moz-box-shadow: 0 3px 7px rgba(0, 0, 0, 0.3);
	box-shadow: 0 3px 7px rgba(0, 0, 0, 0.3);
	-webkit-background-clip: padding-box;
	-moz-background-clip: padding-box;
}

/* 모달 사이드 여백없이 */
.modal-body {
	padding: 0px;
}

/* 모달 indicator 모양 변경 */
.carousel-indicators li {
	width: 10px;
	height: 10px;
	margin-left: 4px;
	margin-right: 4px;
	border-radius: 100%;
}

/* 모달 next, prev 아이콘 변경 */
/*.carousel-control-next-icon {
    background-image: 
}*/

/* 모달 아이콘 위치 가장자리로 */
.carousel-control-next,
.carousel-control-prev {
	width: 8%;
}

/* 한 페이지 이미지 풀배경일때  */
#section-bg {
	/* Full height */
    height: 100%;
    /* Center and scale the image nicely */
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}

/* 로고 */
#logo, 
#logo a{
	top: 25px !important;
    left: 80px !important;
	/*font-family: 'Nanum Myeongjo', sans-serif;
	font-weight: normal !important;
	color: #cccccc !important;*/
	display: block;
	
}

/* 우측 상단 링크 메뉴 관련 */
#menu a{
	font-family: 'Dosis', sans-serif !important;
	font-weight: 500;
	color: #999999 !important;
}

#menu li.active a::after{
	background: #d9d9d9 !important;
	/*height: 1px !important;*/
	bottom: -2px !important;
}

</style>

<link rel="stylesheet" type="text/css" href="/css/page-detail.css">
</head>
<body>
<!-- fullpage에 필요 -->
<link rel="stylesheet" type="text/css" href="/css/fullpagecss.css">
<link rel="stylesheet" type="text/css" href="https://unpkg.com/fullpage.js/dist/fullpage.min.css">

	<div id="app">
		<div id="logo">
			<a href="#page1"><img src="/img/hello_logo.png" /></a>
			
		</div>

		<!-- fullpage 오른쪽 상단 앵커 링크 메뉴 -->
		<ul id="menu">
			<!-- <li data-menuanchor="page1" class="active">
				<a href="#page1">Section 1</a></li> -->
			<li data-menuanchor="page2" class="">
				<a href="#page2">SKILLS & EXPERIENCE</a></li>
			<li data-menuanchor="page3" class="">
				<a href="#page3">PROJECTS</a></li>
			<li data-menuanchor="page4" class="">
				<a href="#page4">ABOUT THIS PAGE</a></li>
			<!-- <li><a href="#">test</a></li>-->
		</ul>

		<!-- fullpage 각 페이지 내용 -->
		<full-page :options="options" id="fullpage" ref="fullpage">
		
		<!-- 첫 페이지 -->
		<div id="section-bg" class="section">
			<div id="sec1-content">
				<div id="hello-world"></div>
				<div id="iam">
					I &nbsp;AM<br>JEONG &nbsp;MINHEE
				</div>
			</div>
		</div>
		
		<!-- 두번째 페이지 -->
		<div class="section">
			<!-- <div id="title-area">
				<div class="col-8" id="in">
					
				</div>
			</div>-->
			<div id="out">
    			<div class="col-8" id="in">
    				<div id="page-title">SKILLS <span style="font-size: 30px">&</span> EXPERIENCE</div>
        		</div>
  	      		<div id="content-out">	
  	      			<div class="contents-contain">
	           			<div class="row" id="table-row">
	    					<div class="col" id="left-content">Language</div>
	    					<div class="col" id="right-content">
	    						&nbsp;<br>
	        					<div class="right-element">JAVA</div>
	        					<div class="right-element">JSP</div>
	        					<div class="right-element">JavaScript</div><br>
	   		     				<div class="right-element">jQuery</div>
	        					<div class="right-element">Ajax</div>
        					</div>    
            			</div>
            			<div class="row" id="table-row">
	    					<div class="col" id="left-content">Framework</div>
               				<div class="col" id="right-content">
	        					&nbsp;<br>
	        					<div class="right-element">Spring MVC</div>
	        					<div class="right-element">Spring Boot</div><br>
	        					<div class="right-element">MyBatis</div>
	        					<div class="right-element">Vue.js</div>
                			</div>
            			</div>
            			<div class="row" id="table-row">
	    					<div class="col" id="left-content">Database</div>
               				<div class="col" id="right-content">
	        					&nbsp;<br>
	        					<div class="right-element">Oracle</div>
	        					<div class="right-element">MySQL</div><br>
	        					<div class="right-element">Firebase Realtime Database</div>
                			</div>
            			</div>
            			<div class="row" id="table-row">
	    					<div class="col" id="left-content">WAS</div>
               				<div class="col" id="right-content">
	        					&nbsp;<br>
	        					<div class="right-element">Tomcat</div>
                			</div>
            			</div>
            			<div class="row" id="table-row">
	    					<div class="col" id="left-content">IDE</div>
               				<div class="col" id="right-content">
	        					&nbsp;<br>
	        					<div class="right-element">Eclipse</div>
	        					<div class="right-element">Adroid Studio</div>
                			</div>
            			</div>
            			<div class="row" id="table-row">
	    					<div class="col" id="left-content">VersionControl</div>
               				<div class="col" id="right-content">
	        					&nbsp;<br>
	        					<div class="right-element">GitHub</div>
                			</div>
            			</div>
    				</div>
    			</div>	
			</div>
		</div>
		
		<!-- 세번째 페이지 -->
		<div class="section">
			<div id="out">
    			<div class="col-8" id="in">
    				<div id="page-title">PROJECTS</div>
    			</div>
        		<div class="thumbnails">
        			<!-- 모달 버튼 -->
					<!-- DB에 올린 프로젝트 수만큼 이미지 썸네일 버튼 생성 -->
					<c:forEach var="project" items="${projectList}">
						<div class="image-btn" id="${project.pno}" style="background-image: url('${project.thumbnail}')"></div>
						<!-- <img src="${portfolio.thumbnail}" class="image-btn" id="${portfolio.pronum}"/>-->
					</c:forEach>
        		</div>
        	</div>
		</div>
		
		<!-- 네번째 페이지(Footer) -->
		<div class="section fp-auto-height">
			<div id="footer-page">
				<div class="row" id="footer-row">
	    			<div class="col" id="left-title">
	    				<div id="iam-sm">
	    					I AM<br>
							JEONG MINHEE<br>
							<span style="font-family: 'Nanum Myeongjo', serif; font-weight: 400; font-size: 24px; color: #339999;">정민희</span>
						</div>
	    			</div>
	    			<div class="col" id="right-box">
	    				<div id="about">
	    					<div class="col" id="margin-con">
	    						<p>이 페이지의 개발환경</p>
	    					</div>
	    					<div class="col" id="margin-con1">
	       						<div class="right-element-sm">JAVA</div>
	       						<div class="right-element-sm">JSP</div>
	       						<div class="right-element-sm">Spring Boot</div><br>
	       						<div class="right-element-sm">MyBatis</div>
	       						<div class="right-element-sm">MySQL</div><br>
	       						<div class="right-element-sm">jQuery</div>
	       						<div class="right-element-sm">Ajax</div>
	       						<div class="right-element-sm">Bootstrap</div>
	       						<div class="right-element-sm">Vue.js</div><br>
	       						<div class="right-element-sm">Eclipse</div>
	       						<div class="right-element-sm">GitHub</div>
	    					</div>
	    					<div class="col">
	    						<p>현재는 해상도 1920 × 1080 화면에 최적화되어 있습니다.</p>
	    					</div> 
	    				</div>
	    			</div>
	    		</div>
			</div>
		</div>
		</full-page>

	</div>

	<!-- The Modal -->
	<div class="modal" id="myModal">
		<div class="modal-dialog modal-lg modal-dialog-centered">
			<div class="modal-content" id="modal-height">

				<!-- Modal Header -->
				<!-- <div class="modal-header">
          		<h4 class="modal-title">Modal Heading</h4>
          		<button type="button" class="close" data-dismiss="modal">&times;</button>
        		</div> -->

				<!-- Modal body -->
				<div class="modal-body" id="modal-inside">
					<div class="row">
						<!-- 프로젝트 이미지들 -->
						<div class="col-8" id="img-div">
							<div id="myCarousel" class="carousel" data-ride="carousel"
								data-interval="false">
								<!-- <button type="button" class="close" data-dismiss="modal">&times;</button> -->

								<!-- Indicators -->
								<ul class="carousel-indicators" id="indicator"></ul>

								<!-- The slideshow -->
								<div class="carousel-inner" id="inner-images"></div>

								<!-- Left and right controls -->
								<a class="carousel-control-prev" href="#myCarousel"
									data-slide="prev"> <span class="carousel-control-prev-icon"></span>
								</a> <a class="carousel-control-next" href="#myCarousel"
									data-slide="next"> <span class="carousel-control-next-icon"></span>
								</a>
							</div>
						</div>
						<!-- 프로젝트 설명 -->
						<div class="col-4" id="content-div">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							제대로 나오는지 테스트
						</div>

					</div>

				<!-- Modal footer -->
				<!-- <div class="modal-footer">
          		<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        		</div> -->

				</div>
			</div>
		</div>
	</div>
	
	
	
	<script>
	
		$(document).ready(function() {
			
			// 처음 접속시 로고 숨기기
			$('#logo').css('display', 'none');
			
			// 이미지 버튼 클릭하면 실행되는 메소드 - 모달실행, body 스크롤 방지
			$('.image-btn').click(function() {
				var pno = this.id;
				
				getAllImages(pno);
				
				$("#myModal").modal();
				fullpage_api.setAllowScrolling(false);
			});
			
			// 모달이 닫히면 스크롤 방지 해제
			$("#myModal").on('hide.bs.modal', function(e){
				fullpage_api.setAllowScrolling(true);
			});
			
			// 클릭한 이미지 버튼에 해당되는 프로젝트 이미지 서버에서 불러오는 메소드
			function getAllImages(pno) {
				$.getJSON('/images/all/' + pno, function(data) {
					console.log(data);
					var indicators = '';
					var images = '';
					
					$(data).each(function(i, e) {
						console.log(this);
						indicators += '<li data-target="#demo" data-slide-to="'+ i +'" id="indi' + i + '" class=""></li>'
						
						images += '<div class="carousel-item" id="img'+ i + '">'
								+ '<img src="'+ this.url +'" alt="image' + i + '" height="100%">'
								+ '</div>';
						
					}); // end each()

					$("#indicator").html(indicators);
					$("#inner-images").html(images);
					
					$("#img0").attr('class', 'carousel-item active');
					$("#indi0").attr('class', 'active');
				}); // end $.getJSON()
			} // end getAllImages()
			

		});
	</script>

<!-- fullpage에 필요 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.5.13/vue.min.js"></script>
<script src="https://unpkg.com/vue-fullpage.js/dist/vue-fullpage.js"></script>
<script src="/js/fullpage-main.js"></script>

</body>
</html>