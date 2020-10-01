<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
String name = request.getParameter("name");
String msg = request.getParameter("body");
String qtype = request.getParameter("qtype");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>お問い合わせいただきありがとうございました。</title>
</head>
<body>
<h1><%= name%>様</h1>
<h2><%= qtype%>について、お問合せいただきありがとうございます。</h2>
<p>以下の内容について確認いたします。</p>
<p><%= msg%></p>
</body>
</html>