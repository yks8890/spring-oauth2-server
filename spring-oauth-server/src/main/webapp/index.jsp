<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<body>
	<c:set var="baseURL" value="${pageContext.request.requestURL}" />
	<h2>WELCOME!</h2>
	<div>README</div>
	<p>
		<b>1.REST API 접근 - 권한을 얻지 못했을 때</b>
	<p>${baseURL}m/dashboard.do
	<p>
		<b>- 결과</b>
	<p>
		{ "error": "unauthorized",<br> "error_description": "An
		Authentication object was not found in the SecurityContext" }
	</p>
	<p>
		<b>2. 접근키 얻기</b>
	<p>${baseURL}oauth/token?client_id=mobile-client&client_secret=mobile&grant_type=password&scope=read,write&username=admin&password=admin
	<p>
		<b>- 결과</b>
	<p>
		{ "access_token": "497df78a-cca7-4f42-9eea-940c545a49c2",<br>
		"token_type": "bearer",<br>
		"refresh_token":"07939a2a-dbf7-47cc-b9d5-a1363604049e", <br>
		"expires_in": 34120, <br> "scope":"read write" }
	</p>
	<p>
		<b>3. 접근키로 REST API 접근 </b>
	<p>${baseURL}m/dashboard.do?access_token=497df78a-cca7-4f42-9eea-940c545a49c2
	<p>
		<b>4. 새로운 접근키 생성 - refresh token 사용</b>
	<p>${baseURL}oauth/token?client_id=mobile-client&client_secret=mobile&grant_type=refresh_token&refresh_token=07939a2a-dbf7-47cc-b9d5-a1363604049e
	<p>
		<b>- 결과(기존 생성한 접근키와 리프레시 토큰은 만료됨 )</b>
	<p>
		{ "access_token": "a4a4247b-62fa-451c-8fbe-81e75967bde6",<br>
		"token_type": "bearer",<br> "refresh_token":
		"07939a2a-dbf7-47cc-b9d5-a1363604049e",<br> "expires_in": 43199,
		<br> "scope":"read write" }
	</p>
	<p>
</body>
</html>