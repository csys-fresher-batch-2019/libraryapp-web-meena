

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.books.dao.impl.UserDAOImpl;


public class ChangePassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		{
			HttpSession sess=request.getSession(false);
			Integer userId=(Integer)sess.getAttribute("UserId");
			UserDAOImpl m=new UserDAOImpl();
			PrintWriter out=response.getWriter();
			String password=request.getParameter("password");
			try
			{
				int row=m.changePassword(userId, password);
				if(row!=0)
				{
					out.print("Changed Successfully");
					response.sendRedirect("Users.jsp");
				}
				else
				{
					out.print("Not Updated");
				}
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
		}
	}

	

}
