<%-- 
    Document   : afterlogin
    Created on : 9 Dec, 2020, 3:07:05 PM
    Author     : HPPredator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>




<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>

	
	
     <meta charset="UTF-8">
     <meta http-equiv="X-UA-Compatible" content="IE=Edge">
     <meta name="description" content="">
     <meta name="keywords" content="">
     <meta name="team" content="">
     <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

     <link rel="stylesheet" href="css/bootstrap.min.css">
     <link rel="stylesheet" href="css/owl.carousel.css">
     <link rel="stylesheet" href="css/owl.theme.default.min.css">
     <link rel="stylesheet" href="css/font-awesome.min.css">
     <!-- jQuery library -->
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

     <!-- Latest compiled JavaScript -->
          <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

     <!-- MAIN CSS -->
     <link rel="stylesheet" href="css/tooplate-style.css">
     
    <!--Check Session -->
   
     
     

</head>
<body>

     <!-- PRE LOADER -->
     <section class="preloader">
         <!-- <div class="spinner">

               <span class="spinner-rotate"></span>
               
          </div>-->
     </section>


     <!-- MENU -->
     <section class="navbar custom-navbar navbar-fixed-top" role="navigation">
          <div class="container">

               <div class="navbar-header">
                    <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                         <span class="icon icon-bar"></span>
                         <span class="icon icon-bar"></span>
                         <span class="icon icon-bar"></span>
                    </button>

                    <!-- lOGO TEXT HERE -->
                    <img src="https://img.icons8.com/nolan/64/working-with-a-laptop.png"/>
                    <a href="index.html" class="navbar-brand">Data  Entry System</a>
               </div>

               <!-- MENU LINKS -->
               <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                         <li><a href="#home" class="smoothScroll">Home</a></li>
                         <li><a href="#feature" class="smoothScroll">New Data_Entry</a></li>
                        <!-- <li><a href="view_subdata.jsp" class="smoothScroll">View Entry-Data</a></li>-->
                        <li><a href="records.jsp" class="smoothScroll">View Entry-Data</a></li>
                         <li><a href="#about" class="smoothScroll">About us</a></li>
                         <li><a href="#contact" class="smoothScroll">Contact</a></li>
                         <li><a href="userlogout.jsp" class="smoothScroll">Logout</a></li>
                          
                    </ul>
               </div>

          </div>
     </section>
<%
    
    response.setHeader("Cache-Control","no-cache, no-store, must-revalidate"); //suport HTTP 1.1
    
    //response.setHeader("Pragma", "no-cache"); //suport Http 1.0
    
    // response.setHeader("Expires", "0"); //suport proxies
    
    
    if (session.getAttribute("username") == null) {
        response.sendRedirect("index.html");
%>

<%} else {
%>
Welcome:<%=session.getAttribute("username")%>
<%
    }
%>

     <!-- FEATURE -->
     <section id="home" data-stellar-background-ratio="0.5">
          <div class="overlay"></div>
          <div class="container">
               <div class="row">

                    <div class="col-md-offset-3 col-md-6 col-sm-12">
                         <div class="home-info">
                              <h1>“The goal is to turn data into information and information into insight.” – Carly Fiorina,</h1>
                         </div>
                    </div>

               </div>
          </div>
     </section>


     <!-- SignUp -->
     <section id="feature" data-stellar-background-ratio="0.5">
          <div class="container">
               <div class="row">

                    <div class="col-md-12 col-sm-12">
                         <div class="section-title">
                              <h1>Registration Here:</h1>
                         </div>
                    </div>

                    <div class="col-md-6 col-sm-6">
                         <ul class="nav nav-tabs" role="tablist">
                              <li class="active"><a href="#tab01" aria-controls="tab01" role="tab" data-toggle="tab">Data Register Here </a></li>

                             <!-- <li><a href="#tab02" aria-controls="tab02" role="tab" data-toggle="tab">Worker</a></li>-->
                         </ul>

                         <div class="tab-content">
                              <div class="tab-pane active" id="tab01" role="tabpanel">
                                   <div class="tab-pane-item">
                                        <a href="#" data-toggle="modal" data-target="#mymodaluser"><h2>Register</h2></a>
                                        <p>Register a new Data</p>
                                   </div>
                                   
                              </div>


                             <!-- <div class="tab-pane" id="tab02" role="tabpanel">
                                   <div class="tab-pane-item">
                                        <a href="" data-toggle="modal" data-target="#mymodalworkersignup"><h2>Sign Up</h2></a>
                                        <p>SignUp as a FINDWORKERS member.</p>
                                   </div>
                                   <div class="tab-pane-item">
                                        <a href="" data-toggle="modal" data-target="#myworkerlogin"><h2>Login</h2></a>
                                        <p>Login as a Member of FINDWORKERS family.</p>
                                   </div>
                                   
                              </div>-->

                         </div>

                    </div>

                    <div class="col-md-6 col-sm-6">
                         <div class="feature-image">
                    <!--Image In Sign Up --><img src="images/a.png" class="img-responsive" alt="">                             
                         </div>
                    </div>

               </div>
          </div>
     </section>


     <!-- ABOUT -->
     <section id="about" data-stellar-background-ratio="0.5">
          <div class="container">
               <div class="row">

                    <div class="col-md-offset-3 col-md-6 col-sm-12">
                         <div class="section-title">
                              <h1>Professional Team for you</h1>
                         </div>
                    </div>

                    <div class="col-md-4 col-sm-4">
                         <div class="team-thumb">
                              <img src="images/1.jpg" class="img-responsive" alt="Harshal Patil">
                              <div class="team-info team-thumb-up">
                                   <h2>Harshal Patil</h2>
                                   <small>CEO/Founder</small>
                                   <p>IMCA</p>
                             
                              </div>
                               
                         </div>
                    </div>

                    <div class="col-md-4 col-sm-4">
                         <div class="team-thumb">
                              <div class="team-info team-thumb-down">
                                   <h2>Data Entry System</h2>
                                   <small>WE HELP YOU TO STORE YOU DAILY  REGISTRATION DATA</small>
                                  <!-- <p>This Website provides  User a various types of essential services according to area hence the user can find their require services,with this this website also help to raise your small service  providing business to next level by helping you to connect to more customers</p>-->
                              </div>
                               
                              
                         </div>
                    </div>

                    <div class="col-md-4 col-sm-4">
                         <div class="team-thumb">
                              <img src="images/1.jpg" class="img-responsive" alt="Shahsikant Songirkar">
                              <div class="team-info team-thumb-up">
                                   <h2>Shashikant Songirkar</h2>
                                   <small>CEO / Founder</small>
                                   <p>IMCA</p>
                              </div>
                         </div>
                    </div
                    
               </div>
          </div>
     </section>



     <!-- CONTACT -->
     <section id="contact" data-stellar-background-ratio="0.5">
          <div class="container">
               <div class="row">

                    <div class="col-md-offset-1 col-md-10 col-sm-12">
                         <form id="contact-form" role="form" action="#" method="POST">
                              <div class="section-title">
                                   <h1>For Contact </h1>
                              </div>

                              <div class="col-md-4 col-sm-4">
                                   <input type="text" class="form-control" placeholder="Full name" name="contactname" required>
                              </div>
                              <div class="col-md-4 col-sm-4">
                                   <input type="email" class="form-control" placeholder="Email address" name="email" required>
                              </div>
                              <div class="col-md-4 col-sm-4">
                                   <input type="submit" class="form-control" name="submit" value="Send Message">
                              </div>
                              <div class="col-md-12 col-sm-12">
                                   <textarea class="form-control" rows="3" placeholder="Your message" name="message" required></textarea>
                              </div>
                         </form>
                    </div>

               </div>
          </div>
     </section>       


 
	<footer class="footer text-center ">
          <p><h1>DataEntry.com</h1>To Make Workers Networks<h6>वह बदलाव बनिए जो आप दुनिया में देखना चाहते हैं.</h6></p>
      </footer>



   
     <!--User REGISTRATION FORM-->
          <div class="modal" id="mymodaluser">
               <div class="modal-dialog">
               <div class="modal-content">
                    <div class="modal-header">
                              <h2>Registration Form</h2>
                              <button class="close" type="button" style="color:red;" data-dismiss="modal">&times</button><!--&times USED for CLOSE / CROSS sign-->
                    </div>
                    <div class="modal-body">
                         <form method="POST" action="dataentry">
                              <div class="form-group">
                                   <input type="text" name="fname" class="form-control" placeholder="Enter User' Name">
                              </div>
                             <div class="form-group">
                                   <input type="email" name="email" class="form-control" placeholder="Enter  User's Email">
                              </div>
                              <div class="form-group">
                                   <input type="text" name="mobno" maxlength="10" class="form-control" placeholder="Enter User Mobile Number">
                              </div>
                             <div class="form-group">
                                   <input type="text" name="adhno" maxlength="12" class="form-control" placeholder="Enter User's Adhaar no">
                              </div>
                             <div class="form-group">
                                   <input type="text" name="workprof" class="form-control" placeholder="Enter User's Profession">
                              </div>
                             <div class="form-group">
                                 <input type="radio" id="male" name="gender" value="male">
                                    <label for="male">Male</label><br>
                                 <input type="radio" id="female" name="gender" value="female">
                                    <label for="female">Female</label><br>
                              </div>
                              <div class="form-group">
                                   <input type="text" name="address" class="form-control" placeholder="Enter Users Address">
                              </div>
                             <div class="form-group">
                                   <input type="text" name="city" class="form-control" placeholder="Enter Users City">
                              </div>
                            
                             <div class="form-group">
                                   <input type="text" name="pscode" class="form-control" placeholder="Enter Users Postal Code">
                              </div>
                             
                              
                              
                              <div class="form-group">
                                   <center><button type="submit" name="submit" value="SignUP"class="btn-primary btn">Submit</button>
                                   <button type="reset" class="btn-primary btn">Reset</button></center>
                              </div>
                         </form>
                    </div>
               </div>
               </div>
          </div>

    
   
    

 
     <!-- SCRIPTS -->
     <script src="js/jquery.js"></script>
     <script src="js/bootstrap.min.js"></script>
     <script src="js/jquery.stellar.min.js"></script>
     <script src="js/owl.carousel.min.js"></script>
     <script src="js/smoothscroll.js"></script>
     <script src="js/custom.js"></script>
     <!--<script src="js/file.js"></script>-->
     <script src="js/password.js"></script>

</body>
</html>

