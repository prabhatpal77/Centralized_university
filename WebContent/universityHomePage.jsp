<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CUP-Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="College Education Responsive Template">
    <meta name="author" content="Esmet">
    <meta charset="UTF-8">

    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100,200,300,500,600,700,800' rel='stylesheet' type='text/css'>
        
    <!-- CSS Bootstrap & Custom -->
    <link href="onlinetest/bootstrap/css/bootstrap.css" rel="stylesheet" media="screen">
    <link href="onlinetest/css/font-awesome.min.css" rel="stylesheet" media="screen">
    <link href="onlinetest/css/animate.css" rel="stylesheet" media="screen">
    
    <link href="onlinetest/style.css" rel="stylesheet" media="screen">
        
    <!-- Favicons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="onlinetest/images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="onlinetest/images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="onlinetest/images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="onlinetest/images/ico/apple-touch-icon-57-precomposed.png">
    <link rel="shortcut icon" href="onlinetest/images/ico/favicon.ico">
    
    <!-- JavaScripts -->
    <script src="onlinetest/js/jquery-1.10.2.min.js"></script>
    <script src="onlinetest/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="onlinetest/js/modernizr.js"></script>
    <!--[if lt IE 8]>
	<div style=' clear: both; text-align:center; position: relative;'>
            <a href="http://www.microsoft.com/windows/internet-explorer/default.aspx?ocid=ie6_countdown_bannercode"><img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" alt="" /></a>
        </div>
    <![endif]-->
    <script type="text/javascript">
//
    function sizeFrame(frameId) {

        var F = document.getElementById(frameId);
        if (F.contentDocument) {
            F.height = F.contentDocument.documentElement.scrollHeight + 00; //FF 3.0.11, Opera 9.63, and Chrome
        } else {



            F.height = F.contentWindow.document.body.scrollHeight + 00; //IE6, IE7 and Chrome

        }

    }

    // window.onload=sizeFrame; 


</script>
<%
String ulid = session.getValue("unilid").toString();

String utime = session.getValue("unitime").toString();
%>
</head>
<body>
 <!-- This one in here is responsive menu for tablet and mobiles -->
    <div class="responsive-navigation visible-sm visible-xs">
        <a href="#" class="menu-toggle-btn">
            <i class="fa fa-bars"></i>
        </a>
        <div class="responsive_menu">
            <ul class="main_menu">
                <li><a href="universityHomePage.jsp">Home</a></li>
                <li><a href="universityUpdate.jsp" target="uni">Update</a></li>
                <li><a href="#">Search</a>
                	<ul class="sub-menu">
                		<li><a href="universityCollegeSearch.jsp" target="uni">College Search</a></li>
                		<li><a href="universityStudentSearch.jsp" target="uni">Student Search</a></li>
                	</ul>
                </li>
                <li><a href="#">Registrations</a>
                	<ul class="sub-menu">
                		<li><a href="collegeInterface.jsp" target="uni">College Registration</a></li>
                		<li><%out.print("<a href=courseInterface.jsp target=uni>Course Registration</a>"); %></li>
                		<li><%out.print("<a href=branchInterface.jsp target=uni>Branch Registration</a>"); %></li>
                	</ul>
                </li>
                <li><a href="uniChangePass.jsp" target="uni">Change Password</a></li>
                <li><a href="universityLogout.jsp"> Logout</a></li>
            </ul> <!-- /.main_menu -->
            <ul class="social_icons">
                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
            </ul> <!-- /.social_icons -->
        </div> <!-- /.responsive_menu -->
    </div> <!-- /responsive_navigation -->


    <header class="site-header">
        <div class="container">
            <div class="row">
                
                <div class="col-md-6">
                    <div class="logo">
                        <a href="universityHomePage.jsp" title="Centralized University Portal" rel="home">
                            <img src="onlinetest/images/culogo.png" class="img-responsive" alt="Universe">
                        </a>
                    </div> <!-- /.logo -->
                </div> <!-- /.col-md-4 -->

                <div class="col-md-6 header-right">
                    <div class="search-form">
                        
                    <p><i class="fa fa-phone"></i> +919648632329</p>
                    <p><i class="fa fa-envelope"></i> <a href="mailto:prabhatpal15@gmail.com">prabhatpal15@gmail.com</a></p>
                    <!-- <ul class="small-links">
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Contact</a></li>
                        <li><a href="#">Apply Now</a></li>
                    </ul>-->
                   <!-- /.header-left -->

                    </div>
                </div> <!-- /.header-right -->
            </div>
        </div> <!-- /.container -->
         <div class="nav-bar-main" role="navigation">
            <div class="container">
                <nav class="main-navigation clearfix visible-md visible-lg" role="navigation">
                        <ul class="main-menu sf-menu">
                            <li><a href="universityHomePage.jsp">Home</a></li>
                            <li><a href="universityUpdate.jsp" target="uni">Update</a></li>
                            <li><%out.print("<a href=uniShowNotice.jsp?id="+ulid+" target=uni>Show Notice</a>"); %></li>
                            <li><a href="#">Search</a>
                                <ul class="sub-menu">
		                            <li><a href="universityCollegeSearch.jsp" target="uni">College Search</a></li>
		                            <li><a href="universityStudentSearch.jsp" target="uni">Student Search</a></li>
		                            <li><a href="studentAadharSearch.jsp" target="uni">Student Aadhar Search</a></li>
                            	</ul>
                            </li>
                            <li><a href="#">Registrations</a>
                                <ul class="sub-menu">
                                    <li><a href="collegeInterface.jsp" target="uni">College Registration</a></li>
                                    <li><%out.print("<a href=courseInterface.jsp target=uni>Course Registration</a>"); %></li>
                            		<li><%out.print("<a href=branchInterface.jsp target=uni>Branch Registration</a>"); %></li>
                            		<li><%out.print("<a href=NoticePage.jsp?id="+ulid+" target=uni>Notice Registration</a>"); %></li>
                            		<li></li>
                                </ul>
                            </li>
                            <li><a href="uniChangePass.jsp" target="uni">Change Password</a></li>
                            <li><a href="universityLogout.jsp"> Logout</a></li>
                               
                        </ul> <!-- /.main-menu -->

                        <ul class="social-icons pull-right">
                            <!--<li><a href="#" data-toggle="tooltip" title="Facebook"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#" data-toggle="tooltip" title="Twitter"><i class="fa fa-twitter"></i></a></li>
                             <li><a href="#" data-toggle="tooltip" title="Pinterest"><i class="fa fa-pinterest"></i></a></li>
                            <li><a href="#" data-toggle="tooltip" title="Google+"><i class="fa fa-google-plus"></i></a></li>
                            <li><a href="#" data-toggle="tooltip" title="RSS"><i class="fa fa-rss"></i></a></li>-->
                        </ul> <!-- /.social-icons -->
                </nav> <!-- /.main-navigation -->
            </div> <!-- /.container -->
        </div> <!-- /.nav-bar-main -->

    </header> <!-- /.site-header -->
    
    
    
    <!-- Being Page Title -->
    <div class="container">
        <div class="page-title clearfix">
            <div class="row">
                <div class="col-md-12">
                    <h6><i class="fa fa-user"> LOGIN-ID</i></h6>
                    <h6><span class="page-active"><%out.print(ulid); %></span></h6>
                </div>
            </div>
        </div>
    </div>


    <div class="container">
        <div class="row">

            <!-- Here begin Main Content -->
            <div class="col-md-8">

                <div class="row">
                    <div class="col-md-12">
                        <div class="blog-post-container">
                            
                            <div class="blog-post-inner">
                               
					           <div style="border:2px solid #2E9AFE; padding:10px;">
                <iframe name="uni" src="universityUpdate.jsp" width="100%" id="myFrame" scrolling="yes" frameborder="0" onload="sizeFrame('myFrame')" ></iframe></div>
                            </div>
                        </div> <!-- /.blog-post-container -->
                    </div> <!-- /.col-md-12 -->
                </div> <!-- /.row -->
                
                <!-- <div class="row">
                    <div class="col-md-12">
                        <div id="blog-comments" class="blog-post-comments">
                            <div class="widget-main-title">
                                <h4 class="widget-title">3 Comments</h4>
                            </div>
                            <div class="blog-comments-content">
                                <div class="media">
                                    <div class="pull-left" href="#">
                                        <img class="media-object" src="onlinetest/images/blog/comment-author1.jpg" alt="">
                                    </div>
                                    <div class="media-body">
                                        <h4 class="media-heading">Frank Wilson</h4>
                                        <p>Lorem ipsum dolor sit amet lorem, consectetur adipisicing elit. Sequi, nam magni repellendus! <span class="label label-primary">New</span></p>
                                        
                                    </div>
                                </div>
                                <div class="media">
                                    <div class="pull-left" href="#">
                                        <img class="media-object" src="onlinetest/images/blog/comment-author3.jpg" alt="">
                                    </div>
                                    <div class="media-body">
                                        <h4 class="media-heading">Fred Guerra</h4>
                                        <p>Enim, iste numquam inventore reiciendis magnam aliquam libero asperiores quidem quos voluptate?</p>
                                    </div>
                                </div>
                            </div> 
                        </div> 
                    </div> 
                </div> -->

                
            </div> <!-- /.col-md-8 -->

            <!-- Here begin Sidebar -->
            <div class="col-md-4">
                
                <!-- <div class="widget-main">
                    <div class="widget-inner">
                        <div class="search-form-widget">
                            <form name="search_form" method="get" action="#" class="search_form">
                                <input type="text" name="s" placeholder="Type and click enter to search..." title="Type and click enter to search..." class="field_search">
                            </form>
                        </div>
                    </div>
                </div> 

                <div class="widget-main">
                    <div class="widget-main-title">
                        <h4 class="widget-title">Categories</h4>
                    </div>
                    <div class="widget-inner">
                        <div class="blog-categories">
                            <div class="row">
                                <ul class="col-md-6">
                                    <li><a href="#">Business</a></li>
                                    <li><a href="#">Famliy</a></li>
                                    <li><a href="#">Government</a></li>
                                    <li><a href="#">Health</a></li>
                                </ul>
                                <ul class="col-md-6">
                                    <li><a href="#">Science</a></li>
                                    <li><a href="#">Student Achievements</a></li>
                                    <li><a href="#">Tech & Engineering</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

 				<div class="widget-main">
                    <div class="widget-main-title">
                        <h4 class="widget-title">Top Professors</h4>
                    </div>
                    <div class="widget-inner">
                    <marquee behavior="scroll" direction="up" scrollamount="4" onmouseover="this.stop();" onmouseout="this.start();">
                        <div class="prof-list-item clearfix">
                           <div class="prof-thumb">
                                <img src="onlinetest/images/prof/prof1.jpg" alt="Profesor Name">
                            </div> 
                            <div class="prof-details">
                                <h5 class="prof-name-list">Prof. Betty Hunt</h5>
                                <p class="small-text">Sed ut lectus ac lacus molestie posuere non tincidunt arcu.</p>
                            </div> 
                        </div> 
                        <div class="prof-list-item clearfix">
                           <div class="prof-thumb">
                                <img src="onlinetest/images/prof/prof2.jpg" alt="Profesor Name">
                            </div> 
                            <div class="prof-details">
                                <h5 class="prof-name-list">Prof. Victor Johns</h5>
                                <p class="small-text">Nullam sollicitudin libero ut ullamcorper pretium.</p>
                            </div> 
                        </div> 
                        <div class="prof-list-item clearfix">
                           <div class="prof-thumb">
                                <img src="onlinetest/images/prof/prof3.jpg" alt="Profesor Name">
                            </div> 
                            <div class="prof-details">
                                <h5 class="prof-name-list">Prof. Charles Conway</h5>
                                <p class="small-text">Integer et nisl tincidunt, euismod orci eget, posuere nunc.</p>
                            </div> 
                        </div> </marquee>
                    </div> 
                </div> -->

                

                <div class="widget-main">
                    <div class="widget-main-title">
                        <h4 class="widget-title">Testimonial</h4>
                    </div>
                    <div class="widget-inner">
                        <div id="slider-testimonials">
                            <ul>
                                <li>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit, quos, veniam optio voluptas hic delectus soluta odit nemo harum <strong class="dark-text">Shannon D. Edwards</strong></p>
                                </li>
                                <li>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit, quos, veniam optio voluptas hic delectus soluta odit nemo harum <strong class="dark-text">Shannon D. Edwards</strong></p>
                                </li>
                                <li>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit, quos, veniam optio voluptas hic delectus soluta odit nemo harum <strong class="dark-text">Shannon D. Edwards</strong></p>
                                </li>
                            </ul>
                            <a class="prev fa fa-angle-left" href="#"></a>
                            <a class="next fa fa-angle-right" href="#"></a>
                        </div>
                    </div> <!-- /.widget-inner -->
                </div> <!-- /.widget-main -->

            </div> <!-- /.col-md-4 -->
    
        </div> <!-- /.row -->
    </div> <!-- /.container -->

     <!-- begin The Footer -->
    <footer class="site-footer">
        <div class="container">
            <!-- <div class="row">
                <div class="col-md-3">
                    <div class="footer-widget">
                        <h4 class="footer-widget-title">Contact Us</h4>
                        <p>The simple contact form below comes packed within this theme. </br></br>Mailing address:</br>877 Filbert Street</br> Chester, PA 19013</p>
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="footer-widget">
                        <h4 class="footer-widget-title">Favourites</h4>
                        <ul class="list-links">
                            <li><a href="#">A to Z Index</a></li>
                            <li><a href="#">Admissions</a></li>
                            <li><a href="#">Bookstore</a></li>
                            <li><a href="#">Catalog / Classes</a></li>
                            <li><a href="#">Dining</a></li>
                            <li><a href="#">Financial Aid</a></li>
                            <li><a href="#">Graduation</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="footer-widget">
                        <h4 class="footer-widget-title">Resources For</h4>
                        <ul class="list-links">
                            <li><a href="#">Future Students</a></li>
                            <li><a href="#">Current Students</a></li>
                            <li><a href="#">Faculty/Staff</a></li>
                            <li><a href="#">International</a></li>
                            <li><a href="#">Postdocs</a></li>
                            <li><a href="#">Alumni</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="footer-widget">
                        <h4 class="footer-widget-title">Study</h4>
                        <ul class="list-links">
                            <li><a href="#">Courses</a></li>
                            <li><a href="#">Apply Now</a></li>
                            <li><a href="#">Scholarships</a></li>
                            <li><a href="#">FAQs</a></li>
                            <li><a href="#">International student enquiries</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="footer-widget">
                        <ul class="footer-media-icons">
                            <li><a href="#" class="fa fa-facebook"></a></li>
                            <li><a href="#" class="fa fa-twitter"></a></li>
                            <li><a href="#" class="fa fa-google-plus"></a></li>
                            <li><a href="#" class="fa fa-youtube"></a></li>
                            <li><a href="#" class="fa fa-linkedin"></a></li>
                            <li><a href="#" class="fa fa-instagram"></a></li>
                            <li><a href="#" class="fa fa-apple"></a></li>
                            <li><a href="#" class="fa fa-rss"></a></li>
                        </ul>
                    </div>
                </div>
            </div>--> <!-- /.row -->

            <div class="bottom-footer">
                <div class="row">
                    <div class="col-md-5">
                        <p class="small-text">&copy; Designed By:- <a href="#">Prabhat</a></p>
                    </div> <!-- /.col-md-5 -->
                    
                </div> <!-- /.row -->
            </div> <!-- /.bottom-footer -->

        </div> <!-- /.container -->
    </footer> <!-- /.site-footer -->

 <script src="onlinetest/bootstrap/js/bootstrap.min.js"></script>
    <script src="onlinetest/js/plugins.js"></script>
    <script src="onlinetest/js/custom.js"></script>
                                                                             
</body>
</html>
