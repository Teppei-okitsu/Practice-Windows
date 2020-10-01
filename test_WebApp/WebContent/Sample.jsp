<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date,java.text.SimpleDateFormat"%>

<%
// 運勢のリスト
  String[] luckArray = {"大吉","吉","凶"};

// 0以上3未満の整数を乱数で生成
  int index = (int)(Math.random() * 3);
  String luck = luckArray[index];

//実行日
  Date date = new Date();
  SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
  String today = sdf.format(date);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>今日の運勢</title>
</head>
<body>
<h1><%= today%>の運勢は</h1>
<p><%= luck%>です</p>
</body>
</html>