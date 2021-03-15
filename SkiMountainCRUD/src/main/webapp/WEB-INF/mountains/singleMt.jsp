<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<!-- single display css -->
	<link href="singleDisplay.css" rel="stylesheet">
    <title>${mt.mountainName }</title>
  </head>
  <body>
    <!-- Enclosing Choose -->
    <c:choose>
    
    <%-- When No Mountain Found --%>
   		<c:when test="${empty mt or mt == null}"> 
    		No Mountain Found with that Id
    	</c:when>
    	
    <%-- Otherwise Display Mountain --%>
    <c:otherwise>
    
   	<section class="info" id="info">
   	<div class="max-width">
		<h3>${mt.mountainName },</h3><h5>Summit Elevation: ${mt.topElevation }, Base Elevation ${mt.baseElevation }</h5>
		<div class="info-text">
		 Nestled in the ${mt.mountainRange } within ${mt.state}, this mountain boasts an impressive ${mt.vertical} vertical feet. <br>
		 ${mt.mountainName}'s ${mt.skiableArea} arces of skiable terrain is kept fluffy during the winter months with an average snow fall of ${mt.avgSnowFall }inches per season. <br>
		 Skiers and riders have been enjoying this sleek slopes since ${mt.startYear}, and with ${mt.lifts} lifts and ${mt.runs } trails it is sure the gift of good snow will keep on giving.<br>
		</div>
	
	
	
	<a class="btn btn-primary" href="updateForm.do?id=${mt.id }" role="button">Update</a>
	<br>
	<form action="delete.do" method="GET">
		<input type="hidden" name="id" value="${mt.id}"/> 
		<input type="submit" value="Delete" onclick="return confirm('Are you sure? This CANNOT be undone.'); "/>
	</form>
	</div>
	</section>
	
	<%-- End Enclosing Otherwise --%>
	</c:otherwise>
	<%-- End Enclosing Choose --%>
	</c:choose>
	
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
  </body>
</html>   
