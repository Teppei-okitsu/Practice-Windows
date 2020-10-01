<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>問い合わせ</title>
</head>
<body>
<form action="/example/testenq.jsp" method="post">
名前:<input type="text" name="name"><br>
問い合わせ内容:
<select name="qtype">
<option value="company">会社について</option>
<option value="product">製品について</option>
<option value="support">アフターサポートについて</option>
</select><br>
<textarea name="body"></textarea><br>
<input type="submit">
</form>
</body>
</html>