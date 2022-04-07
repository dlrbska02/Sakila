<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "dao.*" %>
<%@ page import = "java.util.*" %>
<%
   StoreDao storeDao = new StoreDao();
   List<Integer> storeIdList = storeDao.selectStoreIdList();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h1>대여 상세 검색</h1>
   <form action="<%=request.getContextPath()%>/rentalSearchAction.jsp" method="post">
      <table border="1">
         <!-- 가게아이디 검색 -->
         <tr>
            <td>스토어 ID</td>
            <td>
               <%
                  for(int i : storeIdList) {
               %>
                     <div><input type="radio" name="storeId" value="<%=i%>"> <%=i%>번 가게</div>
               <%      
                  }
               %>
            </td>
         </tr>
         <!-- 고객이름 검색 -->      
         <tr>
            <td>고객이름</td>
            <td>
               <input type="text" name="customerName">
            </td>
         </tr>
         <!-- 대여일자 -->
         <tr>
            <td>대여일자</td>
            <td>
               <input type="date" name="beginDate"> ~ <input type="date" name="endDate">
            </td>
         </tr>
         <tr>
            <td colspan="2"><button type="submit">검색</button></td>
         </tr>
      </table>
   </form>
</body>
</html>