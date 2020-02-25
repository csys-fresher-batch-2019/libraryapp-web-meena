

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.books.dao.impl.UserDAOImpl;
import com.books.model.BookDetails;


public class SearchBookname extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		{
			
			UserDAOImpl m=new UserDAOImpl();
			BookDetails obj=new BookDetails();
			PrintWriter out=response.getWriter();
			
			obj.setBookName(request.getParameter("bookName"));
			try
			{
				List<BookDetails>bookDetails=m.searchBookName(obj.getBookName());
				//m.searchBookName(obj.bookName);
				request.setAttribute("bookName", bookDetails);
				//response.sendRedirect("ListByBooks.jsp");
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
		}
	}

	
}
