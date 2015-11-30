<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  session="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>

<html lang="ko" data-ng-app="employeeApp">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">
<title>angular.jsp</title>


<%@ include file="/WEB-INF/view/common.jspf" %>      <%-- 처리된 결과 --%>

<style type="text/css">
		.red {
				background-color : red;
				color: yellow;
		}

</style>


<script type="text/javascript">
	 var app = angular.module("employeeApp", [])   <%-- module--%>
	 app.controller("examController", function($scope, $http) {  
	                                          <%-- $(특별변수표시)scope DI, 모델&뷰바인딩 --%>
		 $scope.title="Angular 기본구조연습";             <%--모델에서뷰로반영--%>
		 $scope.titleClick = function() {
				$scope.title += "+"; 
		 };
		 
// 		 $scope.name = "홍길동";

		$scope.depts = [                                                         <%--배열요소, 배열이면서객체--%>
		        {deptno : 10,  dname : '총무부1',  loc : 'seoul1'},    <%--자바스크립트객체--%>
		        {deptno : 20,  dname : '총무부2',  loc : 'seoul2'},
		        {deptno : 30,  dname : '총무부3',  loc : 'seoul3'},
		        {deptno : 40,  dname : '총무부4',  loc : 'seoul4'},
		        {deptno : 50,  dname : '총무부5',  loc : 'seoul5'}
		 ];        
		 
		$scope.deleteDept = function(index) {
				var id = $scope.depts[index].deptno;
				alert("id = " + id);
				
				$scope.depts.splice(index, 1);
		};
		
		$scope.imgs = [
					{alt : '100', src : 'http://www.placehold.it/100x100/ff0000/0000ff?text=cat'},      
					{alt : '200', src : 'http://www.placehold.it/200x200/00ff00/0000ff?text=cat1'},  
					{alt : '300', src : 'http://www.placehold.it/300x300/0000ff/ff00ff?text=dog'},  
					{alt : '400', src : 'http://www.placehold.it/400x400/ff00ff/0000ff?text=dog1'},  
					{alt : '500', src : 'http://www.placehold.it/500x500/ffff00/0000ff?text=zebra'}
		];
		
	 });
	 
</script>


</head>
<body data-ng-controller="examController">  <%--담당하는 view 영역, 하나일때는 body에 넣는다 --%>
<h1 data-ng-click="titleClick()">{{title}}</h1>          <%--바인딩(""Expression,모델에있는변수 --%>
<hr>
<p>3+4={{3+4}}</p>
<hr>
<input type="text"  data-ng-model="name" />  <%--name에 역으로 바인딩--%>
<h3>{{name}}</h3>
<hr>

<div class="table-responsive">
<table class="table table-codensed ">
		<thead>
				<tr><th>No</th><th>deptno</th><th>dname</th><th>loc</th><th> </th></tr>
		</thead>
		<tbody>
		<tr data-ng-repeat="dept in depts">   <!--모델에서작성-->
				<td>{{$index}}</td>
				<td>{{dept.deptno}}</td>
				<td>{{dept.dname}}</td>
				<td>{{dept.loc}}</td>
				<td><a href="#" class="btn btn-primary" data-ng-click="deleteDept($index)">삭제</a></td>
		</tr>
</table>
</div>



<hr>
<div class="table-responsive">
<table class="table table-codensed ">
		<thead>
				<tr><th>deptno</th><th>dname</th><th>loc</th></tr>
		</thead>
		<tbody>
				<td class="red">{{depts[0].deptno}}</td>
				<td>{{depts[0].dname}}</td>
				<td>{{depts[0].loc}}</td>
		</tbody>
		<tbody>
				<td>{{depts[1].deptno}}</td>
				<td>{{depts[1].dname}}</td>
				<td>{{depts[1].loc}}</td>
		</tbody>
		<tbody>
				<td>{{depts[2].deptno}}</td>
				<td>{{depts[2].dname}}</td>
				<td>{{depts[2].loc}}</td>
		</tbody>
		<tbody>
				<td>{{depts[3].deptno}}</td>
				<td>{{depts[3].dname}}</td>
				<td>{{depts[3].loc}}</td>
		</tbody>
		<tbody>
				<td>{{depts[4].deptno}}</td>
				<td>{{depts[4].dname}}</td>
				<td>{{depts[4].loc}}</td>
		</tbody>

</table>
</div>

<ul class="list-group">
		<li class="list-group-item" data-ng-repeat="img in imgs">
				<h3>{{img.src}}</h3>
				<img class="img-circle img-responsive" alt="{{img.alt}}" src="{{img.src}}">
		</li>

</ul>


</body>
</html>











