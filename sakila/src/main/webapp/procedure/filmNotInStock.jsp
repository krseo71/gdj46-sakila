<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ page import ="java.util.*" %>
<%@ page import ="dao.*" %>
<%
	//요청값 받기
	int filmId =0; //영화 정보 받기
	if(request.getParameter("filmId")!=null&&!request.getParameter("filmId").equals("")){
		filmId = Integer.parseInt(request.getParameter("filmId"));
		System.out.println(filmId+"<--filmId");
	}
	int storeId =0; //가게 정보 받기
	if(request.getParameter("storeId")!=null&&!request.getParameter("storeId").equals("")){
		storeId = Integer.parseInt(request.getParameter("storeId"));
		System.out.println(storeId+"<--storeId");
	}
	int count = 0;//총 갯수
	//dao에 프로시저 호출
		FilmDao filmDao = new FilmDao();
		List<Integer> list = new ArrayList<Integer>();
		if(filmId!=0 && storeId!=0){
			Map<String,Object> map = filmDao.filmNotInStockCall(filmId, storeId);
			list = (List<Integer>)map.get("list");
			count = (Integer)map.get("count");
		}
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>filmNotInStock</title>
</head>
<body border="1">
	<h1>filmNotInStock</h1>
	<a href="<%=request.getContextPath()%>../index.jsp" >index</a>
	<form method = "post" action="<%=request.getContextPath()%>/filmNotInStock.jsp">
		filmId 입력 : <input type = "number" name = "filmId">	
		storeId 입력 :<input type = "number" name = "storeId">
		<button type = "submit"> 검색</button>	
	</form>
	<%
		if(filmId!=0 && storeId!=0){
	%>
	<h2><%=filmId%>번 영화는 <%=storeId%>번 가게에 <%=count%> 개 빌려간 상태</h2>
		<h2>inventoryID :
	<%		
		for(int id : list) {
	%>
			<%=id%>
	<%
				}
		}
	%>
	</h2>
</body>
</html>