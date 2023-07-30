
<%@ page import="com.mysql.*" %>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
if(session.getAttribute("username") == null){
	response.sendRedirect("index.html");
}
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
response.setHeader("Pragma","no-cache");
response.setDateHeader("Expires", 0);
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"><html lang="en">
<head>
  <title>Première - Admin</title>
  <meta charset="utf-8">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600' rel='stylesheet' type='text/css'>
  <link href="//netdna.bootstrapcdn.com/font-awesome/3.1.1/css/font-awesome.css" rel="stylesheet">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>
</head>

<nav class="navbar navbar-inverse" style="margin: 0px 0px 80px 0px; border-radius: 0px;">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="user.jsp" style="font-size: 25px;"><b style="color: red;">Première</b></a>
      </div>
  </div>
</nav>

<div class="container">
<h1>Welcome <span style="color: red;">${username}</span></h1>
<br>
<div class="row justify-content-evenly">
<div class="col-md-4 mt-3 pt-3">
<center>
<div class="testbox1">
		  <h1>Add Movie</h1>
		  <form action="userinput" method="POST">
		  <input type="text" name="movieName" placeholder="Movie Name" required/>
		  <input type="text" name="genere" placeholder="Genre" required/>
		  <input type="text" name="duration" placeholder="Duration in minutes" required/>
		  <input type="text" name="director" placeholder="Direction" required/>
		  <br />
		  <br />
		   <input class="btn btn-success" type="submit" value="ADD MOVIE" >
		  </form>
		</div>
</center>
</div>
<div class="col-md-4 mt-3 pt-3">
<center>
			<div class="testbox2">
			  <h1>Schedule Movie</h1>
			  <form action="schedule" method="POST">
			  <input type="text" name="movieId" placeholder="Movie ID">
	          <input type="number" name="screen" placeholder="Screen No. (1-3)" min="1" max="3">
	          <input type="number" name="slot" placeholder="Timeslot No. (1-3)" min="1" max="3">
	          <br />
	          <br />
	          <br />
	          <br />
			   <input class="btn btn-success" type="submit" value="SCHEDULE MOVIE">
			  </form>
			</div>
</center>
</div>
<div class="col-md-4 mt-3 pt-3">
<center>
<div class="testbox3">
			  <h1 style="color: red;">Delete Movie</h1>
			  <br><br>
			  <form action="delete" method="POST">
			  <p>Enter the name of the movie to be deleted</p>
			  <br>
	        	<input type="text" name="movieName" placeholder="Movie Name">
	        	<br />
	        	<br />
	        	<br />
	        	<br />
			    <input class="btn btn-danger" type="submit" value="DELETE MOVIE">
			  </form>
			</div>
</center>
		</div>
</div>
</div>

<div>
<!-- Added Movies Table -->
    <div class="container">
    
	    <table class="table table-hover" border="1px solid grey" style="margin-top: 80px;">
	    <caption>Added Movies</caption>
	        <thead style="background-color: black; color: white;">
	            <tr>
	            	<th><b>Id</b></th>
	                <th><b>Movie Names</b></th>
	                <th><b>Genre</b></th>
	                <th><b>Duration</b></th>
	                <th><b>Direction</b></th>
	            </tr>
	        </thead>
	        <tbody>
				<%
	                Class.forName("com.mysql.jdbc.Driver");
	                Connection conn = null;
	                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/premiere", "pooja", "pooja");
	                Statement stmt = null;
	                stmt = conn.createStatement();
	                String query = "select * from moviedatabase";
	                ResultSet rs = null;
	                rs = stmt.executeQuery(query);
	                while(rs.next()){
	            %>
	            <tr>
	                <%
	                	int id = rs.getInt("id");
	                    String title = rs.getString("title");
	                    String genere = rs.getString("genere");
	                    int duration = Integer.parseInt(rs.getString("duration"));
	                    String direction = rs.getString("director");
	                
	                %>
	                <td style="color: red;"><strong><%=id %></strong></td>
	                <td><%=title %></td>
	                <td><%=genere %></td>
	                <td><%=duration %></td>
	                <td><%=direction %></td>
	            </tr>               

	            <%      
	                }
	            %>

	        </tbody>
	    </table>
    </div>
    
<!-- Scheduled Movies Table --> 
<div class="container">
    
	    <table class="table table-hover" border="1px solid grey" style="margin-top: 20px;">
	    <caption>Scheduled Movies</caption>
	        <thead style="background-color: black; color: white;">
	            <tr>
	            	<th><b>Movie Id</b></th>
	                <th><b>Screen No.</b></th>
	                <th><b>Slot No.</b></th>
	                <th><b>Tickets Booked</b></th>
	            </tr>
	        </thead>
	        <tbody>
				<%
					Statement stmt2 = null;
	                stmt2 = conn.createStatement();
	                String query2 = "select * from shows";
	                ResultSet rs2 = null;
	                rs2 = stmt2.executeQuery(query2);
	                while(rs2.next()){
	            %>
	            <tr>
	                <%
	                	int mid = rs2.getInt("MId");
	                    int screen = rs2.getInt("screen");
	                    int slot = rs2.getInt("slot");
	                    int booked = rs2.getInt("booked");
	                
	                %>
	                <td style="color: red;"><strong><%=mid %></strong></td>
	                <td>Screen No. <%=screen %></td>
	                <td><%=slot %></td>
	                <td><%=booked %></td>
	            </tr>               

	            <%      
	                }
	            %>

	        </tbody>
	    </table>
    </div>  
    <!-- Feedback Table -->
    <div class="container">
    
	    <table class="table table-hover" border="1px solid grey" style="margin-top: 20px;">
	    <caption>Customer Feedback</caption>
	        <thead style="background-color: black; color: white;">
	            <tr>
	            	<th><b>Name</b></th>
	                <th><b>Mail</b></th>
	                <th><b>Satisfaction</b></th>
	                <th><b>Improvement Range</b></th>
	                <th><b>Comments</b></th>
	            </tr>
	        </thead>
	        <tbody>
				<%
					Statement stmt3 = null;
	                stmt3 = conn.createStatement();
	                String query3 = "select * from feedback";
	                ResultSet rs3 = null;
	                rs3 = stmt3.executeQuery(query3);
	                while(rs3.next()){
	            %>
	            <tr>
	                <%
	                	String name = rs3.getString("name");
	                    String mail = rs3.getString("mail");
	                    String satisfaction = rs3.getString("satisfaction");
	                    int userrange = rs3.getInt("userrange");
	                    String comments = rs3.getString("comments");
	                
	                %>
	                <td><%=name %></td>
	                <td><%=mail %></td>
	                <td><%=satisfaction %></td>
	                <td><%=userrange %></td>
	                 <td><%=comments %></td>
	            </tr>               

	            <%      
	                }
	            %>

	        </tbody>
	    </table>
    </div>
    
    <!-- Card Details Table -->
    <div class="container">
    
	    <table class="table table-hover" border="1px solid grey" style="margin-top: 20px;">
	    <caption>Card Details</caption>
	        <thead style="background-color: black; color: white;">
	            <tr>
	            	<th><b>Name</b></th>
	                <th><b>Card No.</b></th>
	                <th><b>Month</b></th>
	                <th><b>CVV</b></th>
	            </tr>
	        </thead>
	        <tbody>
				<%
					Statement stmt4 = null;
	                stmt4 = conn.createStatement();
	                String query4 = "select * from payment";
	                ResultSet rs4 = null;
	                rs4 = stmt4.executeQuery(query4);
	                while(rs4.next()){
	            %>
	            <tr>
	                <%
	                	String cname = rs4.getString("cname");
	                    String cnumber = rs4.getString("cnumber");
	                    String cmonth = rs4.getString("cmonth");
	                    String ccvv = rs4.getString("ccvv");
	                
	                %>
	                <td><%=cname %></td>
	                <td><%=cnumber %></td>
	                <td><%=cmonth %></td>
	                <td><%=ccvv %></td>
	            </tr>               

	            <%      
	                }
	            %>

	        </tbody>
	    </table>
    </div>
     
</div>

<br>

<footer>
<center>
<p>Done with your work? <a href="logout"><span style="color: red;">logout</span></a> here</p>
<br>
<p style="background-color: black; color: white; padding:20px; margin: 0px;">copyright <span style="color: red;">&copy; première</span> - 2023 PBK</p>
</center>
</footer>
<style>
      /* NOTE: The styles were added inline because Prefixfree needs access to your styles and they must be inlined if they are on local disk! */
body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre, form, fieldset, input, textarea, p, blockquote, th, td { 
  padding:0;
  margin:0;}

body,
input,
textarea,
select {
  font-family: 'Open Sans', sans-serif;
  font-size: 16px;
  color: #4c4c4c;
}

h1 {
  font-size: 32px;
  font-weight: 300;
  color: #4c4c4c;
  text-align: center;
  padding-top: 10px;
  margin-bottom: 10px;
}

.testbox1, .testbox2, .testbox3 {
  /*margin: 20px auto;*/
  width: 300px; 
  /*height: 330px;*/ 
  -webkit-border-radius: 8px/7px; 
  -moz-border-radius: 8px/7px; 
  border-radius: 8px/7px; 
  background-color: #ebebeb; 
  -webkit-box-shadow: 1px 2px 5px rgba(0,0,0,.31); 
  -moz-box-shadow: 1px 2px 5px rgba(0,0,0,.31); 
  box-shadow: 1px 2px 5px rgba(0,0,0,.31); 
  border: solid 1px #cbc9c9;
}

.testbox1{
	height: 330px; 
}
.testbox2{
	height: 330px; 
}
.testbox3{
	height: 330px; 
}
form{
  margin: 0 30px;
}

input[type=text],input[type=password], input[type=number]{
  width: 200px; 
  height: 39px; 
  -webkit-border-radius: 0px 4px 4px 0px/5px 5px 4px 4px; 
  -moz-border-radius: 0px 4px 4px 0px/0px 0px 4px 4px; 
  border-radius: 0px 4px 4px 0px/5px 5px 4px 4px; 
  background-color: #fff; 
  -webkit-box-shadow: 1px 2px 5px rgba(0,0,0,.09); 
  -moz-box-shadow: 1px 2px 5px rgba(0,0,0,.09); 
  box-shadow: 1px 2px 5px rgba(0,0,0,.09); 
  border: solid 1px #cbc9c9;
  margin-left: -5px;
  margin-top: 13px; 
  padding-left: 10px;
}

input[type=password]{
  margin-bottom: 25px;
}

</style>

</html>