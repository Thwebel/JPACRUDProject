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
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">

<title>(Pst! The Real Mt Wont Change!)</title>

</head>
<body>

	<h3>${mt.mountainName }</h3>

	<form action="update.do" method="POST">
		
		<!-- id -->
		<input type="hidden" name="id" value ="${mt.id }"/>
		
		<!-- mountain name -->
		<label for="name">Mountain Name</label>
		<input id="name" type="text" name="mountainName" value ="${mt.mountainName }" placeholder="Name" size="45" required/>
		
		<!-- state -->
		<label for="state">State</label>
		<input id="state" type="text" name="state" value ="${mt.state }" placeholder="State" size="45" required/>
		
		<!-- mountainRange -->
		<label for="mountainRange">State</label>
		<input id="mountainRange" type="text" name="mountainRange" value ="${mt.mountainRange }" placeholder="Mt. Range" size="45" required/>
		
		<!-- vertical -->
		<label for="vertical">Vertical Feet</label>
		<input id="vertical" type="number" name="vertical" value ="${mt.vertical }" placeholder="Vertical" min=0 max=20000 size="8" required/>
		
		<!-- topElevation -->
		<label for="topElevation">Summit Elevation</label>
		<input id="topElevation" type="number" name="topElevation" value ="${mt.topElevation }" placeholder="Summit" min=0 max=30000 size="8" required/>
		
		<!-- baseElevation -->
		<label for="baseElevation">Base Elevation</label>
		<input id="baseElevation" type="number" name="baseElevation" value ="${mt.baseElevation }" placeholder="Base" min=0 max=30000 size="8" required/>
		
		<!-- skiableArea -->
		<label for="skiableArea">Skiable Acres</label>
		<input id="skiableArea" type="number" name="skiableArea" value ="${mt.skiableArea }" placeholder="skiableArea" min=0 max=15000 size="8" required/>
		
		<!-- Lifts -->
		<label for="lifts">Number of Lifts</label>
		<input id="lifts" type="number" name="lifts" value ="${mt.lifts }" placeholder="lifts" min=0 max=100 size="8" required/>
		
		<!-- Runs -->
		<label for="runs">Number of Trails</label>
		<input id="runs" type="number" name="runs" value ="${mt.runs }" placeholder="runs" min=0 max=500 size="8" required/>
		
		<!-- avgSnowFall -->
		<label for="avgSnowFall">Average Snowfall(inches)</label>
		<input id="avgSnowFall" type="number" name="avgSnowFall" value ="${mt.avgSnowFall }" placeholder="Avg Snow" min=0 max=15000 size="8" required/>
		
		<!-- startYear -->
		<label for="startYear">Opening Year</label>
		<input id="startYear" type="number" name="startYear" value ="${mt.startYear }" placeholder="Year" min=1900 max=2050 size="8" required/>
		
		<!-- nightSkiing -->
		<c:choose>
			<c:when test="${mt.nightSkiing }">
				<input id="nightSkiing" type="radio" name="nightSkiing" value ="true" checked required/>
				<label for="nightSkiing">Night Shred Available</label>
			</c:when>
			<c:otherwise>
				<input id="nightSkiing" type="radio" name="nightSkiing" value ="true" required/>
				<label for="nightSkiing">Night Shred Available</label>
			</c:otherwise>
		</c:choose>
		<c:choose>
			<c:when test="${!mt.nightSkiing }">
				<input id="nightSkiingNo" type="radio" name="nightSkiing" value ="false" checked required/>
				<label for="nightSkiingNo">No Shredding The Night</label>
			</c:when>
			<c:otherwise>
				<input id="nightSkiingNo" type="radio" name="nightSkiing" value ="false" required/>
				<label for="nightSkiingNo">No Shredding The Night</label>
			</c:otherwise>
		</c:choose>
		
		<!-- haveShredded -->
		<c:choose>
			<c:when test="${mt.haveShredded }">
				<input id="haveShredded" type="radio" name="haveShredded" value ="true" checked required/>
				<label for="haveShredded">Have You Skied Here?</label>
			</c:when>
			<c:otherwise>
				<input id="haveShredded" type="radio" name="haveShredded" value ="true" required/>
				<label for="haveShredded">Have You Skied Here?</label>
			</c:otherwise>
		</c:choose>
		<c:choose>
			<c:when test="${!mt.haveShredded }">
				<input id="haveShreddedNo" type="radio" name="nightSkiing" value ="false" checked required/>
				<label for="haveShreddedNo">Yet To Send</label>
			</c:when>
			<c:otherwise>
				<input id="haveShreddedNo" type="radio" name="nightSkiing" value ="false" required/>
				<label for="haveShreddedNo">Yet To Send</label>
			</c:otherwise>
		</c:choose>
		
		<!-- difficulty -->
		<label for="difficulty">Most Abundant Difficulty Type</label>
		<select name="difficulty" id="difficulty">
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
		
		<!-- personalLog -->
		<label for="personalLog">Personal Log</label>
		<textarea id="personalLog" name="personalLog" rows="5" cols="50" value="${mt.personalLog }" placeholder="Enter Experience Here..."></textarea>
		
		<!-- Update btn -->
		<input class="btn btn-primary" type="submit" value="Update">
	</form>

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
