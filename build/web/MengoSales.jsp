<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="header.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
                
               <div class="container">

        <div class="row">
            <div class="box">
                
                <div class="col-lg-12">
                    <hr>
                    <h2 class="intro-text text-center">
                        <strong>DAILY SALES AT MENGO BRANCH</strong>
                    </h2>
                    <hr>
                </div>
        
         
    <a href="DailySalesAddMengo.jsp"  class="btn btn-primary" role="button">Add Sales</a>
    <a href="adminMainPage.jsp"  class="btn btn-success" role="button">Main menu</a>
    <br/><br/>
    
    <sql:setDataSource
     var ="dbsource"
     driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/hongera"
     user="root"
     password="" />
    
    <sql:query dataSource="${dbsource}" var="result">
        SELECT * from mengo_branch
    </sql:query>
        
    
   <table border="1" class="table table-striped"> 
       <thead> 
           <th>ID </th>
           <th>Date</th>
           <th>Sales</th> 
           <th>Commission</th> 
       </thead> 
       
       <c:forEach var="row" items="${result.rows}">
           <tr>
               <td> <c:out value="${row.ID}"/> </td>
               <td> <c:out value="${row.Date}"/> </td>
               <td> <c:out value="${row.Sales}"/> </td>
               <td> <c:out value="${row.Commission}"/> </td>
           </tr>
       </c:forEach>
   
       </table
    </body>
</html>

<%@ include file="footer.jsp" %>
