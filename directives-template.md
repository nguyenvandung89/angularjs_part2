#Tìm hiểu Directives và Templates trong angularjs
##AngularJS Directives
###Directives là gì?
+ Directives là thành phần mở rộng HTML và có thể coi là các thuộc tính của các thẻ HTML mà Angular nó định nghĩa thêm
###Cách khai báo một directives trong angularjs
+ Để khai báo là một Directive Controller thì chúng ta khai báo ng-controller


ví dụ:

```javascript
angular.module("todoApp").controller("myInfoController", ["$scope", ($scope) ->
  $scope.my =
    title: "Author Info"
    address: "Framgia"
]).directive "myInfo", ->
  template: "{{my.title}} {{my.address}}"
```


ở đây ta có controller là myInfoController và tên của directive là myInfo và khi gọi trên view ta chỉ cần gọi như sau:

```javascript
<div ng-controller="myInfoController">
  <div my-info></div>
</div>
```

thì kết quả của thẻ div trên sẽ là phần nội dung của directive mà ta khai báo ở trên


####Trong angularjs có rất nhiều Directives khác nhau:
+ ng-app: khi chúng ta khai báo ng-app="" thì ứng dụng của angularjs bắt đầu từ đây
+ ng-init: khi muốn khai báo dữ liệu khi mà ứng dụng vừa được chạy và dữ liệu này sẽ được dùng cho toàn bộ controller mà nó nằm trong


Ngoài các directive mà angularjs có sẵn thì chúng ta có thể tự định ghĩa một directive để dùng
+ Ví dụ:
```javascript
angular.module("todoApp").controller("blockFormController", ["$scope", ($scope) ->
]).directive "blockForm", ->
  restrict: "E"
  template: '<br /><div><input type="text" value="Nguyen Van Dung" size="30" readonly /></div>' +
            '<div><input type="text" value="Bac Hong - Dong Anh - Ha Noi" size="30" readonly /></div>' +
            '<div><input type="text" value="ngvandung2010@gmail.com" size="30" readonly /></div>' +
            '<div><input type="text" value="21-12-2012" size="30" readonly /></div>'
```


Ở đây ta đã khai báo một directive mới có tên là blockform và thuộc tính restrict để khai báo dạng dữ liệu có thể là một template hay một templateUrl và ở trên view ta gọi như sau

```javascript
<div ng-controller="blockFormController">
 <block-form></block-form>
</div>
```

#####Về một thuộc tính mà directive hỗ trợ và hay được dùng đó là có thể sử dụng để validate các thuộc tính input khi submit form
ví dụ:
```javascript
<input type="text" name="name" placeholder="Enter article name" ng-model="user.name" class="input-xlarge search-query"  ng-minlength=3 ng-maxlength=20 ensure-unique="name" required /><br />
```

Trong này thì ta đã validate các thuộc tính như độ dài max, min, và phải nhập, nhưng nếu muốn thêm các validate mới thì ta có thể viết hàm và include vào thẻ input

```javascript
angular.module('todoApp')
.directive(
  'emailFormatValidator', ->
    pattern = /[-0-9a-zA-Z.+_]+@[-0-9a-zA-Z.+_]+\.[a-zA-Z]{2,4}/
    {
      require: 'ngModel',
      link: ($scope, element, attrs, ngModel) ->
        ngModel.$validators.emailFormat = (value) ->
          pattern.test value
    }
)
```


Và gọi ra thì ta gọi như sau:

```javascript
<input type="email" name="email" ng-model="user.email" email-format-validator required />
```
+ Ở đây ta có tên directive là emailFormatValidator và gọi ra thì ta gọi như sau email-format-validator khi mà người dùng nhập email mà không đúng các định dạng mà ta đã format thì sẽ không save được data thành công


##Angularjs template
###Tại sao nên dùng template?
+ Khi mà các view trong html mà phức tạp hay là có một phần nào đó được dùng đi dùng lại thì trong angularjs có template để giải quyết
+ Có 2 cách để tạo một template trong angularjs
    Dùng file ngoài: nghĩa là chúng ta dùng một file html khác làm template cho file chính rồi trong file chính ta gọi vào
    Dùng script: chúng ta có thể chèn trực tiếp template và file chính thông qua thẻ script với type=text/ng-template
####ví dụ như:
```javascript
<script type="text/ng-template" id="template.html">
  #content của template
</script>
```

###Cách sử dụng template
+ Trong angularjs có nhiều cách sử dụng template nhưng có 2 cách được dùng nhiều đó là sử dụng ng-include và ng-routes
+ ví dụ:
Trong js thì ta gán giá trị template như sau, chúng ta có thể khai báo template theo hash và array, thì ở đây ta có biến template sẽ được lấy giá trị ở file js


```javascript
var templates = {template1: '/templates/template1.html',
                 template2: '/templates/template2.html'};
$scope.template = templates.template1;
```


Còn trên view ta sẽ gọi như sau
```javascript
<div ng-include src="template"></div>
```

Hoặc theo dạng array
```javascript
var templates = [{name: template1, url: '/templates/template1.html'},
                 {name: template2, url: '/templates/template2.html'}];

$scope.template = templates[0];
```


Còn trên view ta sẽ gọi như sau:
```javascript
<div ng-include src="template.url"></div>
```
khi đó template sẽ là nội dung của trang template1.html


####Cách khai báo thứ 2 cho template là sử dụng ng-routes
+ Được khai báo trong phần routes của module
+ Ví dụ:
```javascript
.when('/users', {templateUrl: '/html/index.html', controller: UserCtrl})
```


thì template ở đây sẽ là file index.html
####Trong demo source code tôi có làm về sử dụng directive và template các bạn có thể tham khảo thêm trong source code.

[source code demo](https://github.com/nguyenvandung89/angularjs_part2)
