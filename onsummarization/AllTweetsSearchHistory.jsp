<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>All Tweet’s Search History
</title>
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
.style10 {color: #a51f51}
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
          <li class="active"><a href="AdminLogin.html"><span>Admin Main </span></a></li>
          <li><a href="UserLogin.html"><span>User  </span></a></li>
          <li><a href="Register.jsp"><span>Register</span></a></li>
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
          <h2>All Tweet’s Search History<br />
          </h2>
          <div class="clr"></div>
          <div class="img"><img src="images/slide2.jpg" width="638" height="192" alt="" class="fl" /></div>
          <div class="post_content">
            <p></p>
            
          </div>
          <div class="clr"></div>
        </div>
        <div class="article">
          

          <div class="clr"></div>
		  
          
          <p><table width="649"  border="1" align="center"  cellpadding="0" cellspacing="0"   font-size:14px;">
  <tr>
  <td width="50" height="49"><div align="center" class="style10"><span class="style3">Topic ID  </span></div></td>
  <td width="127"><div align="center" class="style10"><span class="style3">Topic PIC  </span></div></td>
    <td width="118"><div align="center" class="style10"><span class="style3">Topic Name </span></div></td>
    <td width="134"><div align="center" class="style10"><span class="style3">Searched User </span></div></td>
    <td width="119"><div align="center" class="style10"><span class="style3">User Name </span></div></td>

    <td width="87"><div align="center" class="style10"><span class="style3">Date & Time</span></div></td>
  </tr>
  <%@ include file="connect.jsp" %>
<%
 
      	
String tid="",tname="",user="",date="",uid="";


      	try 
	{
           
           String query="select * from searchtopic "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	  while( rs.next() )
	   {
		
		tid=rs.getString(1);
		tname=rs.getString(2);
		user=rs.getString(3);
		date=rs.getString(4);

		
		String query1="select * from user where username='"+user+"'"; 
        Statement st1=connection.createStatement();
        ResultSet rs1=st1.executeQuery(query1);
	  while( rs1.next() )
	  {
			uid=rs1.getString(1);  
			
			
		
		
%>


  <tr>
  	<td height="117"><div align="center"><%=tid%></div></td>
    <td><div align="center">
      <input  name="image2" type="image" src="images.jsp?imgid=<%=tid%>" width="100" height="100" alt="Submit" />
    </div></td>
    <td><div align="center"><%=tname %></div></td>
     <td><div align="center"><input  name="image" type="image" src="profilepic_image.jsp?uid=<%=uid%>" width="100" height="100" alt="Submit"></div></td>
    <td><div align="center"><%=user %></div></td>

    <td><div align="center"><%= date%></div></td>
  </tr>

<%
		 
	  }
		
	   }
	 

           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>

<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</table>
          </p>
          <p><p align="right"><a href="TimeTweet.jsp">Back</a></p></p>
          <p align="right"><a href="AdminMain.jsp">Back</a></p>
          <div class="post_content">
           
          </div>
          <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
      
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="AdminMain.jsp">Admin Main</a></li>
            <li><a href="AdminLogin.html">Log Out </a></li>
           
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
