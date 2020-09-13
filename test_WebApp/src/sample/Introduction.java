package sample;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Introduction")
public class Introduction extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Introduction() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head>");
		out.println("<title>自己紹介</title>");
		out.println("</head>");
		out.println("<body background=\"pictures/background.png\">");
		out.println("<br>");
		out.println("<h1 align=\"center\">阿部の趣味</h1>");
		out.println("<h2>バスケ</h2>");
		out.println("<img src=\"pictures/basketball_dunk.png\" border=\"0\">");
		out.println("<h2>Youtube視聴</h2>");
		out.println("<img src=\"pictures/douga_haishin_youtuber.png\" border=\"0\">");
		out.println("</body>");
		out.println("</html>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
