<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CUP-Login</title>
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

   function isNumber(evt) {
        evt = (evt) ? evt : window.event;
        var charCode = (evt.which) ? evt.which : evt.keyCode;
        if (charCode > 31 && (charCode < 48 || charCode > 57)) {
            alert("Please Enter Only 10 Numbers.");
            return false;
        }

        return true;
    }

    function ValidateNo() {
        var phoneNo = document.getElementById('txtPhoneNo');

    if (phoneNo.value == "" || phoneNo.value == null) {
            alert("Enter Your Fill Name!\nEnter Your Password!\nEnter Your Confirm Password!\nEnter Your Mobile No.!\nEnter Your Date of Birth!\nEnter Your E-Mail-ID!\nEnter Your Answer!")
		        return false;
        }
        if (phoneNo.value.length < 10 || phoneNo.value.length > 10) {
            alert("Mobile No. is not valid, Please Enter 10 Digit Mobile No.");
            return false;
        }

        alert("Success ");
        return true;
        }
</script>
<script type="text/javascript" src="Acceptonlynumber/jquery.min.js"></script>

<script type="text/javascript">
        var specialKeys = new Array();
        specialKeys.push(8); //Backspace
        $(function () {
            $(".numeric").bind("keypress", function (e) {
                var keyCode = e.which ? e.which : e.keyCode
                var ret = ((keyCode >= 48 && keyCode <= 57) || specialKeys.indexOf(keyCode) != -1);
                $(".error").css("display", ret ? "none" : "inline");
                return ret;
            });
            $(".numeric").bind("paste", function (e) {
                return false;
            });
            $(".numeric").bind("drop", function (e) {
                return false;
            });
        });
    </script>
<script type="text/javascript">

function validate(){
    if ((document.example2.lid.value=="")){
			alert("Enter Your Login-ID");        
    	//alert("Enter Your Fill Name!\nEnter Your Password!\nEnter Your Confirm Password!\nEnter Your Mobile!\nEnter Your Date of Birth!\nEnter Your E-Mail-ID!\nEnter Your Answer!")
		        return false
	}
    if ((document.example2.pwd.value=="")){
	        alert("Enter Your Password!")
	        return false
    }
    if ((document.example2.nm.value=="")){
	        alert("Enter Your Password!")
	        return false
    }
    if ((document.example2.cpwd.value=="")){
		        alert("Enter Your Confirm Password!")
		        return false
    }
    if ((document.example2.mob.value=="")){
		        alert("Enter Your Mobile!")
		        return false
    }
    if ((document.example2.dob.value=="")){
		        alert("Enter Your Date of Birth!")
		        return false
    }
    if ((document.example2.eid.value=="")){
		        alert("Enter Your E-Mail-ID!")
		        return false
    }
    if ((document.example2.qid.value=="")){
		        alert("Select Your Question!")
		        return false
    }
    if ((document.example2.sa.value=="")){
		        alert("Enter Your Answer!")
		        return false
    }
    else
        return true
}

</script>
<script type="text/javascript" src="pwdnotmatch/passtest.js"></script>
	<script type="text/javascript">
	function AllowAlphabet(){
	if (!frm.alphabet.value.match(/^[a-z A-Z]+$/) && frm.alphabet.value !="")
	{
	frm.alphabet.value="";
	frm.alphabet.focus();
	
	}
	}
	</script>
    
</head>
<body>
   <!-- This one in here is responsive menu for tablet and mobiles -->
    <!-- <div class="responsive-navigation visible-sm visible-xs">
        <a href="#" class="menu-toggle-btn">
            <i class="fa fa-bars"></i>
        </a>
        <div class="responsive_menu">
            <ul class="main_menu">
                <li><a href="#">Home</a></li>
                <li><a href="#">Events</a>
                    <ul>
                        <li><a href="#">Events Grid</a></li>
                        <li><a href="#">Events List</a></li>
                        <li><a href="#">Event Details</a></li>
                    </ul>
                </li>
                <li><a href="#">Courses</a>
                    <ul>
                        <li><a href="#">Course List</a></li>
                        <li><a href="#">Course Single</a></li>
                    </ul>
                </li>
                <li><a href="#">Blog Entries</a>
                    <ul>
                        <li><a href="#">Blog Grid</a></li>
                        <li><a href="#">Blog Single</a></li>
                        <li><a href="#">Blog Disqus</a></li>
                    </ul>
                </li>
                <li><a href="#">Pages</a>
                    <ul>
                        <li><a href="#">Archives</a></li>
                        <li><a href="#">Shortcodes</a></li>
                        <li><a href="#">Our Gallery</a></li>
                    </ul>
                </li>
                <li><a href="contact.html">Contact</a></li>
            </ul>
            <ul class="social_icons">
                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                <li><a href="#"><i class="fa fa-rss"></i></a></li>
            </ul>
        </div> 
    </div> <!-- /responsive_navigation -->


    <header class="site-header">
        <div class="container">
            <div class="row">
                
                <div class="col-md-6">
                    <div class="logo">
                        <a href="loginPage.jsp" title="Centralized University Portal" rel="home">
                            <img src="onlinetest/images/culogo.png" class="img-responsive" alt="Universe">
                        </a>
                    </div> <!-- /.logo -->
                </div> <!-- /.col-md-4 -->

                <div class="col-md-6 header-right">
                    <div class="search-form">
                        
                    <p><i class="fa fa-phone"></i> +919648632329</p>
                    <p><i class="fa fa-envelope"></i> <a href="mailto:prabhatpal15@gmail.com">prabhatpal15@gmail.com</a></p>
                    <!--   <ul class="small-links">
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Contact</a></li>
                        <li><a href="#">Apply Now</a></li>-->
                    </ul>
                 <!-- /.header-left -->

                    </div>
                </div> <!-- /.header-right -->
            </div>
        </div> <!-- /.container -->

        <!-- <div class="nav-bar-main" role="navigation">
            <div class="container">
                <nav class="main-navigation clearfix visible-md visible-lg" role="navigation">
                        <ul class="main-menu sf-menu">
                            <li class="active"><a href="#">Home</a></li>
                            <li><a href="#">Events</a>
                                <ul class="sub-menu">
                                    <li><a href="#">Events Grid</a></li>
                                    <li><a href="#">Events List</a></li>
                                    <li><a href="#">Events Details</a>
                                </ul>
                            </li>
                            <li><a href="#">Courses</a>
                                <ul class="sub-menu">
                                    <li><a href="#">Courses List</a></li>
                                    <li><a href="#">Course Single</a></li>
                                </ul>
                            </li>
                            <li><a href="#">Blog Entries</a>
                                <ul class="sub-menu">
                                    <li><a href="#">Blog Grid</a></li>
                                    <li><a href="#">Blog Single</a></li>
                                    <li><a href="#">Blog Disqus</a></li>
                                </ul>
                            </li>
                            <li><a href="#">Pages</a>
                                <ul class="sub-menu">
                                    <li><a href="#">Archives</a></li>
                                    <li><a href="#">Shortcodes</a></li>
                                    <li><a href="#">Our Gallery</a></li>
                                </ul>
                            </li>
                        </ul> 

                        <ul class="social-icons pull-right">
                            <li><a href="#" data-toggle="tooltip" title="Facebook"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#" data-toggle="tooltip" title="Twitter"><i class="fa fa-twitter"></i></a></li>
                            <!-- <li><a href="#" data-toggle="tooltip" title="Pinterest"><i class="fa fa-pinterest"></i></a></li>
                            <li><a href="#" data-toggle="tooltip" title="Google+"><i class="fa fa-google-plus"></i></a></li>
                            <li><a href="#" data-toggle="tooltip" title="RSS"><i class="fa fa-rss"></i></a></li>
                        </ul> 
                </nav>
            </div> 
        </div> -->

    </header> <!-- /.site-header -->
    
    
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="main-slideshow">
                    <div class="flexslider">
                        <ul class="slides">
                            <li>
                                <img src="onlinetest/images/11.jpg" />
                           <!--   <div class="slider-caption">
                                    <h2><a href="blog-single.html">When a Doctor’s Visit Is a Guilt Trip</a></h2>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit...</p>
                                </div>-->
                            </li>
                            <li>
                                <img src="onlinetest/images/12.jpg" />
                            </li>
                            <li>
                                <img src="onlinetest/images/3.jpg" />
                            </li>
                            <li>
                                <img src="onlinetest/images/4.jpg" />
                            </li>
                            <li>
                                <img src="onlinetest/images/5.jpg" />
                            </li>
                            <li>
                                <img src="onlinetest/images/6.jpg" />
                            </li>
                            <li>
                                <img src="onlinetest/images/8.jpg" />
                            </li>
                            <li>
                                <img src="onlinetest/images/13.jpg" />
                            </li>
                            <li>
                                <img src="onlinetest/images/2.jpg" />
                            </li>
                            <li>
                                <img src="onlinetest/images/1.jpg" />
                            </li>
                        </ul> <!-- /.slides -->
                    </div> <!-- /.flexslider -->
                </div> <!-- /.main-slideshow -->
            </div> <!-- /.col-md-12 -->
          
            <div class="col-md-4">
                <div class="widget-item">
                    <div class="request-information">
                        <h4 class="widget-title">LOGIN FORM</h4>
                        <form class="request-info clearfix" name="example2" onsubmit="return validate()" action="loginAuthenticate.jsp" method="post"> 
                            <div class="full-row">
                                <div class="input-select">
                                    
	                                <select name="category" id="cat" class="postform">
							          <option value="-select category-">-Select Category-</option>
							          <option value="admin">Admin</option>
							          <option value="university">University</option>
							          <option value="college">College</option>
							          <option value="student">Student</option>
							        </select>
                                   
                                </div> <!-- /.input-select -->  
                            </div> <!-- /.full-row -->
							<div class="full-row">
                                <label for="yourname">Login-ID</label>
                                <input type="text" id="yourname" name="lid" placeholder="Login-ID"/> 
                            </div> <!-- /.full-row -->

                            <div class="full-row">
                                <label for="email-id">Password</label>
                                <input type="password" id="yourname" name="pwd" placeholder="Password"/>
                            </div> <!-- /.full-row -->
                            
                            <div class="full-row">
                                <div class="submit_field">
                                    <!-- <span class="small-text pull-left">Subscribe to our newsletter</span>-->
                                    
                                    <input type="reset" class="mainBtn pull-right" name="reset" value="Reset"/><input type="submit" name="submit" id="sign_user" onclick="ValidateNo();" class="mainBtn pull-right" value="Submit"/>
                                </div> <!-- /.submit-field -->
                            </div> <!-- /.full-row -->


                        </form> <!-- /.request-info -->
                    </div> <!-- /.request-information -->
                </div> <!-- /.widget-item -->
            </div> <!-- /.col-md-4 -->
        </div>
    </div>


    <div class="container">
        <div class="row">
            
            <!-- Here begin Main Content -->
            <div class="col-md-8">
                <div class="row">
                    <div class="col-md-12">
                        <div class="widget-item">
                            <h2 class="welcome-text">Welcome to Centralized University Portal</h2>
                            <p><strong></strong></p>
                        </div> <!-- /.widget-item -->
                    </div> <!-- /.col-md-12 -->
                </div> <!-- /.row -->

                <!-- <div class="row">
                    
                    <div class="col-md-6">
                        <div class="widget-main">
                            <div class="widget-main-title">
                                <h4 class="widget-title">Latest News</h4>
                            </div> 
                            <div class="widget-inner">
                            <marquee behavior="scroll" direction="up" scrollamount="4" onmouseover="this.stop();" onmouseout="this.start();">
                                <div class="blog-list-post clearfix">
                                    <div class="blog-list-thumb">
                                        <img src="onlinetest/images/blog/blog-small-thumb1.jpg" alt="">
                                    </div>
                                    <div class="blog-list-details">
                                        <h5 class="blog-list-title">Graduate Open Day at the Ruskin</h5>
                                        <p class="blog-list-meta small-text"><span><a href="#">12 January 2014</a></span> with <span><a href="#">3 comments</a></span></p>
                                    </div>
                                </div>
                                <div class="blog-list-post clearfix">
                                    <div class="blog-list-thumb">
                                        <img src="onlinetest/images/blog/blog-small-thumb2.jpg" alt="">
                                    </div>
                                    <div class="blog-list-details">
                                        <h5 class="blog-list-title">Visiting Artists: Giles Bailey</h5>
                                        <p class="blog-list-meta small-text"><span><a href="#">12 January 2014</a></span> with <span><a href="#">3 comments</a></span></p>
                                    </div>
                                </div> 
                                <div class="blog-list-post clearfix">
                                    <div class="blog-list-thumb">
                                        <img src="onlinetest/images/blog/blog-small-thumb3.jpg" alt="">
                                    </div>
                                    <div class="blog-list-details">
                                        <h5 class="blog-list-title">Workshop: Theories of the Image</h5>
                                        <p class="blog-list-meta small-text"><span><a href="#">12 January 2014</a></span> with <span><a href="#">3 comments</a></span></p>
                                    </div>
                                </div> </marquee>
                            </div> 
                        </div> 
                    </div>
                    
                    
                    <div class="col-md-6">
                        <div class="widget-main">
                            <div class="widget-main-title">
                                <h4 class="widget-title">Events</h4>
                            </div>
                            <div class="widget-inner">
                                <div class="event-small-list clearfix">
                                    <div class="calendar-small">
                                        <span class="s-month">Jan</span>
                                        <span class="s-date">24</span>
                                    </div>
                                    <div class="event-small-details">
                                        <h5 class="event-small-title">Nelson Mandela Memorial Tribute</h5>
                                        <p class="event-small-meta small-text">Cramton Auditorium 9:00 AM to 1:00 PM</p>
                                    </div>
                                </div>
                                <div class="event-small-list clearfix">
                                    <div class="calendar-small">
                                        <span class="s-month">Jan</span>
                                        <span class="s-date">24</span>
                                    </div>
                                    <div class="event-small-details">
                                        <h5 class="event-small-title">OVADA Oxford Open</h5>
                                        <p class="event-small-meta small-text">Posner Center 4:30 PM to 6:00 PM</p>
                                    </div>
                                </div>
                                <div class="event-small-list clearfix">
                                    <div class="calendar-small">
                                        <span class="s-month">Jan</span>
                                        <span class="s-date">24</span>
                                    </div>
                                    <div class="event-small-details">
                                        <h5 class="event-small-title">Filming Objects And Sculpture</h5>
                                        <p class="event-small-meta small-text">A70 Cyert Hall 12:00 PM to 1:00 PM</p>
                                    </div>
                                </div>
                            </div> 
                        </div> 
                    </div> 
                    
                </div> -->
                
                <div class="row">
                    <div class="col-md-12">
                        <div class="widget-main">
                            <div class="widget-main-title">
                                <h4 class="widget-title">Our Campus</h4>
                            </div> <!-- /.widget-main-title -->
                            <div class="widget-inner">
                                <div class="our-campus clearfix">
                                <marquee behavior="scroll" direction="left" scrollamount="4" onmouseover="this.stop();" onmouseout="this.start();">
                                    <ul>
                                        <li><img src="onlinetest/images/campus/amityuni.png" alt=""></li>
                                        <li><img src="onlinetest/images/campus/itmuni.png" alt=""></li>
                                        <li><img src="onlinetest/images/campus/mits.png" alt=""></li>
                                        <li><img src="onlinetest/images/campus/jiwajiuni.jpg" alt=""></li>
                                    </ul></marquee>
                                </div>
                            </div>
                        </div> <!-- /.widget-main -->
                    </div> <!-- /.col-md-12 -->
                </div> <!-- /.row -->

            </div> <!-- /.col-md-8 -->
            
            <!-- Here begin Sidebar -->
            <div class="col-md-4">

               <!--  <div class="widget-main">
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
                        </div></marquee>
                    </div>  
                </div>  -->

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

                <!-- <div class="widget-main">
                    <div class="widget-main-title">
                        <h4 class="widget-title">Our Gallery</h4>
                    </div>
                    <div class="widget-inner">
                        <div class="gallery-small-thumbs clearfix">
                            <div class="thumb-small-gallery">
                                <a class="fancybox" rel="gallery1" href="onlinetest/images/gallery/gallery1.jpg" title="Gallery Tittle One">
                                    <img src="onlinetest/images/gallery/gallery-small-thumb1.jpg" alt="" />
                                </a>
                            </div>
                            <div class="thumb-small-gallery">
                                <a class="fancybox" rel="gallery1" href="onlinetest/images/gallery/gallery2.jpg" title="Gallery Tittle One">
                                    <img src="onlinetest/images/gallery/gallery-small-thumb2.jpg" alt="" />
                                </a>
                            </div>
                            <div class="thumb-small-gallery">
                                <a class="fancybox" rel="gallery1" href="onlinetest/images/gallery/gallery3.jpg" title="Gallery Tittle One">
                                    <img src="onlinetest/images/gallery/gallery-small-thumb3.jpg" alt="" />
                                </a>
                            </div>
                            <div class="thumb-small-gallery">
                                <a class="fancybox" rel="gallery1" href="onlinetest/images/gallery/gallery4.jpg" title="Gallery Tittle One">
                                    <img src="onlinetest/images/gallery/gallery-small-thumb4.jpg" alt="" />
                                </a>
                            </div>
                            <div class="thumb-small-gallery">
                                <a class="fancybox" rel="gallery1" href="onlinetest/images/gallery/gallery5.jpg" title="Gallery Tittle One">
                                    <img src="onlinetest/images/gallery/gallery-small-thumb5.jpg" alt="" />
                                </a>
                            </div>
                            <div class="thumb-small-gallery">
                                <a class="fancybox" rel="gallery1" href="onlinetest/images/gallery/gallery6.jpg" title="Gallery Tittle One">
                                    <img src="onlinetest/images/gallery/gallery-small-thumb6.jpg" alt="" />
                                </a>
                            </div>
                            <div class="thumb-small-gallery">
                                <a class="fancybox" rel="gallery1" href="onlinetest/images/gallery/gallery7.jpg" title="Gallery Tittle One">
                                    <img src="onlinetest/images/gallery/gallery-small-thumb7.jpg" alt="" />
                                </a>
                            </div>
                            <div class="thumb-small-gallery">
                                <a class="fancybox" rel="gallery1" href="onlinetest/images/gallery/gallery8.jpg" title="Gallery Tittle One">
                                    <img src="onlinetest/images/gallery/gallery-small-thumb8.jpg" alt="" />
                                </a>
                            </div>
                        </div> 
                    </div> 
                </div> -->

            </div>
        </div>
    </div>

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
