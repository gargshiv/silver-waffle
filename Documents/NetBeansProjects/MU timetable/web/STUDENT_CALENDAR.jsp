<%-- 
    Document   : studenttable
    Created on : May 23, 2018, 11:17:34 AM
    Author     : MAHE
--%>

<%@page import="com.nm.bean.lecture_detail"%>
<%@page import="com.nm.bean.login"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Lecture Management</title>
<!-- Tell the browseto be responsive to screen width -->
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<!-- Bootstrap 3.3.6 -->
<link rel="stylesheet" href="styles/bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="styles/bootstrap/dataTables.bootstrap.min.css">
<link rel="stylesheet" href="styles/bootstrap/responsive.bootstrap.min.css">

<!-- Font Awesome -->
<link href="js/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<!-- Ionicons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="styles/helios_theme/Helios.min.css">
<link rel="stylesheet" href="styles/helios_theme/custom.css">
<link rel="stylesheet" href="styles/helios_theme/skin-blue.min.css">
<link rel="stylesheet" href="js/plugins/select2/select2.min.css">
<link rel="stylesheet" href="js/plugins/datepicker/datepicker3.css">
<link rel="stylesheet" href="js/plugins/timepicker/bootstrap-timepicker.min.css">
</head>

<body class="hold-transition skin-blue sidebar-mini sidebar-collapse">
<div id="cover"></div>
<div class="wrapper">
  <header class="main-header">
    <nav class="navbar navbar-static-top navbar-fixed-top"> <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button"> <span class="sr-only">Toggle navigation</span> </a> <a href="Dashboard.html" class="logo">
      <p class="logo_sub">Lecture Management</p>
      </a>
      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <li class="dropdown user user-menu"> <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <img src="images/avatar5.png" class="user-image" alt="User Image" /> <span class="hidden-xs">Vivek Gurav <i class="fa fa-caret-down" style="margin-left:8px;"></i></span> </a>
            <ul class="dropdown-menu">
              <li class="user-header"> <img src="images/avatar5.png" class="img-circle" alt="User Image">
                <p> Vivek Gurav<small>Teacher, Computer Science</small> </p>
              </li>
              <li class="user-footer">
                <div class="pull-right"> <a href="#" class="btn btn-default btn-flat">Sign out</a> </div>
              </li>
            </ul>
          </li>
        </ul>
      </div>
    </nav>
  </header>
  <aside class="main-sidebar">
    <section class="sidebar">
      <div class="user-panel"> </div>
      <ul class="sidebar-menu">
        <li class="treeview"> <a href="#"> <i class="fa fa-clock-o" aria-hidden="true"></i> <span>Staff </span></a></li>
        <li class="treeview"> <a href="#"> <i class="fa fa-user" aria-hidden="true"></i> <span>Student </span></a></li>
      </ul>
    </section>
  </aside>
  <div class="content-wrapper pad_btm50">
    <div class="content">
      <div class="row">
        <div class="col-md-8 col-sm-12 content-header1">
          <h3 class="page_title">Student Timetable</h3>
        </div>
      </div>
      <div class="row">
        <div class="col-md-12">
          <div class="box">
            <div class="box-body">
              <div class="sub_box pad_10">
                <div class="col-md-12 pad_btm10">
                  <div class="col-md-5 text-right text-bold pad_tp10">Please Select Date</div>
                  <div class="col-md-3">
                    <div class="form-elements">
                      <input type="text" class="form-control select_date" value="">
                      <label class="small" for="select_date">Start Date <span class="mandate">*</span></label>
                      <span class="form-control-feedback net"><i class="fa fa-calendar" aria-hidden="true"></i></span> </div>
                  </div>
                </div>
                <div class="col-md-12 bg-gray pad">
                  <div class="col-md-8">
                    <p class="page_title brand-color">Timetable - <span class="text-bold">MAY 22, 2018</span>
                  </div>
                </div>
                <div class="col-md-12 ">
                  <table class="staff_tbl table table-striped table-bordered text-wrap" width="100%">
                    <thead>
                      <tr>
                        <th width="10%">Sr. No.</th>
                        <th width="10%">Start time</th>
                        <th width="10%">End Time</th>
                        <th width="15%">Subject</th>
                        <th width="30%">Important Note</th>
                        <th width="10%">Venue</th>
                      </tr>
                    </thead
                    <%
                        
                        login Login = new login();
                        String username = ""; 
                        Login = (login) session.getAttribute("login");
                        username = (String) request.getAttribute("username");
                        //username = login.getUserName(); 
                    %>
                    <tbody>
                      <tr>
                        <td>1</td>
                        <td>11.00 AM <%=username %></td>
                        <td>12.30 PM</td>
                        <td>JAVA</td>
                        <td>Introduction of Java</td>
                        <td>Hall 1</td>
                     
                      </tr>
                      <tr>
                        <td>2</td>
                        <td>11.00 AM</td>
                        <td>12.30 PM</td>
                        <td>JAVA</td>
                        <td>Introduction of Java</td>
                        <td>Hall 1</td>
                      </tr>
                      <tr>
                        <td>3</td>
                        <td>11.00 AM</td>
                        <td>12.30 PM</td>
                        <td>JAVA</td>
                        <td>Introduction of Java</td>
                        <td>Hall 1</td>
                      </tr>
                      <tr>
                        <td>4</td>
                        <td>11.00 AM</td>
                        <td>12.30 PM</td>
                        <td>JAVA</td>
                        <td>Introduction of Java</td>
                        <td>Hall 1</td>
                      </tr>
                      <tr>
                        <td>5</td>
                        <td>11.00 AM</td>
                        <td>12.30 PM</td>
                        <td>JAVA</td>
                        <td>Introduction of Java</td>
                        <td>Hall 1</td>
                      </tr>
                      <tr>
                        <td>6</td>
                        <td>11.00 AM</td>
                        <td>12.30 PM</td>
                        <td>JAVA</td>
                        <td>Introduction of Java</td>
                        <td>Hall 1</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<a id="back-to-top" href="#" class="btn btn-primary btn-lg back-to-top" role="button" data-toggle="tooltip" data-placement="left"><i class="fa fa-chevron-up" aria-hidden="true"></i></a> 

<!--footer-->
<footer class="main-footer cmdb_footer no_mar_left">
  <div class="col-md-12 col-sm-12">
    <div class="col-md-10 col-sm-8">
      <p class="font12 pad_10 pad_left_30">Copyright &copy; 2017 <a href="#">Netmagic Solutions</a>. All rights reserved.</p>
    </div>
    <div class="col-md-2 col-sm-4 pad_tp5"> <img src="images/logo.png" alt="logo" class="foot_logo"/> </div>
  </div>
</footer>

<!--footer-->
</div>

<!-- ./wrapper --> 
<!--Modal -->
<div class="modal fade sum_box" id="add_lecture" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">Add Lecture</h4>
      </div>
      <div class="modal-body">
      		
            <form class="" action="#" method="post">
            <div class="row pad_tp10">
            	<div class="col-md-6">
                    <div class="form-elements margin_bt_15">
                      <input type="text" class="form-control timepicker" required>
                      <label class="small" for="timepicker">Start Time <span class="mandate">*</span></label>
                      <span class="form-control-feedback net"><i class="fa fa-clock-o" aria-hidden="true"></i></span> </div>
                </div>
                <div class="col-md-6">
                 <div class="form-elements margin_bt_15">
                      <input type="text" class="form-control timepicker" required>
                      <label class="small" for="timepicker">End Time <span class="mandate">*</span></label>
                      <span class="form-control-feedback net"><i class="fa fa-clock-o" aria-hidden="true"></i></span> </div>
                </div>
                
                <div class="col-md-6">
                    <div class="form-elements margin_bt_15">
                      <select class="form-control select2" required>
                        <option value="" disabled selected >Select Venue</option>
                        <option value="">Hall 1</option>
                        <option value="">Hall 2</option>
                        <option value="">Hall 3</option>
                        <option value="">Hall 4</option>
                        <option value="">Hall 5</option>
                      </select>
                      <label class="small" for="select2">Venue <span class="mandate">*</span></label>
                    </div>
                    </div>
                    
                    <div class="col-md-6">
                    <div class="form-elements margin_bt_15">
                      <select class="form-control select2" required>
                        <option value="" disabled selected>Select Subject</option>
                        <option value="">Java</option>
                        <option value="">HTML</option>
                        <option value="">VB.net</option>
                        <option value="">ASP</option>
                        <option value="">Sql</option>
                      </select>
                      <label class="small" for="select2">Subject <span class="mandate">*</span></label>
                    </div>
                    </div>
                    <div class="col-md-12">
                    <div class="form-elements mb_btm10">
                      <textarea class="form-control noresize description" required></textarea>
                      <label class="" for="description">Important Note <span class="mandate">*</span></label>
                    </div>
                  </div>
                   <div class="col-xs-6 pad_tp15 text-right">
                    <button class="btn btn_blue" type="submit">ADD</button> 
                    </div>
                    <div class="col-xs-6 pad_tp15 text-left">
                    <button class="btn btn_blue" type="reset">Reset</button> 
                    </div>
                    
                    
                    
                
      		</div>
            </form>
            
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<!--Modal-->

</div>

<!-- REQUIRED JS SCRIPTS --> 

<!-- jQuery 2.2.0 --> 

<script src="js/plugins/jQuery/jQuery-2.2.0.min.js"></script> 
<!-- Bootstrap 3.3.6 --> 
<script src="js/bootstrap/bootstrap.min.js"></script> 
<script src="js/plugins/datepicker/bootstrap-datepicker.js"></script> 
<script src="js/plugins/timepicker/bootstrap-timepicker.min.js"></script>
<script src="js/otherjs/app.min.js"></script> 
<script src="js/otherjs/custom.js"></script> 

    
<script src="js/plugins/select2/select2.full.min.js"></script> 
<script src="js/plugins/datatables/jquery.dataTables.min.js"></script> 
<script src="js/plugins/datatables/dataTables.bootstrap.min.js"></script> 
<script src="js/plugins/datatables/dataTables.responsive.min.js"></script> 
<script src="js/plugins/datatables/responsive.bootstrap.min.js"></script> 

<!-- DataTables --> 

<script>


//Date picker
$(".timepicker").timepicker({
      showInputs: false
    }); 


 
$(document).ready(function() {
  var date = new Date();
  var today = new Date(date.getFullYear(), date.getMonth(), date.getDate());
  var end = new Date(date.getFullYear(), date.getMonth(), date.getDate());

  $('.select_date').datepicker({
format: "dd/mm/yyyy",
todayHighlight: true,
autoclose: true
  });


  $('.select_date').datepicker('setDate', today);
});
 

$('.staff_tbl').DataTable( {
        "scrollX": true,
		"searching": true,
		
    } );






 
   

	


</script>
</body>
</html>
