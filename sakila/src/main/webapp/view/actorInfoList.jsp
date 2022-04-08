<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="vo.ActorInfo"%>
<%@ page import="java.util.*"%>
<%@ page import="dao.*"%>
<%
	ActorInfoDao actorInfoDao = new ActorInfoDao();
	// 페이징
	int currentPage = 1;
	if(request.getParameter("currentPage") != null){
		currentPage = Integer.parseInt(request.getParameter("currentPage"));
		System.out.println(currentPage + "<-- actorInfoList currentPage");
	}
	int rowPerPage = 5; // 한 페이지 수
	int beginRow = (currentPage - 1) * rowPerPage;
	List<ActorInfo> list = actorInfoDao.selectActorInfoListByPage(beginRow, rowPerPage); // 페이징 메서드
	int lastPage = 0; // 마지막페이지 초기화
	int totalCount = actorInfoDao.selectActorInfoTotalRow(); // 총 개수
	// 마지막 페이지 구하기
	lastPage = totalCount / rowPerPage;
	if(totalCount % rowPerPage != 0){
		lastPage++;
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>actorInfoList</title>
</head>
<body>
	<h1>actorInfoList</h1>
	<table border="1">
		<thead>
			<tr>
			    <th>actorId</th>
				<th>firstName</th>
				<th>lastName</th>
				<th>filmInfo</th>
			</tr>
		</thead>
		<tbody>
			<%
				for(ActorInfo a : list ){
			%>
			<tr>
				<td><%=a.getActorId()%></td>
				<td><%=a.getFirstName()%></td>
				<td><%=a.getLastName()%></td>
				<td><%=a.getFilmInfo()%></td>
			</tr>
			<%
				}	
			%>
		</tbody>
	</table>
	<div>
		<%
			if(currentPage > 1){
		%>
		<a
			href="<%=request.getContextPath()%>/actorInfoList.jsp?currentPage=<%=currentPage - 1%>">이전</a>
		<%
			}
		%>
		<%
			if(currentPage < lastPage){
		%>
		<a
			href="<%=request.getContextPath()%>/actorInfoList.jsp?currentPage=<%=currentPage+1%>">다음</a>
		<%
			}
		%>
	</div>
</body>
</html>