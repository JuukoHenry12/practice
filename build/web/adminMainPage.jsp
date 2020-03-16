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

        <h1>Welcome Mr. Mutebile</h1>
        <center>
   <a href="SalesPersonsDisplay.jsp"  class="btn btn-primary" role="button">ManageAccounts</a>
   <a href="MainBranch.jsp"  class="btn btn-success" role="button">Main Branch</a>
   <a href="NakawaBranch.jsp"  class="btn btn-success" role="button">Nakawa Branch</a>
   <a href="KawempeBranch.jsp"  class="btn btn-success" role="button">Kawempe Branch</a>
   <a href="MengoBranch.jsp"  class="btn btn-success" role="button">Mengo Branch</a>
   <a href="index.jsp"  class="btn btn-primary" role="button"> Log Out </a>
       <br/><br/>
    </center>
        
        <p>Mutebi will the main administrator (manager) and should be able to login using a user name and password. He should also be able to perform the following tasks;</p>
        <ol>
        <li>Create and manage accounts for the sales persons. There can only be 5 sales persons at a time each operating only one shop. The details of the sales persons include (first name, last name, user name, phone number, password, address, reference person). He should also be able to delete the accounts.</li>
        <li>Track sales on a daily and monthly basis (totals and individual shop sales)</li>
        <li>Compute individual commissions and totals on a daily and monthly basis</li>
        </ol>
    
    </body>
</html>

<%@ include file="footer.jsp" %>
