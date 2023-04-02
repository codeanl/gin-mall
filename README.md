# gin-mall

## 项目主要功能

- 用户注册登录(JWT-Go鉴权)
- 用户基本信息修改，解绑定邮箱，修改密码
- 商品的发布，浏览等
- 购物车的加入，删除，浏览等
- 订单的创建，删除，支付等
- 地址的增加，删除，修改等
- 各个商品的浏览次数，以及部分种类商品的排行
- 设置了支付密码，对用户的金额进行了对称加密
- 支持事务，支付过程发送错误进行回退处理
- 可以将图片上传到对象存储，也可以切换分支上传到本地static目录下
- 添加ELK体系，方便日志查看和管理

## 项目的主要依赖：
Golang V1.19.2

- gin
- gorm
- mysql
- redis
- ini
- jwt-go
- crypto
- logrus
- qiniu-go-sdk
- dbresolver

## 项目结构

gin-mall/
├── api
├── cache
├── conf
├── dao
├── middleware
├── model
├── util
│  └── e
├── routes
├── serializer
└── service

当然可以。以下是商城的README.md文件示例，你可以根据你的商城做一些适当的修改:

商城
该项目是一个基于XXX框架开发的商城网站。

功能特点
用户注册和登录
商品浏览、购买、加入购物车
订单生成和支付
个人信息管理
管理员后台管理
...
安装和配置
克隆仓库到本地：
Diff
Copy
Insert
New
git clone https://github.com/yourname/yourrepository.git
切换到克隆的目录下：
Diff
Copy
Insert
New
cd yourrepository
安装所需依赖：
Diff
Copy
Insert
New
npm install
配置环境变量：复制 .env.example 文件并重命名为 .env，在里面填写相应的信息。

.
├── app.js
├── bin
│   └── www
├── config
│   ├── config.js
│   ├── db.js
│   └── passport.js
├── controllers
│   ├── home.js
│   └── users.js
├── models
│   ├── cart.js
│   ├── order.js
│   └── user.js
├── public
│   ├── images
│   ├── javascripts
│   └── stylesheets
├── routes
│   ├── index.js
│   ├── products.js
│   └── users.js
├── views
│   ├── error.ejs
│   ├── index.ejs
│   ├── layout.ejs
│   ├── partials
│   │   ├── footer.ejs
│   │   └── header.ejs
│   ├── product-details.ejs
│   ├── shopping-cart.ejs
│   └── user-profile.ejs
├── package.json
└── README.md
作者
该项目由 yourname 开发和维护。
