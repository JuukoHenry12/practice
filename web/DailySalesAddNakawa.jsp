<%@ include file="header.jsp" %>  
    <body>
         <div class="container" id="container">
     <div class="row">
          <div class="col-lg-4 col-sm-4 well">
              <a href="NakawaBranch.jsp"  class="btn btn-success" role="button">View Sales</a>
              <a href="adminMainPage.jsp"  class="btn btn-success" role="button">Main menu</a>
              <br/>
              
              <form action="NakawaDailySalesCalculus1.jsp" method="post">
		<fieldset>
		<legend><h3>Add Sales</h3></legend>
                
                 <div class="form-group">
		<div class="error"></div>
		<label>Date </label>
		<input type="text" name="date" placeholder="date" size="30" class="form-control" class="username-field"/>
		</div>
                
                 <div class="form-group">
		<div class="error"></div>
		<label>Sales </label>
		<input type="text" name="sales" placeholder="sales" size="30" class="form-control" class="username-field"/>
		</div>     
                
               <button type="submit" name="submit" class="btn btn-primary">Add</button>
                  
            	</fieldset>
		</form>
		</div>
		</div>
		</div> 

        <font color="red"><c:if test="${not empty param.errMsg}">
            <c:out value="${param.errMsg}" />
            <a href="adminMainPage.jsp">Go Back</a>
        </c:if></font>
        <font color="green"><c:if test="${not empty param.susMsg}">
            <c:out value="${param.susMsg}" />
            <a href="attendant_display.jsp"  class="btn btn-success" role="button">View Attendants</a>
        </c:if></font
        
       
<%@ include file="footer.jsp" %>