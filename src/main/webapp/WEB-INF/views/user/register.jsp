<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Mentos</title>
</head>
<style>
</style>
<%@include file="../common/header.jsp" %>
<body>
<!-- 회원가입 폼 -->
<form method="post" action="/register" class="register-form">

	<!-- 회원 이름 -->
	<div>
		<label for="memberNm">이름</label>
		<input id="memberNm" name="member_nm" type="text" placeholder="이름을 입력하세요" required="true"/>
	</div>

	<!-- 회원 닉네임 -->
	<div>
		<label for="memberNick">닉네임</label>
		<input id="memberNick" name="member_nick" type="text" placeholder="닉네임을 입력하세요" required="true"/>
	</div>

	<!-- 비밀번호 -->
	<div>
		<label for="memberPw">비밀번호</label>
		<input id="memberPw" name="member_pw" type="password" placeholder="비밀번호를 입력하세요" required="true"/>
	</div>

	<!-- 생년월일 -->
	<div>
		<label for="memberBirth">생년월일</label>
		<input id="memberBirth" name="member_birth" type="date" required="true"/>
	</div>

	<!-- 전화번호 -->
	<div>
		<label for="memberTel">전화번호</label>
		<input id="memberTel" name="member_tel" type="text" placeholder="전화번호를 입력하세요" required="true"/>
	</div>

	<!-- 이메일 -->
	<div>
		<label for="memberEmail">이메일</label>
		<input id="memberEmail" name="member_email" type="email" placeholder="이메일을 입력하세요" required="true"/>
	</div>

	<!-- 우편번호 -->
	<div>
		<label for="memberZip">우편번호</label>
		<input id="memberZip" name="member_zip" type="text" placeholder="우편번호를 입력하세요" required="true"/>
	</div>

	<!-- 주소1 -->
	<div>
		<label for="memberAddr1">주소1</label>
		<input id="memberAddr1" name="member_addr1" type="text" placeholder="주소1을 입력하세요" required="true"/>
	</div>

	<!-- 주소2 -->
	<div>
		<label for="memberAddr2">주소2</label>
		<input id="memberAddr2" name="member_addr2" type="text" placeholder="주소2를 입력하세요" required="true"/>
	</div>

	<!-- 멘토 전문 분야 -->
	<div>
		<label for="mentorExpertise">멘토 전문 분야</label>
		<input id="mentorExpertise" name="mentor_expertise" type="text" placeholder="멘토 전문 분야를 입력하세요"/>
	</div>

	<!-- 멘토 경험 -->
	<div>
		<label for="mentorExperience">멘토 경험</label>
		<input id="mentorExperience" name="mentor_experience" type="text" placeholder="멘토 경험을 입력하세요"/>
	</div>

	<!-- 멘토 현재 직업 -->
	<div>
		<label for="mentorCurrentJob">멘토 현재 직업</label>
		<input id="mentorCurrentJob" name="mentor_current_job" type="text" placeholder="멘토 현재 직업을 입력하세요"/>
	</div>

	<!-- 회원 인증 -->
	<div>
		<label>회원 인증</label>
		<input type="radio" id="mentee" name="member_auth" value="mentor" checked /> 멘토
		<input type="radio" id="mentor" name="member_auth" value="mentee" /> 멘티
	</div>

	<!-- 제출 버튼 -->
	<div>
		<button type="submit">회원가입</button>
	</div>
</form>

</body>
<%@include file="../common/footer.jsp" %>
<script>
</script>
</html>
