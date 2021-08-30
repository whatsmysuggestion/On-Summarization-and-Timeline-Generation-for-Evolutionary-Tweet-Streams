<%@ page language="java" contentType="text/html; charset=ISO-8859-1"pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%@ include file="connect.jsp" %>
<%
    try {
        String s8,s9;
	 	String to=request.getParameter("to");
	    String from=(String )application.getAttribute("uname");
	
	String str1="select * from user where username='"+from+"'";
	Statement stmt1=connection.createStatement();
	ResultSet rs1=stmt1.executeQuery(str1);
	
	while(rs1.next())
	{
	

      s8=rs1.getString(10);


String str2="select * from user where username='"+to+"'";
	Statement stmt2=connection.createStatement();
	ResultSet rs2=stmt2.executeQuery(str2);
	while(rs2.next())
	{
	
	
      s9=rs2.getString(10);

	if(s8.equalsIgnoreCase("Authorized"))
	{
	
	
	
	
	    if(s9.equalsIgnoreCase("Authorized"))
		{
		String sql="SELECT * FROM requests where reqfrom='"+from+"' and reqto='"+to+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			String utype="";
			if(rs.next())
			{ response.sendRedirect("AlreayRequested.jsp"); }
			else
			{
      	SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
        SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
	    Date now = new Date();

String strDate = sdfDate.format(now);
String strTime = sdfTime.format(now);
String dt = strDate + "   " + strTime;   
String status="waiting";

 Statement st=connection.createStatement();
 st.executeUpdate("insert into  requests (reqfrom,reqto,status,dt) values ('"+from+"','"+to+"','"+status+"','"+dt+"')" );
 response.sendRedirect("SearchFriends.jsp");
		
		
		}}
		
		
		
		
		else
		{
		response.sendRedirect("UnAuthorizedFriend.jsp");
		}
		}
		
		
		
		else
		{
		response.sendRedirect("UnAuthorizedUser.jsp");
		}
		
		
		
		}
		
		}
			
			
			}
		catch(Exception e)
	{
		out.print(e);
	}

%>