package crmoreno_CSCI201L_Lab3;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ValidateServlet
 */
@WebServlet("/ValidateServlet")
public class ValidateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String phone = (String)request.getParameter("phone");
		String email = (String)request.getParameter("email");
		String contact = (String)request.getParameter("contact");
		String month = (String)request.getParameter("curMonth");
		String search = (String)request.getParameter("q");
		String message = (String)request.getParameter("message");
		String lecture = (String)request.getParameter("lectureTime");
		String rating = (String)request.getParameter("rating");
		String url = (String)request.getParameter("myURL");
		String color = (String)request.getParameter("color");
		String recommend = (String)request.getParameter("recommend");
		
		
		String pageToForward = "/success.jsp";
		Boolean resetForm = false;
		if(email != null && phone != null && contact != null && search != null && month != null && rating != null 
				&& url != null && recommend != null && color != null && search != null && message != null && 
				lecture != null) {
			resetForm = true;
		}

		
		if(resetForm) {
			pageToForward = "/form.jsp";
		}
		RequestDispatcher dispatch = getServletContext().getRequestDispatcher(pageToForward);
		dispatch.forward(request,  response);
	}
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ValidateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
