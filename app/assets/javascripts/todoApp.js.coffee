todoApp = angular.module('todoApp', ['ngResource', 'ngRoute', 'mk.editablespan'])

todoApp.config ($httpProvider) ->
  authToken = $("meta[name=\"csrf-token\"]").attr("content")
  $httpProvider.defaults.headers.common["X-CSRF-TOKEN"] = authToken

todoApp.config ($routeProvider, $locationProvider) ->
  $routeProvider
    .when '/articles', templateUrl: '/articles/index.html', controller: 'ArticleCtrl'

    .when '/users', templateUrl: '/users/index.html', controller: 'UserCtrl'

    .when '/users/new', templateUrl: '/assets/user-create.html', controller: 'CreateUserController'

    .when '/users/:id/edit', templateUrl: '/assets/templates/user-edit.html', controller: 'EditUserController'

    .otherwise redirectTo: '/'
  $locationProvider.html5Mode true

$(document).on 'page:load', ->
  $('[ng-app]').each ->
    module = $(this).attr('ng-app')
    angular.bootstrap(this, [module])