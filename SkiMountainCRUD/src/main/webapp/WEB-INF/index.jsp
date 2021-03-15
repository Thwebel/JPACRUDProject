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
   	<!-- personal CSS -->
	<link href="index.css" rel="stylesheet">  
    <title>Shred the Gnar</title>
  </head>
  <body>
  
  
 <section class="home" id="home">
 	<div class="max-width">
		<div class="home-content">
		<div class="text-1">
			My name is
		</div>
		<div class="text-2">
			Thomas Webel
		</div>
		<div class="text-3">
		 	and I'm the best skier on the mountain
		</div>
		<!-- Display All -->
			<a href="getAllMt.do">Display All Mountains in DB</a>
			<br>
		<!-- Add A Mountain -->
			<a href="createForm.do">Add Mountain</a>
			<div>
    	<!-- Find By Id -->
        	<form action="findById.do" >
				<input type = "submit" value="Search Id"/>
				<input type = "number" min=0 id="getId" name="id" placeholder="Id"  required/>
			</form>
			</div>
        </div>
	</div>
	</section>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
  </body>
</html>   
