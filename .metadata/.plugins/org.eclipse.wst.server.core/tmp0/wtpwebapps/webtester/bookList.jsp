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
<title>My WebApplication ...</title>

<link rel="stylesheet" href="./css/my.css">

<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>

<script>
	function f1(){
		return confirm("삭제하시겠습니까?");
	}
</script>


</head>

<body>
<h1> Book List</h1>

<hr>
	<form action="${pageContext.request.contextPath}/bookSearch.do" method="post">
		<table>
			<tr>
				<td>
				<select name="condition">
					<option value="title">도서 제목</option>
					<option value="publisher">출판사명</option>
				</select>
				
				<input type="text" name="keyword">
				<input type="submit" value="검색">
				
				</td>
			</tr>			
		</table>
	</form>

<hr>


<form action="deleteBook.do" method="get">
	<table class="tableb">
	  <tr>
	  	<th>BookNo</th><th>Title</th><th>Publisher</th><th>Price</th>
	  	<th><input type="submit" value="delete" onclick="return f1()"><br></th>
	  </tr>
	  
	 
	 <c:forEach var="data" items="${bookList}">
	
	  <tr>
	     <td>${data.bookno}</td> 
	     <td><a href="viewBook.do?bookno=${data.bookno}">${data.title}</a></td> 
	     <td>${data.publisher}</td> 
	     <td>${data.price}</td> 
	     <td> <input type="checkbox" name="bookno" value="${data.bookno}"> </td>
	  </tr>
	
	</c:forEach>
	
	</table>
</form>


	<br>
	<div align="center"><a href="book.jsp"> 도서 등록</a></div>
	



	
	

</body>
</html>