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
                </div>
        
         
    <a href="SalesPersonAdd.jsp"  class="btn btn-primary" role="button">Add Sales Person</a>
    <a href="adminMainPage.jsp"  class="btn btn-success" role="button">Main menu</a>
    <br/><br/>
    
    <sql:setDataSource
     var ="dbsource"
     driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/hongera"
     user="root"
     password="" />
    
    <sql:query dataSource="${dbsource}" var="result">
        SELECT * from accounts
    </sql:query>
        
    
   <table border="1" class="table table-striped"> 
       <thead> 
           <th>ID </th>
           <th>First Name</th>
           <th>Last Name</th> 
           <th>User Name</th> 
           <th>Phone Number</th>
           <th>Password</th>
           <th>Address</th>
           <th>Reference Person</th>
           <th>Edit</th>
           <th>Delete</th>
       </thead> 
       
       <c:forEach var="row" items="${result.rows}">
           <tr>
               <td> <c:out value="${row.ID}"/> </td>
               <td> <c:out value="${row.FName}"/> </td>
               <td> <c:out value="${row.LName}"/> </td>
               <td> <c:out value="${row.UName}"/> </td>
               <td> <c:out value="${row.PNumber}"/> </td>
               <td> <c:out value="${row.Password}"/> </td>
               <td> <c:out value="${row.Address}"/> </td>
               <td> <c:out value="${row.ReferencePerson}"/> </td>
               <td><a href="SalesPersonUpdate.jsp?ID=<c:out value="${row.ID}"/>">Update</a></td>
               <td><a href="SalesPersonDelete.jsp?ID=<c:out value="${row.ID}"/>">Delete</a></td>
           </tr>
       </c:forEach>
   
       </table
    </body>
</html>

<%@ include file="footer.jsp" %>
