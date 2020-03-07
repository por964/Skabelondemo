package FunctionLayer;

import DBAccess.UserMapper;


import java.sql.SQLException;
import java.util.ArrayList;

/**
 * The purpose of LogicFacade is to...
 * @author kasper
 */
public class LogicFacade {

    public static User login( String email, String password ) throws LoginSampleException {
        return UserMapper.login( email, password );
    } 

    public static User createUser( String email, String password ) throws LoginSampleException {
        User user = new User(email, password, "customer");
        UserMapper.createUser( user );
        return user;
    }
    /*public static void resetPw(String pw, int id) throws LoginSampleException {
        UserMapper.resetPw(pw, id);
    }*/
    public static ArrayList<String> getCustomers () throws SQLException, ClassNotFoundException {
        //System.out.println(getCustomers());
        return UserMapper.getCustomers();
    }
    public static void resetPw(User user) throws LoginSampleException {
        UserMapper.resetPw(user);
    }

}
