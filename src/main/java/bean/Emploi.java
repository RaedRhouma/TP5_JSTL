package bean;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class Emploi {
    public static Connection getConnection(){
        Connection con=null;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/TP5","root","");
        }catch(Exception ex){System.out.println(ex);}
        return con;
    }

    public static int insert(cours c){
        int status=0;
        try{
            Connection con=getConnection();
            PreparedStatement ps=(PreparedStatement) con.prepareStatement(
                    "insert into cours(intitule,intervenant,duree,dates) values(?,?,?,?)");
            ps.setString(1,c.getIntitule());
            ps.setString(2,c.getIntervenant());
            ps.setString(3,c.getDuree());
            ps.setString(4,c.getDates());

            status=ps.executeUpdate();
        }catch(Exception e){System.out.println(e);}
        return status;
    }



    public static List<cours> getCours(){
        List<cours> list=new ArrayList<cours>();
        try{
            Connection con=getConnection();
            PreparedStatement ps=(PreparedStatement) con.prepareStatement("select * from cours");
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                cours c=new cours();
                c.setId(rs.getInt("id"));
                c.setIntitule(rs.getString("intitule"));
                c.setIntervenant(rs.getString("intervenant"));
                c.setDuree(rs.getString("duree"));
                c.setDates(rs.getString("dates"));
                list.add(c);
            }
        }catch(Exception e){System.out.println(e);}
        return list;
    }

    public static void main(String[] args) {
//        Date d = new Date(20-05-2021);
//
//        cours c1= new cours("math","xxx","2h",d);
//        Emploi.insert(c1);
//        System.out.println(getCours());
    }


}
