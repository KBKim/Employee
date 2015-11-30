<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>

<html lang="ko" data-ng-app="employeeApp">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">

<%@ include file="/WEB-INF/view/common.jspf" %>

<title>bootstrap.jsp</title>

<style type="text/css">
	img { width: 100%; height: 100px; }
	
</style>

<script type="text/javascript">
		var app = angular.module('employeeApp', []);
		app.controller('examContoller', function($scope) {
			
		});
</script>


</head>
<body data-ng-controller="examCotroller">
<div  class="container">
		<div class="row" >				
				<div class="col-xs-3">      <!-- md는 tablet사이즈 -->
						<img alt="xxx" src="http://www.placehold.it/100x100/ff0000/0000ff?text=25%">				
				</div>
				<div class="col-xs-3">      
						<img alt="xxx" src="http://www.placehold.it/100x100/ff0000/0000ff?text=25%">				
				</div>
				<div class="col-xs-3">      
						<img alt="xxx" src="http://www.placehold.it/100x100/ff0000/0000ff?text=25%">				
				</div>
				<div class="col-xs-3">
						<img alt="xxx" src="http://www.placehold.it/100x100/ff00ff/0000ff?text=25%">
				</div>
		</div>
		<div class="row">				
				<div class="col-sm-12">
						<img alt="xxx" src="http://www.placehold.it/100x100/00ffff/0000ff?text=100%">
				</div>
		</div>

</div>
<div  class="container-fluid" >
		<div class="row">				
				<div class="col-sm-4">      <!-- md는 tablet사이즈 -->
						<img alt="xxx" src="http://www.placehold.it/100x100/ff0000/0000ff?text=1/3">				
				</div>
				<div class="col-sm-4">
						<img alt="xxx" src="http://www.placehold.it/100x100/ff00ff/0000ff?text=1/3">
				</div>
				<div class="col-sm-4">
						<img alt="xxx" src="http://www.placehold.it/100x100/ff00ff/0000ff?text=1/3">
				</div>
		</div>
		<div class="row">				
				<div class="col-sm-12">
						<img alt="xxx" src="http://www.placehold.it/100x100/00ffff/0000ff?text=100%">
				</div>
		</div>

</div>
</div>


</body>
</html>






