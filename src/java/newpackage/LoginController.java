package newpackage;
 
import java.io.IOException;
import java.io.PrintWriter;
 
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
 
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String un = request.getParameter("Uname");
		String pwd = request.getParameter("Password");
		if (un.equals("candidjava")) {
			out.print("Welcome, " + un);
			HttpSession session = request.getSession(true); // reuse existing
									// or create one
			session.setAttribute("user", un);
			session.setMaxInactiveInterval(30); // 30 seconds
			response.sendRedirect("SalesPerson.jsp");
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("SalesPersonLogin.jsp");
			out.println("<font color=red>Either user name or password is wrong.</font>");
			rd.include(request, response);
		} // TODO Auto-generated method stub
	}
}