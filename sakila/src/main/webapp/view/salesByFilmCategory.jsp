<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="dao.SalesByFilmCategoryDao"%>
<%@ page import="vo.SalesByFilmCategory"%>
<%@ page import="java.util.*"%>
<%
	//dao 호출
	SalesByFilmCategoryDao salesByFilmCategoryDao = new SalesByFilmCategoryDao();
	List<SalesByFilmCategory> list = new ArrayList<SalesByFilmCategory>();
	list = salesByFilmCategoryDao.selectSalesByFilmCategory();	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>SalesByFilmCategoryList</h1>
	<a href="<%=request.getContextPath()%>../index.jsp">index</a>
	<table border="1">
		<thead>
			<tr>
				<th>category</th>
				<th>totalSales</th>
			</tr>
		<tbody>
			<%
					for(SalesByFilmCategory s : list){
				%>
			<tr>
				<td><%=s.getCategory()%></td>
				<td><%=s.getTotalSales()%></td>
			</tr>
			<%
					}
				 %>
		</tbody>
	</table>
</body>
</html>