<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Search Friends</title>
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
.style11 {font-size: 16px}
.style12 {color: #2c83b0}
.style13 {color: #a51f51}
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
	  
      <div class="logo">      </div>
      <div class="clr"></div>
	   <h1><a href="index.html"><span class="style9">O<span class="style5">n</span> S<span class="style5">ummarization</span> a<span class="style5">nd</span> T<span class="style5">imeline</span> G<span class="style5">eneration</span> f<span class="style5">or</span> E<span class="style5">volutionary</span> T<span class="style5">weet</span> S<span class="style5">treams</span></span></a></h1>
      <div class="slider">
        <div id="coin-slider"><a href="#"><img src="images/slide1.jpg" width="940" height="310" alt="" /><img src="images/slide2.jpg" width="940" height="310" alt="" /></a> <a href="#"><img src="images/slide3.jpg" width="940" height="310" alt="" /></a></div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2><span>Search Friend By N<span class="style5">ame</span></span></h2>
         
           
		   <p><div class="post_content">
            <p> 
			<FORM ACTION="SearchFriends.jsp" METHOD="post">
                
              <DIV STYLE="width:600px;">
                  <TABLE ALIGN="center" STYLE="margin:0 0 0 30px;">
                    <TR>
                      <TD width="146"><P align="center" class="style13">&nbsp;</P></TD>
                    </TR>
					
					<tr><TD height="41"><INPUT TYPE="text" name="fname" /></TD>
                      <TD width="121"><div align="center">
                        <INPUT name="submit" TYPE="submit" STYLE="width:50px; height:25px;" VALUE="GO"/>
                      </div></TD></tr>
                    <TR>
                      <TD COLSPAN="3"><P align="center" class="style12">Enter The Name </P></TD>
                    </TR>
                </TABLE>
              </DIV>
            </FORM>
		</p>
			
            <p>
              <%@ include file="connect.jsp" %>
                <%@ page import="java.util.Date" %>
                <%@ page import="java.sql.*"%>
                <%@ page import="java.text.SimpleDateFormat" %>
             
                
              
              <%             String uname=(String)application.getAttribute("uname");
								String fname= request.getParameter("fname");	
							try{
							    String id="",name="";
								String s1=null,s2=null,s3=null,s4=null,s5=null,s6=null;
								double count=0,count1=0,ratio=0;
								SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
								SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

								Date now = new Date();
						
								String strDate = sdfDate.format(now);
								String strTime = sdfTime.format(now);
								String dt = strDate + "   " + strTime;
								
								
								
								if(!fname.equalsIgnoreCase(""))
								{
									Statement st3 = connection.createStatement();
									   String query3 ="insert into searchfriends(username,friendsearched,dt) values('"+uname+"','"+fname+"','"+dt+"')";
									   st3.executeUpdate (query3); 	   
								}
								%>
            </p>
            <p>&nbsp;</p>
            <table width="360" border="1" align="center"  cellpadding="0" cellspacing="0"   font-size:14px;">
                      <tr>
                        <td  width="106" valign="baseline" height="28" style="color: #2c83b0;"><div align="center" class="style15 style8 style11"> Profile_pic </div></td>
						<td  width="136" valign="baseline" height="28" style="color: #2c83b0;"><div align="center" class="style15 style8 style11">Friend Name </div></td>
                        <td  width="110" valign="baseline" height="28" style="color: #2c83b0;"><div align="center" class="style15 style8 style11">Details</div></td>
  
                      <%
					  
								Statement stmt=connection.createStatement();
								String strQuery = "select * from user ";
								ResultSet rs = stmt.executeQuery(strQuery);
								String title=null;
								while(rs.next())
								{
									id=rs.getString(1);
									name=rs.getString(2);
					
									if ( name.indexOf(fname)>=0){
								
										
			    	 					
										
										
									%>
                      <tr>
					  
                       
                       
                     <td width="106" rowspan="1" >
					   <div style="margin:10px 13px 10px 13px;" >
                		 <a class="#" id="img1" href="#" >
							<input  name="image" type="image" src="profilepic_image.jsp?uid=<%=id%>" style="width:80px; height:80px;"  />
			   		   </a>                	</div>					</td>
							
							<td  valign="baseline" height="0">&nbsp;&nbsp;
                            <div align="center" class="style16 ">
                            <%out.println(name);%>
                            </div></td>
							
								<td  > <p align="center"><a href="SendRequest.jsp?name=<%=name%>">View</a></p></td>
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
                      <tr>
                        <td  valign="baseline" height="0">&nbsp;</td>
                        <td  valign="baseline" height="0">&nbsp;</td>
                        <td  valign="baseline" height="0">&nbsp;</td>
                      </tr>
            </table>
              </p>
			  
			  
          </div></p>
            
         
          <div class="clr"></div>
        </div>
        <div class="article">
          

          <div class="clr"></div>
         
          <div class="post_content">          </div>
          <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
      
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="ViewAllFriends.jsp">View All Friends </a></li>
            <li><a href="ViewAllRecievedRequests.jsp">View All Friends Requests </a></li>
            <li><a href="ViewAllSentRequests.jsp">View All Sent Request</a></li>
			<li><a href="Register.jsp">User Main </a></li>
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
