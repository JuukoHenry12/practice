<%@ include file="header.jsp" %>  
    <body>
    <center>
              <a href="SalesPersonsDisplay.jsp"  class="btn btn-success" role="button">View Sales Persons</a>
              <a href="adminMainPage.jsp"  class="btn btn-success" role="button">Main menu</a>
    </center><br/>
         <div class="container" id="container">
     <div class="row">
          <div class="col-lg-4 col-sm-4 well">

              <br/>
              
              <form action="SalesPersonInsertDB.jsp" method="post">
		<fieldset>
		<legend><h3>Add Sales Person </h3></legend>
                
                 <div class="form-group">
		<div class="error"></div>
		<label>First Name </label>
		<input type="text" name="FName" placeholder="First Name" size="30" class="form-control" class="username-field"/>
		</div>
                
                 <div class="form-group">
		<div class="error"></div>
		<label>Last Name </label>
		<input type="text" name="LName" placeholder="Last Name" size="30" class="form-control" class="username-field"/>
		</div>
                
                 <div class="form-group">
		<div class="error"></div>
		<label>User Name </label>
		<input type="text" name="UName" placeholder="User Name" size="30" class="form-control" class="username-field"/>
		</div>
                
                 <div class="form-group">
		<div class="error"></div>
		<label>Phone Number </label>
		<input type="text" name="PNumber" placeholder="Phone Number" size="30" class="form-control" class="username-field"/>
		</div>
                
                 <div class="form-group">
		<div class="error"></div>
		<label>Password </label>
		<input type="text" name="Password" placeholder="password" size="30" class="form-control" class="username-field"/>
		</div> 
                
                 <div class="form-group">
		<div class="error"></div>
		<label>Address </label>
		<input type="text" name="Address" placeholder="address" size="30" class="form-control" class="username-field"/>
		</div>    
                
                 <div class="form-group">
		<div class="error"></div>
		<label>Reference Person </label>
		<input type="text" name="ReferencePerson" placeholder="reference person" size="30" class="form-control" class="username-field"/>
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