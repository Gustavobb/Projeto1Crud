<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<title>Insert title here</title>
</head>
<body>

<%!
String name;
%>

<%
Object user = request.getParameter("user");
String name = user.toString();
%>


<div class="container-fluid">
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	  <a class="navbar-brand" href="#">
    	<i class="fas fa-heartbeat"></i>TaskOrgn
      </a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	
	  <div class="collapse navbar-collapse" id="navbarSupportedContent">
	    <ul class="navbar-nav mr-auto">	      
		    <li class="nav-item active">
		        <a class="nav-link"><i class="fas fa-user-circle"></i>  <%=name %><span class="sr-only">(current)</span></a>
		    </li>
	    </ul>

		<div>
  			 <button class="btn btn-danger my-2 my-sm-0 ml-2" type="submit" data-toggle="modal" data-target="#exampleModal">Sing out</button>
		</div>
	  </div>
	</nav>
</div>


	<div class="container-fluid">
		<div class="row justify-content-center">
			<div class="col-md-2" style="position:absolute; top:30%; transfrom:translate(0%, -30%);">
			
				<div class="card text-center">
					<div class="card-body">
					
						<form action="add" method="post">
							<div>
								<input id="workout" name="workout" class="form-control" placeholder="Enter workout">
							</div>
							<div>
								<button type="submit"  class="btn btn-dark mt-2" aria-pressed="false">Add</button>
							</div>
						</form>
					</div>
				</div>
				
		  	</div>
	  	</div>
 	</div>
 	
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Warning</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p> Are you sure you want to leave? </p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-dark mt-2" aria-pressed="false" data-dismiss="modal">Close</button>
        <form action="/CRUD/login" method="get">
        	<button type="submit" class="btn btn-success mt-2" aria-pressed="false">Yes</button>
        </form>
      </div>
    </div>
  </div>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	
	
</body>
</html>
