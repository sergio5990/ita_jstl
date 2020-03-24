package by.itacademy.jd2.jstl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;

import static by.itacademy.jd2.jstl.WebUtils.forwardToJsp;

@WebServlet(urlPatterns = "/jstl2")
public class Jstl2Servlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest rq, HttpServletResponse rs) throws ServletException, IOException {
        String locale = rq.getParameter("locale");
        if (locale == null) {
            rq.getSession().setAttribute("locale", "en_US");
        } else {
            rq.getSession().setAttribute("locale", locale);
        }
        WebUtils.forwardToJsp("jstl2", rq, rs);
    }

}

