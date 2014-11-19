window.App = angular.module('AnimesClub', ['ngResource'])

window.App.config(['$locationProvider', ($locationProvider) ->
	$locationProvider.html5Mode(true);
])

window.App.config(['$routeProvider', ($routeProvider) ->
	$routeProvider.when("/", { 
		templateUrl: "/lists/watching",
		redirectTo: (current, path, search) ->
        	if(search.goto)
        		return "/" + search.goto
        	else
        		return "/"
    })
	$routeProvider.when("/watching", { templateUrl: "/lists/watching" })
	$routeProvider.when("/completed", { templateUrl: "/lists/completed" })
	$routeProvider.when("/todo", { templateUrl: "/lists/todo" })
	$routeProvider.when("/dropped", { templateUrl: "/lists/dropped" })
	$routeProvider.when("/anime/:id/:name", { templateUrl: "/anime/profile", controller: "Anime" })
])

$(document).on 'page:load', ->
  $('[ng-app]').each ->
    module = $(this).attr('ng-app')
    angular.bootstrap(this, [module])