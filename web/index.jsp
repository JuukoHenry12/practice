<%@include file="header.jsp"%>
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
                        <strong>COMMISSIONS ACCORDING TO DAILY SALES</strong>
                    </h2>
                    <hr>
                </div>
        
                <center><a href="adminLogin.jsp"  class="btn btn-primary" role="button">Admin Login</a>
    <a href="SalesPersonLogin.jsp"  class="btn btn-success" role="button">Sales Person Login</a></center>
    
    <br/><br/>
    <p> Mutebi is a businessman operating within Kampala and deals in children clothing (Hongera Children’s Center). 
        At the turn of this year, Hongera sought expansion by setting up three more shops (centers) bringing the total number to four (Hongera Main, Nakawa, Kawempe and Mengo). The five shops are operated by sales persons who earn in form of commissions based on daily sales and shop location as shown in the table below:</p>
    <center>
        <table class="table table-striped">
            <thead>
                <th> <b>Daily Sales</b> </th>
                <th> <b>Main</b> </th>
                <th> <b>Nakawa</b> </th>
                <th> <b>Kawempe</b> </th>
                <th> <b>Mengo</b> </th>
            </thead>
            <tbody
            <tr>
                <td> < 50,000/- </td>
                <td> 0 </td>
                <td> 0 </td>
                <td> 0 </td>
                <td> 0 </td>
            </tr>  
            
            <tr>
                <td> 50,000/- to 99,999/- </td>
                <td> 10,000/- </td>
                <td> 10,500/- </td>
                <td> 9,000/- </td>
                <td> 8,000/- </td>
            </tr>   
            
            <tr>
                <td> 100,000/- to 499,999/- </td>
                <td> 12,000/- </td>
                <td> 12,800/- </td>
                <td> 11,500/- </td>
                <td> 10,000/- </td>
            </tr>
            
            <tr>
                <td> 500,000/- to 999,999/- </td>
                <td> 14,000/- </td>
                <td> 15,000/- </td>
                <td> 13,000/- </td>
                <td> 12,500/- </td>
            </tr>
            
            <tr>
                <td> 1,000,000/- to 1,500,000/- </td>
                <td> 18,000/- </td>
                <td> 19,000/- </td>
                <td> 17,800/- </td>
                <td> 16,000/- </td>
            </tr>
            
            <tr>
                <td> > 1,500,000/- </td>
                <td> 15% </td>
                <td> 15.8% </td>
                <td> 14.5% </td>
                <td> 13.4% </td>
            </tr>
            </tbody>
        </table>
    </center>
        <br/>
    </body>
</html>

<%@ include file="footer.jsp" %>
