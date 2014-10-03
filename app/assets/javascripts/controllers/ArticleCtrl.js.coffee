angular.module('todoApp').controller "ArticleCtrl", ($scope, Article) ->
  $scope.getArticles = () ->
    Article.query().$promise.then (articles) ->
      $scope.articles = articles
  $scope.edit = (article) ->
    $scope.article = Article.get({id: article.id})
  $scope.editArticle = (article) ->
    if article.id?
      Article.update(article)
      $scope.article = Article.query()
  $scope.save = () ->
    if $scope.article.id?
      Article.update($scope.article)
      $scope.article = Article.query()
    else
      Article.save($scope.article)
    $scope.getArticles()
    $scope.article = {}
  $scope.delete = (article) ->
    result = confirm "Are you sure you want to remove this list?" 
    if result
      article.$delete ->
        $scope.articles = Article.query()