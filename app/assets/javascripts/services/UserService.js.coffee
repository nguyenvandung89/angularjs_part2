angular.module('todoApp').factory 'User', ['$resource', ($resource) ->
  $resource("/api/users/:id", {id: "@id"}, {update: {method: "PUT", isArray: true}})
]
