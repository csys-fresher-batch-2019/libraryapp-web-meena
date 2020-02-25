import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.books.dao.impl.UserDAOImpl;
import com.books.model.UserDetails;


public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		HttpSession sess=request.getSession();
		UserDAOImpl m=new UserDAOImpl();
		UserDetails obj = new UserDetails();
		//int uId=0;
		PrintWriter out = response.getWriter();
		obj.setEmail(request.getParameter("email"));
		obj.setPassword(request.getParameter("password"));
		//System.out.println(obj.email);
		//System.out.println(obj.password);
		try {
			int uId=m.checkLogin(obj.getEmail(),obj.getPassword());
			System.out.println(uId);
			sess.setAttribute("UserId", uId);
			if(uId!=0)
			{
				response.sendRedirect("Users.jsp");
				
			}
			else
			{
				out.println("<font color='red'>No Records Found</font>");
				//out.print("Invalid Login");
				response.sendRedirect("UserLogin.jsp");
			}
		} 
		catch (Exception e) {
			
			e.printStackTrace();
		}
		
		

	}

	

}
