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
.style11 {color: #585757}
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
          <h2>All tweets based on Tweet stream clustering<br />
          </h2>
          <div class="clr"></div>
       
          <div class="post_content">
            <p>
			
			<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.sql.*"%>
<%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
            <%

      	
	String i="",name="",from="",to="",details="",date="",uname="",id1="";
	int j=0,n=1;
		try 
	      {
           String query="select * from tweettopic "; 
           Statement st=connection.createStatement();
          ResultSet rs=st.executeQuery(query);
		  
	 while ( rs.next() )
	   {
		i=rs.getString(1);
		name=rs.getString(2);
		j=rs.getInt(6);
	
%>
        </p>
           
		   
		   
		   
		 
            <table width="458" border="1" align="center"  cellpadding="0" cellspacing="0">
			 <h3>Cluster : <%=n%></h3>
			<tr><td width="156" rowspan="4" ><div class="style5" style="margin:10px 13px 10px 13px;"><div align="center" class="style8"> <a class="#" id="img1" href="#" >
             <input  name="image" type="image" src="images.jsp?imgid=<%=i%>"  style="width:110px; height:110px; margin:10px 10px 10px 10px;"></a> </div></div></td></tr>
    <tr>
<td  width="168" valign="middle" height="39" style="color: #9e4c66;"><div align="left" class="style8 style8 style5" style="margin-left:20px;"><strong>Topic ID </strong></div></td>
<td><div align="center"><span class="style15 style5">&nbsp;&nbsp;<%=i%></span></div></td>
   </tr>

     <td  width="168" valign="middle" height="50" style="color: #9e4c66;"><div align="left" class="style8 style5" style="margin-left:20px;"><strong>Topic  Name </strong></div></td>
     <td><div align="center"><span class="style15 style5">&nbsp;&nbsp;<%=name%></span></div></td>
	 </tr>
      <tr>
     <td  width="168" valign="middle" height="56" style="color: #2c83b0;"><div align="left " class="style8 style5" style="margin-left:20px;"><strong>Rank</strong></div></td>
     <td><div align="center"><span class="style15 style5">&nbsp;&nbsp;<%=j%></span></div></td> </tr> <tr> </tr>
    <tr>
      <td  width="156" valign="middle" height="34" colspan="1" style="color: #2c83b0;"><div align="center" class="style8 style5"><strong>Tweet By</strong></div></td>
      <td  width="168" valign="middle" height="34" colspan="1" style="color: #2c83b0;"><div align="center" class="style8 style5"><strong>Tweets </strong></div></td>
      <td  width="126" valign="middle" height="34" colspan="1" style="color: #9e4c66;"><div align="left" class="style5" style="margin-left:20px;">
	   <div align="center" class="style17 style11">date</div>
	 </div></td> 
   </tr>
   <%
   
   
   	   String str="select * from usertweets where topicid='"+i+"'"; 
           Statement st1=connection.createStatement();
           ResultSet rs1=st1.executeQuery(str);
	while ( rs1.next() )
	   {
	     from=rs1.getString(2);
		 details=rs1.getString(3);
		 date=rs1.getString(4);
	   
	 %>  
	 <tr>
   <td height="31"><div align="center" class="style5"><span class="style15">&nbsp;&nbsp;<%=from%></span></div></td>
   <td><div align="center" class="style5"><span class="style15">&nbsp;&nbsp;<%=details%></span></div></td>
   <td><div align="center" class="style5"><span class="style15">&nbsp;&nbsp;<%=date%></span></div></td>
   <tr> 
     </tr>
  
   

    <%
       	
     
						}
						n=n+1;
					
							} 
							
						      out.println("                            ");
						     n=n+1;
						     
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					
					
					%>
               <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td></td>
            </tr>					
        </table>  
			
			</p>
            <P> <p align="right"><a href="AdminMain.jsp">Back</a></p></P>
          </div>
          <div class="clr"></div>
        </div>
        <div class="article">
          

          <div class="clr"></div>
		  
          
          <p>  </p>
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
            <li><a href="AdminLogin.html">Log Out</a></li>
          
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
