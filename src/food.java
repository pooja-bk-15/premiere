import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
 
@WebServlet("/food")
public class food extends HttpServlet {
 
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
         
        // read form fields
    	int foodcost=0;
        String foodId = request.getParameter("id");
        if(foodId.equals("food1")){
        	foodcost=350;
        }
        else if(foodId.equals("food2")){
        	foodcost=300;
        }
        else if(foodId.equals("food3")){
        	foodcost=250;
        }
        else if(foodId.equals("food4")){
        	foodcost=60;
        }
        else if(foodId.equals("food5")){
        	foodcost=550;
        }
        else if(foodId.equals("food6")){
        	foodcost=850;
        }
        // do some processing here...
        try
        {
        	int total= foodcost+book.cost;
        	HttpSession ses = request.getSession();
        	ses.setAttribute("paymentcost", total);
        	PrintWriter writer = response.getWriter();
            String htmlRespone = "<html>";   
            htmlRespone += "<br><center><h3 style='font-size: 30px;'>Première<span style='color: red;'> Foods</span></h3></center><center><div style='border:1px solid black; border-radius:3px; width:400px;'><h2>BILL</h2><hr><br/><h3>Tickets: <span style='color: red;'>Rs." + book.cost +"</span>"+ "</h3><h3>Food Combo: Rs." + foodcost + "</h3><hr><h3>Total: Rs. <span style='color: red;'>" + total + "</span></h3><br></div></center>"; 
//            htmlRespone += "<h2>Bill</h2><br/>";
//            htmlRespone += "<h2>Tickets: "+ book.cost +"</h2><br/>";
//            htmlRespone += "<h2>Food: "+ foodcost +"</h2><br/>";
//            htmlRespone += "<h2>Total: "+ total +"</h2><br/>";
            htmlRespone+="</html>";
            writer.println(htmlRespone);
            htmlRespone="<br><br><br><center><br><a href='payment1.jsp' style='font-size:20px; text-decoration: none; background-color: green; color: white; padding: 20px; border-radius: 10px;'>PROCEED TO PAYMENT</a></center>";
            writer.println(htmlRespone);
         }
        catch (Exception e)
        {
          System.err.println("Got an exception!");
          System.err.println(e.getMessage());
        }
      
    }
 
}