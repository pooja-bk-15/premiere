
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/payment")
public class payment extends HttpServlet {

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
         PrintWriter out = response.getWriter();
        // read form fields
       String cardname = request.getParameter("cname");
       String cnumber = request.getParameter("ccard");
       String cmonth =  request.getParameter("cmonth");
       String ccvv = request.getParameter("ccvv");
       System.out.println(cardname);
       System.out.println(cnumber);
       System.out.println(cmonth);
       System.out.println(ccvv);
       try {
    	  Class.forName("com.mysql.jdbc.Driver");
    	  Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/premiere","pooja","pooja");
    	  PreparedStatement ps = conn.prepareStatement("insert into payment(cname,cnumber,cmonth,ccvv) values(?,?,?,?)");
    	  ps.setString(1,cardname);
    	  ps.setString(2, cnumber);
    	  ps.setString(3, cmonth);
    	  ps.setString(4, ccvv);
    	  ps.executeUpdate();
    	  response.sendRedirect("success.jsp");
       }catch(Exception e) {
    	   System.out.println(e);
       }
    }
}