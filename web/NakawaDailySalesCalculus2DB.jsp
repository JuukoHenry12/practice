<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%> 
<%@ page import="javax.servlet.http.*,javax.servlet.*,javax.servlet.ServletException" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="shortcut icon" href="images/admin2.png"/>
        <title>mobile money</title>
    </head>
    <body>
           <sql:setDataSource 
       var="dbsource" 
       driver="com.mysql.jdbc.Driver"
       url="jdbc:mysql://localhost/hongera"
       user="root"  password=""/>
   
        <sql:update dataSource="${dbsource}" var="result">
            INSERT INTO nakawa_branch(Date, Sales, Commission) VALUES (?,?,?);
            <sql:param value="${param.date}" />
            <sql:param value="${param.sales}" />
            <sql:param value="${param.commission}" />
        </sql:update>
            
        <c:if test="${result>=1}">
            <font size="5" color='green'> Congratulations ! Data inserted
            successfully.</font>
 
            <c:redirect url="NakawaSales.jsp" >
                <c:param name="susMsg" value="Congratulations ! Data inserted
            successfully." />
            </c:redirect>
        </c:if> 
     </center>
    </body>
</html>