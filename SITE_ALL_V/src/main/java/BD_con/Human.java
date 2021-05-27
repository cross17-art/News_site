package BD_con;

public class Human {
    private String login;
    private int Id;
    private String password;

    public Human(int id,String password,String name){
        this.login=name;
        Id=id;
        this.password=password;
    }

    public  String getLogin(){
        return login;
    }
    public  int get_id(){
        return Id;
    }
    public String getPassword(){
        return password;
    }
}
