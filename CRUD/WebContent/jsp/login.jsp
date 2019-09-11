<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>

	<div class="container-fluid">
		<div class="row justify-content-center">
			<div class="col-md-2" style="position:absolute; top:30%; transfrom:translate(0%, -30%);">
			
				<div class="card text-center">
					<div class="card-body">
					
						<h5 class="card-title" style="font-size: 24px">Welcome!</h5>
						<form action="login" method="post">
							<div class="form-group">
					    		<label for="user" style="font-size: 18px">User</label>
					    		<input id="name" name="name" class="form-control" placeholder="Enter user">
					  		</div>		
					  		  	
					  		<div class="form-group">
					   			<label for="password1" style="font-size: 18px">Password</label>
					    		<input type="password" id="name" name="password" class="form-control" placeholder="Password">
			  				</div>
			  					
							<p style="font-size: 12px">${message}</p>
							
			  				<div>
		  						<button type="submit" class="btn btn-dark mt-2" aria-pressed="false">Submit</button>	
		  					</div>
	  					</form>	
	  					
	  					<form action="singup" method="get">
							<div>
					  			<button type="submit"  class="btn btn-dark mt-2" aria-pressed="false">Sing up</button>	
							</div>
						</form>
					</div>
				</div>
				
		  	</div>
	  	</div>
 	</div>

</body>
</html>