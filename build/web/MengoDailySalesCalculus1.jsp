<%@include file="header.jsp"%>

<center>
        <h5>
        <form action="MengoDailySalesCalculus2DB.jsp" method="POST">
            
         The Date is  <input type="text" size="30" name="date" value="
                   <%
                 String YourDate = request.getParameter("date");
                 out.println(YourDate);

                   %>
                   "/><br/>
       
          The ID Sales are  <input type="text" size="30" name="sales" value="
                   <%
                 int y=Integer.parseInt(request.getParameter("sales"));
                 out.println(y);
                   %>
                   "/><br/>
Your Commission <input type="text" size="30" name="commission" value="
<%
    try{
    int x=Integer.parseInt(request.getParameter("sales"));
    double z;
    
    if(x<50000){
     z=0;
     out.println(z);
    }
    else if(x>= 50000 && x<=99999){
     z=8000;
     out.println(z);
    }
    else if(x>= 100000 && x<=499999){
     z=10000;
     out.println(z);
    }
    else if(x>= 500000 && x<=999999){
     z=12500;
     out.println(z);
    }
    else if(x>= 1000000 && x<=1500000){
     z=16000;
     out.println(z);
    }
    else if(x>1500000){
     double k = (13.4/100);
     z = k*1500000;
     out.println((int)z);
    }

    

        }
    catch(Exception e)
        {
        out.println("You entered invalid number");
}
%>
" />

<input type="submit" value="Send"/>
        </form>

</center>    
   
<%@include file="footer.jsp"%>
