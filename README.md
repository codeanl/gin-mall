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

```
main
	└──java
            └── com.dormitooryadmin
	│   │     ├── controller
	│   │	  ├── dao 
	│   │	  ├── model 
	│   │	  └── service 
	│   └── resources
  	│   │	  ├── static 
  	│   │	  └── template
 	└──test   │
   	    └──java
   		  └── com.dormitooryadmin
   			
```

