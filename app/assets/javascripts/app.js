var app = angular.module('newHood', ['ngRoute']);

app.controller('CityController',['$scope', function($scope){
	this.doStuff = function() {
		console.log("DOING STUFF");
	}

}]);