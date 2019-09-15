package by.itacademy.jd2.jstl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;

import static by.itacademy.jd2.jstl.WebUtils.forwardToJsp;

@WebServlet(urlPatterns = "/jstl")
public class JstlServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest rq, HttpServletResponse rs) throws ServletException, IOException {
        rq.setAttribute("user", "name");
        rq.setAttribute("salary", rq.getParameter("salary"));
        rq.setAttribute("list", Arrays.asList("first", "second", "last"));
        rq.setAttribute("users", Arrays.asList(new User("first"), new User("second")));
        forwardToJsp("jstl", rq, rs);
    }

}

