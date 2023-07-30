<%
if(session.getAttribute("passuser") == null){
response.sendRedirect("index.html");
}
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
response.setHeader("Pragma", "no-cache");
response.setDateHeader("Expires",0);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Première - Foods</title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
    />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<!-- NavBar -->
<div class="container-fluid p-0">
      <!-- Including the Navbar -->
      <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <div class="container-fluid">
          <a class="navbar-brand" href="user.jsp" style="font-size: 20px;"><span style="color: red;">Première</span><span style="color: white; font-size: 18px;"> - Foods</span></a>
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

<body>
<form action="food" method="post">
<div>
  <div class="container"><center>
    <table class="table table-hover" border="1px solid grey" style="margin-top: 50px;">
    <h2>Select your munchies here</h2>
        <thead style="background-color: black; color: white;">
            <tr>
            <th>Select</th>
                <th>Item</th>
                <th></th>
                <th>Price</th>
            </tr>
        </thead>
        <tbody>
        
            <tr>
                <td><input type="radio" value="food1" name="id"></td>
                <td><img src="https://media0.giphy.com/media/AuZXGzk5qKRpG54Ewl/200w.webp?cid=ecf05e47h89u4297ve2ccdkiga0hs81arql5j0urp33bd2sq&ep=v1_stickers_search&rid=200w.webp&ct=s" style="width: '100%'; height: 50px;"></td>
                <td style="margin-top: 100px;">Peri Peri Popcorn</td>
                <td>350</td>
            </tr> 
           <tr>
                <td><input type="radio" value="food2" name="id"></td>
                <td><img src="https://media4.giphy.com/media/t98mLWDMh1M9y6LuB8/giphy.webp?cid=ecf05e47p47n2xjvjj6rt0lsgq152235nt6cx68ltd2lyjcm&ep=v1_stickers_search&rid=giphy.webp&ct=s" style="width: 50px; height: 50px;"></td>
                <td style="margin-top: 100px;">French Fries</td>
                <td>300</td>
            </tr>
           <tr>
                <td><input type="radio" value="food3" name="id"></td>
                <td><img src="https://media0.giphy.com/media/3og0IHpwCNhUCKWbVS/200w.webp?cid=ecf05e471cem9kfp0buxwv0qwckr3r2ntwuq3251szzpgjlu&ep=v1_stickers_search&rid=200w.webp&ct=s" style="width: 50px; height: 50px;"></td>
                <td style="margin-top: 100px;">Burger</td>
                <td>250</td>
            </tr>
            <tr>
                <td><input type="radio" value="food4" name="id"></td>
                <td><img src="https://media1.giphy.com/media/1iLEk2jJFKt6a8ec/200w.webp?cid=ecf05e47fu7yjalrsv5w7760urlrlxfikhn0k575iebok79z&ep=v1_stickers_search&rid=200w.webp&ct=s" style="width: '100%'; height: 50px;"></td>
                <td style="margin-top: 100px;">Coca Cola</td>
                <td>60</td>
            </tr> 
           <tr>
                <td><input type="radio" value="food5" name="id"></td>
                <td><img src="images/1.jpg" style="width: 50px; height: 50px;"></td>
                <td style="margin-top: 100px;">1 Coca Cola + 1 Small Fries + 1 Veg Burger</td>
                <td>550</td>
            </tr>
           <tr>
                <td><input type="radio" value="food6" name="id"></td>
                <td><img src="images/3.jpg" style="width: 50px; height: 50px;"></td>
                <td style="margin-top: 100px;">2 Coca Cola + 2 Medium fries + 2 Veg Burger</td>
                <td>850</td>
            </tr>
        </tbody>
    </table>
    <input type="submit" value="ORDER MEAL" class="btn btn-danger"></center>
  </div>
  </div>
  </form>
</div>
</body>
</html>