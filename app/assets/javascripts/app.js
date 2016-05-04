var app = angular.module('newHood', ['ngRoute']);

app.controller('CityController', ['$http', function($http) {
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
			var new_controller = controller;
			$http.post("/cities/zillow_search", { state : response.data.state}).then(function(response){
				console.log(response.data.response);
				controller.lastweek_15 = response.data.response.lastWeek.fifteenYearFixed;
				controller.lastweek_51 = response.data.response.lastWeek.fiveOneARM;
				controller.lastweek_30 = response.data.response.lastWeek.thirtyYearFixed;
				controller.today_15 = response.data.response.today.fifteenYearFixed;
				controller.today_51 = response.data.response.today.fiveOneARM;
				controller.today_30 = response.data.response.today.thirtyYearFixed;
			})
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