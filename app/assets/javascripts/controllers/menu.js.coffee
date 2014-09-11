App.controller 'MenuController', ['$scope', '$location', ($scope, $location) ->
	$scope.items = [
		{ text: 'Home', url: '/', selected: () -> $location.path() == this.url },
		{ text: 'Trending', url: '/trending', selected: () -> $location.path() == this.url },
		{ text: 'Recomendations', url: '/recomendations', selected: () -> $location.path() == this.url },
		{ text: 'New Releases', url: '/news', badge: 3, selected: () -> $location.path() == this.url },
		{ text: 'Current Season', url: '/airing', hint: 'Airing', selected: () -> $location.path() == this.url },
		{ text: 'People', url: '/people', selected: () -> $location.path() == this.url },
		{ group: 'MY LIST' }
		{ text: 'Currently Watching', url: '/watching', selected: () -> $location.path() == this.url },
		{ text: 'Completed', url: '/completed', selected: () -> $location.path() == this.url },
		{ text: 'Plan to Watch', url: '/todo', selected: () -> $location.path() == this.url },
		{ text: 'Dropped', url: '/dropped', selected: () -> $location.path() == this.url }
	]
]