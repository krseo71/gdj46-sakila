<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ page import ="dao.StaffListViewDao" %>
<%@ page import ="vo.StaffListView" %>
<%@ page import ="java.util.*" %>
<%
	//dao 호출
	StaffListViewDao StaffListViewDao = new StaffListViewDao();
	List<StaffListView> list = new ArrayList<StaffListView>();
	list = StaffListViewDao.selectStaffListView();	
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>StaffListViewList</title>
</head>
<body>
<h1>StaffListViewList</h1>
	<a href="<%=request.getContextPath()%>../index.jsp" >index</a>
	<table border="1">
		<thead>
			<tr>
				<th>ID</th>
				<th>name</th>
				<th>address</th>
				<th>zipCode</th>
				<th>phone</th>
				<th>city</th>
				<th>country</th>
				<th>SID</th>
			</tr>
		<tbody>
				<%
					for(StaffListView s : list){
				%>
			<tr>
				<td><%=s.getId()%></td>
				<td><%=s.getName()%></td>
				<td><%=s.getAddress()%></td>
				<td><%=s.getZipCode()%></td>
				<td><%=s.getPhone()%></td>
				<td><%=s.getCity()%></td>
				<td><%=s.getCountry()%></td>
				<td><%=s.getSID()%></td>
			</tr>
				<%
					}
				 %>
		</tbody>
	</table>
</body>
</html>