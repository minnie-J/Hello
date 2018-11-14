<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<link rel="icon" href="/img/favicon_16.png" sizes="16x16">
<link rel="icon" href="/img/favicon_32.png" sizes="32x32">
<link rel="icon" href="/img/favicon_48.png" sizes="48x48">
<link rel="icon" href="/img/favicon_64.png" sizes="64x64">
<link rel="icon" href="/img/favicon_128.png" sizes="128x128">
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

<!-- fullpage에 필요 -->
<link rel="stylesheet" type="text/css" href="/css/fullpagecss.css">

<!-- 나눔스퀘어 -->
<link rel="stylesheet" href="//cdn.rawgit.com/hiun/NanumSquare/master/nanumsquare.css">
<!-- font-family: 'Nanum Square';
font-weight : 300, 400, 700, 800 -->

<!-- fullpage에 필요 -->
<link rel="stylesheet" type="text/css" href="https://unpkg.com/fullpage.js/dist/fullpage.min.css">
<link rel="stylesheet" type="text/css" href="/css/page-detail.css">
</head>


<body>


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
		<div class="section">
			<div id="sec1-out">
				<div id="sec1-content">
					<div id="hello"></div><div id="world"></div>
					<div id="iam">
						<!-- I &nbsp;AM<br>JEONG &nbsp;MINHEE -->
						I AM<br>JEONG MINHEE
					</div>
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
  	      			<div class="col" class="contents-contain">
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
					<c:forEach begin="1" end="${fn:length(boardList)}">
						<div id="img-wrap"></div>
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
							<span style="font-family: 'Nanum Myeongjo', serif; font-weight: 400; font-size: 24px; color: #339999;">정민희</span><p>
							<a href="https://github.com/minnie-J/Hello" target="_blank" title="GitHub"><img src="/img/GitHub-Mark-Light-64px.png" alt="GitHub" id="github"></a>&nbsp;
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
	       						<div class="right-element-sm">GitHub</div><br>
	       						<span style="color: #339999">&nbsp;+ NAS에서 운영중 </span>
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
		<!-- <div class="modal-dialog modal-lg modal-dialog-centered">-->
			<div class="modal-dialog modal-dialog-centered" id="modal-width">
			<div class="modal-content" id="modal-height">
				<div class="row">
					<!-- 프로젝트 이미지들 -->
					<div id="img-div">
						<div id="myCarousel" class="carousel" data-ride="carousel"
							data-interval="false">
							<!-- <button type="button" class="close" data-dismiss="modal">&times;</button> -->

							<!-- Indicators -->
							<ul class="carousel-indicators" id="indicator"><!-- indicator 오는 자리--></ul>

							<!-- The slideshow -->
							<div class="carousel-inner" id="inner-images"><!-- 이미지 슬라이드 오는 자리 --></div>

							<!-- Left and right controls -->
							<a class="carousel-control-prev" href="#myCarousel"
								data-slide="prev"> <span class="carousel-control-prev-icon"></span>
							</a> <a class="carousel-control-next" href="#myCarousel"
								data-slide="next"> <span class="carousel-control-next-icon"></span>
							</a>
						</div>
					</div>
					<div id="modal-inside">
						<!-- Modal Header -->
						<div class="modal-header">
         			 		<div class="modal-title">
         			 			<div id="project-info">
         			 				<div id="project-category"></div>
         			 				<div id="project-type"></div>
         			 			</div>
         			 			<div id="project-title"></div>
         			 		</div>
          					<!-- <button type="button" class="close" data-dismiss="modal">&times;</button>-->
          					<button type="button" class="close" data-dismiss="modal"><img src="/img/close.png" /></button>
        				</div>

						<!-- Modal body -->
						<div class="modal-body">
					
							<!-- 프로젝트 설명 -->
							<div id="content-div">
								<!-- <button type="button" class="close" data-dismiss="modal">&times;</button>-->
								<div id="project-content"></div>
								<form id="project-charge-title">
									<fieldset>
										<legend>담당역할</legend>
										<div id="project-charge"></div>
									</fieldset>
								</form>
							</div>
						</div>

						<!-- Modal footer -->
						<div class="modal-footer">
							<div>어플리케이션 테스트해보세요 :)</div>
							<div id="project-down-div">
								<!-- <div id="download-img"></div>-->
								<a href="" id="project-downlink">
									<img id="download-img" src="/img/download_before.png"/>
								</a>
							</div>
          					<!-- <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>-->
        				</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
	
	<script>
	
		$(document).ready(function() {
			
			// 처음 접속시 로고 숨기기 - 로고 보이고 안보이고는 페이지 따라 vue에서
			$('#logo').css('display', 'none');
			
			// 이미지 버튼 클릭하면 실행되는 메소드 - 모달실행, body 스크롤 방지
			$('.image-btn').click(function() {
				var pno = this.id;

				getAboutProject(pno);
				
				getAllImages(pno);
				
				$("#myModal").modal();
				fullpage_api.setAllowScrolling(false);
			});
			
			// 모달이 닫히면 스크롤 방지 해제
			$("#myModal").on('hide.bs.modal', function(e){
				fullpage_api.setAllowScrolling(true);
			});
			
			// 클릭한 이미지 버튼에 해당되는 프로젝트 설명 가져오는 메소드
			function getAboutProject(pno) {
				$.getJSON('/' + pno, function(data) {
					var title = data.title;
					//var contentOri = data.content;
					//var content = contentOri.replace(/(\n|\r\n)/g, '<br>');
					var content = data.content;
					var charge = data.charge;
					var downlink = data.downlink;
					var category = data.category;
					var type = data.type;

					$('#project-title').html(title);
					$('#project-content').html(content);
					$('#project-charge').html(charge);
					//$('#project-downlink').html(downlink);
					$('#project-downlink').attr('href', downlink);
					$('#project-category').html(category);
					$('#project-type').html(type);

					
					if(charge == null) {
						$('#project-charge-title').css('display', 'none');
					}
					if(charge != null) {
						$('#project-charge-title').css('display', 'block');
					}
					
					if(downlink == null) {
						$('.modal-footer').css('display', 'none');
						$('.modal-body').css('height', '508px');
						$('#content-div').css('padding-right', '16px');
					}
					if(downlink != null) {
						$('.modal-body').css('height', '426px');
						$('.modal-footer').css('display', 'flex');
					}
				});
			}
			
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
<script src="https://cdnjs.cloudflare.com/ajax/libs/fullPage.js/3.0.3/vendors/scrolloverflow.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.5.13/vue.min.js"></script>
<script src="https://unpkg.com/vue-fullpage.js/dist/vue-fullpage.js"></script>
<script src="/js/fullpage-main.js"></script>

</body>
</html>