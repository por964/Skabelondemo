package PresentationLayer;

import FunctionLayer.LoginSampleException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.SQLException;


public class Logout extends Command {


    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException, SQLException, ClassNotFoundException {

        HttpSession session = request.getSession();
        //request.setAttribute("user",null);
        //request.setAttribute("role",null);
        //request.setAttribute("email",null);
        //request.getSession().invalidate();
        session.invalidate();

        return "index";
    }
}