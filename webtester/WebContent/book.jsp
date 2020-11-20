<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 등록</title>

<link rel="stylesheet" href="./css/main.css">
<link rel="stylesheet" href="./css/my.css">

</head>
<body>

	<%@ include file="common/header.jsp"%>

		<h2>Book 등록</h2>
		
			<form action="addBook.do" method="post"  enctype="multipart/form-data">
				제목 : <input type="text" name="title"><br>
				출판사 : <input type="text" name="publisher"><br>
				가격 : <input type="number" name="price"><br>
				책 이미지 : <input type="file" name="image"><br>
			
				<input type="submit" value="등록">
				<input type="reset">
			</form>
			
	<%@ include file="common/footer.jsp" %>

</body>
</html>