angular.module("todoApp").controller("blockFormController", ["$scope", ($scope) ->
]).directive "blockForm", ->
  restrict: "E"
  template: '<br /><div><input type="text" value="Nguyen Van Dung" size="30" readonly /></div>' +
            '<div><input type="text" value="Bac Hong - Dong Anh - Ha Noi" size="30" readonly /></div>' +
            '<div><input type="text" value="ngvandung2010@gmail.com" size="30" readonly /></div>' +
            '<div><input type="text" value="21-12-2012" size="30" readonly /></div>'