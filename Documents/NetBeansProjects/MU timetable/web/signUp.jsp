<!DOCTYPE html>

<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Lecture Management | Signup</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.6 -->
        <link rel="stylesheet" href="styles/bootstrap/bootstrap.min.css">
        <!-- Font Awesome -->
        <link href="js/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

        <!-- Theme style -->
        <link rel="stylesheet" href="styles/helios_theme/Helios.min.css">
        <link rel="stylesheet" href="styles/othercss/login.css">
        <link rel="stylesheet" href="js/plugins/select2/select2.min.css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
          <![endif]-->


    </head>

    <body class="hold-transition login_bg" style="background: url(images/bg.jpg) no-repeat; background-size: cover;">

        <!--<div class="row pad_15"><img src="images/logo.png" alt="logo"/></div>-->

        <div class="register-box">
            <div class="login-logo"> --- Lecture Management --- </div>
            <!-- /.login-logo -->
            <div class="login-box-body" style="border-radius:10px; box-shadow:0 2px 2px 1px #999999">

                <div class="pad_btm15 text-center">
                    <label class="label" for="cust_type">Sign up as: <span style="color:#ED1651">*</span></label>
                    <div class="checkbox">
                        <label>
                            <div class="btn-group radioBtn margin10">

                                <button type="button" class="btn btn-sm notActive rd_stud" data-toggle="lecture" data-title="student">Student</button>

                                <button type="button" class="btn btn-sm active rd_teach" data-toggle="lecture" data-title="teacher">Teacher</button>

                            </div>

                    </div>
                </div>


                <div class="row">
                    <form class="teacher" action="Model_View_Controller_Pattern?action=teacher" method="post" name="title">
                        <div class="col-md-2 pad_rl_5">
                            <div class="form-elements pad_btm15">
                                <select class="form-control select2" name ="Title">
                                    <option value="" disabled selected>Select </option>
                                    <option value="Mr.">Mr.</option>
                                    <option value="Mrs.">Mrs.</option>
                                    <option value="Dr.">Dr.</option>
                                </select>
                                <label class="small" for="select2">Title <span class="mandate">*</span></label>
                            </div>
                        </div>
                        <div class="col-md-5 pad_rl_5">
                            <div class="form-elements pad_btm15 clearfix">
                                <input type="text" name="firstName" class="form-control cust_type" required>
                                <label class="" for="cust_type">First Name <span style="color:#ED1651">*</span></label>
                            </div>
                        </div>
                        <div class="col-md-5 pad_rl_5">
                            <div class="form-elements pad_btm15 clearfix">
                                <input type="text" name="lastName" class="form-control cust_type" required>
                                <label class="" for="cust_type">Last Name <span style="color:#ED1651">*</span></label>
                            </div>
                        </div>
                        <div class="col-md-6 pad_rl_5">
                            <div class="form-elements pad_btm15">
                                <select class="form-control select2" name="University">
                                    <option value="" disabled selected>Select </option>
                                    <option value="Manipal University">Manipal University</option>
                                </select>
                                <label class="small" for="select2">University Name<span class="mandate">*</span></label>
                            </div>
                        </div>
                        <div class="col-md-6 pad_rl_5">
                            <div class="form-elements pad_btm15">
                                <select class="form-control select2" name="Subject" >
                                    <option value="" disabled selected>Select </option>
                                    <option value="Mathematics">Mathematics</option>
                                    <option value="SOM">SOM</option>
                                    <option value="JAVA">JAVA</option>
                                </select>
                                <label class="small" for="select2">Subject <span class="mandate">*</span></label>
                            </div>
                        </div>



                        <div class="col-md-6 pad_rl_5">
                            <div class="form-elements pad_btm15">
                                <input type="email" name="Email" class="form-control cust_type" required>
                                <label class="" for="cust_type">Email <span style="color:#ED1651">*</span></label>
                            </div>
                        </div>
                        <div class="col-md-6 pad_rl_5">
                            <div class="form-elements pad_btm15">
                                <input type="text" name="Contactnumber" class="form-control cust_type" required maxlength="10" size="10">
                                <label class="" for="cust_type">Contact No. <span style="color:#ED1651">*</span></label>
                            </div>
                        </div>
                        <div class="col-md-6 pad_rl_5">

                            <div class="form-elements pad_btm15">
                                <input type="text" name="Username" class="form-control cust_type" required>
                                <label class="" for="cust_type">Username <span style="color:#ED1651">*</span></label>
                            </div>
                        </div>

                        <div class="col-md-6 pad_rl_5">
                            <div class="form-elements pad_btm10">
                                <input type="password" name="Password" class="form-control cust_type" required>
                                <label class="" for="cust_type">Password <span style="color:#ED1651">*</span></label>
                            </div>

                        </div>
                        <div class="col-md-12">
                            <div class="text-center">
                                <button class="btn margin helios_btn" type="submit">Sign Up</button>
                                <button class="btn helios_btn" type="reset">Reset</button>
                            </div>
                            <div class="text-center">Already registered? <a href="login.jsp" class="sign_up_link">Login Here</a></div>
                            <!-- /.col --> 
                        </div>
                    </form>
                </div>

                <div class="row">
                    <form class="student" action="Model_View_Controller_Pattern?action=student" method="post">
                        <div class="col-md-2 pad_rl_5">
                            <div class="form-elements pad_btm15">
                                <select class="form-control select2" name="Title" >
                                    <option value="" disabled selected>Select </option>
                                    <option value="Mr.">Mr.</option>
                                    <option value="Mrs.">Mrs.</option>
                                    <option value="Dr.">Dr.</option>
                                </select>
                                <label class="small" for="select2">Title <span class="mandate">*</span></label>
                            </div>
                        </div>
                        <div class="col-md-5 pad_rl_5">
                            <div class="form-elements pad_btm15 clearfix">
                                <input type="text" name="firstName" class="form-control cust_type" required>
                                <label class="" for="cust_type">First Name <span style="color:#ED1651">*</span></label>
                            </div>
                        </div>
                        <div class="col-md-5 pad_rl_5">
                            <div class="form-elements pad_btm15 clearfix">
                                <input type="text" name="lastName" class="form-control cust_type" required>
                                <label class="" for="cust_type">Last Name <span style="color:#ED1651">*</span></label>
                            </div>
                        </div>


                        <div class="col-md-2 pad_rl_5">
                            <div class="form-elements pad_btm15">
                                <input type="text" name="regID" class="form-control cust_type" required>
                                <label class="" for="cust_type">ID <span style="color:#ED1651">*</span></label>
                            </div>
                        </div>
                        <div class="col-md-2 pad_rl_5">
                            <div class="form-elements pad_btm15">
                                <select class="form-control select2" name="Section">
                                    <option value="" disabled selected>Select </option>
                                    <option value="A">A</option>
                                    <option value="B">B</option>
                                    <option value="C">C</option>
                                </select>
                                <label class="small" for="select2">Section<span class="mandate">*</span></label>
                            </div>
                        </div>

                        <div class="col-md-2 pad_rl_5">
                            <div class="form-elements pad_btm15">
                                <select class="form-control select2" name="Year" >
                                    <option value="" disabled selected>Select </option>
                                    <option value="2017">2017</option>
                                    <option value="2018">2018</option>
                                    <option value="2019">2019</option>
                                </select>
                                <label class="small" for="select2">Year<span class="mandate">*</span></label>
                            </div>
                        </div>

                        <div class="col-md-6 pad_rl_5">
                            <div class="form-elements pad_btm15">
                                <select class="form-control select2" name="Major" >
                                    <option value="" disabled selected>Select </option>
                                    <option value="Computer Science">Computer Science</option>
                                    <option value="Chemical">Chemical</option>
                                    <option value="Mechanical">Mechanical</option>
                                </select>
                                <label class="small" for="select2">Major<span class="mandate">*</span></label>
                            </div>
                        </div>



                        <div class="col-md-6 pad_rl_5">
                            <div class="form-elements pad_btm15">
                                <input type="email" name="Email" class="form-control cust_type" required>
                                <label class="" for="cust_type">Email <span style="color:#ED1651">*</span></label>
                            </div>
                        </div>
                        <div class="col-md-6 pad_rl_5">
                            <div class="form-elements pad_btm15">
                                <input type="text" name="Contactnumber" class="form-control cust_type" required>
                                <label class="" for="cust_type">Contact No. <span style="color:#ED1651">*</span></label>
                            </div>
                        </div>
                        <div class="col-md-6 pad_rl_5">

                            <div class="form-elements pad_btm15">
                                <input type="text" name="Username" class="form-control cust_type" required>
                                <label class="" for="cust_type">Username <span style="color:#ED1651">*</span></label>
                            </div>
                        </div>

                        <div class="col-md-6 pad_rl_5">
                            <div class="form-elements pad_btm10">
                                <input type="password" name="Password" class="form-control cust_type" required>
                                <label class="" for="cust_type">Password <span style="color:#ED1651">*</span></label>
                            </div>

                        </div>
                        <div class="col-md-12">
                            <div class="text-center">
                                <button class="btn margin helios_btn" type="submit">Sign Up</button>
                                <button class="btn helios_btn" type="reset">Reset</button>
                            </div>
                            <div class="text-center">Already registered ? <a href="login.jsp" class="sign_up_link">Login Here</a></div>
                            <!-- /.col --> 
                        </div>
                    </form> 
                </div>




            </div>
            <!-- /.login-box-body --> 

        </div>
        <footer class="login_ft"> 
            <!-- To the right -->
            <div class="row">
                <div class="col-md-12">
                    <div class="text-left">
                        <p style="margin-top:5px;">Copyright &copy; 2016 <a href="#">KPI Master</a>. All rights reserved.</p>
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
        <script src="js/otherjs/jquery.filer.min.js"></script> 


        <script src="js/plugins/select2/select2.full.min.js"></script> 


    </body>
</html>
