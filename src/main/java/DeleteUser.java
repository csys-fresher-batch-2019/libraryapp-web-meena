

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.books.dao.impl.UserDetailsDAOImpl;
import com.books.model.UserDetails;


public class DeleteUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());{
			UserDetailsDAOImpl m=new UserDetailsDAOImpl();
			UserDetails obj=new UserDetails();
			PrintWriter out=response.getWriter();
			obj.setUserId(Integer.parseInt(request.getParameter("userId")));
			
			try {
				int row=m.deleteUserDetails(obj.getUserId());
				if(row!=0)
				{
					out.print("Deleted");
					response.sendRedirect("ViewUsers.jsp");
					
				}
				else
				{
					out.print("No record Found");
				}
				
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
		}
	}

	
}
