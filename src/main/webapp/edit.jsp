<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.*"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.util.List"%>
<%@page import="com.entities.Notes"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="all.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Note</title>
</head>
<body>
<%@include file="navbar.jsp" %><br>
  	
<%
int noteId = Integer.parseInt(request.getParameter("note_id").trim());

Session s = FactoryProvider.getFactory().openSession();

Notes note=(Notes)s.get(Notes.class,noteId);


%>
<div class="container">
 <!--  Form -->
 <h1 class="text-uppercase">Edit Your Notes</h1>
  <form action="UpdateeServlet" method="POST">
  <input value="<%=note.getId() %>" name="noteId" type="hidden">
  <div class="form-group">
    <label for="title">Note Title</label>
    <input type="text" name="title" class="form-control" id="title" required placeholder="Enter Title" value="<%= note.getTitle() %>">
  </div>
  <div class="form-group">
    <label for="content">Note Content</label>
    <textarea name="content" id="content" placeholder="Enter Content" required class="form-control" style="height:300px" ><%= note.getContent() %></textarea>
  </div>
  
  <div class="container text-center">
   <button type="submit" class="btn btn-success">Save Your Note</button>
  </div>
 
 
</form>

</div>

</body>
</html>