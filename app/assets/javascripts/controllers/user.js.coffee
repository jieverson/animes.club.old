App.controller 'User', ['$scope', '$routeParams', ($scope, $routeParams) ->
	$scope.username = $routeParams.username;
]