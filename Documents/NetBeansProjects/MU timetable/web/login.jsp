<%-- 
    Document   : login
    Created on : May 21, 2018, 3:17:17 PM
    Author     : MAHE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Lecture Management | Login</title>
<!-- Tell the browser to be responsive to screen width -->
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<!-- Bootstrap 3.3.6 -->
<link rel="stylesheet" href="styles/bootstrap/bootstrap.min.css">
<!-- Font Awesome -->
<link href="js/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

<!-- Theme style -->
<link rel="stylesheet" href="styles/helios_theme/Helios.min.css">
<link rel="stylesheet" href="styles/othercss/login.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>

<body class="hold-transition login_bg" style="background: url(images/bg.jpg) no-repeat; background-size: cover;">

<!--<div class="row pad_15"><img src="images/logo.png" alt="logo"/></div>-->

<div class="login-box">
  <div class="login-logo"> --- Lecture Management --- </div>
  <!-- /.login-logo -->
  <div class="login-box-body" style="border-radius:10px; box-shadow:0 2px 2px 1px #999999">
    <p class="login-box-msg">Login to start your session</p>
    <form action="Model_View_Controller_Pattern?action=login" method="post">
      
      <div class="form-elements pad_btm15">
        <input type="text" name = "username" class="form-control cust_type" required>
        <label class="" for="cust_type">Username<span style="color:#ED1651">*</span></label>
        <span class="glyphicon glyphicon-user form-control-feedback net "></span>
        
        </div>
      
      <div class="form-elements pad_btm10">
        <input type="password" name = "password" class="form-control cust_type" required>
        <label class="" for="cust_type">Password <span style="color:#ED1651">*</span></label>
        <span class="glyphicon glyphicon-lock form-control-feedback net"></span> </div>
      <div class="row">
        <div class="text-center">
          <button class="btn margin helios_btn" type="submit">Login</button>
          <button class="btn helios_btn" type="reset">Reset</button>
        </div>
        <div class="text-center"> <a href="signUp.jsp" class="sign_up_link">Sign up for New User</a></div>
        <!-- /.col --> 
      </div>
    </form>
  </div>
  <!-- /.login-box-body --> 
  
</div>
<footer class="login_ft"> 
  <!-- To the right -->
  <div class="row">
    <div class="col-md-12">
      <div class="text-left">
        <p style="margin-top:5px;">Copyright &copy; 2016 <a href="#">Timetable Management</a>. All rights reserved.</p>
      </div>
    </div>
  </div>
</footer>
<!-- /.login-box --> 

<!-- jQuery 2.2.0 --> 
<!-- jQuery 2.2.0 --> 
<script src="js/plugins/jQuery/jQuery-2.2.0.min.js"></script> 
<!-- Bootstrap 3.3.6 --> 
<script src="js/bootstrap/bootstrap.min.js"></script> 
<script src="js/otherjs/app.min.js"></script> 
<script src="js/otherjs/login.js"></script> 
<script>


</script>
</body>
</html>
