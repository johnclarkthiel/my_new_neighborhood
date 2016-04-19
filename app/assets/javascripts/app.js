var app = angular.module('newHood', ['ngRoute']);

app.controller('CityController', ['$http', '$scope', '$location', '$rootScope', '$routeParams', '$filter', function($http,$scope,$location,$rootScope, $routeParams, $filter) {
	this.sendCity = function() {
		console.log("DOING STUFF");
		console.log(this.city);
	}

}]);