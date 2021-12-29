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
	div{
		box-sizing: border-box;
	}
	.list{
		width : 700px;
		border : 1px solid black;
		display: flex;
		flex-flow: wrap;
		
	}
	.items{
		border : 1px solid black;
		width : 200px;
		height : 200px;
		margin : 10px;
	}
</style>
</head>
<body>

<h2><a href="${ cpath }">외부 서버 데이터 받아오기</a></h2>

<div class="list"></div>

<script>
// 	const url = 'http://221.164.9.200/memberList'
	const cpath = '${ cpath }'
	const list = document.querySelector('.list')
	console.log(list)
	const url = cpath + '/memberList'
	const opt = {
			method : 'get'
	}
	fetch(url, opt)
	.then(resp => resp.json())
	.then(json => {
		console.log(json)
		console.log(json.length)
		let dom = ''
		for(let i = 0; i < json.length; i++){
			console.log(json[i].userid)
			dom += '<div class="items">'
			dom += '<div>' + json[i].userid + '</div>'
			dom += '<div>' + json[i].userpw + '</div>'
			dom += '<div>' + json[i].username + '</div>'
			dom += '<div>' + json[i].email + '</div>'
			dom += '<div>' + json[i].gender + '</div>'
			dom += '</div>'
		}
	
		list.innerHTML += dom
	})
	
	function getDom(json){
		
		



	}
	
</script>
</body>
</html>