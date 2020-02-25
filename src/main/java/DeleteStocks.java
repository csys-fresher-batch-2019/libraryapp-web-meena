

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.books.dao.impl.BookStockDetailsDAOImpl;
import com.books.model.BookStockDetails;


public class DeleteStocks extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		{
			BookStockDetailsDAOImpl m=new BookStockDetailsDAOImpl();
			BookStockDetails obj=new BookStockDetails();
			PrintWriter out=response.getWriter();
			obj.setBookId(Integer.parseInt(request.getParameter("bookId")));
			try {
				m.deleteStock(obj.getBookId());
				out.print("Deleted");
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
		}
	}

}
