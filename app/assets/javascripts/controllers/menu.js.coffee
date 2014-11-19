App.controller 'MenuController', ['$scope', '$location', ($scope, $location) ->
	$scope.items = [
		{ text: 'Home', url: '/', icon: 'fa-home', selected: () -> $location.path() == this.url },
		{ text: 'Trending', url: '/trending', icon: 'fa-comments', selected: () -> $location.path() == this.url },
		{ text: 'Recomendations', url: '/recomendations', icon: 'fa-heart', selected: () -> $location.path() == this.url },
		{ text: 'New Releases', url: '/news', icon: 'fa-newspaper-o', badge: 3, selected: () -> $location.path() == this.url },
		{ text: 'Current Season', url: '/airing', icon: 'fa-desktop', hint: 'Airing', selected: () -> $location.path() == this.url },
		{ text: 'People', url: '/people', icon: 'fa-group', selected: () -> $location.path() == this.url },
		{ group: 'MY LIST' }
		{ text: 'Currently Watching', url: '/watching', icon: 'fa-eye', selected: () -> $location.path() == this.url },
		{ text: 'Completed', url: '/completed', icon: 'fa-check', selected: () -> $location.path() == this.url },
		{ text: 'Plan to Watch', url: '/todo', icon: 'fa-calendar', selected: () -> $location.path() == this.url },
		{ text: 'Dropped', url: '/dropped', icon: 'fa-trash', selected: () -> $location.path() == this.url }
	]
]