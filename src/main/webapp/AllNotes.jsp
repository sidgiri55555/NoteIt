<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.util.List"%>
<%@page import="com.entities.Notes"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<%@include file="all.jsp" %>
<link rel="stylesheet" type="text/css" href="css/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All Notes</title>
</head>
<body>
<%@include file="navbar.jsp" %><br>
 <div class = "container" >
  	
  	<h1 class="text-uppercase">All Notes</h1>
  	
  	<div class="row">
  	
  	<div class="col-12">
  	  	<%
  	
  	Session s=FactoryProvider.getFactory().openSession();
  	Query q = s.createQuery("from Notes");
  	List<Notes> list = q.list();
  	
  	for(Notes note : list){
  		
  		%>
  		
  		<div class="card">
  <img src="img/note-pad.png" style="max-width:100px" class="card-img-top m-4 mx-auto" alt="...">
  <div class="card-body px-5">
    <h5 class="card-title"><%= note.getTitle() %></h5>
    <p class="card-text"><%= note.getContent() %></p>
    <p><b class="text-primary"><%= note.getAddedDate() %></b></p>
    <div class="container text-center mt-2">
    <a href="DeleteServlet?note_id=<%=note.getId() %>" class="btn btn-danger">Delete</a>
    <a href="edit.jsp?note_id=<%=note.getId() %>" class="btn btn-primary">Update</a>
    </div>
  </div>
</div>
 		
  		<%
  	            }
  	s.close();  
  	
  	%>
  	
  	
  	</div>
  	
  	
  	</div>
  	
  	
  	

  	</div>
</body>
</html>