

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.books.dao.impl.PenalityCalcDAOImpl;


public class ChangeBookLimit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		{
			PenalityCalcDAOImpl m=new PenalityCalcDAOImpl();
			PrintWriter out=response.getWriter();
			int limit=Integer.parseInt(request.getParameter("limit"));
			try
			{
				int row=m.setBookLimit(limit);
				if(row!=0)
				{
					out.print("Changed Successfully");
					response.sendRedirect("AdminPersonal.jsp");
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
