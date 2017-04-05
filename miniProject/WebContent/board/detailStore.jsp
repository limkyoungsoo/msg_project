<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>About - Business Casual - Start Bootstrap Theme</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- Bootstrap Core CSS -->
<link
	href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom CSS -->
<link
	href="${pageContext.request.contextPath}/bootstrap/css/business-casual.css"
	rel="stylesheet">

<!-- Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic"
	rel="stylesheet" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery.min.js"></script>


<<<<<<< HEAD
.star-input>.input {
	display: inline-block;
	width: 100px;
	background-size: 100px;
	height: 19px;
	white-space: nowrap;
	overflow: hidden;
	position: relative;
}

.star-input>.input>input {
	position: absolute;
	width: 1px;
	height: 1px;
	opacity: 0;
}

.star-input>.input.focus {
	outline: 1px dotted #ddd;
}

.star-input>.input>label {
	width: 10px;
	height: 0;
	padding: 19px 0 0 0;
	overflow: hidden;
	float: left;
	cursor: pointer;
	position: absolute;
	top: 0;
	left: 0;
}

.star-input>.input>label:hover, .star-input>.input>input:focus+label,
	.star-input>.input>input:checked+label {
	background-size: 100px;
	background-position: 0 bottom;
}

.star-input>.input>label:hover ~label {
	background-image: none;
}

.star-input>.input>label[for="p2"] {
	width: 20px;
	z-index: 10;
}

.star-input>.input>label[for="p4"] {
	width: 40px;
	z-index: 9;
}

.star-input>.input>label[for="p6"] {
	width: 60px;
	z-index: 8;
}

.star-input>.input>label[for="p8"] {
	width: 80px;
	z-index: 7;
}

.star-input>.input>label[for="p10"] {
	width: 100px;
	z-index: 6;
}

.star-input>output {
	display: inline-block;
	width: 36px;
	text-align: right;
}

.star-input>output>b {
	font: bold 18px Helvetica, Arial, sans-serif;
	vertical-align: middle;
}


img.img-responsive.img-border-left.img-rounded {
    margin: auto;
}
/*별 CSS 끝  */

/*오버레이 css 코드*/

</style>
=======
>>>>>>> branch 'master' of https://github.com/limkyoungsoo/msg_project.git
</head>

<body>

<<<<<<< HEAD
	<!-- Navigation -->
	<c:import url="/template/header.jsp"></c:import>
	<c:import url="/template/navigator.jsp"></c:import>
	
=======
	<c:import url="/template/header.jsp"></c:import>
	<c:import url="/template/navigator.jsp"></c:import>


>>>>>>> branch 'master' of https://github.com/limkyoungsoo/msg_project.git
	<div class="container">
<<<<<<< HEAD
		<div class="row">
			<div class="box">
				<div class="col-lg-12">
					<hr>
						<h2 class="text-center">${requestScope.menuList.storeName}</h2>
					<hr>
						<img class="img-responsive img-border-left img-rounded img-hover" src="${pageContext.request.contextPath }/storeImg/cho1.jpg" 
                    alt="${requestScope.menuList.storeName}" align="center" >
				</div>	
			</div>
		</div>
	
        <div class="row">
            <div class="box">
                <div class="col-lg-12">
                    <hr>
                    <h2 class="intro-text text-center">
                        <strong>${requestScope.menuList.storeName}의 메뉴</strong>
                    </h2>
                    <hr>
                </div>
                <div class="col-md-6">
                    <img class="img-responsive img-border-left img-rounded" src="${pageContext.request.contextPath }/menuImg/jo3.jpg" 
                    alt="${requestScope.menuList.menuVO.menuName}" width="304" height="236">
                </div>
                <div class="col-md-6">
                    <p><strong>메뉴번호</strong>:${requestScope.menuList.menuVO.menuNo}</p>
                    <p><strong>메뉴이름</strong>:${requestScope.menuList.menuVO.menuName}</p>
                    <p><strong>메뉴가격</strong>:${requestScope.menuList.menuVO.menuPrice}</p>
                    <p><strong>메뉴사진</strong>:${requestScope.menuList.menuVO.menuPic}</p>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
=======
>>>>>>> branch 'master' of https://github.com/limkyoungsoo/msg_project.git
		<div class="row">
			<div class="box">
				<div class="col-lg-12">
					<hr>
					<h2 class="intro-text text-center">
<<<<<<< HEAD
						<strong>${requestScope.menuList.storeName}</strong>의 다른 메뉴
=======
						<strong>${requestScope.menuList.storeName}의 메뉴</strong>
>>>>>>> branch 'master' of https://github.com/limkyoungsoo/msg_project.git
					</h2>
					<hr>
				</div>
<<<<<<< HEAD
				<c:forEach items="${requestScope.menuList}" var="menu">
				<div class="col-sm-4 text-center">
					<img class="img-responsive"
						src="${pageContext.request.contextPath}${menu.storePic}"
						alt="" >
					<h3>
						John Smith <small>Job Title</small>
					</h3>
				</div>
				</c:forEach>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="row">
			<div class="box">
				<div class="col-lg-12">
					<hr>
					<h2 class="intro-text text-center">
						Review <strong> List</strong>
					</h2>
					<hr>
				</div>

				<!-- 별점 start -->

				<div class="container">
					<label for="mname">메뉴명</label> <select id="sel1">
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
					</select> &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; 평점 : <i
						class="fa fa-star" style="font-size: 24px; color: red"></i> <i
						class="fa fa-star" style="font-size: 24px; color: red"></i>
					<table class="table table-hover">
						<thead>
							<tr>
								<th>번호</th>
								<th>평점</th>
								<th>리뷰</th>
								<th>글쓴이/날짜</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td><i class="fa fa-star"
									style="font-size: 24px; color: red"></i></td>
								<td>맛이 있다</td>
								<td>김성환/2017.04.04</td>
							</tr>
							<tr>
								<td>2</td>
								<td><i class="fa fa-star"
									style="font-size: 24px; color: red"></i> <i class="fa fa-star"
									style="font-size: 24px; color: red"></i></td>
								<td>맛없다</td>
								<td>강정호/2017.04.04</td>
							</tr>
							<tr>
								<td>3</td>
								<td><i class="fa fa-star"
									style="font-size: 24px; color: red"></i> <i class="fa fa-star"
									style="font-size: 24px; color: red"></i> <i
									class="fa fa-star-half-full"
									style="font-size: 24px; color: red"></i></td>
								<td>더럽게맛없다</td>
								<td>임경수/2017.04.04</td>
							</tr>
						</tbody>
					</table>

					<input type="button" id="write" value="wrtBtn">

				</div>
				<!-- 별점 end -->

				<!-- 리뷰 시작  -->
				<div id="reviewForm">
					<div class="container">
						<h3>메뉴 리뷰 남기기</h3>
						<form>
							<div class="form-group">
								<label for="mname">메뉴명</label> <select id="sel1">
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
								</select> &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; <label
									for="putstar">별점 주기</label> <span class="star-input"> <span
									class="input"> <input type="radio" name="star-input"
										id="p2" value="1"><label for="p2">1</label> <input
										type="radio" name="star-input" id="p4" value="2"><label
										for="p4">2</label> <input type="radio" name="star-input"
										id="p6" value="3"><label for="p6">3</label> <input
										type="radio" name="star-input" id="p8" value="4"><label
										for="p8">4</label> <input type="radio" name="star-input"
										id="p10" value="5"><label for="p10">5</label>
								</span> <output for="star-input">
										<b>0</b>점
									</output>
								</span> <br> <label for="comment">코멘트:</label> <br>
								<textarea class="form-control" rows="5" id="comment"
									style="width: 80%"></textarea>
							</div>
							<br>
							<button type="button" class="btn btn-primary">리뷰 등록 ^~^</button>
						</form>
					</div>
				</div>
				<!-- 리뷰 끝 -->

=======
				<div class="col-md-6">
					<img class="img-responsive img-border-left"
						src="${pageContext.request.contextPath }/menuImg/jo3.jpg" alt="">
				</div>
				<div class="col-md-6">
					<p>
						<strong>메뉴번호</strong>:${requestScope.menuList.menuVO.menuNo}
					</p>
					<p>
						<strong>메뉴이름</strong>:${requestScope.menuList.menuVO.menuName}
					</p>
					<p>
						<strong>메뉴가격</strong>:${requestScope.menuList.menuVO.menuPrice}
					</p>
					<p>
						<strong>메뉴사진</strong>:${requestScope.menuList.menuVO.menuPic}
					</p>
				</div>
>>>>>>> branch 'master' of https://github.com/limkyoungsoo/msg_project.git
				<div class="clearfix"></div>
			</div>
		</div>
	</div>


	<div class="container">
		<jsp:include page="review.jsp" />
	</div>

<c:import url="/template/footer.jsp"></c:import>
	<!-- jQuery -->
	<script src="js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>

</body>
</html>