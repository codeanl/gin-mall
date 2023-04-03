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
- 将图片上传到七牛云对象存储

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

```

gin-mall
  ├── api
  ├── cache
  ├── conf
  ├── dao
  ├── middleware
  ├── model
  ├── util
  │   └── e
  ├── routes
  ├── serializer
  └── service
   			
```

## api接口文档
https://console-docs.apipost.cn/preview/50f3cb038f516dcc/78bc4c4daef5057e
[![2023-04-02-17-27-16.png](https://i.postimg.cc/HLm9ynkp/2023-04-02-17-27-16.png)](https://postimg.cc/bZ6nXznM)

## 项目运行

- 克隆源代码到本地，推荐使用golang打开;
- 导入mall.sql;
- 在conf.ini配置文件中修改数据库账号密码和七牛云key，邮箱stap

```
go mod tidy
   			
```
 ```
go run main.go
   			
```


