<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>스케줄 선택</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">
    <style>
        .schedule-box {
            display: none;
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 10px;
            margin-top: 5px;
            background: #fff;
        }
        .schedule-btn {
            width: 100%;
            text-align: left;
            background: #fff;
            border: 1px solid #ccc;
            padding: 10px;
            border-radius: 5px;
            cursor: pointer;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .date-grid {
            display: grid;
            grid-template-columns: repeat(7, 1fr);
            gap: 5px;
            text-align: center;
            font-size: 14px;
        }
        .date-grid div {
            padding: 8px;
            border-radius: 5px;
            cursor: pointer;
        }
        .available {
            background-color: #e3f2fd;
            color: #007bff;
        }
        .full {
            background-color: #f8d7da;
            color: #dc3545;
            text-decoration: line-through;
        }
        .selected {
            background-color: #007bff !important;
            color: white !important;
            font-weight: bold;
        }
    </style>
</head>
<body>

<div class="container mt-4">
    <label class="form-label">스케줄 설정 <span class="text-danger">*</span></label>

    <!-- 스케줄 버튼 -->
    <button class="schedule-btn" id="toggleSchedule">
        <span id="selectedDate">날짜 및 시간 선택</span>
        <i class="bi bi-chevron-down"></i>
    </button>

    <!-- 숨겨진 일정표 -->
    <div class="schedule-box" id="scheduleBox">
        <div class="date-grid">
            <div class="full">16</div>
            <div class="full">17</div>
            <div class="full">18</div>
            <div class="full">19</div>
            <div class="full">20</div>
            <div class="full">21</div>
            <div class="full">22</div>
            <div class="available">23</div>
            <div class="full">24</div>
            <div class="available">25</div>
            <div class="available">26</div>
            <div class="available">27</div>
            <div class="available">28</div>
            <div class="available">29</div>
            <div class="available">30</div>
            <div class="full">31</div>
        </div>
    </div>
</div>

<script>
    document.addEventListener("DOMContentLoaded", function () {
        const toggleBtn = document.getElementById("toggleSchedule");
        const scheduleBox = document.getElementById("scheduleBox");
        const selectedDateText = document.getElementById("selectedDate");
        const arrowIcon = toggleBtn.querySelector("i");

        // 버튼 클릭 시 일정표 토글
        toggleBtn.addEventListener("click", function () {
            if (scheduleBox.style.display === "none" || scheduleBox.style.display === "") {
                scheduleBox.style.display = "block";
                arrowIcon.classList.replace("bi-chevron-down", "bi-chevron-up");
            } else {
                scheduleBox.style.display = "none";
                arrowIcon.classList.replace("bi-chevron-up", "bi-chevron-down");
            }
        });

        // 날짜 클릭 이벤트
        document.querySelectorAll(".date-grid div").forEach(date => {
            if (!date.classList.contains("full")) {
                date.addEventListener("click", function () {
                    // 기존 선택된 날짜 스타일 제거
                    document.querySelectorAll(".date-grid div").forEach(d => d.classList.remove("selected"));
                    this.classList.add("selected");
                    selectedDateText.textContent = `선택 날짜: ${this.textContent}`;
                    scheduleBox.style.display = "none";
                    arrowIcon.classList.replace("bi-chevron-up", "bi-chevron-down");
                });
            }
        });
    });
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
