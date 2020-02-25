
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.books.dao.impl.PenalityCalcDAOImpl;
import com.books.model.PenalityCalc;

public class Returned extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		{
			PenalityCalcDAOImpl m=new PenalityCalcDAOImpl();
			PenalityCalc obj=new PenalityCalc();
			PrintWriter out=response.getWriter();
			obj.setBookId(Integer.parseInt(request.getParameter("bookId")));
			obj.setUserId(Integer.parseInt(request.getParameter("userId")));
			String date = request.getParameter("returnedDate");
			
			obj.setReturnedDate(Date.valueOf(date));
			//		obj.returnedDate=Date.valueOf(request.getParameter("returnedDate"));
			int row=0;
			try
			{
				row=m.updateReturnStatus(obj.getBookId(),obj.getUserId(),obj.getReturnedDate());
				if(row!=0)
				{
					System.out.println("Return Status Updated");

					response.sendRedirect("ViewStatus.jsp");
				}
				else
				{
					out.println("No Data Found");
				}
				
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			
		}
		
	}

	
		

}
