<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>All Sent Requests</title>
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
.style8 {color: #9e4c66}
.style11 {color: #a51f51}
.style12 {color: #999999}
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
          <li><a href="AdminLogin.html"><span>Admin  </span></a></li>
          <li  class="active"><a href="UserLogin.html"><span>User  </span></a></li>
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
          <h2><span class="style8"><span class="style11">W<span class="style5">ell</span> C<span class="style5">ome</span> T<span class="style5">o </span>U<span class="style5">ser</span>M<span class="style5">ain</span></span></span></h2>
          <div class="clr"></div>
          <div class="img"><img src="images/slide2.jpg" width="638" height="192" alt="" class="fl" /></div>
          <div class="post_content">
           
		   <p></p>
            
          </div>
          <div class="clr"></div>
        </div>
        <div class="article">
          

          <p><table width="539" border="1" align="center"  cellpadding="0" cellspacing="0"   font-size:14px;">
                   <tr>
				    
                 
					 <td  width="130" valign="baseline" height="28" style="color: #2c83b0;"><div align="center" class="style15 style8 style10">User</div></td>
					 <td  width="130" valign="baseline" height="28" style="color: #2c83b0;"><div align="center" class="style15 style8 style10">Request Sent To</div></td>
					  <td  width="100" valign="baseline" height="28" style="color: #2c83b0;"><div align="center" class="style15 style8 style10">Profile_Pic</div></td>
                     <td  width="60" valign="baseline" height="28" style="color: #2c83b0;"><div align="center" class="style15 style8 style10">Date</div></td>
					 <td  width="100" valign="baseline" height="28" style="color: #2c83b0;"><div align="center" class="style15 style8 style10">Status</div></td>
		    <tr>
   <p><%@ include file="connect.jsp" %>
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
					  
					  String uname=(String)application.getAttribute("uname");
					  try{
					  
					            String sn="",from="",to="",date="",status="";
								Statement stmt=connection.createStatement();
								String strQuery = "select * from requests where reqfrom='"+uname+"'";
								ResultSet rs = stmt.executeQuery(strQuery);
								String title=null;
								while(rs.next())
								{
									sn=rs.getString(1);
									from=rs.getString(2);
									to=rs.getString(3);
									date=rs.getString(4);
									status=rs.getString(5);
									int i=1;
									
									String query1="select * from user where username='"+to+"'"; 
                                    Statement st1=connection.createStatement();
                                    ResultSet rs1=st1.executeQuery(query1);
	                                while( rs1.next() )
	                                {
			                        int j=rs1.getInt(1);  
									
										
									%>
					
									
			  <td  valign="baseline" height="0"><span class="style12">&nbsp;&nbsp;
                            
                </span>
			    <div align="center" class="style16 style12">
                  <%out.println(from);%>
              </div></td>
							
							  <td  valign="baseline" height="0"><span class="style12">&nbsp;&nbsp;
                            
                              </span>
                          <div align="center" class="style12">
                            <%out.println(to);%>
              </div></td>
						  
						  <td width="100" rowspan="1" >
						<div class="style12" style="margin:10px 13px 10px 13px;" >
                		 <a class="#" id="img1" href="#" >
							<input  name="image" type="image" src="profilepic_image.jsp?uid=<%=j%>" style="width:90px; height:90px;"  />
				   		</a>                	</div>			  </td>
							
							<td  valign="baseline" height="0"><span class="style12">&nbsp;&nbsp;
                            
                            </span>
							  <div align="center" class="style16 style12">
                            <%out.println(date);%>
              </div></td>
							
							<td  valign="baseline" height="0"><span class="style12">&nbsp;&nbsp;
                            
                            </span>
							  <div align="center" class="style16 style12">
                            <%out.println(status);%>
              </div></td>
	        </tr>
                        <%
						
						}
						i=i+1;
						}
					
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
                      <tr>
      
                        <td  valign="baseline" height="0">&nbsp;</td>
                        <td  valign="baseline" height="0">&nbsp;</td>
						<td  valign="baseline" height="0">&nbsp;</td>
                        <td  valign="baseline" height="0">&nbsp;</td>
						<td  valign="baseline" height="0">&nbsp;</td>
                      </tr>
          </table>
          </p>
          <p align="right"><a href="SearchFriends.jsp">Back</a></p>
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
         
            <li><a href="UserMain.jsp">User Main</a></li>
            <li><a href="UserLogin.html">Log Out</a></li>
          
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
