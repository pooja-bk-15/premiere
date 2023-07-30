<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<%
if(session.getAttribute("passuser") == null){
response.sendRedirect("index.html");
}
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
response.setHeader("Pragma", "no-cache");
response.setDateHeader("Expires",0);
%>   
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Première</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
      crossorigin="anonymous"
    />
    <!-- External CSS -->
    <link rel="stylesheet" href="css/payment.css" />
    <!-- Include Favicon -->
    <link rel="icon" href="assets/favicon2.ico" />
    <!-- To include Fontawesome -->
    <script
      src="https://kit.fontawesome.com/8e66b110d2.js"
      crossorigin="anonymous"
    ></script>
  </head>
  <body style="background-image: url('https://wallpaper.dog/large/20552396.jpg');
	background-size: cover;
	background-repeat: no-repeat;">
    <!-- To Add navbar and all -->
    <div class="container-fluid p-0">
      <!-- Including the Navbar -->
      <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <div class="container-fluid">
          <a class="navbar-brand" href="user.jsp" style="font-size: 20px;"><span style="color: red;">Première</span><span style="color: white; font-size: 18px;"> - Payment</span></a>
        </div>
      </nav>
    </div>

    <form action="payment" method="post">
      <div class="container-fluid p-0 m-0">
        <!-- the actual content -->
        <br /><br /><br />
        <div class="container-fluid details">
          <h1 class="text-center text-white display-5 test">
           
            Première
          </h1>
          
          <%HttpSession sess = request.getSession(); %>
          <div class="row justify-content-evenly px-3 py-3">
            <!-- Payment -->
          
            <div class="col-md-5 col-sm-12 mx-1 my-3 py-4 bg-white rounded">
              <p class="h3 mx-3 text-secondary">Your payment information</p><br>
              <p class="text-secondary px-3">Total is: <strong style="color: red;">Rs.<%=sess.getAttribute("paymentcost") %></strong>

</p>
              <p class="text-secondary mx-3 my-0 mb-2">We accept</p>
              <div class="container-fluid mb-3">
                <img src="https://icm.aexp-static.com/Internet/internationalcardshop/en_in/images/cards/Gold_Card.png" width="60px" alt="">&emsp;<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/b/b5/PayPal.svg/1200px-PayPal.svg.png" width="60px" alt="">&emsp;<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/0c/MasterCard_logo.png/320px-MasterCard_logo.png" width="60px" alt="">&emsp;<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/04/Visa.svg/1200px-Visa.svg.png" width="60px" alt="">
              </div>
              <p class="h5 mx-3 text-secondary mt-5">Card Details:</p><br>

            
              
              <div class="form-floating mx-3">
                <input
                  type=""
                  class="form-control"
                  id="floatingInput"
                  placeholder="naruto uzumaki"
                  name="cname"
                  required
                />
                <label for="floatingInput"
                  ><p class="text-secondary">Name on the card</p></label
                >
              </div>
              <!-- <p class="text-secondary mx-3">Enter your password: </p> -->
              <br>
              <div class="form-floating mx-3">
                <input
                  type="text"
                  class="form-control"
                  id="floatingInput"
                  maxlength="16"
                  placeholder="xxxxxxxxxxxxxxxx"
                  name="ccard"
                  required
                />
                <label for="floatingInput"
                  ><p class="text-secondary">Card Number</p></label
                >
              </div>
              <div class="container-fluid mt-5" align="center">
                <div class="row justify-content-evenly px-2">
                    <div class="col-md-5 mx-2">
                        <label class="text-secondary m-2">Month</label>
                        <input class="form-control rounded" type="month" name="cmonth"  required>
                    </div>
                    
                    <div class="col-md-5 mx-2">
                        <label class="text-secondary m-2">CVV</label>
                        <input class="form-control rounded" type="text" size="15" maxlength="3" placeholder="A76" name="ccvv" required>
                    </div>
                </div>
              </div>
              <br />
              <div class="mt-3" align="center">
                <input class="btn btn-success" type="submit" value="MAKE PAYMENT">
              </div>
            </div>
            </form>
            </div>
        </div>

        <!-- Footer -->
	<footer>
		<center>
			<p style="background-color: black; color: white; padding:20px; margin: 0px;">copyright <span style="color: red;">&copy; première</span> - 2023 PBK</p>
		</center>
	</footer>
      </div>
   
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
