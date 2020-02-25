

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.books.dao.impl.PenalityCalcDAOImpl;


public class ChangeDueCount extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		{
			PenalityCalcDAOImpl m=new PenalityCalcDAOImpl();
			PrintWriter out=response.getWriter();
			int count=Integer.parseInt(request.getParameter("count"));
			try
			{
				int row=m.setDueDays(count);
				if(row!=0)
				{
					m.updateDueDateAll();
					m.updateFineAll();
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
