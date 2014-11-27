angular.module('todoApp').controller "UserCtrl", ($scope, User) ->
  $scope.getUsers = () ->
    User.query().$promise.then (users) ->
      $scope.users = users
  $scope.edit = (user) ->
    $scope.user = User.get({id: user.id})
  $scope.editUser = (user) ->
    if user.id?
      User.update(user)
      $scope.user = User.query()
  $scope.save = () ->
    if $scope.user.id?
      User.update($scope.user)
      $scope.user = User.query()
    else
      User.save($scope.user)
    $scope.getUsers()
    $scope.user = {}
  $scope.delete = (user) ->
    result = confirm "Are you sure you want to remove this list?" 
    if result
      user.$delete ->
        $scope.users = User.query()
