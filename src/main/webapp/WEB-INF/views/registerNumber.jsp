<html lang="en" ng-app="myApp">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Connect to DB for given details</title>
<link href="css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="css/ngDatepicker.css">
<style>
input {
	font-family: Gill Sans, Verdana;
	font-size: 11px;
}

span {
	font-family: Gill Sans, Verdana;
	font-size: 11px;
	color: #fdd3ce;
}
</style>
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
<script src="js/ngDatepicker.min.js"></script>

<script type="text/javascript">
angular.module('itemservice',[]).factory('itemsFactory',function($http,$window){
	return{
		createItem: function(item){
			
			var months = 12 ;
			var date = new Date(item.dateValue) ;
			var selectedDate  = date.getFullYear() +"-"+ ((date.getMonth()+1) < 10 ? '0' : '') + (date.getMonth()+1)+"-"+(date.getDate() < 10 ? '0' : '') + date.getDate() ;
			console.log("selectedDate :: "+ selectedDate) ;
			  
			$http.post('/getdata?dburl='+item.itemId+'&username='+item.itemName+'&password='+item.quantity+'&store='+item.store+'&register='+item.register+'&date='+selectedDate)
			.then(function(data){
				console.log('data : ' +JSON.stringify(data)) ;
				$window.location.href='/details.jsp';
			})
			.catch(function(data){
				alert("not Created")
				console.log(data) ;
				console.log('data :'+angular.fromJson(data)) ;
				console.log('data : '+angular.fromJson(data.response)) ;
				console.log('data : '+data.response) ;
				
			});
		},
	}
});
var app = angular.module("myApp", [ 'itemservice']);
app.controller('submitFormController',function($scope, $http, itemFactory, $filter) {
					//for validating the form before submitting
					$scope.onlyNumbers = /^[1-9]+[0-9]*$/;
					$scope.submitForm = function(isValid,item) {
				    if (isValid) {
					  itemFactory.createItem(item);
				      //alert('Item has been created Successfully');
				      $scope.reset();
				     
				    }
					};
					
					
					$scope.reset = function() {
					      $scope.item = {};
					      $scope.itemForm.$setPristine();
					    }
					
				});
 </script>
</head>
<body>
	<div ng-controller="submitFormController" align="left">
		<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			Connect to DB for given details</h3>
		<form class="form-horizontal" align="center" role="form"
			name="itemForm" ng-submit="submitForm(true,item)"
			novalidate>
			
			<div class="form-group">
				<label for="itemId" class="col-sm-2 control-label">DB URL
					Number </label>
				<div class="col-sm-4">
					{{dburl}}
					<input class="form-control" name="store" placeholder=""
						ng-model="item.store"> <span
						ng-show="(itemForm.itemId.$dirty || !itemForm.itemId.length || isValid) && itemForm.itemId.$error.required"
						value = "05955">
						Store Number is required </span>
				</div>
			</div>
			
			<div class="form-group">
				<label for="itemId" class="col-sm-2 control-label">Store
					Number </label>
				<div class="col-sm-4">
					<input class="form-control" name="store" placeholder=""
						ng-model="item.store"> <span
						ng-show="(itemForm.itemId.$dirty || !itemForm.itemId.length || isValid) && itemForm.itemId.$error.required"
						value = "05955">
						Store Number is required </span>
				</div>
			</div>
			
			<div class="form-group">
				<label for="itemId" class="col-sm-2 control-label">Store
					Number </label>
				<div class="col-sm-4">
					<input class="form-control" name="store" placeholder=""
						ng-model="item.store"> <span
						ng-show="(itemForm.itemId.$dirty || !itemForm.itemId.length || isValid) && itemForm.itemId.$error.required"
						value = "05955">
						Store Number is required </span>
				</div>
			</div>
			<div class="form-group">
				<label for="itemId" class="col-sm-2 control-label">Store
					Number </label>
				<div class="col-sm-4">
					<input class="form-control" name="store" placeholder=""
						ng-model="item.store"> <span
						ng-show="(itemForm.itemId.$dirty || !itemForm.itemId.length || isValid) && itemForm.itemId.$error.required"
						value = "05955">
						Store Number is required </span>
				</div>
			</div>
			<div class="form-group">
				<label for="itemId" class="col-sm-2 control-label">Reg
					Number </label>
				<div class="col-sm-4">
					<input class="form-control" name="reg number"
						placeholder="reg number" ng-model="item.register"> <span
						ng-show="(itemForm.itemId.$dirty || !itemForm.itemId.length || isValid) && itemForm.itemId.$error.required">
						Reg Number is required </span>
				</div>
	</div>
	<div class="form-group">
				<label for="itemId" class="col-sm-2 control-label">Select Date </label>
				<div class="col-sm-4">
					<input  class="form-control" type="date" NAME="dateValue" ng-model="item.dateValue" required/>
				</div>
	</div>
	<div class="controls" class="col-sm-2" style="pull: right;">
		
		<button class="btn btn-success" type="submit">SEND</button>

	</div>
	</form>
	</div>
</body>
</html>