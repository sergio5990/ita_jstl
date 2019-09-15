package by.itacademy.jd2.jstl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static by.itacademy.jd2.jstl.WebUtils.forwardToJsp;

@WebServlet(urlPatterns = "/el")
public class ElServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest rq, HttpServletResponse rs) throws ServletException, IOException {
        rq.setAttribute("requestAttr", "request - Attribute");
        rq.getSession().setAttribute("sessionAttr", "session attribute");
        getServletContext().setAttribute("globalAttr", "global - attribute");


        rq.setAttribute("user", new User("Valera"));
        rq.getSession().setAttribute("userSession", new User("Valera 2"));
        forwardToJsp("el", rq, rs);
    }

}

