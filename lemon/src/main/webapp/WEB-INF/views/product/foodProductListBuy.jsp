<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Shop Homepage - Start Bootstrap Template</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!--         Bootstrap icons -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/styles.css" rel="stylesheet" />
</head>
<body>
	<nav class="fh5co-nav" role="navigation"></nav>
	<div id="fh5co-product">
		<div class="container">
			<div class="row animate-box">
				<div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
					<span>LEMON MARKET</span>
					<h2>식품 구매</h2>
					<p>먹을 것이 남아 고민이신가요? 무료나눔을 통한 산도상승을 노려보세요</p>
				</div>
			</div>

			<div align="center">
				<c:if test="${not empty id }">
					<form id="insert" action="productInsertForm.do" method="post">
						<input type="hidden" name="productCategory" value="식품"> <input
							type="hidden" name="productInfo" value="삽니다">
						<button type="submit" class="btn btn-primary btn-outline btn-lg">
							글 작성</button>
					</form>
				</c:if>
			</div>
			<c:forEach items="${products}" var="p">
				<!-- 				<div class="product"> -->
				<div onclick="productChoice(${p.productId})">
					<!-- Section-->
					<section class="py-5">
						<div class="container px-4 px-lg-5 mt-5">
							<div
								class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
								<div class="col mb-5" style="width: 830px;">
									<div class="card h-100">
										<!-- Product image-->
										<c:if test="${p.productImg1  eq null}">
											<img class="card-img-top" src="attach/기본이미지.png" alt="..." />
										</c:if>
										<c:if test="${p.productImg1 ne null}">
											<img class="card-img-top" src="attach/${p.productImg1}"
												alt="..." />
										</c:if>
										<!-- Product details-->
										<div class="card-body p-4">
											<div class="text-center">
												<!-- Product name-->
												<h1 class="fw-bolder">${p.productTitle }</h1>
												<!-- Product price-->
												<h2>${p.productPrice }원</h2>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</section>
				</div>
			</c:forEach>
		</div>

		<br>

		<div>
			<form id="frm" action="productSelect.do" method="post">
				<input type="hidden" id="productId" name="productId">
			</form>
		</div>
	</div>

	<!-- 페이지하단 검색 -->
	<div
		style="display: flex; align-items: center; justify-content: center;">
		<form action="productSearch.do" id="search" method="post"
			style="magin-left: 50px; display: flex;">
			<input type="hidden" name="productCategory" id="productCategory"
				value="식품"> <input type="text" class="form-control"
				id="productTitle" name="productTitle" placeholder="제목으로 검색"
				style="width: 680px; height: 52px; border-color: gray-light;">
			<button type="submit" class="btn btn-default btn-block"
				style="margin-left: 5px; width: 70px; height: 52px; border-color: #ced4da; font-color: gray-dark;">찾기</button>
		</form>
	</div>
	<!-- 페이징 -->

	<div align="center" class="pager">
		<ul class="listCenter">
			<c:forEach var="n" begin="1" end="${totalPage }">
				<li><a href="foodproductListBuy.do?viewPage=${n }">${n  }
				</a></li>
			</c:forEach>
		</ul>
	</div>


	<script type="text/javascript"> 
			function productChoice(id) {
			let frm = document.getElementById("frm");
			frm.productId.value = id;
			frm.submit();
			}
  		</script>

	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>

</body>
</html>