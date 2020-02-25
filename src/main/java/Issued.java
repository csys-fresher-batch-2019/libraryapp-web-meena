

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.books.dao.impl.BookStockDetailsDAOImpl;
import com.books.dao.impl.PenalityCalcDAOImpl;
import com.books.model.PenalityCalc;


public class Issued extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());{
			PenalityCalcDAOImpl m=new PenalityCalcDAOImpl();
			BookStockDetailsDAOImpl b=new BookStockDetailsDAOImpl();
			PenalityCalc obj=new PenalityCalc();
			PrintWriter out=response.getWriter();
			obj.setBookId(Integer.parseInt(request.getParameter("bookId")));
			obj.setUserId(Integer.parseInt(request.getParameter("userId")));
			String date = request.getParameter("issuedDate");
			
			obj.setIssuedDate(Date.valueOf(date));
			int row=0;
			try
			{
				row=m.insertUserBookDetails(obj.getBookId(), obj.getUserId(), obj.getIssuedDate());
				if(row!=0)
				{
					System.out.println("Entered Successfully");
					m.updateDueDate(obj.getBookId(), obj.getUserId());
					m.calculateFineAmount(obj.getBookId(), obj.getUserId());
					b.updateActive(obj.getBookId());
					response.sendRedirect("ViewStatus.jsp");
				}
				else
				{
					out.println("Already Taken");
				}	
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
		}
	}
}