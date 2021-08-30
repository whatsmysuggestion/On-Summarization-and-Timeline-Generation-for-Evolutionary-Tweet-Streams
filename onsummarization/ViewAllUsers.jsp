<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View All Users</title>
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
          <h2><span>All U<span class="style5">ser  </span>D<span class="style5">etails</span></span></h2>
          <div class="clr"></div>
          <div class="img"><img src="images/slide2.jpg" width="638" height="192" alt="" class="fl" /></div>
          <div class="post_content">
            <p></p>
            
          </div>
          <div class="clr"></div>
        </div>
        
          

          <div class="clr"></div>
          
          <div class="post_content">
           
            <p><table width="690" border="1"  cellpadding="0" cellspacing="0" font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
                      <tr>
					  <td  width="40" valign="baseline" height="0" style="color: #2c83b0;"><div align="center" class="style15">ID</div></td>
                        <td  width="139" valign="baseline" height="0" style="color: #2c83b0;"><div align="center" class="style15">UserImage</div></td>
						<td  width="100" valign="baseline" height="0" style="color: #2c83b0;"><div align="center" class="style15">Username</div></td>
                        <td  width="96" valign="baseline" height="0" style="color: #2c83b0;"><div align="center" class="style15">Mobile</div></td>
                        <td  width="99" valign="baseline" height="0" style="color: #2c83b0;"><div align="center" class="style15">Address</div></td>
                        <td  width="72" valign="baseline" height="0" style="color: #2c83b0;"><div align="center" class="style15">Gender</div></td>
                        <td  width="82" valign="baseline" height="0" style="color: #2c83b0;"><div align="center" class="style15">Status</div></td>
					
                      </tr>
					  <%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
                      <%
					  
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
						int i=0;
						try 
						{
						   	String query="select * from user"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s3=rs.getString(5);
								s4=rs.getString(6);
								s5=rs.getString(7);
								s6=rs.getString(8);
								//s7=rs.getString(9);
								s8=rs.getString(10);
								s9=rs.getString(11);
								
								String status="";
								
						
					%>
                      <tr><td  width="40" valign="baseline" height="0" style="color:#000000;">&nbsp;&nbsp;
                            
                          <div align="center">
                            <%out.println(i);%>
                          </div></td>
					  <td width="139" rowspan="1" >
						<div style="margin:10px 13px 10px 13px;" >
                		 <a class="#" id="img1" href="#" >
							<input  name="image" type="image" src="profilepic_image.jsp?uid=<%=i%>" style="width:90px; height:90px;"  />
				   		</a>                	</div>					</td>
                      <td  width="96" valign="baseline" height="0">&nbsp;&nbsp;
                            
                          <div align="center">
                            <%out.println(s2);%>
                        </div></td
                        
                        ><td  width="96" valign="baseline" height="0">&nbsp;&nbsp;
                            
                          <div align="center">
                            <%out.println(s3);%>
                        </div></td>
                        <td  valign="baseline" height="0">&nbsp;&nbsp;
                            
                          <div align="center">
                            <%out.println(s4);%>
                          </div></td>
                       
                        <td  valign="baseline" height="0">&nbsp;&nbsp;
                            
                          <div align="center">
                            <%out.println(s6);%>
                          </div></td>
							
							  <%
						if(s8.equalsIgnoreCase("waiting"))
						{
						
						%>
                         <td  valign="baseline" height="0"> <div align="center" class="style16"><a href="generatekeyconfirm.jsp?uid=<%=i%>">waiting&nbsp;</a></div></td>
                        <%
						}
						else
						{
						%>
                        <td width="44" height="0"  valign="baseline">&nbsp;&nbsp;
                            
                          <div align="center" class="style16">
                            <%out.println(s8);%>
                        </div></td>
                        <%
						}
						%>
							
							
              
           
		      </tr>
                        <%
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
						<td  valign="baseline" height="0">&nbsp;</td>
						<td  valign="baseline" height="0">&nbsp;</td>
						
                      </tr>
                    </table></p>
           
                    <p align="right"><strong><a href="AdminMain.jsp">Back</a></strong></p>
       
          <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
      
      
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            
            <li><a href="AdminMain.jsp">Admin Main </a></li>
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
