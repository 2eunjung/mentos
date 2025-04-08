<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Mentos</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
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
						<div class="col" id="mentor-list">
							<!-- 멘토 카드가 동적으로 삽입될 위치 -->
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

<script type="text/javascript"></script>
<script>
	const myModal = new bootstrap.Modal('#mento-list');

	async function mentoList() {
		let response = await fetch("/modal-mento-list");
		let mentors = await response.json();
		let mentorListContainer = document.getElementById("mentor-list");
		mentorListContainer.innerHTML = "";

		mentors.forEach(mentor => {
			let mentorCard = `
				<div class="mentor-card">
					<input type="radio" id="mentor${mentor.no}" name="selectedMentor">
					<label for="mentor${mentor.no}">
						<img src="/resources/img/프로필 예시.png" alt="${mentor.title}">
						<div class="mentor-info">
							<strong>${mentor.title}</strong>
							<p class="mb-0 text-muted">${mentor.field}</p>
							<p class="mb-0 text-muted">${mentor.description}</p>
						</div>
					</label>
				</div>
			`;
			mentorListContainer.innerHTML += mentorCard;
		});

		myModal.show();
	}
</script>
</body>
</html>