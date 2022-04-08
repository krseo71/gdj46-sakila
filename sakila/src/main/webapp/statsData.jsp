<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="dao.*" %>
<%
	StatsDataDao statsDataDao = new StatsDataDao();
	List<Map<String, Object>> list = statsDataDao.amountByCustomer();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>amountByCustomer</h1>
	<table border="1">
		<tr>
			<th>고객아이디</th>
			<th>고객이름</th>
			<th>총지불액</th>
		</tr>
		<%
			for(Map<String, Object> m : list){
		%>		
				<tr>
					<td><%=m.get("customerId") %></td>
					<td><%=m.get("name") %></td>
					<td><%=m.get("total") %></td>
				</tr>
		<%
			}
		%>
	</table>
	

</body>
</html>