<%@ page import="com.mysql.*" %>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin</title>
  <meta charset="utf-8">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body style="background-color: black;">
<!-- Navbar -->
<nav class="navbar navbar-inverse" style="margin-bottom:0px; border-radius: 0px;">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="index.html" style="font-size: 20px;"><span style="color: red;">Première</span><span style="color: white; font-size: 18px;"> - Administrator</span></a>
    </div>
    <ul class="nav navbar-nav navbar-right">
      <!-- <li><a href="#"><span class="glyphicon glyphicon-user"></span> Admin</a></li> -->
      <li><a data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-user"></span><b>&nbsp;Login</b></a></li>
    </ul>
  </div>
</nav>
<!-- Modal Content -->
<div class="container">
    <!-- Modal -->
    <div class="modal fade" id="myModal" role="dialog">
      <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">Admin Login</h4>
          </div>
          <div class="modal-body">
            
            <form action="login" method="POST">
        <input type="text" name="Username" placeholder="Username">
        &nbsp;
        <input type="password" name="Password" placeholder="Password">
        <input type="submit" class="btn btn-success">
    </form>
</div>
          <div class="modal-footer">
            <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
          </div>
        </div>
      </div>
    </div>
  </div>
<!-- Content of design -->
<div class="container-fluid" align="center">
<h1 style="color: white;"><span style="color: red;">Admin</span> Portal</h1>
<img alt="" src="https://www.verte.tv/image/16785/Captura+de+Pantalla+2020-01-28+a+la(s)+09.05.58.png" style="width: 1000px;">
</div>
</body>
</html>