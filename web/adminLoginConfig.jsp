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
    rs = st.executeQuery("select * from administrator where Username='" + userid + "' and Password='" + pwd + "'");
    
    if (rs.next()) {
        session.setAttribute("userid", userid);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("adminMainPage.jsp");
    } else {
        out.println("<h3><center>Invalid password <a href='adminLogin.jsp'>try again</a></center></h3>");
    }
%>

<%@ include file="footer.jsp" %>