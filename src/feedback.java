
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/feedback")
public class feedback extends HttpServlet {

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
         String name = request.getParameter("fname");
         String email = request.getParameter("mail");
         String satisfaction = request.getParameter("satisfaction");
         int urange = Integer.parseInt(request.getParameter("range"));
         String comments = request.getParameter("usertextarea");
         
         System.out.println(name);
         System.out.println(email);
         System.out.println(satisfaction);
         System.out.println(urange);
         System.out.println(comments);
         
         try {
        	 Class.forName("com.mysql.jdbc.Driver");
        	 Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/premiere","pooja","pooja");
        	 PreparedStatement ps = conn.prepareStatement("insert into feedback values(?,?,?,?,?)");
        	 ps.setString(1, name);
        	 ps.setString(2, email);
        	 ps.setString(3, satisfaction);
        	 ps.setInt(4, urange);
        	 ps.setString(5, comments);
        	 ps.executeUpdate();
        	 Thread.sleep(2000);
        	 response.sendRedirect("user.jsp");
        	 ps.close();
        	 conn.close();
         }catch(Exception e) {
        	 System.out.println(e);
         }
         
    }
}