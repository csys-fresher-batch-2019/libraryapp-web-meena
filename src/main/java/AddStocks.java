

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.books.dao.impl.BookStockDetailsDAOImpl;
import com.books.model.BookStockDetails;


public class AddStocks extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		{
			BookStockDetailsDAOImpl m=new BookStockDetailsDAOImpl();
			BookStockDetails obj=new BookStockDetails();
			PrintWriter out = response.getWriter();
			
			obj.setIsbnNo(Integer.parseInt(request.getParameter("isbnNo")));
			
			try
			{
				m.insertBookStockDetails(obj.getIsbnNo());
				out.print("Inserted");
				response.sendRedirect("AdminPersonal.jsp");
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			
		}
	}

	

}
