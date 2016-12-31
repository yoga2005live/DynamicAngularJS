var app = angular.module("demoApp", []);

/*
 * app.controller("demoCtrl", function($scope) { $scope.message =
 * "AngularJStest"; });
 */

/* var app = angular.module('myApp', []); */

app.controller("demoCtrl", function($scope, $http) {
	$scope.getDataFromServer = function() {
		$http({
			method : 'GET',
			url : 'javaAngularJS'
		}).then(successCallback, errorCallback);
		function successCallback(data, status, headers, config) {
			$scope.person = data;
		}
		function errorCallback(data, status, headers, config) {
			// called asynchronously if an error occurs
			// or server returns response with an error status.
		}
	};

});

app.controller("MainCtrl", function($scope, $timeout, $http) {
	$scope.data = {
		progress : 0
	};
	(function progress() {
		if ($scope.data.progress == 100) {
			$scope.data.progress = -1;
		}
		if ($scope.data.progress < 100) {
			$timeout(function() {
				$scope.data.progress += 1;
				progress();
			}, 300);
		}
	})();
});

/*
 * app.controller("MainCtrl", [ "$scope", "$timeout", function($scope, $timeout) {
 * $scope.data = { progress : 0 }; (function progress() { if
 * ($scope.data.progress < 100) { $timeout(function() { $scope.data.progress +=
 * 1; progress(); }, 200); } })(); } ]);
 */
