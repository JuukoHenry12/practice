<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/hongera"
                           user="root"  password=""/>
        
        <sql:update dataSource="${dbsource}" var="count">
            UPDATE accounts SET FName = ?, LName=?, UName=?, PNumber=?, Password=?, Address=?, ReferencePerson=?
            WHERE ID='${param.ID}'
            <sql:param value="${param.FName}" />
            <sql:param value="${param.LName}" />
            <sql:param value="${param.UName}" />
            <sql:param value="${param.PNumber}" />
            <sql:param value="${param.Password}" />
            <sql:param value="${param.Address}" />
            <sql:param value="${param.ReferencePerson}" />
        </sql:update>
  
        <c:if test="${count>=1}">
            <font size="5" color='green'> Congratulations ! Data updated
            successfully.</font>
            <c:redirect url="SalesPersonsDisplay.jsp" >
                <c:param name="susMsg" value="Congratulations ! Data inserted
            successfully." />
            </c:redirect>          
        </c:if>
    </body>
</html>
