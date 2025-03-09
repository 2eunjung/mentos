<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
			integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
				integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
				crossorigin="anonymous"></script>
<head>
	<meta charset="UTF-8">
	<title>Mentos</title>
</head>
<style>
</style>
<%@include file="common/header.jsp" %>
<body>
<div class="container">
	<div class="row m-3">
		<div class="col-10 d-flex align-items-center justify-content-center">
			<img src="../resources/img/임시 메인비주얼.png" width="65%">
		</div>
		<div class="col d-flex align-items-center">
			<!-- Button trigger modal -->
			<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#mento-list">
				예약하기
			</button>
		</div>
		<%@include file="reservation/modal-mento-list.jsp"%>
	</div>
	
	<div class="row m-3">
		<div class="col-3 text-center">
			<img src="../resources/img/프로필 예시.png" class="rounded-circle" width="120">
			<span class="d-block">홍길동</span>
		</div>
		<div class="col-3 text-center">
			<img src="../resources/img/프로필 예시.png" class="rounded-circle" width="120">
			<span class="d-block">김유신</span>
		</div>
		<div class="col-3 text-center">
			<img src="../resources/img/프로필 예시.png" class="rounded-circle" width="120">
			<span class="d-block">강감찬</span>
		</div>
		<div class="col-3 text-center">
			<img src="../resources/img/프로필 예시.png" class="rounded-circle" width="120">
			<span class="d-block">이순신</span>
		</div>
	</div>
</div>
</body>
<%@include file="common/footer.jsp" %>
<script>
</script>
</html>