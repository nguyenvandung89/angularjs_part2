## Tìm hiểu Angularjs(CRUD, filter, sort, popup, editable)
####Định ghĩa và sự ra đời của angulajs
AngularJS được phát triển bởi Google. Mục tiêu của AngularJS là tạo ra các single-page application, nó được phát triển theo mô hình MVC


Angulajs sử dung các ng-* tag vào html Sau đó sử dụng js tương tác two-way binding một cách đồng bộ giữa model và view. AngularJS làm cho việc xữ lý DOM cho nên dễ dàng debug hay test và sửa chữa


####Cài đặt


Có hai cách cài đặt angularjs vào project


+ include dòng này vào file html `<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.12/angular.min.js"></script>`


+ Tải file angulajs.min.js vào trong project

####Các định ghĩa cần biết khi làm angularjs
######scope
+ Nhận ra sự thay đổi của các model objects và tạo ra context để thực thi sự thay đổi, tác động đó.


+ Quản lý sự thay đổi của model và báo cho view, ngoài ra nó còn chuyển các events cho controller xữ lý


######Model


+ Như là một object javascript


######Data-binding


+ Angular thược hiện các thao tác với dữ liệu thuộc tính ng-model trong html, việc sử dụng data-binding sẽ giúp tối ưu hoá mã nguồn và giúp giảm số lượng dòng code mà bạn phải viết, giúp cho việc hiển thị dữ liệu tức thì không cần phải load trang


Ví dụ đơn giản về model và data-binding


`<input ng-model="title">`
`<p>{{ name }}</p>`


ở đây có một ng-model có tên là name và model name này được binding vào cặp thẻ {{}} và khi bạn thay đổi title trên thẻ input thì giá trị của thẻ p cũng lập tức thay đổi theo

######Controller
+ Có nhiêm vụ khởi tạo và kết nối các model với view html, và trong controller này ta có thể dùng để lấy và xử lý được dữ liệu

######Services
+ Trong angularjs singletons được thiết kể theo kiểu singletons cho nên nó có thể chia sẻ các chức năng của các controller hoặc


######View
+ Được xây dựng dựa trên các Dom objects. không dựa trên string, và view chính ở đây là html


*ngoài các định ghĩa trên angularjs còn hỗ trợ rất nhiều các chức năng như search, hay sắp xếp dữ liệu, hoặc vaildate ...*


#Trong demo trên có những phần như validate form, pop-up, CRUD, editable, filter, sort bằng angularjs


*dưới đây là một số hình ảnh về các công việc*


+ Validate trong form


![alt text](https://cloud.githubusercontent.com/assets/4001514/4803423/e34af0b8-5e57-11e4-8d5b-e05e63467202.png "anh1")


+ Màn hình index

![alt text](https://cloud.githubusercontent.com/assets/4001514/4803422/e2fe9a74-5e57-11e4-8b8f-9f7991454be1.png "anh2")


+ Pop-up

![alt text](https://cloud.githubusercontent.com/assets/4001514/4803424/e34c5822-5e57-11e4-9e7a-04c72fd9fe81.png "anh3")

+ Edit inline và edit trên form

![alt text](https://cloud.githubusercontent.com/assets/4001514/4803426/e3521154-5e57-11e4-8cb1-1a45abe5c7c0.png "anh4")


![alt text](https://cloud.githubusercontent.com/assets/4001514/4803425/e34f4ee2-5e57-11e4-8d97-273281fe973c.png "anh5")

+ Search

![alt text](https://cloud.githubusercontent.com/assets/4001514/4803427/e3540928-5e57-11e4-81a8-e43fd3293fe9.png "anh6")
