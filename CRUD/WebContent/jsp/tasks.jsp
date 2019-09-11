<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="br.edu.gustavo.model.WORKOUTS"%>
<%@ page import="br.edu.gustavo.model.DAO"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%!
WORKOUTS tasks;
String[] workoutsM;
String[] workoutsT;
String[] workoutsW;
String[] workoutsTH;
String[] workoutsF;
String[] workoutsS;
String[] workoutsSU;
String name;
int maxUsers;
int tM;
int tT;
int tW;
int tTH;
int tF;
int tS;
int tSU;
%>

<%!
public String[] getEach(String day)
{
	String[] workouts = day.split(" _ ");
	return workouts;
}
%>

<%
tM = 0;
tT = 0;
tW = 0;
tTH = 0;
tF = 0;
tS = 0;
tSU = 0;
Object user = request.getAttribute("user");
DAO dao = new DAO();
maxUsers = dao.getMaxUsers();
String name = user.toString();
WORKOUTS tasks = dao.getTasks(name);
workoutsM = getEach(tasks.getMonday());
workoutsT = getEach(tasks.getTuesday());
workoutsW = getEach(tasks.getWednesday());
workoutsTH = getEach(tasks.getThursday());
workoutsF = getEach(tasks.getFriday());
workoutsS = getEach(tasks.getSaturday());
workoutsSU = getEach(tasks.getSunday());
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
  <div class="row justify-content-center mt-5">
  
    <!-- monday -->
    
    <div class="col-md-2  ml-2">
		<div class="card">
			<div class="card-body">
				<h5 class="card-title text-center">Monday</h5>
			</div>
				<ul class="list-group list-group-flush">
					<%for (String workout: workoutsM) {%>
						<%if (!workout.equals("")) { tM ++;%>
							<li class="list-group-item"><a href="jsp/hm.jsp?user=<%=name %>&day=monday&workout=<%=workout %>&list=<%=String.join(" _ ", workoutsM) %>" style="color:black"><%=workout %></a></li>
						<%} %>
					<% } %>
				</ul>
			<div class="card-body">
				<a href="add?user=<%=name%>&day=monday&list=<%=String.join(" _ ", workoutsM)%>" style="color:green">Add</a>
				<p> <%=tM %> workouts on total</p>
			</div>
		</div>
    </div>
    
    <!-- tuesday -->
    
    <div class="col-md-2">
      	<div class="card">
			<div class="card-body">
				<h5 class="card-title text-center">Tuesday</h5>

			</div>
			<ul class="list-group list-group-flush">
				<%for (String workout: workoutsT) {%>
					<%if (!workout.equals("")) { tT ++;%>
						<li class="list-group-item"><a href="jsp/hm.jsp?user=<%=name %>&day=tuesday&workout=<%=workout %>&list=<%=String.join(" _ ", workoutsT) %>" style="color:black"><%=workout %></a></li>
					<%} %>
				<% } %>
			</ul>
			<div class="card-body">
				<a href="add?user=<%=name%>&day=tuesday&list=<%=String.join(" _ ", workoutsT)%>" style="color:green">Add</a>
				<p> <%=tT %> workouts on total</p>
			</div>
		</div>
    </div>
    
    <!-- wednesday -->
    
    <div class="col-md-2">
      	<div class="card">
			<div class="card-body">
				<h5 class="card-title text-center">Wednesday</h5>

			</div>
			<ul class="list-group list-group-flush">
				<%for (String workout: workoutsW) { %>
					<%if (!workout.equals("")) { tW ++;%>
						<li class="list-group-item"><a href="jsp/hm.jsp?user=<%=name %>&day=wednesday&workout=<%=workout %>&list=<%=String.join(" _ ", workoutsW) %>" style="color:black"><%=workout %></a></li>
					<%} %>
				<% } %>
			</ul>
			<div class="card-body">
				<a href="add?user=<%=name%>&day=wednesday&list=<%=String.join(" _ ", workoutsW)%>" style="color:green">Add</a>
				<p> <%=tW %> workouts on total</p>
			</div>
		</div>
    </div>
    
    <!-- thursday -->
    
    <div class="col-md-2">
		<div class="card">
			<div class="card-body">
				<h5 class="card-title text-center">Thursday</h5>

			</div>
			<ul class="list-group list-group-flush">
				<%for (String workout: workoutsTH) {%>
					<%if (!workout.equals("")) { tTH ++;%>
						<li class="list-group-item"><a href="jsp/hm.jsp?user=<%=name %>&day=thursday&workout=<%=workout %>&list=<%=String.join(" _ ", workoutsTH) %>" style="color:black"><%=workout %></a></li>
					<%} %>
				<% } %>
			</ul>
			<div class="card-body">
				<a href="add?user=<%=name%>&day=thursday&list=<%=String.join(" _ ", workoutsTH)%>" style="color:green">Add</a>
				<p> <%=tTH %> workouts on total</p>
			</div>
		</div>
    </div>
    
    <!-- friday -->
    
    <div class="col-md-2">
		<div class="card">
			<div class="card-body">
				<h5 class="card-title text-center">Friday</h5>

			</div>
			<ul class="list-group list-group-flush">
				<%for (String workout: workoutsF) {%>
					<%if (!workout.equals("")) { tF ++;%>
						<li class="list-group-item"><a href="jsp/hm.jsp?user=<%=name %>&day=friday&workout=<%=workout %>&list=<%=String.join(" _ ", workoutsF) %>" style="color:black"><%=workout %></a></li>
					<%} %>
				<% } %>
			</ul>
			<div class="card-body">
				<a href="add?user=<%=name%>&day=friday&list=<%=String.join(" _ ", workoutsF)%>" style="color:green">Add</a>
				<p> <%=tF %> workouts on total</p>
			</div>
		</div>
    </div>
    
    <!-- saturday -->
    
    <div class="col-md-2" style="margin-top:5%;">
		<div class="card">
			<div class="card-body">
				<h5 class="card-title text-center">Saturday</h5>

			</div>
			<ul class="list-group list-group-flush">
				<%for (String workout: workoutsS) {%>
					<%if (!workout.equals("")) { tS ++;%>
						<li class="list-group-item"><a href="jsp/hm.jsp?user=<%=name %>&day=saturday&workout=<%=workout %>&list=<%=String.join(" _ ", workoutsS) %>" style="color:black"><%=workout %></a></li>
					<%} %>
				<% } %>
			</ul>
			<div class="card-body">
				<a href="add?user=<%=name%>&day=saturday&list=<%=String.join(" _ ", workoutsS)%>" style="color:green">Add</a>
				<p> <%=tS %> workouts on total</p>
			</div>
		</div>
    </div>
    
    <!-- sunday -->
    
    <div class="col-md-2" style="margin-top:5%;">
		<div class="card">
			<div class="card-body">
				<h5 class="card-title text-center">Sunday</h5>

			</div>
			<ul class="list-group list-group-flush">
				<%for (String workout: workoutsSU) {%>
					<%if (!workout.equals("")) { tSU ++;%>
						<li class="list-group-item"><a href="jsp/hm.jsp?user=<%=name %>&day=sunday&workout=<%=workout %>&list=<%=String.join(" _ ", workoutsSU) %>" style="color:black"><%=workout %></a></li>
					<%} %>
				<% } %>
			</ul>
			<div class="card-body">
				<a href="add?user=<%=name%>&day=sunday&list=<%=String.join(" _ ", workoutsSU)%>" style="color:green">Add</a>
				<p> <%=tSU %> workouts on total</p>
			</div>
		</div>
    </div>
    
  </div>
</div>

<ul class="nav nav-pills mb-3 mt-5 justify-content-center" id="pills-tab" role="tablist">
  <li class="nav-item">
    <a class="nav-link active btn btn-dark m-1" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true">Active users</a>
  </li>
  <li class="nav-item">
    <a class="nav-link btn btn-dark m-1" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false">Workout total</a>
  </li>
  <li class="nav-item">
    <a class="nav-link btn btn-dark m-1" id="pills-contact-tab" data-toggle="pill" href="#pills-contact" role="tab" aria-controls="pills-contact" aria-selected="false">Help</a>
  </li>
</ul>
<div class="tab-content text-center mt-3" id="pills-tabContent">
  <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab"><%=maxUsers %> is the number of total users using our website.</div>
  <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab"><%=tM+tT+tW+tTH+tF+tS+tSU %> exercises per week.</div>
  <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">Click on the workout to edit or delete it. You can add as many things as you like in your routine.</div>
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