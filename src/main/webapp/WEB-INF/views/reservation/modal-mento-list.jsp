<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Mentos</title>
</head>
<style>
    .modal-dialog {
        max-width: 600px; /* 원하는 크기로 조정 */
        width: 100%;
    }
    /* 선택된 행의 스타일 */
    .table tbody tr.active {
        background-color: #007bff;
        color: white;
    }

    .table tbody tr {
        cursor: pointer;
    }
</style>
<body>
<!-- Modal -->
<div class="modal fade" id="mento-list" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered">
		<form action="" method="POST">
			<div class="modal-content" style="width: 500px">
				<div class="modal-header">
					<h1 class="modal-title fs-5" id="mento-list-label">멘토링 예약하기</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
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
									<tbody>
									<tr>
										<td>홍길동</td>
									</tr>
									<tr>
										<td>김유신</td>
									</tr>
									<tr>
										<td>강감찬</td>
									</tr>
									<tr>
										<td>이순신</td>
									</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<div class="modal-body">
						<div class="row">
							<div class="col">
								<input type="date">
							</div>
							<div class="col">
								<select id="scedule-detail">
									<option hidden="hidden">일정 선택</option>
									<option value="">18:00 ~ 19:00</option>
									<option value="">19:00 ~ 20:00</option>
									<option value="">20:00 ~ 21:00</option>
									<option value="">21:00 ~ 22:00</option>
								</select>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary">Next</button>
					</div>
				</div>
			</div>
		</form>
	</div>
</div>
</body>
<script>
</script>
</html>