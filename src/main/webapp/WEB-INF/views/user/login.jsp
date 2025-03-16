<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<head>
	<meta charset="UTF-8">
	<title>Mentos</title>
</head>
<style>
</style>
<%@include file="../common/header.jsp" %>
<body>
	<div class="container">
		<div class="row mt-3">
			<div class="col-8 d-flex justify-content-center align-items-center">
				<img src="../resources/img/임시%20대표이미지.png" width="100%">
			</div>
			<div class="col d-flex justify-content-center align-items-center">
				<form class="w-100 text-center">
					<div class="d-flex gap-5 d-flex justify-content-center">
						<div class="form-check">
							<input class="form-check-input" type="radio" value="" name="role" id="mentor">
							<label class="form-check-label" for="mentor">
								멘토
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="radio" value="" name="role" id="mentee" checked>
							<label class="form-check-label" for="mentee">
								멘티
							</label>
						</div>
					</div>
					
					<div class="login-form mt-3">
						<input type="text" style="margin-top: 10px" class="rounded" placeholder="ID"></br>
						<input type="password" style="margin-top: 10px" class="rounded" placeholder="PW">
					</div>
					
					<div class="d-flex gap-3 mt-3 d-flex justify-content-center">
						<a href="join" class="btn btn-primary">회원가입</a>
						<a href="#" class="btn btn-secondary">계정찾기</a>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
<%@include file="../common/footer.jsp" %>
<script>
</script>
</html>