<%@page import="service.BookService"%>
<%@page import="vo.BookVO"%>
<%@page import="java.util.List"%>
<%@page import="service.BookServiceImpl"%>
<%@page import="dao.BookDAO_Mariadb"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 상세 정보</title>

<link rel="stylesheet" href="./css/main.css">
<link rel="stylesheet" href="./css/my.css">

	<script>
		function modify() {
			alert("수정");	
		}
		
		function bookDelete() {
			if(confirm("정말 삭제하시겠습니까?")) {
				f.action="deleteBook.do";
				f.submit();
			}
		}
	
		function bookList() {
			f.action="bookList.do";
			f.submit();
		}

	</script>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<body>

	<%@ include file="common/header.jsp"%>

	<h2>도서 상세보기</h2>

	<hr>	
	
	<form action="" name="f" method="post">
	<input type="hidden" name="bookno" value="${book.bookno}">
		
		<table>
			<tr>
			</tr>
			<tr>
				<td>제목</td>
				<td>${book.title}</td> 
			</tr>
			<tr>
				<td>출판사</td>
				<td>${book.publisher}</td>
			</tr>
			<tr>
				<td>가격</td>
				<td>${book.price}</td>
			</tr>
			<tr>
				<td colspan="2"><img alt="..." src="./img/book1.png" width="200px" height="200px"></td>		
			</tr>
		</table>
			
		<table>
			<tr>
				<td colspan="2" align="center">
					<input type="button" value="수정하기" onclick="modify()">
					<input type="button" value="삭제하기" onclick="bookDelete()">
					<input type="button" value="목록으로" onclick="bookList()">
				</td>
			</tr>
		</table>
		
	</form>			
	
	
	<%@ include file="common/footer.jsp" %>

</body>
</html>