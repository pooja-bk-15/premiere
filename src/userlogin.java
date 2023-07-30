
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/userlogin")
public class userlogin extends HttpServlet {

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
         PrintWriter out = response.getWriter();
        // read form fields
        String username = request.getParameter("username");
        String userpassword = request.getParameter("userpassword");
        
        System.out.println("user username: " + username);
        System.out.println("user password: " + userpassword);
        
        
        
        HttpSession session = request.getSession();
        session.setAttribute("passuser",username);
        try {
        	Class.forName("com.mysql.jdbc.Driver");
        	Connection con = DriverManager.getConnection("jdbc:mysql://localhost/premiere","pooja","pooja");
        	PreparedStatement ps = con.prepareStatement("select * from user where name = ? and password = ?");
        	ps.setString(1, username);
        	ps.setString(2, userpassword);
        	ResultSet rs = ps.executeQuery();
        	if(rs.next()) {
        		response.sendRedirect("user.jsp");
        	}else {
        		out.println("Invalid Credentials, please try again!");
        	}
        	ps.close();
        	con.close();
        }catch(Exception e){
        	System.out.println(e);
        }
        
        
         
    }
}