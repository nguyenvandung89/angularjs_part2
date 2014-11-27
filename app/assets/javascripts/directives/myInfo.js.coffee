angular.module("todoApp").controller("myInfoController", ["$scope", ($scope) ->
  $scope.my =
    title: "Author Info"
    address: "Framgia"
]).directive "myInfo", ->
  template: "{{my.title}} {{my.address}}"