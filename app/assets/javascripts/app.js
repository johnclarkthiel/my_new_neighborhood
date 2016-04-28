var app = angular.module('newHood', ['ngRoute']);

app.controller('CityController', ['$http', '$scope', '$location', '$rootScope', '$routeParams', '$filter', function($http,$scope,$location,$rootScope, $routeParams, $filter) {
	this.sendCity = function() {
		console.log("DOING STUFF");
		console.log(this.city);
		
		$http.post("/cities/city_search", { city_name: this.city }).then(function(response){
			console.log(response);
		}, function(err){
			console.log(err);
		});

		// $http.get("/update/").then(function(response){
		// 	console.log(response);
		// }, function(err){
		// 	console.log(err);
		// });
	
		this.city = undefined;
	};

}]);