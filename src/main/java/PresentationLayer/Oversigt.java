package PresentationLayer;

import FunctionLayer.LogicFacade;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.SQLException;
import java.util.ArrayList;

public class Oversigt extends Command {


    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws SQLException, ClassNotFoundException {
        HttpSession session = request.getSession();
        ArrayList<String> liste = LogicFacade.getCustomers();

        session.setAttribute( "customers", liste);
        session.setAttribute("size", liste.size());
        return "oversigt";
        //return user.getRole() + "page";
    }
}
