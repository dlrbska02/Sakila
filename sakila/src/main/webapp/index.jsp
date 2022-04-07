<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<title>INDEX</title>
<style type="text/css">
		tabel, th, td {
		border: 1px solid #6EE3F7;
		text-align: center;
	}
	ul{
   list-style:none;
   }
   
	@font-face {
	    font-family: 'SpoqaHanSansNeo-Regular';
	    	src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2108@1.1/SpoqaHanSansNeo-Regular.woff') format('woff');
	    font-weight: normal;
	    font-style: normal;
	}
	
	body {
		font-family: 'SpoqaHanSansNeo-Regular';
	}
}
</style>
</head>
<body>
	<div align="center" class="container">
	<h1 style="background-color:gray;text-shadow:4px 4px 0 #9bdbde; text-shadow:0 -3px 0 #9bdbde, 0 3px 10px #943978;" >INDEX</h1>
	<!-- 테이블(table) 2개 리스트 -->
	<h3 class="text-info">테이블 리스트</h3>
	<ul class="list-group">
		<li class="list-group-item list-group-item-info"><a href="<%=request.getContextPath()%>/table/storeList.jsp">Store List</a></li>
		<li class="list-group-item list-group-item-info"><a href="<%=request.getContextPath()%>/table/staffList.jsp">Staff List</a></li>
	</ul>
		<!-- 뷰(view) 7개 리스트 -->
	<h3 class="text-info">뷰 리스트</h3>
	<ul class="list-group">
		<li class="list-group-item list-group-item-info"><a href="<%=request.getContextPath()%>/view/actorInfoListView.jsp">actorInfoList(view)</a></li>
		<li class="list-group-item list-group-item-info"><a href="<%=request.getContextPath()%>/view/customerListView.jsp">customerList(view)</a></li>
		<li class="list-group-item list-group-item-info"><a href="<%=request.getContextPath()%>/view/filmListView.jsp">filmList(view)</a></li>
		<li class="list-group-item list-group-item-info"><a href="<%=request.getContextPath()%>/view/nicerButSlowerFilmListView.jsp">nicerButSlowerFilmList(view)</a></li>
		<li class="list-group-item list-group-item-info"><a href="<%=request.getContextPath()%>/view/salesByFilmCategoryView.jsp">salesByFilmCategory(view)</a></li>
		<li class="list-group-item list-group-item-info"><a href="<%=request.getContextPath()%>/view/salesByStoreView.jsp">salesByStore(view)</a></li>
		<li class="list-group-item list-group-item-info"><a href="<%=request.getContextPath()%>/view/staffListView.jsp">staffList(view)</a></li>
	</ul>
		<!-- 프로시저(procedual) 3개 리스트 -->
	<h3 class="text-info">프로시저</h3>
	<ul class="list-group">
		<li class="list-group-item list-group-item-info"><a href="<%=request.getContextPath()%>/procedual/filmInStock.jsp">filmInStock</a>
		<li class="list-group-item list-group-item-info"><a href="<%=request.getContextPath()%>/procedual/filmNotInStock.jsp">filmNotInStock</a>
		<li class="list-group-item list-group-item-info"><a href="<%=request.getContextPath()%>/procedual/rewardsReport.jsp">rewardsReport</a>
	</ul>
		<!-- 대여(rental) 상세검색 -->
	<h3 class="text-info">대여 상세검색</h3>
	<ul class="list-group">
		<li class="list-group-item list-group-item-info"><a href="<%=request.getContextPath() %>/filmSearchForm.jsp">filmSearchForm</a>
		<li class="list-group-item list-group-item-info"><a href="<%=request.getContextPath() %>/rentalSearchForm.jsp">rentalSearchForm</a>
	</ul>
	</div>
</body>
</html> 