<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="dao.*" %>
<%
   int storeId = Integer.parseInt(request.getParameter("storeId"));
   String customerName = request.getParameter("customerName");
   String beginDate = request.getParameter("beginDate");
   String endDate = request.getParameter("endDate");
   
   //
   
   RentalDao rentalDao = new RentalDao();
   List<Map<String,Object>> list = rentalDao.selectRentalSearchList(storeId, customerName, beginDate, endDate);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h1>검색 결과 리스트</h1>
   <%
      for(Map<String,Object> m : list) {
         
      }
   %>
</body>
</html>