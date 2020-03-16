<%@ include file="header.jsp" %>
<%@ page import ="java.sql.*" %>
 
<%
    String userid = request.getParameter("Uname");    
    String pwd = request.getParameter("Pword");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hongera",
            "root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from accounts where UName='" + userid + "' and Password='" + pwd + "'");
    
    if (rs.next()) {
        String type = rs.getString("UName");
        if("emmaOlega".equals(type)){
            session.setAttribute("userid", userid);
        out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("MengoBranch.jsp");
    }
    else if("MaxOlega".equals(type)){
            session.setAttribute("userid", userid);
        out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("NakawaBranch.jsp");
    }
    else if("danOlega".equals(type)){
            session.setAttribute("userid", userid);
        out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("MainBranch.jsp");
    }
    else if("estherOlega".equals(type)){
            session.setAttribute("userid", userid);
        out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("KawempeBranch.jsp");
    }

    } else {
       out.println("<h3><center>Invalid password <a href='SalesPersonLogin.jsp'>try again</a></center></h3>");
    }
%>

<%@ include file="footer.jsp" %>