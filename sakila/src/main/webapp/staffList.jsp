<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="dao.*"%>
<%
	StaffDao staffDao = new StaffDao();
	List<Map<String, Object>> list = staffDao.selectStaffList();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="">index</a>
	<h1>Staff List</h1>
	<table border="1">
		<thead>
			<tr>
				<th>staffId</th>
				<th>storeId</th>
				<th>staffName</th>
				<th>addressId</th>
				<th>staffAddress</th>
				<th>email</th>
				<th>username</th>
				<th>lastUpdate</th>
			</tr>
		</thead>
		<tbody>
			<%
				for(Map m : list){
			%>
				<tr>
					<td><%=m.get("staffId")%></td>
					<td><%=m.get("storeId")%></td>
					<td><%=m.get("staffName")%></td>
					<td><%=m.get("addressId")%></td>
					<td><%=m.get("staffAddress")%></td>
					<td><%=m.get("email")%></td>
					<td><%=m.get("username")%></td>
					<td><%=m.get("lastUpdate")%></td>
				</tr>
			<%
				}
			%>
		</tbody>
	</table>

</body>
</html>