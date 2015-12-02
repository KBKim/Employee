<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  session="false" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>

<html lang="ko" data-ng-app="employeeApp">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">
<%@ include file="/WEB-INF/view/common.jspf" %>
<title>ngTouch.jsp</title>

<style type="text/css">
	.swipe-box {
		height: 200px;
		background-color: red;
		border: 1px solid black;
	}

</style>

<script type="text/javascript">
	var deps = ['ngRoute',
	                   'ngAnimate', 
	                   'ngTouch', 
	                   'angular-loading-bar'
	                   ];
	var app = angular.module("employeeApp", deps);

	app.controller("mainController", function($scope, $http) {
		console.log("mainController ... ");
		
		$scope.swipeLeft = function(e) {
			console.log("swiperLeft() ...");
			console.dir(e);
			
			$(e.target).css('border-radius', '0px');
			
			$scope.msg = "ng-swipe-left fired..." ;
		};
		
		$scope.swipeRight = function(e) {
			console.log("swiperRight() ...");
			console.dir(e);
			
			$(e.target).css('border-radius', '50px');
			
			$scope.msg = "ng-swipe-right fired..." ;
		};
		
		/* img test  */
		
		$scope.imgURL = "http://www.placehold.it/400x400";
		
		$scope.imgSwipeLeft = function(e) {
			console.log("imgSwiperLeft() ...");
			console.dir(e);
						
			$scope.imgmsg = "ng-swipe-left fired..." ;
			
			$scope.imgURL = "http://www.placehold.it/400x400/ff0000/0000ff?text=SwiperLeft...";
			
		};
		
		$scope.imgSwipeRight = function(e) {
			console.log("imgSwiperRight() ...");
			console.dir(e);	
			
			$scope.imgmsg = "ng-swipe-right fired..." ;
			
			$scope.imgURL = "http://www.placehold.it/400x400/0000ff/ff0000?text=SwiperRight...";
			
		};
		
		$scope.prevent = function(e) {
			e.preventDefault();
			
		}
		
	// ----------------------------------------------------------------------------------
	
	
		
		var arrCor = [ 
		                      ' http://www.palcehold.it/200x200/0000ff?text=1번칼러',
		                      ' http://www.palcehold.it/200x200/FF5E00?text=2번칼러',
		                      ' http://www.palcehold.it/200x200/FFBB00?text=3번칼러',
		                      ' http://www.palcehold.it/200x200/1DDB16?text=4번칼러',
		                      ' http://www.palcehold.it/200x200/00D8FF?text=5번칼러',
		                      ' http://www.palcehold.it/200x200/0054FF?text=6번칼러',
		                      ' http://www.palcehold.it/200x200/0100FF?text=7번칼러',
		                      ' http://www.palcehold.it/200x200/5F00FF?text=8번칼러',
		                      ' http://www.palcehold.it/200x200/FF00DD?text=9번칼러',
		                      ' http://www.palcehold.it/200x200/FF007F?text=10번칼러',      		
						];			 
		
		
	});
	
	$scope.imgURL = "http://www.placehold.it/200x200";
	
	$scope.imgSwipeLeft = function(e) {
		console.log("imgSwiperLeft() ...");
		console.dir(e);	
		
		$scope.imgmsg = "ng-swipe-left fired..." ;
		
		$scope.imgURL = "http://www.placehold.it/200x200/ff0000/0000ff?text=SwiperLeft...";
		
	};
	
	$scope.imgSwipeRight = function(e) {
		console.log("imgSwiperRight() ...");
		console.dir(e);	
		
		$scope.imgmsg = "ng-swipe-right fired..." ;
		
		$scope.imgURL = "http://www.placehold.it/200x200/0000ff/ff0000?text=SwiperRight...";
		
	};
	

</script>
</head>
<body data-ng-controller="mainController" class="container">
		<div data-ng-swipe-left="swipeLeft($event)"
				data-ng-swipe-right="swipeRight($event)"
				class="swipe-box">		
		</div>		
		<hr>
		<p>{{msg}}</p>
		<hr>
		<img data-ng-swipe-left="imgSwipeLeft($event)"
			    data-ng-swipe-right="imgSwipeRight($event)"
				ondragstart="return false"
				
		        draggable="false" class = "img-responsive" alt="{{imgURL}}" data-ng-src="{{imgURL}}">
		<hr>
		<p>{{imgmsg}}</p>
		<hr>
		
		<img data-ng-swipe-left="imgSwipeLeft($event)"
			    data-ng-swipe-right="imgSwipeRight($event)"
				ondragstart="return false"
				
		        draggable="false" class = "img-responsive"  alt="{{imgURL}}" data-ng-src="{{imgURL}}">
		<hr>
	
		
		
</body>

</html>



