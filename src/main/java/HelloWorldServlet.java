import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "HelloWorldServlet", urlPatterns = "/hello")
public class HelloWorldServlet extends HttpServlet {
    protected int views;
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        out.println("Hello World!");

        String name = req.getParameter("name");
        out.printf("<h3>Hello, " + name + "</h3>");

        int grade = Integer.parseInt(req.getParameter("grade"));
        out.println("<span>Grade: " + grade + ".00</span>");

        views += 1;
        out.println("<p>Number of site views: " + views + "</p>");
    }
}
