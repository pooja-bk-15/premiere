<%@ page import="com.mysql.*" %>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
if(session.getAttribute("passuser") == null){
response.sendRedirect("index.html");
}
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
response.setHeader("Pragma", "no-cache");
response.setDateHeader("Expires",0);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <title>Première</title>
  <meta charset="utf-8">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Mine -->
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

  <link rel="stylesheet" href="index.css">
   
    <script
      src="https://kit.fontawesome.com/8e66b110d2.js"
      crossorigin="anonymous"
    ></script>
</head>
<body>

<!-- NavBar -->
<div class="container-fluid p-0">
      <!-- Including the Navbar -->
      <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <div class="container-fluid">
          <a class="navbar-brand" href="user.jsp">Première</a
          >
          <button
            class="navbar-toggler"
            type="button"
            data-bs-toggle="collapse"
            data-bs-target="#navbarNav"
            aria-controls="navbarNav"
            aria-expanded="false"
            aria-label="Toggle navigation"
          >
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNav">
            <!-- To Align the Elements to the Right -->
            <div class="m-auto"></div>
            <ul class="navbar-nav">
            
              <li class="nav-item">
                <a class="nav-link" href="userlogout">Logout</a>
              </li>
              
            </ul>
          </div>
        </div>
      </nav>
    </div>

  
<!-- Carousel -->
<div id="carouselExampleInterval" class="carousel slide pt-5" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active" data-bs-interval="1500">
      <img src="images/suzume.jpg	" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item" data-bs-interval="1500">
      <img src="images/Drifting.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item" data-bs-interval="1500">
      <img src="images/End Gme.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item" data-bs-interval="1500">
      <img src="images/happyness.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item" data-bs-interval="1500">
      <img src="images/Whisker.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item" data-bs-interval="1500">
      <img src="images/Evil Dead.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item" data-bs-interval="1500">
      <img src="images/kimi.jpg" class="d-block w-100" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

<br><br><br>
<center>
<form action="book" method="post">
<div>

  <div class="container-fluid">
    <table class="table table-hover" border="1px solid grey"">
        <thead style="background-color: black;">
            <tr style="background-color: black;">
            <th>Select</th>
                <th>Movie</th>
                <th>Show Slot</th>
                <th>Duration</th>
                <th>Screen No.</th>
                <th>Seats Available</th>
            </tr>
        </thead>
        <tbody>


            <%
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = null;
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/premiere", "pooja", "pooja");
                Statement stmt = null;
                Statement stmt2 = null;
                stmt = conn.createStatement();
                stmt2 = conn.createStatement();
                String query = "select * from shows";
                ResultSet rs = null;
                rs = stmt.executeQuery(query);
                while(rs.next()){
            %>
            
                <%
                    
                  int id = rs.getInt("id");
                  int Mid = rs.getInt("Mid");
                  int screen = rs.getInt("screen");
                  int slot = rs.getInt("slot");
                  int avail = rs.getInt("booked");
                  String query2 = "select title, duration from moviedatabase where id="+Mid;
                  ResultSet rs2 = null;
                    rs2 = stmt2.executeQuery(query2);
                    String moviename=null;
                    int duration=0;
                    boolean a=true;
                    while(a && rs2.next()){
                      moviename = rs2.getString("title");
                      duration= rs2.getInt("duration");
                      a=false;
                    }
                    int start=0, end=0;
                    if(slot==1){
                      start=9;
                      end=12;
                    }
                    else if(slot==2){
                      start=14;
                      end=17;
                    }
                    else if(slot==3){
                      start=19;
                      end=22;
                    }
                    if(screen==1){
                    	avail=100-avail;
                    }
                    if(screen==2){
                    	avail=130-avail;
                    }
                    if(screen==3){
                    	avail=170-avail;
                    }
                
                %>
                
                <label><tr>
                <td><input type="radio" value=<%=id %> name="id"></td>
                <td><%=moviename %></td>
                <td><%=start %>:00 to <%=end %>:00</td>
                <td><%=duration %> minutes</td>
                <td><%=screen %></td>
                <td><%=avail %></td>
            </tr></label>               

            <%      
                }
            %>

        </tbody>
    </table>
  </div>
</div>
</center>
<br>
<div class="container-fluid">
<center>
<div class="row">
<div class="col-md-4">
<img width="60%" alt="" src="https://media1.giphy.com/media/H3TcZcvE9JWz76hStn/200.webp?cid=ecf05e47d9rkdmzacvyet267ixafei8rahb5f3e5mydxqsx8&ep=v1_stickers_search&rid=200.webp&ct=s">
</div>
<div class="col-md-4">
<div class="testbox3" style="margin: auto;" align="center">
			  <h1 class="mx-5">Book<span style="color: red;"> Movie</span></h1>
	        	<input class="form-control px-2" type="number" name="num" placeholder="No. of Seats" min="1" max="18" required>
	        	<br />
	        	<select name="class" class="form-control px-2" required>
	        	<option value="silver">Silver Seats - Rs.100</option>
	        	<option value="gold">Gold Seats - Rs.150</option>
	        	<option value="platinum">Platinum Seats - Rs.200</option>
	        	</select>
	        	<br>
			    <input class="btn btn-success" type="submit" value="BOOK NOW">
			    <br>
			</div>
</div>
<div class="col-md-4">
<img width="40%" alt="" src="https://media3.giphy.com/media/KzLbJaoRdpiNWJW3z0/giphy.webp?cid=ecf05e47d9rkdmzacvyet267ixafei8rahb5f3e5mydxqsx8&ep=v1_stickers_search&rid=giphy.webp&ct=s">
</div>
</div>
</center>

</div>
</form>
<br><br>
<!-- Feedback -->
<form action="feedback" method="post">
    <div id ="feedback" class="container-fluid pb-5" style="background-color: #f1f1f1; background-image: url('https://wallpaper.dog/large/20552396.jpg');
	background-size: cover;
	background-repeat: no-repeat;">
        <h5 class="display-6 text-center pt-5 pb-4 text-white">Share us your <span class="text-danger">Feedback </span></h5>
        <div class="row justify-content-evenly px-2 py-2">
            <div class="col-md-5 col-sm-12 my-2 bg-shad" align="center">
                <img class="mt-5 pt-4" src="https://media3.giphy.com/media/HSzEKkRNHUQQrmVA5V/giphy.gif?cid=ecf05e47ap1f27fggb10rbd1ruz3fw7h5nx2i1qjhmtgj5vq&ep=v1_stickers_search&rid=giphy.gif&ct=s" width="60%" alt="">
            </div>
            <!-- form details -->
            <div class="col-md-5 col-sm-12 my-2 rounded text-white bg-dark">
                
                    <div class="form-group pt-3">
                      <label for="fname">Enter your name</label>
                      <input type="text" class="form-control mt-2" name="fname" placeholder="uzumaki naruto" required>
                    </div><br>
                    <div class="form-group">
                        <label for="mail">Enter your email</label>
                        <input type="email" class="form-control mt-2" name="mail" placeholder="sasuke_uchiha@gmail.com" required>
                      </div><br>
                    <div class="form-group">
                      <label for="satisfaction">Overall Satisfaction</label>
                      <select class="form-control mt-2" name="satisfaction" required>
                        <option value="">--select--</option>
                        <option value="Excellent">Excellent</option>
                        <option value="Very Good">Very Good</option>
                        <option value="Could be Better">Could be Better</option>
                        <option value="Need to Improve">Need to Improve</option>
                        <option value="Worst Experience">Worst Experience</option>
                      </select>
                    </div><br>
                    <div class="form-group">
                        <label for="range">Improvement Range</label>
                        <input type="range" class="form-control mt-2" name="range" min="1" max="100" required>
                    </div><br>
                    <div class="form-group mb-3">
                      <label for="usertextarea">Additional Comments</label>
                      <textarea class="form-control mt-2" name="usertextarea" rows="4" required></textarea>
                    </div>
                    <input class="btn btn-outline-danger btn-lg mt-1 mb-4" type="submit" value="Submit">
                    
                  
            </div>
        </div>
       
    </div>
    </form>


    <!-- Reach us -->
    <div id="reachus" class="container-fluid bg-dark embed-responsive">
      <div class="row justify-content-evenly px-2 pt-3 pb-4">
        <h5 class="display-6 text-center mt-2 mb-1 text-secondary">Reach <span class="text-danger">Us</span></h5>
        <div
          class="col-md-3 col-sm-5 mt-2 text-white"
          style="text-align: justify"
        >
          <p class="mt-3 mb-2"><strong>Address:</strong></p>
          <p class="text-secondary">
            92, 6, Marathahalli - Sarjapur Outer Ring Rd, Chandra Layout, Marathahalli, Bengaluru, Karnataka 560037
          </p>
          <br />
         
        </div>
        <div class="col-md-2 col-sm-5 mt-2 mb-2 text-white">
          <p class="mt-3 mb-2"><strong>Socials:</strong></p>
          <ul>
            <li>
              <a id="asocial" href="https://www.facebook.com/" target="_blank"
                ><i class="fa-brands fa-facebook text-primary"></i> Facebook</a
              >
            </li>
            <li>
              <a id="asocial" href="https://www.instagram.com/" target="_blank"
                ><i class="fa-brands fa-instagram text-danger"></i> Instagram</a
              >
            </li>
            <li>
              <a id="asocial" href="https://twitter.com/" target="_blank"
                ><i class="fa-brands fa-twitter text-info"></i> Twitter</a
              >
            </li>
            <li>
              <a
                id="asocial"
                href="https://www.tumblr.com/login"
                target="_blank"
                ><i class="fa-brands fa-tumblr text-success"></i> Tumbler</a
              >
            </li>
            <li>
              <a
                id="asocial"
                href="https://in.pinterest.com/login/"
                target="_blank"
                ><i class="fa-brands fa-pinterest text-danger"></i> Pinterest</a
              >
            </li>
            <li>
              <a id="asocial" href="https://discord.com/" target="_blank"
                ><i class="fa-brands fa-discord text-primary"></i> Discord</a
              >
            </li>
          </ul>
        </div>
        <div class="col-md-6 col-sm-12 mt-2 mb-2 text-white">
          <p class="mt-3 mb-2"><strong>Google Maps:</strong></p>
          <p class="text-secondary">
            You can find us at this location
            <i class="fa-solid fa-location-dot text-danger"></i>
          </p>
          <iframe class="map stat-map" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15554.128362169513!2d77.68795844636497!3d12.937767295979832!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bae13ab04432da5%3A0x4f433aa7373ad120!2sInnovative%20Multiplex%20Skywalk!5e0!3m2!1sen!2sin!4v1690627958490!5m2!1sen!2sin" width="600" height="200" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
      </div>
    </div>


    
    <!-- Footer Section -->
    <footer>
		<center>
			<p style="background-color: black; color: white; padding:20px; margin: 0px;">copyright <span style="color: red;">&copy; première</span> - 2023 PBK</p>
		</center>
	</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>

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

.testbox3 {
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

.testbox3{
  height: 250px;
  width: 390px; 
}
form{
  margin: 0 30px;
}

input[type=text],input[type=password]{
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