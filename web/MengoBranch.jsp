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

        <center>  <h1>Welcome To Mengo Branch</h1></center>
   <center>
    <a href="MengoSales.jsp"  class="btn btn-primary" role="button">Daily Sales </a>
       <a href="MengoDailySalesGroup.jsp"  class="btn btn-success" role="button">Daily Commission</a>
              <a href="MengoDailySalesGroupMonth.jsp"  class="btn btn-success" role="button">Monthly Commission</a>
       <a href="MengoPassword.jsp"  class="btn btn-primary" role="button">Change Password</a>
          <a href="index.jsp"  class="btn btn-primary" role="button"> Log Out </a>
       
       <br/><br/>
      <p>The sales person should be able to;
      <ol>
          <li>Login using the details provided by the manager (Mutebi)</li>
          <li>Change the password provided</li>
          <li>Enter daily sales to the system</li>
          <li>Check own daily and monthly commission</li>
      </ol>
   </p>

    </center>
    </body>
</html>

<%@ include file="footer.jsp" %>
