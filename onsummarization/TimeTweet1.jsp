<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Tweet stream clustering</title>
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
.style12 {
	color: #FF3300;
	font-size: 14px;
	font-weight: bold;
}
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
          <h2>All tweets based on Time</h2>
          <div class="clr"></div>
          <div class="img"><img src="images/slide2.jpg" width="638" height="192" alt="" class="fl" /></div>
          <div class="post_content">
            <p></p>
            
          </div>
          <div class="clr"></div>
        </div>
        <div class="article">
         <div align="center">
  <table border=1 width="622" style="border-collapse: collapse" bordercolor="#111111" cellpadding="0" cellspacing="0">
    <tr>
      <td align="justify" bgcolor="#CCCC00" width="54" valign="baseline" height="0"><div align="center"><strong>Topic ID</strong></div></td>
      <td align="justify" bgcolor="#CCCC00" width="187" valign="baseline"><div align="center"><strong>Topic PIC</strong></div></td>
      <td align="justify" bgcolor="#CCCC00" width="157" valign="baseline" height="0"><div align="center"><strong>Tweet BY</strong></div></td>
	  <td align="justify" bgcolor="#CCCC00" width="122" valign="baseline" height="0"><div align="center"><strong>Tweet </strong></div></td>
	  <td align="justify" bgcolor="#CCCC00" width="90" valign="baseline" height="0"><div align="center"><strong>Date</strong></div></td>
    </tr>
   <%@ include file="connect.jsp" %>
  <%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
    <%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
 <%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream,java.text.DateFormat"%>
    <%   	
	String id,user,tweet,date,tname="",id1="";

      	try 
	{
      		String t1=request.getParameter("t1");
      		String t2=request.getParameter("t2");
    
      		SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
      		
      		Date d1=null,d2=null,d3=null;
      	
			d1=sdfDate.parse(t1);
			d2=sdfDate.parse(t2);
			
				
           String query="select * FROM usertweets "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	   while ( rs.next() )
	   {
		id=rs.getString(1);
		user=rs.getString(2);
		tweet=rs.getString(3);
        date=rs.getString(4);
		
				
           String query2="select * FROM user where username='"+user+"' "; 
           Statement st2=connection.createStatement();
           ResultSet rs2=st2.executeQuery(query2);
	   while ( rs2.next() )
	   {
		int i=rs2.getInt(1);
       
        
        
        d3=sdfDate.parse(date);
        if(d3.after(d1) && d3.before(d2))
        {
		
		
           String query1="select * FROM tweettopic where id='"+id+"' "; 
           Statement st1=connection.createStatement();
           ResultSet rs1=st1.executeQuery(query1);
	   while ( rs1.next() )
	   {
		tname=rs1.getString(2);
		
		
		
		
		
%>
    
    <tr>
      <td align="center" bgcolor="#FFFFFF" width="54" valign="baseline" height="0"><%out.println(id);%>&nbsp;</td>
      <td width="187" rowspan="1" >
						<div style="margin:10px 13px 10px 13px;" >
                		  <p><a class="#" id="img1" href="#" >
               		      <input  name="image" type="image" src="images.jsp?imgid=<%=id%>" style="width:100px; height:100px;"  />
              		    </a></p>
                		  <p class="style12"><%=tname%></p>
						</div>				</td>
      <td width="238" rowspan="1" >
						<div style="margin:10px 13px 10px 13px;" >
                		  <p><a class="#" id="img1" href="#" >
               		      <input  name="image" type="image" src="profilepic_image.jsp?uid=<%=i%>" style="width:100px; height:100px;"  />
              		    </a></p>
                		  <p class="style12"><%=user%></p>
						</div>				</td>
	  <td align="center" bgcolor="#FFFFFF" width="122" valign="baseline"><%out.println(tweet);%>&nbsp;</td>
      <td align="center" bgcolor="#FFFFFF" width="90" valign="baseline" height="0"><%out.println(date);%>&nbsp;</td>
    </tr>
    <%

	   }}
	   }}
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
    
    <tr>
      <td align="justify"  width="54" valign="baseline" height="0">&nbsp;</td>
      <td align="justify"  width="187" valign="baseline">&nbsp;</td>
      <td align="justify"  width="157" valign="baseline" height="0">&nbsp;</td>
	  <td align="justify"  width="122" valign="baseline">&nbsp;</td>
      <td align="justify"  width="90" valign="baseline" height="0">&nbsp;</td>
    </tr>
  </table>
 
  <p>&nbsp;</p>
 <p><p align="right"><a href="TimeTweet.jsp">Back</a></p></p>
         </div> 

          <div class="clr"></div>
          
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
