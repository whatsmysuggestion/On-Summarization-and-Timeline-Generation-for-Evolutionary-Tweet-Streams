<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Register</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style5 {color: #76b9e4}
.style9 {font-size: 20px}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="AdminLogin.html"><span>Admin Login </span></a></li>
          <li><a href="UserLogin.html"><span>User Login </span></a></li>
          <li class="active"><a href="Register.jsp"><span>Register</span></a></li>
          <li><a href="ProjetcDetails.jsp"><span>Project Details </span></a></li>
        </ul>
      </div>
	  
      <div class="logo">

        
      </div>
      <div class="clr"></div>
	   <h1><a href="index.html"><span class="style9">O<span class="style5">n</span> S<span class="style5">ummarization</span> a<span class="style5">nd</span> T<span class="style5">imeline</span> G<span class="style5">eneration</span> f<span class="style5">or</span> E<span class="style5">volutionary</span> T<span class="style5">weet</span> S<span class="style5">treams</span></span></a></h1>
      <div class="slider">
        <div id="coin-slider"><a href="#"><img src="images/slide1.jpg" width="940" height="310" alt="" /></a><a href="#"><img src="images/slide2.jpg" width="940" height="310" alt="" /></a> <a href="#"><img src="images/slide3.jpg" width="940" height="310" alt="" /></a></div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2><span>R<span class="style5">egister</span></span></h2>
   
         
          <p><form action="insertuserdata.jsp" method="post" id="sendemail" enctype="multipart/form-data">
            <ol>
              <li>
                <label for="name">User Name (required)</label>
                <input id="name" name="userid" class="text" />
              </li>
               <li>
                <label for="password">Password (required)</label>
                <input type="password" id="password" name="pass" class="text" />
              </li>
              <li>
                <label for="email">Email Address (required)</label>
                <input id="email" name="email" class="text" />
              </li>
			  <li>
                <label for="mobile">Mobile Number (required)</label>
                <input id="mobile" name="mobile" class="text" />
              </li>
              
              <li>
                <label for="address">Your Address</label>
                <textarea id="address" name="address" rows="3" cols="50"></textarea>
              </li>
			  <li>
                <label for="dob">Date of Birth (required)</label>
                <input id="dob" name="dob" class="text" />
              </li>
			  <li>
                <label for="gender">Select Gender (required)</label>
                <select id="s1" name="gender" style="width:480px;" class="text">
                              <option>--Select--</option>
                              <option>MALE</option>
                              <option>FEMALE</option>
                </select>
              </li>
			  <li>
                <label for="pincode">Enter Pincode (required)</label>
                <input id="pincode" name="pincode" class="text" />
              </li>
			  <li>
                <label for="location">Enter Location (required)</label>
                <input id="loc" name="location" class="text" />
              </li>
			  
			  <li>
                <label for="pic">Select Profile Picture (required)</label>
                <input type="file" id="pic" name="pic" class="text" />
                <ol>
                  
                  <ol>
                      
                    <ol>
                          <li>
                            <input type="image" name="imageField" id="imageField" src="Gallery/submit.gif" class="send" />
                        </li>
                    </ol>
                  </ol>
                </ol>
			  </li>
              <li>
                <div class="clr"></div>
              </li>
            </ol>
          </form></p>
         
        
        </div>
     
        
      </div>
      <div class="sidebar">
      
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="index.html">Home</a></li>
            <li><a href="AdminLogin.html">Admin Login</a></li>
            <li><a href="UserLogin.html">User Login</a></li>
            <li><a href="Register.jsp">Register</a></li>
            <li><a href="ProjetcDetails.jsp">ProjetcDetails</a></li>
            
          </ul>
        </div>
        <div class="gadget">
          <h2 class="star"><span>Concepts</span></h2>
          <div class="clr"></div>
          <ul class="ex_menu">
            <p>&nbsp;</p>
            <p>&gt; Tweet Representation            </p>
            <p>&gt; Tweet Cluster Vector</p>
            <p> &gt; Pyramidal Time Frame</p>
            <p>&gt; Tweet Stream Clustering</p>
            <p>&gt; Incremental Clustering</p>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="col c1">
        <h2><span>Image</span> Gallery</h2>
        <a href="#"><img src="images/gal1.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal2.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal3.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal4.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal5.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal6.jpg" width="75" height="75" alt="" class="gal" /></a> </div>
      <div class="col c2">
        <h2><span>Index Terms</span></h2>
        <p>&gt;&gt; Tweet stream</p>
        <p> &gt;&gt; continuous summarization</p>
        <p> &gt;&gt; summary</p>
        <p> &gt;&gt; timeline</p>
     
      </div>
      <div class="col c3">
        <h2><span>Project Detail</span>s</h2>
        <p>&gt;&gt; Stream Data Clustering</p>
        <p>&gt;&gt; Document/Microblog Summarization</p>
        <p>&gt;&gt; Timeline Detection</p>
        <p>&gt;&gt; Other Microblog Mining Tasks</p>
        <p>&gt;&gt; Merging Clusters</p>
        <p> </p>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
     
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
</body>
</html>
