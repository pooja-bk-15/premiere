
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/userregister")
public class userregister extends HttpServlet {

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
         
        // read form fields
        String rusername = request.getParameter("rusername");
        String rdob = request.getParameter("rdob");
        String rmail = request.getParameter("rmail");
        String rpassword = request.getParameter("rpassword");
        
        System.out.println("registered username: " + rusername);
        System.out.println("registered dob: " + rdob);
        System.out.println("registered mail: " + rmail);
        System.out.println("registered password: " + rpassword);
        try {
        	Class.forName("com.mysql.jdbc.Driver");
        	Connection con = DriverManager.getConnection("jdbc:mysql://localhost/premiere","pooja","pooja");
        	PreparedStatement ps = con.prepareStatement("insert into user(name,dob,email,password) values(?,?,?,?)");
        	ps.setString(1, rusername);
        	ps.setString(2, rdob);
        	ps.setString(3, rmail);
        	ps.setString(4, rpassword);
        	ps.executeUpdate();
        	Thread.sleep(2000);
        	response.sendRedirect("login.html");
        	ps.close();
        	con.close();
        }catch(Exception e){
        	System.out.println(e);
        }
        
        
         
    }
}