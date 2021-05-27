package BD_con;

import BD_con.Human;

import java.sql.*;
import java.util.LinkedList;

public class BDConnection   {
    private String url="jdbc:mysql://localhost:3306/site_cur?autoReconnect=true&useSSL=false";
    private String password="1111";
    private String user_name="root";

    Connection connection;

    public static LinkedList<Human> humans=new LinkedList<>();

    public BDConnection() throws ClassNotFoundException {
        Class.forName("com.mysql.jdbc.Driver");
    }
    public Connection getConnection() throws SQLException {
        if(connection!=null){
            return connection;
        }
        connection= DriverManager.getConnection(url,user_name,password);
        return connection;
    }

    public void Query(String query) throws SQLException {
        clear_linkedlist();
        PreparedStatement preparedStatement=connection.prepareStatement(query);
        ResultSet resultSet= preparedStatement.executeQuery();
        int i=0;
        while (resultSet.next()) {
            humans.add(new Human(resultSet.getInt(1), resultSet.getString(2), resultSet.getString(3)));
            i++;
        }
        System.out.println("ok");
    }

    public void Insert_db(String password,String  login) throws SQLException {
       // int $year1=Integer.parseInt($user_year);
        //String query="INSERT INTO `Human`(Name,Year) VALUES(?,?)";
        String query="INSERT INTO `site_cur`.`User` (password, login) VALUES (?, ?);";
       // String q="Insert into `user`(passwrod,login) values (?,?)";

        PreparedStatement statement=connection.prepareStatement(query);
        statement.setString(1,password);
        statement.setString(2, login);

        statement.executeUpdate();
        statement.close();


        Query("select *from site_cur.User");
    }

    public  void Delet_db(String name1) throws SQLException {
        //String query="Delete from Human where Name='"+name1+"'";
       // PreparedStatement statement=connection.prepareStatement(query);
                                    //clear_linkedlist();  //проверить нужно ли тут чистка(оставить только одну в query)
        //statement.executeUpdate();
        //statement.close();
    }

    private void clear_linkedlist(){
        while (humans.size() != 0 ) {
            humans.removeFirst();
        }
    }



}
