<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.Employee"%>
<%Employee emp = new Employee("0001","湊 雄輔"); %>
<!DOCTYPE html>
<html>
<body>
<% for(int i = 0; i < 10; i++){ %>
<% if(i == 0 || i == 3 || i == 6 || i == 9) {%>
<p style="color:red">
<% } else {%>
<p>
<% } %>
IDは<%= emp.getId() %>、名前は<%= emp.getName()%>です</p>
<% } %>
</body>
</html>