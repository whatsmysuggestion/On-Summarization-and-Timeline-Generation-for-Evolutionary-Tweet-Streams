
<%@ include file="connect.jsp" %>
<html><title>PPI : user status changing</title>
<body>
	<center>&nbsp;</center>
	<br><br><br>
	<%
  		String sn = request.getParameter("uid");
   		try {
	   		
	   		String str = "Accepted";
				
       		Statement st1 = connection.createStatement();
       		String query1 ="update requests set status='"+str+"' where id='"+sn+"' ";
	   		st1.executeUpdate (query1);
	   		connection.close();
       	}
      	catch(Exception e)
     	{
			out.println(e.getMessage());
   		}
   		response.sendRedirect("ViewAllRecievedRequests.jsp");  
	%>
</body>
</html>