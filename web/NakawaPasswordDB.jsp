<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%
String OldPassword = request.getParameter("OldPassword");
String Newpass = request.getParameter("newpassword");
String conpass = request.getParameter("conpassword");
String Address = "Nakawa";


Connection con = null;
Statement st = null;
String pass = "";
int id = 0;
try {
Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/hongera";
con = DriverManager.getConnection(url, "root", "");
st = con.createStatement();
ResultSet rs = st.executeQuery("select * from accounts where Password= '"+ OldPassword + "'");
if (rs.next()) { 
pass = rs.getString("Password");
} 
if(Newpass.equals(conpass))
{
if (pass.equals(OldPassword)) {
st = con.createStatement();
int i = st.executeUpdate("update accounts set Password='"+ Newpass + "'  where Address='"+ Address +"'");
out.println("Password changed successfully<br/>");
out.println("<h3><center>Login <a href='SalesPersonLogin.jsp'>try again</a></center></h3>");
st.close();
con.close();
} else {
out.println("Old Password doesn't match");
}
/*}else{
out.println("new password and confirm new password is not matching");
}*/
}
} catch (Exception e) {
out.println(e);
}
%>