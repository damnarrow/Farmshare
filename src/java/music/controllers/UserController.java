package music.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import music.business.User;
import music.data.UserDB;

public class UserController extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws IOException, ServletException {

        String requestURI = request.getRequestURI();
        String url = "";
        if (requestURI.endsWith("/deleteCookies")) {
            url = deleteCookies(request, response);
        }
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws IOException, ServletException {

        String requestURI = request.getRequestURI();
        String url = "";
        if (requestURI.endsWith("/subscribeToEmail")) {
            url = subscribeToEmail(request, response);
        }
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }

    private String deleteCookies(HttpServletRequest request,
            HttpServletResponse response) {
        Cookie[] cookies = request.getCookies();
        for (Cookie cookie : cookies) {
            cookie.setMaxAge(0);  //delete the cookie
            cookie.setPath("/");  //entire application
            response.addCookie(cookie);
        }
        return "/delete_cookies.jsp";
    }

    private String subscribeToEmail(HttpServletRequest request,
            HttpServletResponse response) {

        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String address1 = request.getParameter("address1");
        String address2 = request.getParameter("address2");
        String city = request.getParameter("city");
        String state = request.getParameter("state");
        String zip = request.getParameter("zip");
        String cctype = request.getParameter("creditCardType");
        String ccnumber = request.getParameter("creditCardNumber");
        String ccexp = request.getParameter("creditCardExpirationDate");

        User user = new User();
        user.setFirstName(firstName);
        user.setLastName(lastName);
        user.setEmail(email);
        user.setAddress1(address1);
        user.setAddress2(address2);
        user.setCity(city);
        user.setState(state);
        user.setZip(zip);
        user.setCreditCardNumber(ccnumber);
        user.setCreditCardType(cctype);
        user.setCreditCardExpirationDate(ccexp);

        request.setAttribute("user", user);

        String url;
        String message;
        //check that email address doesn't already exist
        if (UserDB.emailExists(email)) {
            message = "This email address already exists. <br>"
                    + "Please enter another email address.";
            request.setAttribute("message", message);
            url = "/email/index.jsp";
        } else {
            UserDB.insert(user);
            message = "";
            request.setAttribute("message", message);
            url = "/email/thanks.jsp";
        }
        return url;
    }
}