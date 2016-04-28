var app = angular.module('newHood', ['ngRoute']);

app.controller('CityController', ['$http', '$scope', '$location', '$rootScope', '$routeParams', '$filter', function($http,$scope,$location,$rootScope, $routeParams, $filter) {
	this.sendCity = function() {
		console.log("DOING STUFF");
		console.log(this.selection);
		var controller = this;
		
		$http.post("/cities/city_search", { city_name: this.selection }).then(function(response){
			console.log(response);
			controller.city_name = response.data.city_name;
			controller.jobs = response.data.jobs;
			controller.population = response.data.population;
			controller.top_employer = response.data.top_employer;
			controller.zip = response.data.zip;
		}, function(err){
			console.log(err);
		});

		// $http.get("/update/").then(function(response){
		// 	console.log(response);
		// }, function(err){
		// 	console.log(err);
		// });
	
		
	};

}]);