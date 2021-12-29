<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath">${ pageContext.request.contextPath }</c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>day16</title>
<style>
	a{
		text-decoration: none;
		color : inherit;
	}
</style>
</head>
<body>

<h2><a href="${ cpath }">외부 서버 데이터 받아오기</a></h2>


<script>
// 	const url = 'http://221.164.9.200/memberList'
	const cpath = '${ cpath }'
	const url = cpath + '/memberList'
	const opt = {
			method : 'get'
	}
	fetch(url, opt)
	.then(resp => resp.json())
	.then(json => {
		console.log(json)
	})
	
	function getDom(json){
		let dom = ''
		
		json.forEach(dto =>{
			dom += '<div>'
		})
	}
	
</script>
</body>
</html>