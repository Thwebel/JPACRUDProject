<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<!-- Personal CSS -->
<link href="form.css" rel="stylesheet">
<title>(Pst! The Real Mt Wont Change!)</title>

</head>
<body>
	<div class="container-fluid">
	
	<h3 id="header">${mt.mountainName }</h3>

	<form action="update.do" method="POST">
		<!-- id -->
		<div class="form-group">
		<input type="hidden" name="id" value ="${mt.id }"/>
		</div>
		<!-- mountain name -->
		<div class="form-group">
		<label for="name" class="form-label">Mountain Name</label>
		<input id="name" class="form-control" type="text" name="mountainName" value ="${mt.mountainName }" placeholder="Name" size="45" required/>
		</div>
		<!-- state -->
		<div class="form-group">
		<label for="state" class="form-label">State</label>
		<input id="state" class="form-control" type="text" name="state" value ="${mt.state }" placeholder="State" size="45" required/>
		</div>
		<!-- mountainRange -->
		<div class="form-group">
		<label for="mountainRange" class="form-label">Mountain Range</label>
		<input id="mountainRange" class="form-control" type="text" name="mountainRange" value ="${mt.mountainRange }" placeholder="Mt. Range" size="45" required/>
		</div>
		<!-- vertical -->
		<div class="form-group">
		<label for="vertical" class="form-label">Vertical Feet</label>
		<input id="vertical" class="form-control" type="number" name="vertical" value ="${mt.vertical }" placeholder="Vertical" min=0 max=20000 size="8" required/>
		</div>
		<!-- topElevation -->
		<div class="form-group">
		<label for="topElevation" class="form-label">Summit Elevation</label>
		<input id="topElevation" class="form-control" type="number" name="topElevation" value ="${mt.topElevation }" placeholder="Summit" min=0 max=30000 size="8" required/>
		</div>
		<!-- baseElevation -->
		<div class="form-group">
		<label for="baseElevation" class="form-label">Base Elevation</label>
		<input id="baseElevation" class="form-control" type="number" name="baseElevation" value ="${mt.baseElevation }" placeholder="Base" min=0 max=30000 size="8" required/>
		</div>
		<!-- skiableArea -->
		<div class="form-group">
		<label for="skiableArea" class="form-label">Skiable Acres</label>
		<input id="skiableArea" class="form-control" type="number" name="skiableArea" value ="${mt.skiableArea }" placeholder="skiableArea" min=0 max=15000 size="8" required/>
		</div>
		<!-- Lifts -->
		<div class="form-group">
		<label for="lifts" class="form-label">Number of Lifts</label>
		<input id="lifts" class="form-control" type="number" name="lifts" value ="${mt.lifts }" placeholder="lifts" min=0 max=100 size="8" required/>
		</div>
		<!-- Runs -->
		<div class="form-group">
		<label for="runs" class="form-label">Number of Trails</label>
		<input id="runs" class="form-control" type="number" name="runs" value ="${mt.runs }" placeholder="runs" min=0 max=500 size="8" required/>
		</div>
		<!-- avgSnowFall -->
		<div class="form-group">
		<label for="avgSnowFall" class="form-label">Average Snowfall(inches)</label>
		<input id="avgSnowFall" class="form-control" type="number" name="avgSnowFall" value ="${mt.avgSnowFall }" placeholder="Avg Snow" min=0 max=15000 size="8" required/>
		</div>
		<!-- startYear -->
		<div class="form-group">
		<label for="startYear" class="form-label">Opening Year</label>
		<input id="startYear" class="form-control" type="number" name="startYear" value ="${mt.startYear }" placeholder="Year" min=1900 max=2050 size="8" required/>
		</div>
		<!-- nightSkiing -->
		<div class="form-check">
		<h6>Is there night skiing?</h6>
		<c:choose>
			<c:when test="${mt.nightSkiing }">
				<input id="nightSkiing" class="form-check-input" type="radio" name="nightSkiing" value ="true" checked required/>
				<label for="nightSkiing" class="form-check-label">Night Shred Available</label>
			</c:when>
			<c:otherwise>
				<input id="nightSkiing" class="form-check-input" type="radio" name="nightSkiing" value ="true" required/>
				<label for="nightSkiing" class="form-check-label">Night Shred Available</label>
			</c:otherwise>
		</c:choose>
		</div>
		<div class="form-check">
		<c:choose>
			<c:when test="${!mt.nightSkiing }">
				<input id="nightSkiingNo" class="form-check-input" type="radio" name="nightSkiing" value ="false" checked required/>
				<label for="nightSkiingNo" class="form-check-label">Nope</label>
			</c:when>
			<c:otherwise>
				<input id="nightSkiingNo" class="form-check-input" type="radio" name="nightSkiing" value ="false" required/>
				<label for="nightSkiingNo" class="form-check-label">Nope</label>
			</c:otherwise>
		</c:choose>
		</div>
		<br>
		<!-- haveShredded -->
		<div class="form-check">
		<h6>Have you shredded here?</h6>
		<c:choose>
			<c:when test="${mt.haveShredded }">
				<input id="haveShredded" class="form-check-input" type="radio" name="haveShredded" value ="true" checked required/>
				<label for="haveShredded" class="form-check-label">yes</label>
			</c:when>
			<c:otherwise>
				<input id="haveShredded" class="form-check-input" type="radio" name="haveShredded" value ="true" required/>
				<label for="haveShredded" class="form-check-label">yes</label>
			</c:otherwise>
		</c:choose>
		</div>
		<div class="form-check">
		<c:choose>
			<c:when test="${!mt.haveShredded }">
				<input id="haveShreddedNo" class="form-check-input" type="radio" name="haveShredded" value ="false" checked required/>
				<label for="haveShreddedNo" class="form-check-label">Haven't Sent it</label>
			</c:when>
			<c:otherwise>
				<input id="haveShreddedNo" class="form-check-input" type="radio" name="haveShredded" value ="false" required/>
				<label for="haveShreddedNo" class="form-check-label">Haven't Sent it</label>
			</c:otherwise>
		</c:choose>
		</div>
		<br>
		<!-- difficulty -->
		<div class="form-group">
		<label for="difficulty" class="form-label">The Majority of Runs are:</label>
		<select name="difficulty" id="difficulty" class="form-control">
			<c:choose> 
				<c:when test="${mt.difficulty.equals(difficulty[0])}">
					<option value="${difficulty[0] }" selected>Expert</option>
				</c:when>
				<c:otherwise>
					<option value="${difficulty[0] }">Expert</option>
				</c:otherwise>
			</c:choose>
			<c:choose> 
				<c:when test="${mt.difficulty.equals(difficulty[1])}">
					<option value="${difficulty[1] }" selected>Advanced</option>
				</c:when>
				<c:otherwise>
					<option value="${difficulty[1] }">Advanced</option>
				</c:otherwise>
			</c:choose>
			<c:choose> 
				<c:when test="${mt.difficulty.equals(difficulty[2])}">
					<option value="${difficulty[2] }" selected>Intermediate</option>
				</c:when>
				<c:otherwise>
					<option value="${difficulty[2] }">Intermediate</option>
				</c:otherwise>
			</c:choose>
			<c:choose> 
				<c:when test="${mt.difficulty.equals(difficulty[3])}">
					<option value="${difficulty[3] }" selected>Beginner</option>
				</c:when>
				<c:otherwise>
					<option value="${difficulty[3] }">Beginner</option>
				</c:otherwise>
			</c:choose>
		</select>
		</div>
		
		<!-- personalLog -->
		<div class="form-group">
		<label for="personalLog" class="form-label">Personal Log</label>
		<textarea id="personalLog" class="form-control" name="personalLog" rows="5" cols="50" value="${mt.personalLog }" placeholder="Enter Experience Here..."></textarea>
		</div>
		
		<!-- Update btn -->
		<input class="btn btn-primary" type="submit" value="Update">
	</form>
	</div>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>
</body>
</html>
