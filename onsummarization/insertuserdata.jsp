<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Insert User Data</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style7 {font-size: 44px}
.style8 {color: #9e4c66}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
	   <div class="logo">
        <h1><a href="index.html" class="style7"><span class="style8"></span></a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="AdminLogin.html"><span>Admin </span></a></li>
          <li><a href="UserLogin.html"><span>User </span></a></li>
          <li class="active"><a href="Register.jsp"><span>Register</span></a></li>
          <li><a href="ProjectDetails.jsp"><span>ProjectDetails</span></a></li>
        </ul>
      </div>
   
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"><a href="#"><img src="images/slide1.jpg" width="940" height="271" alt="" /></a> <a href="#"><img src="images/slide2.jpg" width="940" height="271" alt="" /></a> <a href="#"><img src="images/slide3.jpg" width="940" height="271" alt="" /></a></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <p>
<%@ page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ include file="connect.jsp" %>

<%
					ArrayList list = new ArrayList();
					ServletContext context = getServletContext();
					String dirName =context.getRealPath("Gallery/");
					String paramname=null;
					String file=null;
					String a=null,b=null,c=null,d=null,image=null;
					String ee[]=null;
					String checkBok=" ";
					int ff=0;
					String bin ="";
					String uname=null;     
        			String pass=null;	
					String email=null;
					String mno=null;
					String dateOfBirth=null;
					String addr=null;
					String gender=null;
					String pincode=null;
				    String location=null;
					
					
					FileInputStream fs=null;
					File file1 = null;	
					try {
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024); // 10MB
						Enumeration params = multi.getParameterNames();
						while (params.hasMoreElements()) 
						{
							paramname = (String) params.nextElement();
							if(paramname.equalsIgnoreCase("userid"))
							{
								uname=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("pass"))
							{
								pass=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("email"))
							{
								email=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("mobile"))
							{
								mno=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("address"))
							{
								addr=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("dob"))
							{
								dateOfBirth=multi.getParameter(paramname);
							} 
							if(paramname.equalsIgnoreCase("gender"))
							{
								gender=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("pincode"))
							{
								pincode=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("location"))
							{
								location=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("pic"))
							{
								image=multi.getParameter(paramname);
							}
							
						}
							
						int f = 0;
						Enumeration files = multi.getFileNames();	
						while (files.hasMoreElements()) 
						{
							paramname = (String) files.nextElement();
							if(paramname.equals("d1"))
							{
								paramname = null;
							}
							
							if(paramname != null)
							{
								f = 1;
								image = multi.getFilesystemName(paramname);
								String fPath = context.getRealPath("Gallery\\"+image);
								file1 = new File(fPath);
								fs = new FileInputStream(file1);
								list.add(fs);
							
								String ss=fPath;
								FileInputStream fis = new FileInputStream(ss);
								StringBuffer sb1=new StringBuffer();
								int i = 0;
								while ((i = fis.read()) != -1) {
									if (i != -1) {
										//System.out.println(i);
										String hex = Integer.toHexString(i);
										// session.put("hex",hex);
										sb1.append(hex);
										// sb1.append(",");
									
										String binFragment = "";
										int iHex;
			 
										for(int i1= 0; i1 < hex.length(); i1++){
											iHex = Integer.parseInt(""+hex.charAt(i1),16);
											binFragment = Integer.toBinaryString(iHex);
			
											while(binFragment.length() < 4){
												binFragment = "0" + binFragment;
											}
											bin += binFragment;
											//System.out.print(bin);
										}
									}	
								}
							}		
						}
						FileInputStream fs1 = null;
						//name=dirName+"\\Gallery\\"+image;
						int lyke=0;
						//String as="0";
						//image = image.replace(".", "_b.");
			 			
						PreparedStatement ps=connection.prepareStatement("insert into user(username,password,email,mobile,address,dob,gender,pincode,status,image) values(?,?,?,?,?,?,?,?,?,?)");
						ps.setString(1,uname);
						ps.setString(2,pass);
						ps.setString(3,email);	
						ps.setString(4,mno);
						ps.setString(5,addr);
						ps.setString(6,dateOfBirth);
						ps.setString(7,gender);
						ps.setString(8,pincode);
						ps.setString(9,"waiting");
						
						ps.setBinaryStream(10, (InputStream)fs, (int)(file1.length()));
							

							
						if(f == 0)
							ps.setObject(10,null);
						else if(f == 12)
						{
							fs1 = (FileInputStream)list.get(0);
							ps.setBinaryStream(10,fs1,fs1.available());
						}	
						
						int x=ps.executeUpdate();
						
						} 
					catch (Exception e) 
					{
						out.println(e.getMessage());
					}
				%>
</p>
          <h2><span>Data Stored Successfully </span></h2>

          <div class="clr"></div>
          
          
          <div class="clr"></div>
        </div>
        <div class="article">
          

          <div class="clr"></div>
          <div class="img"><img src="images/img2.jpg" width="630" height="221" alt="" class="fl" /></div>
          
          <div class="clr"></div>
       <P align="right">&nbsp;</P>
       <P align="right">&nbsp;</P>
       <P align="right"><a href="Register.jsp">Back</a></P>
        </div>
        
      </div>
	  
      <div class="sidebar">
        
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="#">Home Page </a></li>
            <li><a href="#">Admin Main </a></li>
            <li><a href="#">User Main </a></li>
            <li><a href="#">Register</a></li>
            <li><a href="#">Project Details </a></li>
            <li><a href="#"></a></li>
          </ul>
        </div>
        <div class="gadget">
          <h2 class="star">Concepts</h2>
          <div class="clr"></div>
          <ul class="ex_menu"><li><br />
              &gt; Application Summary</li>
            <li><a href="http://www.templatesold.com/"></a>&gt; Required Permission Set</li>
            <li><a href="http://www.imhosted.com/"></a>&gt; Redirect URI</li>
            <li><a href="http://www.megastockphotos.com/"></a>&gt;Client ID in App Installation URL</li>
            <li><a href="http://www.evrsoft.com/"></a>&gt; Posts in App Profile</li>
            <li><a href="http://www.csshub.com/"></a><br />
            </li>
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
        <h2><span>Index Terms </span></h2>
        <p><span class="article">&gt; Facebook apps</span></p>
        <p><span class="article">&gt; malicious</span></p>
        <p><span class="article"> &gt; online social networks</span></p>
        <p><span class="article">&gt; spam</span></p>
        <ul class="fbg_ul">
          <li></li>
          <li></li>
        </ul>
      </div>
      <div class="col c3">
        <h2><span>Project Details </span></h2>
        <p>Malicious hackers impersonate applications</p>
        <p>&nbsp;</p>
        <p>13% of observed apps are malicious</p>
        <p>The emergence of app-nets:</p>
        <p>Required Permission Set</p>
        <p>&nbsp;  </p>
        <p>&nbsp; </p>
        <p>&nbsp;</p>
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
<div align=center></div>
</body>
</html>
