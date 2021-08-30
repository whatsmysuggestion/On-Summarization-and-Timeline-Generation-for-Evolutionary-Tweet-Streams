<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>All Tweets With Their Images</title>
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
.style11 {color: #a51f51}
.style13 {
	color: #a51f51;
	font-size: 16px;
	font-weight: bold;
}
.style14 {
	color: #FF00FF;
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
          <h2><span class="style11">All Tweets With Their Images</span></h2>
          </p>
          <div class="clr"></div>
        </div>
          </p>
       
                <%@ include file="connect.jsp" %>
                <%@ page import="java.util.Date" %>
                <%@ page import="java.sql.*"%>
                <%@ page import="java.text.SimpleDateFormat" %>
              <%      
			  
			                    String uname=(String)application.getAttribute("uname");
								
					try{
								%>
                         <p>
						 <table width="583" border="1" align="center"  cellpadding="0" cellspacing="0"   font-size:14px;"><tr>
                        <td  width="45" valign="baseline" height="28" style="color: #2c83b0;"><div align="center" class="style15 style8 style11">Topic ID</div></td>
						<td  width="110" valign="baseline" height="28" style="color: #2c83b0;"><div align="center" class="style15 style8 style11">Topic PIC</div></td>
                        <td  width="100" valign="baseline" height="28" style="color: #2c83b0;"><div align="center" class="style15 style8 style11">Topic Name</div></td>
                        <td  width="100" valign="baseline" height="28" style="color: #2c83b0;"><div align="center" class="style15 style8 style11">Tweeter Name</div></td>
						<td  width="125" valign="baseline" height="28" style="color: #2c83b0;"><div align="center" class="style15 style8 style11">Tweet</div></td>
                        <td  width="80" valign="baseline" height="28" style="color: #2c83b0;"><div align="center" class="style15 style8 style11">Date</div></td>
						<td  width="80" valign="baseline" height="28" style="color: #2c83b0;"><div align="center" class="style15 style8 style11">Rank</div></td>
					
 
             
                      <%
					  
					            Statement stmt=connection.createStatement();
								String str= "select * from tweettopic";
								ResultSet rs = stmt.executeQuery(str);
						
								while(rs.next())
								{
								
								String id=rs.getString(1);
								String tname=rs.getString(2);
								String rank=rs.getString(6);
					  
								Statement stmt1=connection.createStatement();
								String str1 = "select * from usertweets where topicid='"+id+"' and user='"+uname+"'";
								ResultSet rs1 = stmt1.executeQuery(str1);
						
								while(rs1.next())
								{
									
									String tweet=rs1.getString(3);
									String date=rs1.getString(4);
							
									%>
                         <tr>
                         <td  valign="baseline" height="0"><div align="center" class="style16 "><%out.println(id);%></div></td>
                       
                       <td width="113" rowspan="1" ><div style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
						<input  name="image" type="image" src="images.jsp?imgid=<%=id%>" style="width:80px; height:80px;"  /></a></div></td>
							
						        <td  valign="baseline" height="0"><div align="center" class="style16 "><%out.println(tname);%></div></td>
							
						        <td  valign="baseline" height="0"><div align="center" class="style16  style14"><%out.println(uname);%></div></td>
							
								<td  valign="baseline" height="0"><div align="center" class="style16 "><%out.println(tweet);%></div></td>
							
								<td  valign="baseline" height="0"><div align="center" class="style16 "><%out.println(date);%></div></td>
							
								<td  valign="baseline" height="0"><div align="center" class="style16 "><%out.println(rank);%></div></td>
		                 </tr>
                      
					    <%
						}
						
						
								
								
								String status="Accepted";
								Statement stmt4=connection.createStatement();
								String str4="select * from requests where reqfrom='"+uname+"' and status='"+status+"'";
							    ResultSet rs4=stmt4.executeQuery(str4);
								while(rs4.next())
								{
								String reqto=rs4.getString(3);
								
					  
								Statement stmt3=connection.createStatement();
								String str3 = "select * from usertweets where topicid='"+id+"' and user='"+reqto+"'";
								ResultSet rs3 = stmt3.executeQuery(str3);
						
								while(rs3.next())
								{
									
									String tweet1=rs3.getString(3);
									String date1=rs3.getString(4);
									
									%>
									
									
									
									  <tr>
                         <td  valign="baseline" height="0"><div align="center" class="style16 "><%out.println(id);%></div></td>
                       
                       <td width="113" rowspan="1" ><div style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
						<input  name="image" type="image" src="images.jsp?imgid=<%=id%>" style="width:80px; height:80px;"  /></a></div></td>
							
						        <td  valign="baseline" height="0"><div align="center" class="style16 "><%out.println(tname);%></div></td>
							
						        <td  valign="baseline" height="0"><div align="center" class="style16  style14"><%out.println(reqto);%></div></td>
							
								<td  valign="baseline" height="0"><div align="center" class="style16 "><%out.println(tweet1);%></div></td>
							
								<td  valign="baseline" height="0"><div align="center" class="style16 "><%out.println(date1);%></div></td>
							
								<td  valign="baseline" height="0"><div align="center" class="style16 "><%out.println(rank);%></div></td>
		                 </tr>
									
									
					<%
								
					}
					

		
					}}
					
					
					
					
					connection.close();
					}
					catch(Exception e)
					{
						out.println();
					}
					%>
                      <tr>
                        <td  valign="baseline" height="0">&nbsp;</td>
                        <td  valign="baseline" height="0">&nbsp;</td>
                        <td  valign="baseline" height="0">&nbsp;</td>
						<td  valign="baseline" height="0">&nbsp;</td>
                        <td  valign="baseline" height="0">&nbsp;</td>
                        <td  valign="baseline" height="0">&nbsp;</td>
						<td  valign="baseline" height="0">&nbsp;</td>                      </tr>
        </table>
			
			
			</p>
          <p align="right"><a href="TweetDetails.jsp">Back</a></p>
          <div class="post_content">
           
          </div>
          <div class="clr"></div>
      
      </div>
      <div class="sidebar">
      
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
		  <li><a href="UserMain.jsp">User Main </a></li>
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
