<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath">${ pageContext.request.contextPath }</c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>json 파싱</h1>
<hr>

<div class="list"></div>

<script>
	const cpath = '${ cpath }'
	const list = document.querySelector('.list')
	
	const url = cpath + '/json01'
	const opt = {
		method : 'get'
	}
	
	fetch(url, opt)
	.then(resp => resp.json())
	.then(json => {
		console.log(json)
	})
</script>
</body>
</html>