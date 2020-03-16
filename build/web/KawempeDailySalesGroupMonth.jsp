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
                        <strong>MONTHLY SALES AT KAWEMPE BRANCH</strong>
                    </h2>
                    <hr>
                </div>
        
         
    <a href="DailySalesAddNakawa.jsp"  class="btn btn-primary" role="button">Add Sales</a>
    <a href="KawempeBranch.jsp"  class="btn btn-success" role="button">Main menu</a>
    <br/><br/>
    
    <sql:setDataSource
     var ="dbsource"
     driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/hongera"
     user="root"
     password="" />
    
    <sql:query dataSource="${dbsource}" var="result">
       SELECT MONTH(Date) AS 'Month',YEAR(Date) AS 'Year',SUM( Commission ) AS 'Total', SUM( Sales ) AS 'Sales_total'
        FROM kawempe_branch GROUP BY month(Date)
    </sql:query>
        
    
   <table border="1" class="table table-striped"> 
       <thead> 
           <th>Month</th>
           <th>Year</th>
           <th>Total Sales Of The Month</th> 
           <th>Total Commission Of The Month</th>
       </thead> 
       
       <c:forEach var="row" items="${result.rows}">
           <tr>
               <td> <c:out value="${row.Month}"/> </td>
               <td> <c:out value="${row.Year}"/> </td>
               <td> <c:out value="${row.Sales_total}"/> </td>
               <td> <c:out value="${row.Total}"/> </td>
           </tr>
       </c:forEach>
   
       </table
    </body>
</html>

<%@ include file="footer.jsp" %>
