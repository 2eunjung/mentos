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
        var calendar = new FullCalendar.Calendar(calendarEl, {
            initialView: 'dayGridMonth',
            googleCalendarApiKey: 'AIzaSyC7yVI3VU_LxbEtYrASowp_BR_5cCktR4E',
            events: {
                googleCalendarId: 'c_6df0d78ff7234c7a993693354aaa80dfa01b3b5cf80b80338fdd5d7c4530df34@group.calendar.google.com'
            },
						// 상세일정 클릭했을 때, 구글 캘린더로 이동하는 것을 막고, alert창으로 보이게 함
            eventClick: function(info) {
                info.jsEvent.preventDefault(); // don't let the browser navigate
                alert('Event: ' + info.event.title);
            }
        });
        calendar.render();
    });
</script>
</html>