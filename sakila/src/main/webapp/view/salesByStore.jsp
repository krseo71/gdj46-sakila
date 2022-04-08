<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ page import ="dao.SalesByStoreDao" %>
<%@ page import ="vo.SalesByStore" %>
<%@ page import ="java.util.*" %>
<%
	//dao 호출
	SalesByStoreDao SalesByStoreDao = new SalesByStoreDao();
	List<SalesByStore> list = new ArrayList<SalesByStore>();
	list = SalesByStoreDao.selectSalesByStore();	
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>SalesByStoreList</title>
</head>
<body>
<h1>SalesByStoreList</h1>
	<a href="<%=request.getContextPath()%>../index.jsp" >index</a>
	<table border="1">
		<thead>
			<tr>
				<th>store</th>
				<th>manager</th>
				<th>totalSales</th>
			</tr>
		</thead>
		<tbody>
				<%
					for(SalesByStore s : list){
				%>
			<tr>
				<td><%=s.getStore()%></td>
				<td><%=s.getManager()%></td>
				<td><%=s.getTotalSales() %></td>
			</tr>
				<%
					}
				 %>
		</tbody>
	</table>
</body>
</html>