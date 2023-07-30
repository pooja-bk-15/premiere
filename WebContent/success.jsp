<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%if(session.getAttribute("passuser") == null){
	response.sendRedirect("index.html");
	}
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires",0);

%>
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
  <body>
    <!-- To Add navbar and all -->
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

    <form action="" method="post">
      <div class="container-fluid p-0 m-0">
        <!-- the actual content -->
        <br /><br /><br /><br />
        <div class="container-fluid details">
          <h1 class="text-center text-dark display-5 test">
            <img
            class="mx-2"
            src="https://cdn-icons-png.flaticon.com/512/2503/2503508.png"
            width="54px"
            alt=""
          />
            Première
          </h1>
          <p class="motto" align="center">Lights!! Camera!! Action!!</p>
          <div class="row justify-content-evenly px-3 py-3" align="center">
            <!-- Payment -->
            <div class="col-md-7 col-sm-12 mx-1 py-4 bg-white rounded">
              
              <h1 class="">Thank you soo much! </h1><br>
              <h6 class="display-6 text-danger">ありがとうございます</h6>
              <p class="text-success">Enjoy your movie!</p>
              <img src="https://media2.giphy.com/media/n01JRS2sCTmF3N4yRO/200w.webp?cid=ecf05e47d9bntxytsatpyv08qxox0xyxuokl1t3xropqdom9&ep=v1_stickers_search&rid=200w.webp&ct=s" width="50%" alt=""><br>
             <!--  <a href="user.html" class="btn btn-success btn-lg">Redirect</a> -->
            </div>
            
            </div>
        </div>

        <!-- Footer -->
        <footer>
		<center>
			<p style="background-color: black; color: white; padding:20px; margin: 0px;">copyright <span style="color: red;">&copy; première</span> - 2023 PBK</p>
		</center>
	</footer>
      </div>
    </form>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
