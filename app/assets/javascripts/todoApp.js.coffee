todoApp = angular.module('todoApp', ['ngResource', 'ngRoute', 'mk.editablespan'])

todoApp.config ($httpProvider) ->
  authToken = $("meta[name=\"csrf-token\"]").attr("content")
  $httpProvider.defaults.headers.common["X-CSRF-TOKEN"] = authToken

todoApp.config ($routeProvider, $locationProvider) ->
  $routeProvider.when '/articles', templateUrl: '/articles/index.html', controller: 'ArticleCtrl'
  $locationProvider.html5Mode true

$(document).on 'page:load', ->
  $('[ng-app]').each ->
    module = $(this).attr('ng-app')
    angular.bootstrap(this, [module])