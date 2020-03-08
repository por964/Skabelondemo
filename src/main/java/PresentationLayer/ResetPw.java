package PresentationLayer;

import FunctionLayer.LogicFacade;
import FunctionLayer.LoginSampleException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.SQLException;

public class ResetPw extends Command {


    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException, SQLException, ClassNotFoundException {
        HttpSession session = request.getSession();
        String id = request.getParameter("id");
        String newpw = request.getParameter("newpw");
        //String newpw = "123";
        LogicFacade.resetPw(Integer.parseInt(id),newpw);
        session.setAttribute( "id", id);
        session.setAttribute("newpw", newpw);
        return "employeepage";
    }
}
