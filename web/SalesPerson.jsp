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

       <center>  <h1>Welcome Mutebile. Here you can view individual branches</h1></center>
        
   <center>
    <a href="KawempeBranch.jsp"  class="btn btn-primary" role="button">Kawempe </a>
       <a href="MainBranch.jsp"  class="btn btn-success" role="button">Main</a>
              <a href="MengoBranch.jsp"  class="btn btn-success" role="button">Mengo</a>
       <a href="NakawaBranch.jsp"  class="btn btn-primary" role="button">Nakawa</a>
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
