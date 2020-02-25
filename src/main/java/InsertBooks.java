

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.books.dao.impl.BookDetailsDAOImpl;
import com.books.model.BookDetails;


public class InsertBooks extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		{
			BookDetailsDAOImpl m=new BookDetailsDAOImpl();
			BookDetails obj=new BookDetails();
			PrintWriter out=response.getWriter();
			
			obj.setIsbnNo(Integer.parseInt(request.getParameter("isbnNo")));
			obj.setBookName(request.getParameter("bookName"));
			obj.setAuthorName(request.getParameter("authorName"));
			obj.setPublisher(request.getParameter("publisher"));
			obj.setVersion(Integer.parseInt(request.getParameter("version")));
			obj.setCategories(request.getParameter("category"));
			obj.setLanguages(request.getParameter("language"));
			
			try {
				
				int row=m.insertBookDetails(obj);
				if(row==1)
				{
					out.print("Inserted");
					response.sendRedirect("AdminPersonal.jsp");
					
				}
				else
				{
					out.print("Not Inserted");
				}
				
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			
		}
	}

	

}
