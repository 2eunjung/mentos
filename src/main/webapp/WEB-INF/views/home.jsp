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
	<div class="row m-1">
		<div class="col-10 d-flex align-items-center justify-content-center">
			<img src="../resources/img/임시 메인비주얼.png" width="650">
		</div>
		<div class="col d-flex align-items-center justify-content-center">
			<!-- Button trigger modal -->
			<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
				Launch demo modal
			</button>
			
			<!-- Modal -->
			<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog modal-dialog-centered">
					<div class="modal-content">
						<div class="modal-header">
							<h1 class="modal-title fs-5" id="exampleModalLabel">멘토링 예약하기</h1>
							<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						</div>
						<div class="modal-body">
							<form action="" method="POST">
								<div class="row">
									<div class="col d-flex justify-content-end">
										<input type="radio" name="sort" id="cancleRate">
										<label for="cancleRate" class="me-3">취소율</label>
										
										<input type="radio" name="sort" id="participationRate">
										<label for="participationRate">참여율</label>
									</div>
									
									<div class="row mt-3">
										<div class="col">
											<table class="table">
												<tbody class="text-start">
													<tr>
														<th>예시1</th>
													</tr>
													<tr>
														<th>예시2</th>
													</tr>
													<tr>
														<th>예시3</th>
													</tr>
													<tr>
														<th>예시4</th>
													</tr>
													<tr>
														<th>예시5</th>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</form>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
							<button type="button" class="btn btn-primary">Next</button>
						</div>
						
					</div>
				</div>
			</div>
		</div>
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