<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.sql.*"%>
<%@page import="java.util.HashSet"%>

<!DOCTYPE html>
<html lang="zxx">
<head>
	<title>Home</title>
	<!-- meta-tags -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="" />
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- //meta-tags -->
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/table.css" rel="stylesheet" type="text/css" media="all" />
	<!-- font-awesome -->
	<link href="css/font-awesome.css" rel="stylesheet">
	<!-- fonts -->
	<link href="http://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
	    rel="stylesheet">
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
</head>

<body>
	<!-- header -->
	<div class="header-top">
		<div class="container">
			<div class="bottom_header_left">
				<p>
					<span class="fa fa-map-marker" aria-hidden="true"></span>河北师范大学软件学院
				</p>
			</div>
			<div class="bottom_header_right">
				<div class="bottom-social-icons">
					<a class="facebook" href="#">
						<span class="fa fa-facebook"></span>
					</a>
					<a class="twitter" href="#">
						<span class="fa fa-twitter"></span>
					</a>
					<a class="pinterest" href="#">
						<span class="fa fa-pinterest-p"></span>
					</a>
					<a class="linkedin" href="#">
						<span class="fa fa-linkedin"></span>
					</a>
				</div>
				<div class="header-top-righ">
					<a href="login.html">
						<span class="fa fa-sign-out" aria-hidden="true"></span>Login</a>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<div class="header">
		<div class="content white">
			<nav class="navbar navbar-default">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span>
							
						</button>
						<a class="navbar-brand" href="index.html">
							<h1>
								<span class="fa fa-leanpub" aria-hidden="true"></span>软件学院
								<label>Software & College</label>
							</h1>
						</a>
					</div>
					<!--/.navbar-header-->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<nav class="link-effect-2" id="link-effect-2">
							<ul class="nav navbar-nav">
								<li class="active">
									<a href="index.html" class="effect-3">首页</a>
								</li>
								<li>
									<a href="about.html" class="effect-3">毕业生</a>
								</li>
								<li>
									<a href="courses.html" class="effect-3">校友课堂</a>
								</li>
								<li>
									<a href="join.html" class="effect-3">社群</a>
								</li>
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown">Pages
										<span class="caret"></span>
									</a>
									<ul class="dropdown-menu" role="menu">
										<li>
											<a href="icons.html">Web Icons</a>
										</li>
										<li>
											<a href="codes.html">Short Codes</a>
										</li>
									</ul>
								</li>
								<li>
									<a href="Gallery.html" class="effect-3">Gallery</a>
								</li>
								<li>
									<a href="contact.html" class="effect-3">Contact Us</a>
								</li>
							</ul>
						</nav>
					</div>
					<!--/.navbar-collapse-->
					<!--/.navbar-->
				</div>
			</nav>
		</div>
	</div>
	<!-- banner -->
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1" class=""></li>
			<li data-target="#myCarousel" data-slide-to="2" class=""></li>
			<li data-target="#myCarousel" data-slide-to="3" class=""></li>
		</ol>
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<div class="container">
					<div class="carousel-caption">
						<h6>Welcome To Best Study</h6>
						<h3>Leading
							<span>University</span>
						</h3>
						<p>Create an all-encompassing website for your school with ease.</p>
					</div>
				</div>
			</div>
			<div class="item item2">
				<div class="container">
					<div class="carousel-caption">
						<h6>Welcome To Best Study</h6>
						<h3>Most Popular
							<span>Education</span>
						</h3>
						<p>Create an all-encompassing website for your school with ease.</p>
					</div>
				</div>
			</div>
			<div class="item item3">
				<div class="container">
					<div class="carousel-caption">
						<h6>Welcome To Best Study</h6>
						<h3>We Can
							<span>Teach</span> You</h3>
						<p>Create an all-encompassing website for your school with ease.</p>
					</div>
				</div>
			</div>
			<div class="item item4">
				<div class="container">
					<div class="carousel-caption">
						<h6>Welcome To Best Study</h6>
						<h3>Most Popular
							<span>Education</span>
						</h3>
						<p>Create an all-encompassing website for your school with ease.</p>
					</div>
				</div>
			</div>
		</div>
		<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
			<span class="fa fa-chevron-left" aria-hidden="true"></span>
			<span class="sr-only">Previous</span>
		</a>
		<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
			<span class="fa fa-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
		<!-- The Modal -->
	</div>
	<!--//banner -->
	<!-- about -->
	<div class="banner-bottom-w3l" id="about">
		<div class="container">
			<div class="title-div">
				<h3 class="tittle">
					<span>历年就业情况</span>
				</h3>
				<div class="tittle-style">

				</div>
			</div>
			<div class="welcome-sub-wthree" style="border:1px solid #FFF000;">
				
				<div class="index_table_year" style="border:1px solid #00FFFF;">
					<ul id="nav">
						<li><a  href="#">2019年就业情况</a></li>
						<li><a  href="#">2018年就业情况</a></li>
					</ul>
				</div>
				
				<div id="index_table" style="border:1px solid #cdcdcd;">
					
				</div>
			
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
		
	
	<!-- news -->
	<div class="news" id="news">
		<div class="container">
			<div class="title-div">
				<h3 class="tittle">
					<span>名企</span>明星
				</h3>
				<div class="tittle-style"></div>
			</div>
		
			<div class="yaallahaa-news-grids-agile">
				<div class="yaallahaa-news-grid">
					<div class="col-md-6 yaallahaa-news-left">
						<div class="col-xs-6 news-left-img">
							<div class="news-left-text color-event1">
								<h5>${jobList1.name} </h5>
							</div>
						</div>
						<div class="col-xs-6 news-grid-info-bottom-w3ls">
							<div class="news-left-top-text text-color1">
								就职公司：<a href="#" data-toggle="modal" data-target="#myModal">${jobList1.company}</a>
							</div>
							<div class="news-grid-info-bottom-w3ls-text">
								<span>座右铭：</span>${jobList1.motto}
							</div>
							<div class="date-grid">
								<div class="admin">
									<a href="#">
										月薪水： ${jobList1.salary}</a>
								</div>
								<div class="time">
									<p>
										年 级： ${jobList1.sclass}</p>
								</div>
								<div class="clearfix"> </div>
							</div>
							
						</div>
						<div class="clearfix"> </div>
					</div>
					
					<div class="col-md-6 yaallahaa-news-left">
						<div class="col-xs-6 news-left-img news-left-img1">
							<div class="news-left-text color-event2">
								<h5>${jobList2.name}</h5>
							</div>
						</div>
						<div class="col-xs-6 news-grid-info-bottom-w3ls">
							<div class="news-left-top-text text-color2">
								就职公司：<a href="#" data-toggle="modal" data-target="#myModal">${jobList2.company}</a>
							</div>
							<div class="news-grid-info-bottom-w3ls-text">
								<span>座右铭：</span>${jobList2.motto}
							</div>
							<div class="date-grid">
								<div class="admin">
									<a href="#">
										月薪水： ${jobList2.salary}</a>
								</div>
								<div class="time">
									<p>
										年 级： ${jobList2.sclass}</p>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="yaallahaa-news-grid">
					<div class="col-md-6 yaallahaa-news-left">
						<div class="col-xs-6 news-left-img news-left-img2">
							<div class="news-left-text color-event3">
								<h5>${jobList3.name}</h5>
							</div>
						</div>
						<div class="col-xs-6 news-grid-info-bottom-w3ls">
							<div class="news-left-top-text text-color3">
								就职公司：<a href="#" data-toggle="modal" data-target="#myModal">${jobList3.company}</a>
							</div>
							<div class="news-grid-info-bottom-w3ls-text">
								<span>座右铭：</span>${jobList3.motto}
							</div>
							<div class="date-grid">
								<div class="admin">
									<a href="#">
										月薪水： ${jobList3.salary}</a>
								</div>
								<div class="time">
									<p>
										年 级： ${jobList3.sclass}</p>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="col-md-6 yaallahaa-news-left">
						<div class="col-xs-6 news-left-img news-left-img3">
							<div class="news-left-text color-event4">
								<h5>${jobList4.name}</h5>
							</div>
						</div>
						<div class="col-xs-6 news-grid-info-bottom-w3ls">
							<div class="news-left-top-text text-color4">
								就职公司：<a href="#" data-toggle="modal" data-target="#myModal">${jobList4.company}</a>
							</div>
							<div class="news-grid-info-bottom-w3ls-text">
								<span>座右铭：</span>${jobList4.motto}
							</div>
							<div class="date-grid">
								<div class="admin">
									<a href="#">
										月薪水： ${jobList4.salary}</a>
								</div>
								<div class="time">
									<p>
										年 级： ${jobList4.sclass}</p>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
	</div>
	
	 <%-- <c:if test="${page.currentPage!=1}"></c:if> --%> 
		
	<ul class="pager">
	

				
			
			<%-- <c:if test="${page.currentPage!=page.pageCount}">
				<a href="getPageCakePage?currentPage=${page.currentPage+1 }">下一页</a>
				
			</c:if> --%>
			
			<c:if test="${currentPage!=1}">
				 <li class=""><a href="getPageJobs?currentPage=${currentPage-1 }">«</a></li>
			</c:if>
			 <c:if test="${currentPage==1}">
				 <li class=""><a href="getPageJobs?currentPage=1">«</a></li>
			</c:if>
		  <li><a href="getPageJobs?currentPage=1">1</a></li>
		  <li><a href="getPageJobs?currentPage=2">2</a></li>
		  <li><a href="getPageJobs?currentPage=3">3</a></li>
		  <li><a href="getPageJobs?currentPage=4">4</a></li>
		  <li><a href="getPageJobs?currentPage=5">5</a></li>
		  <li class=""><a href="getPageJobs?currentPage=1">»</a></li>
	</ul>
	<!-- //news -->
	
	<!-- testimonials -->
	<div class="testimonials">
		<div class="container">
			<div class="title-div">
				<h3 class="tittle">
					<span>O</span>ur
					<span>C</span>lient's
					<span>S</span>ay
				</h3>
				<div class="tittle-style">

				</div>
			</div>
			<ul id="flexiselDemo1">
				<li>
					<div class="three_testimonials_grid_main">
						<div class="col-xs-3 three_testimonials_grid_pos">
							<div class="grid-test-allah-agile">
								<img src="images/te1.jpg" alt=" " class="img-responsive" />
							</div>
						</div>
						<div class="col-xs-9 three_testimonials_grid">
							<div class="three_testimonials_grid1">
								<h5>Michael Paul</h5>
								<p>Client 1</p>
							</div>
							<p>
								Donec laoreet eu purus eu viverra. Vestibulum sed convallis massa, eu aliquet massa. Suspendisse lacinia rutrum tincidunt.
								Integer id erat porta, convallis.
							</p>
						</div>
						<div class="clearfix"> </div>
					</div>
				</li>
				<li>
					<div class="three_testimonials_grid_main">
						<div class="col-xs-3 three_testimonials_grid_pos">
							<div class="grid-test-allah-agile">
								<img src="images/te2.jpg" alt=" " class="img-responsive" />
							</div>
						</div>
						<div class="col-xs-9 three_testimonials_grid">
							<div class="three_testimonials_grid1">
								<h5>Faul John</h5>
								<p>Client 2</p>
							</div>
							<p>
								Donec laoreet eu purus eu viverra. Vestibulum sed convallis massa, eu aliquet massa. Suspendisse lacinia rutrum tincidunt.
								Integer id erat porta, convallis.
							</p>
						</div>
						<div class="clearfix"> </div>
					</div>
				</li>
				<li>
					<div class="three_testimonials_grid_main">
						<div class="col-xs-3 three_testimonials_grid_pos">
							<div class="grid-test-allah-agile">
								<img src="images/te3.jpg" alt=" " class="img-responsive" />
							</div>
						</div>
						<div class="col-xs-9 three_testimonials_grid">
							<div class="three_testimonials_grid1">
								<h5>Richa Roy</h5>
								<p>Client 3</p>
							</div>
							<p>
								Donec laoreet eu purus eu viverra. Vestibulum sed convallis massa, eu aliquet massa. Suspendisse lacinia rutrum tincidunt.
								Integer id erat porta, convallis.
							</p>
						</div>
						<div class="clearfix"> </div>
					</div>
				</li>

			</ul>
		</div>
	</div>
	<!-- //testimonials -->
	<!-- footer -->
	<div class="mkl_footer">
		<div class="sub-footer">
			<div class="container">
				<div class="mkls_footer_grid">
					<div class="col-xs-4 mkls_footer_grid_left">
						<h4>Location:</h4>
						<p>educa mfdflimbg 1235, Ipswich,
							<br> Foxhall Road, USA</p>
					</div>
					<div class="col-xs-4 mkls_footer_grid_left">
						<h4>Mail Us:</h4>
						<p>
							<span>Phone : </span>001 234 5678</p>
						<p>
							<span>Email : </span>
							<a href="mailto:info@example.com">mail@example.com</a>
						</p>
					</div>
					<div class="col-xs-4 mkls_footer_grid_left">
						<h4>Opening Hours:</h4>
						<p>Working days : 8am-10pm</p>
						<p>Sunday
							<span>(closed)</span>
						</p>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="botttom-nav-allah">
					<ul>
						<li>
							<a href="index.html">Home</a>
						</li>
						<li>
							<a href="about.html">About Us</a>
						</li>
						<li>
							<a href="courses.html">Courses</a>
						</li>
						<li>
							<a href="join.html">Join Us</a>
						</li>
						<li>
							<a href="contact.html">Contact Us</a>
						</li>
					</ul>
				</div>
				
			</div>
		</div>
	

	<!-- js files -->
	<!-- js -->
	<script src="js/jquery-2.1.4.min.js"></script>
	<!-- bootstrap -->
	<script src="js/bootstrap.js"></script>
	<!-- stats numscroller-js-file -->
	<script src="js/numscroller-1.0.js"></script>
	<!-- //stats numscroller-js-file -->

	<!-- Flexslider-js for-testimonials -->
	<script>
		$(window).load(function () {
			$("#flexiselDemo1").flexisel({
				visibleItems: 1,
				animationSpeed: 1000,
				autoPlay: false,
				autoPlaySpeed: 3000,
				pauseOnHover: true,
				enableResponsiveBreakpoints: true,
				responsiveBreakpoints: {
					portrait: {
						changePoint: 480,
						visibleItems: 1
					},
					landscape: {
						changePoint: 640,
						visibleItems: 1
					},
					tablet: {
						changePoint: 768,
						visibleItems: 1
					}
				}
			});

		});
	</script>
	<script src="js/jquery.flexisel.js"></script>
	<!-- //Flexslider-js for-testimonials -->
	<!-- smooth scrolling -->
	<script src="js/SmoothScroll.min.js"></script>
	<script src="js/move-top.js"></script>
	<script src="js/easing.js"></script>
	<!-- here stars scrolling icon -->
	<script>
		$(document).ready(function () {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/

			$().UItoTop({
				easingType: 'easeOutQuart'
			});

		});
	</script>
	<!-- //here ends scrolling icon -->
	<!-- smooth scrolling -->
	<!-- //js-files -->

</body>

		<script>
    var t=document.getElementById("index_table");
    console.log(t);
	//原生js表格绑定
	var hxj_table = {
		headers:{},
		data:[],
		//1.初始化表格数据
		init:function(headers,data){
				
						if(headers != null){
							this.headers = headers;
						}
						if(data != null){
							this.data = data;
						}
						
					
			 	return this;
	  },
	  //2.显示数据
	  show:function(id){
	  		
	  		var table = "";
	  		table += "<table cellspacing='0'  id='tab'>";
	  		if(this.headers!=null){
	  			 table += "<tr>";
	  			 for(let header in this.headers){
	  			 	 table += "<th>" + this.headers[header] + "</th>";
	  			 }
	  			 table += "</tr>";
	  		}
	  		if(this.data!=null){
	  			 for(let tr in this.data){
	  			 	  table += "<tr>";
	  			 	 table += "<td>" + this.data[tr].id + "</td>";
	  			 	 table += "<td>" + this.data[tr].name + "</td>";
	  			 	 table += "<td>" + this.data[tr].company + "</td>";
	  			 	 table += "<td>" + this.data[tr].post + "</td>";
	  			 	 table += "</tr>";
	  			 }
	  			 
	  		}
	  		table += "</table>";
	  		document.getElementById(id).innerHTML = table;
	  	
	  }
	}	
	//初始化调用
	;(function(){
		let headers = {name:'序号',age:'姓名',high:'就业单位',weight:'任职岗位'};
		let data = [{name:'john',age:18,high:'190cm',weight:'180',school:'交大',birth:'2001-01-01'},{name:'jack',age:18,high:'180cm',weight:'160',school:'交大',birth:'2001-01-01'}];
		var list=<%=session.getAttribute("AllJobsPartAttribute")%>; 
		var list2=[];
		for(var i=0;i<list.length;i++){
			var job={
					id:list[i].id+"",
					name:list[i].name+"",  
					company:list[i].company+"",
					post:list[i].post+""
			}
			list2.push(job);
		}

		hxj_table.init(headers,list2).show("index_table");
	})() 
	</script>
</html>