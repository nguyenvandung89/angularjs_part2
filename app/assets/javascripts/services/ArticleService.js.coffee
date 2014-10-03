angular.module('todoApp').factory 'Article', ['$resource', ($resource) ->
  $resource("/api/articles/:id", {id: "@id"}, {update: {method: "PUT", isArray: true}})
]
