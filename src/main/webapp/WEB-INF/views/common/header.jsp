<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<head>
  <meta charset="UTF-8">
  <title>Mentos</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Bona+Nova+SC:ital,wght@0,400;0,700;1,400&family=Merriweather:ital,wght@0,300;0,400;0,700;0,900;1,300;1,400;1,700;1,900&family=Monomakh&display=swap" rel="stylesheet">
</head>
<style>
  #mentos-header {
    font-family: "Merriweather", serif;
    font-weight: 700;
    font-style: normal;
  }
</style>
<body>
<div class="px-3 py-2 text-bg-dark border-bottom">
  <div class="container">
    <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
      <a href="../home" class="d-flex align-items-center my-2 my-lg-0 me-lg-auto text-white text-decoration-none" id="mentos-header">
        <h3><strong>M</strong>entos</h3>
      </a>
      
      <ul class="nav col-12 col-lg-auto my-2 justify-content-center my-md-0 text-small" style="font-size: 12px">
        <li>
          <a href="../attendance/main" class="nav-link text-white">
            <i class="bi bi-calendar-check"></i>
            Attendance
          </a>
        </li>
        <li>
          <a href="#" class="nav-link text-white">
            <i class="bi bi-bell"></i>
            Notice
          </a>
        </li>
        <li>
          <div class="dropdown">
            <button class="btn btn-dark dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false" style="font-size: 12px">
              <i class="bi bi-person"></i> My Page
            </button>
            <ul class="dropdown-menu" style="font-size: 12px; min-width: unset; width: auto;">
              <li><a class="dropdown-item" href="#"><i class="bi bi-inboxes-fill"></i> 예약 내역</a></li>
              <li><a class="dropdown-item" href="#"><i class="bi bi-gear-fill"></i> 정보 변경</a></li>
            </ul>
          </div>
        </li>
        <li>
          <a href="../user/login" class="nav-link text-white">
            <i class="bi bi-box-arrow-in-right"></i>
            Log-In
          </a>
        </li>
        <li>
          <a href="#" class="nav-link text-white">
            <i class="bi bi-box-arrow-in-left"></i>
            Log-Out
          </a>
        </li>
      </ul>
    </div>
  </div>
</div>
</body>
<script>
</script>
</html>