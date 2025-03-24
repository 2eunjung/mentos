<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Mentos</title>
	<meta charset='utf-8' />
	<script src='https://cdn.jsdelivr.net/npm/fullcalendar@6.1.15/index.global.min.js'></script>
	<script src='https://cdn.jsdelivr.net/npm/@fullcalendar/google-calendar@6.1.15/index.global.min.js'></script>
</head>
<style>
	#calendar {
			height: 800px;
  }
</style>
<%@include file="../common/header.jsp" %>
<body>
<div class="container">
	<div class="m-3" id='calendar'></div>
</div>
</body>
<%@include file="../common/footer.jsp" %>
<script>
    document.addEventListener('DOMContentLoaded', function() {
        var calendarEl = document.getElementById('calendar');
        /*
					new Date().toISOString().split('T')[0]
						현재 시간과 날짜를 가져오는 객체를 생성하여,
						ISO 8601 형식의 문자열(국제 표준 날짜 형식)으로 변환하고,
						'T'를 기준으로 문자열을 두 부분으로 나누고, 해당 배열의 첫번째 요소를 가져와라
						= 오늘 날짜를 'YYYY-MM-DD' 형식으로 가져오는 코드
         */
        var todayAtd = new Date().toISOString().split('T')[0];
        
        var calendar = new FullCalendar.Calendar(calendarEl, {
            initialView: 'dayGridMonth',
            locale: 'ko',
        });
        
        var cell = document.querySelector(`td[data-date="${todayAtd}"]`);
        console.log(todayAtd);
        
        if (cell){
            var divElement = cell.querySelector("div");
            if (divElement){
                divElement.createElement("button");
            }
            var button = document.createElement("button");
        }
        
        calendar.render();
    });
</script>
</html>