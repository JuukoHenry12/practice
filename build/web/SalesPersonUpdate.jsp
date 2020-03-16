<%@ include file="header.jsp" %>  
    <body>
        
       <div class="container">

        <div class="row">
            <div class="box">
                
                <div class="col-lg-12">
                </div>
        
 
        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/hongera"
                           user="root"  password=""/>
 
        <sql:query dataSource="${dbsource}" var="result">
            SELECT * from accounts where ID=?;
            <sql:param value="${param.ID}" />
        </sql:query>
            
        <form action="SalesPersonUpdateDB.jsp" method="post">
            <table border="0" width="40%">
                <caption>Update Info</caption>
                <thead>
           <th>ID </th>
           <th>First Name</th>
           <th>Last Name</th> 
           <th>User Name</th> 
           <th>Phone Number</th>
           <th>Password</th>
           <th>Address</th>
           <th>Reference Person</th>
                </thead>
                <c:forEach var="row" items="${result.rows}">
                    <tr>
                        <td><input type="hidden" value="${param.ID}" name="ID"/></td>
                        <td><input type="text" value="${row.FName}" name="FName"/></td>
                        <td><input type="text" value="${row.LName}" name="LName"/></td>
                        <td><input type="text" value="${row.UName}" name="UName"/></td>
                        <td><input type="text" value="${row.PNumber}" name="PNumber"/></td>
                        <td><input type="text" value="${row.Password}" name="Password"/></td>
                        <td><input type="text" value="${row.Address}" name="Address"/></td>
                        <td><input type="text" value="${row.ReferencePerson}" name="ReferencePerson"/></td>
                        <td><input type="submit" value="Update"/></td>
                    </tr>
                </c:forEach>
            </table>
            <br/>
            <br/>
            <a href="SalesPersonsDisplay.jsp"  class="btn btn-success" role="button">View Sales Persons</a>
                <a href="adminMainPage.jsp"  class="btn btn-success" role="button">Main menu</a>
        </form>
            <br/>
            <br/>
            
<%@ include file="footer.jsp" %>