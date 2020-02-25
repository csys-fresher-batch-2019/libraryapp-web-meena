

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.books.dao.impl.BookDetailsDAOImpl;


public class AdminProgress extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		{
			BookDetailsDAOImpl k=new BookDetailsDAOImpl();
			
			PrintWriter out = response.getWriter();
			
			String userName=request.getParameter("userName");
			String password=request.getParameter("password");
			try {
				int admin=k.checkAdmin(userName, password);
				System.out.println(admin);
				System.out.println(userName);
				System.out.println(password);
				if(admin!=0)
				{
					response.sendRedirect("AdminPersonal.jsp");
					
				}
				else
				{
					out.print("Invalid Login");
					response.sendRedirect("LoginAdmin.jsp");
				}
			} 
			catch (Exception e) {
				
				e.printStackTrace();
			}
		}
	}

	

}
