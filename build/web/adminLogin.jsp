<%@include file="header.jsp"%>
 <center
     
        <div class="container" id="container">
     <div class="row">
          <div class="col-lg-4 col-sm-4 well">
        <form action="adminLoginConfig.jsp" method="post">
            <fieldset>
            
                <legend><h3>Administrator Login</h3></legend>
                <div class="form-group">
		<label for="Kiosk name">Username</label>
		<input type="text" name="Uname" placeholder="mutebile" size="30" class="form-control" class="username-field"/>
		</div>
                    
                <div class="form-group">
		<label for="Kiosk name">Password</label>
		<input type="password" name="Pword" placeholder="1234" size="30" class="form-control" class="username-field"/>
		</div>

                <button type="submit" name="submit" class="btn btn-primary">login</button>
       </fieldset>
		</form>
		</div>
		</div>
		</div> 

     </center>
 <%@ include file="footer.jsp" %>

