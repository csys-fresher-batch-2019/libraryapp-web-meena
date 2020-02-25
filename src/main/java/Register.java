

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.books.dao.impl.UserDetailsDAOImpl;
import com.books.model.UserDetails;

/**
 * Servlet implementation class Register
 */
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserDetailsDAOImpl ob=new UserDetailsDAOImpl();
		UserDetails obj = new UserDetails();
		PrintWriter out = response.getWriter();
		obj.setUserName(request.getParameter("name"));
		

		out.println(obj.getUserName());
		obj.setPhno(Long.parseLong(request.getParameter("phone-number")));
		out.println(obj.getPhno());
		obj.setAddress(request.getParameter("address"));
		out.println(obj.getAddress());
		obj.setEmail(request.getParameter("email"));
		out.println(obj.getEmail());
		obj.setPassword(request.getParameter("psw"));
		out.println(obj.getPassword());
		String pass = request.getParameter("psw-repeat");
		out.println(obj.getPassword());
		obj.setGender(request.getParameter("gender"));
		out.println(obj.getGender());
		
		try {
			if(obj.getPassword().equals(pass))
			{
					ob.insertUserDetails(obj);
					
					out.print("Successfully Registered");
					response.sendRedirect("UserLogin.jsp");
			}
			else
			{
				response.sendRedirect("NewRegistration.jsp?errorMessage=Both password fields are not same");
			}
		} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		}
		}
		
	}

	
