<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="all.jsp" %>
<title>Add Notes</title>
</head>
<body>
<%@include file="navbar.jsp" %><br>
	 <div class = "container">
  	
  <h1>Add Note</h1>
  
  <!--  Form -->
  <form action="SaveNoteServlet" method="POST">
  <div class="form-group">
    <label for="title">Note Title</label>
    <input type="text" name="title" class="form-control" id="title" required placeholder="Enter Title">
  </div>
  <div class="form-group">
    <label for="content">Note Content</label>
    <textarea name="content" id="content" placeholder="Enter Content" required class="form-control" style="height:300px"></textarea>
  </div>
  
  <div class="container text-center">
   <button type="submit" class="btn btn-primary">ADD</button>
  </div>
 
 
</form>
  
  
  </div>
</body>
</html>