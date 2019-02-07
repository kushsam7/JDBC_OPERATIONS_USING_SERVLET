/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MyPackage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


/**
 *
 * @author Su Mit
 */
public class ConnectionManager {
   public Connection con=null;
    PreparedStatement ps=null;
    ResultSet rs=null;
    
    public void getConnection() throws ClassNotFoundException, SQLException
    {
        
           Class.forName("oracle.jdbc.OracleDriver");
           con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","qwerty");
    }
    public boolean executeNonQuery(String query)
    {
        try
        {
    getConnection();        
    ps=con.prepareStatement(query); 
    ps.executeUpdate();
    return true;
    }
        catch(SQLException ex1)
        {
            return false;
        }
        catch(ClassNotFoundException ex2)
        {
             return false;
        }
    }
          public ResultSet selectQuery(String query) throws SQLException, ClassNotFoundException
          {
          getConnection();
          ps=con.prepareStatement(query);
          rs=ps.executeQuery();
          return rs;
          }
}
