<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Mentos</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">
	<style>
		.modal-dialog {
			max-width: 600px; /* 모달 크기 조정 */
			width: 100%;
		}
		.mentor-card {
			border: 2px solid #ddd;
			border-radius: 10px;
			padding: 10px;
			margin-bottom: 10px;
			display: flex;
			align-items: center;
			gap: 15px;
			background-color: #f9f9f9;
			cursor: pointer;
			transition: all 0.3s ease;
		}
		.mentor-card:hover {
			border-color: #007bff;
		}
		.mentor-card input[type="radio"] {
			display: none;
		}
		.mentor-card input[type="radio"]:checked + label {
			border-color: #007bff;
			background-color: rgba(0, 123, 255, 0.1);
		}
		.mentor-card label {
			width: 100%;
			display: flex;
			align-items: center;
			gap: 15px;
			padding: 10px;
			border-radius: 10px;
			cursor: pointer;
		}
		.mentor-card img {
			width: 70px;
			height: 70px;
			border-radius: 50%;
			object-fit: cover;
		}
		.mentor-info {
			flex-grow: 1;
		}
	</style>
</head>
<body>

<!-- Modal -->
<div class="modal fade" id="mento-list" tabindex="-1" aria-labelledby="mentoListLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered">
		<form action="" method="POST">
			<div class="modal-content" style="width: 500px">
				<div class="modal-header">
					<h1 class="modal-title fs-5" id="mentoListLabel">멘토링 예약하기</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">

					<!-- 멘토 리스트 -->
					<div class="row mt-3">
						<div class="col">
							<!-- 홍길동 -->
							<div class="mentor-card">
								<input type="radio" id="mentor1" name="selectedMentor">
								<label for="mentor1">
									<img src="/resources/img/프로필 예시.png" alt="홍길동">
									<div class="mentor-info">
										<strong>홍길동</strong>
										<p class="mb-0 text-muted">현) 한화생명 - 시니어 프론트엔드 개발자</p>
										<p class="mb-0 text-muted">전) 블록체인 NFT 개발</p>
										<p class="mb-0 text-muted">1회 멘토링: 1시간 / 33,000원 / 1명</p>
									</div>
								</label>
							</div>

							<!-- 김유신 -->
							<div class="mentor-card">
								<input type="radio" id="mentor2" name="selectedMentor">
								<label for="mentor2">
									<img src="/resources/img/프로필 예시.png" alt="김유신">
									<div class="mentor-info">
										<strong>김유신</strong>
										<p class="mb-0 text-muted">현) 네이버 - 백엔드 개발자</p>
										<p class="mb-0 text-muted">전) 카카오 - 데이터 엔지니어</p>
										<p class="mb-0 text-muted">1회 멘토링: 1시간 / 35,000원 / 1명</p>
									</div>
								</label>
							</div>

							<!-- 강감찬 -->
							<div class="mentor-card">
								<input type="radio" id="mentor3" name="selectedMentor">
								<label for="mentor3">
									<img src="/resources/img/프로필 예시.png" alt="강감찬">
									<div class="mentor-info">
										<strong>강감찬</strong>
										<p class="mb-0 text-muted">현) 삼성전자 - AI 연구원</p>
										<p class="mb-0 text-muted">전) LG CNS - 데이터 사이언티스트</p>
										<p class="mb-0 text-muted">1회 멘토링: 1시간 / 30,000원 / 1명</p>
									</div>
								</label>
							</div>

							<!-- 이순신 -->
							<div class="mentor-card">
								<input type="radio" id="mentor4" name="selectedMentor">
								<label for="mentor4">
									<img src="/resources/img/프로필 예시.png" alt="이순신">
									<div class="mentor-info">
										<strong>이순신</strong>
										<p class="mb-0 text-muted">현) 구글 - 소프트웨어 엔지니어</p>
										<p class="mb-0 text-muted">전) 페이스북 - 시스템 아키텍트</p>
										<p class="mb-0 text-muted">1회 멘토링: 1시간 / 31,000원 / 1명</p>
									</div>
								</label>
							</div>
						</div>
					</div>

					<!-- 버튼 -->
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
						<button type="submit" class="btn btn-primary">예약</button>
					</div>
				</div>
			</div>
		</form>
	</div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
	async function mentoList() {
		let response =await fetch("/modal-mento-list");
	}
</script>
</body>
</html>
