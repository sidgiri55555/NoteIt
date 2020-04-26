<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<%@include file="all.jsp" %>
    <title>Note It</title>
  </head>
  <body>
  
  <%@include file="navbar.jsp" %>
  <div class = "container">
  	
  	
  	<br>
  <div class="card py-5">
  
  <img alt="" class="image-fluid mx-auto" style="max-width:400px" src="img/note-pad.png">
  <h1 class="text-primary text-uppercase text-center mt-3">Have something to Note? Just Note It !!!</h1>
  
  
  
         <div class="container text-center">
                 <button class="btn btn-outline-primary text-center" onclick="replace()">Start Adding Your Notes</button>
         </div>
 			 </div>
  </div>      

  
  <script type="text/javascript">
  function replace(){
	  location.replace("AddNotes.jsp");
  }
  
  </script>
   
    
    
   
  </body>
</html>