package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ex62servlet")
public class ex62servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ex62servlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int random = (int)(Math.random()*9);
		System.out.println(random);
		if (random%2 == 0) {
			RequestDispatcher dispatch = request.getRequestDispatcher("/forwarded.jsp");
			dispatch.forward(request, response);
		} else {
			response.sendRedirect("/example/redirected.jsp");
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
