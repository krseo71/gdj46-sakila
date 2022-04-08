<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>INDEX</h1>
	
	<h3>테이블 리스트</h3>
	<ol>
		<li><a href="<%=request.getContextPath()%>/table/storeList.jsp">storeList</a></li>
		<li><a href="<%=request.getContextPath()%>/table/staffList.jsp">staffList</a></li>

	</ol>
	<h3>뷰 리스트</h3>
	<ol>
		<li><a href="<%=request.getContextPath()%>/view/actorInfoList.jsp">actorInfoList(view)</a></li>
		<li><a href="<%=request.getContextPath()%>/view/customerList.jsp">customerList(view)</a></li>
		<li><a href="<%=request.getContextPath()%>/view/filmList.jsp">filmList(view)</a></li>
		<li><a href="<%=request.getContextPath()%>/view/nicerButSlowerFilmList.jsp">nicerButSlowerFilmList(view)</a></li>
		<li><a href="<%=request.getContextPath()%>/view/salesByFilmCategory.jsp">salesByFilmCategory(view)</a></li>
		<li><a href="<%=request.getContextPath()%>/view/salesByStore.jsp">salesByStore(view)</a></li>
		<li><a href="<%=request.getContextPath()%>/view/staffListView.jsp">staffList(view)</a></li>

	</ol>
	<h3>프로시저</h3>
		<li><a href="<%=request.getContextPath()%>/procedure/filmInStock.jsp">filmInStock</a></li>
		<li><a href="<%=request.getContextPath()%>/procedure/filmNotInStock.jsp">filmNotInStock</a></li>
		<li><a href="<%=request.getContextPath()%>/procedure/rewardsReport.jsp">rewardsReport</a></li>
		
	<h3>상세검색</h3>
	<ol>
		<li><a href="<%=request.getContextPath()%>/search/filmSearchForm.jsp">필름 상세검색</a></li>
		<li><a href="<%=request.getContextPath()%>/search/rentalSearchForm">대여 상세검색</a></li>
	</ol>
</body>
</html>
