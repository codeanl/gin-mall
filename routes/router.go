package routes

import (
	"github.com/gin-contrib/sessions"
	"github.com/gin-contrib/sessions/cookie"
	"github.com/gin-gonic/gin"
	api "mall/api/v1"
	"mall/conf"
	"mall/middleware"
)

// 路由配置
func InitRouter() *gin.Engine {
	gin.SetMode(conf.AppMode)
	r := gin.Default()
	store := cookie.NewStore([]byte("something-very-secret"))
	r.Use(middleware.Cors())
	r.Use(sessions.Sessions("mysession", store))
	v1 := r.Group("api/v1")
	{

		v1.GET("ping", func(c *gin.Context) {
			c.JSON(200, gin.H{
				"msg": "success",
			})
		})

		//用户操作
		v1.POST("user/register", api.UserRegister) //用户注册
		v1.POST("user/login", api.UserLogin)       //用户登录

		//商品操作
		v1.GET("product/products", api.ListProducts)     //商品列表
		v1.GET("product/:id", api.ShowProduct)           //商品详细信息
		v1.POST("product/search", api.SearchProducts)    //搜索商品
		v1.GET("images/:id", api.ListProductImg)         //商品图片
		v1.GET("product/categories", api.ListCategories) //商品分类
		v1.GET("carousels", api.ListCarousels)           //轮播图

		auth := v1.Group("/") //需要登陆保护
		auth.Use(middleware.JWT())
		{
			// 用户操作
			auth.PUT("user/update", api.UserUpdate)           //用户信息修改
			auth.POST("user/sending-email", api.SendEmail)    //绑定邮箱
			auth.POST("user/valid-email", api.ValidEmail)     //验证邮箱
			auth.POST("user/upload-avatar", api.UploadAvatar) //上传头像

			// 商品操作
			auth.POST("product/add", api.CreateProduct)          //创建商品
			auth.PUT("product/update/:id", api.UpdateProduct)    //更新商品
			auth.DELETE("product/delete/:id", api.DeleteProduct) //删除商品

			// 收藏夹
			auth.GET("favorite/favorites", api.ShowFavorites)      //展示收藏夹
			auth.POST("favorite/add", api.CreateFavorite)          //创建收藏夹
			auth.DELETE("favorite/delete/:id", api.DeleteFavorite) //删除收藏夹

			// 订单操作
			auth.POST("order/add", api.CreateOrder)
			auth.GET("order/orders", api.ListOrders)         //获取订单
			auth.GET("order/:id", api.ShowOrder)             //获取订单详细信息
			auth.DELETE("order/delete/:id", api.DeleteOrder) //删除订单

			//购物车
			auth.POST("cart/add", api.CreateCart)          //创建购物车
			auth.GET("cart/:id", api.ShowCarts)            // 购物车id
			auth.PUT("cart/update/:id", api.UpdateCart)    // 购物车id
			auth.DELETE("cart/delete/:id", api.DeleteCart) //删除购物车

			//收获地址操作
			auth.POST("address/add", api.CreateAddress)          //创建收获地址
			auth.GET("address/:id", api.GetAddress)              //获取收获地址详情
			auth.GET("address/addresses", api.ListAddress)       //获取收获地址列表
			auth.PUT("address/update/:id", api.UpdateAddress)    //修改收获地址
			auth.DELETE("address/delete/:id", api.DeleteAddress) //删除收获地址

			// 支付功能
			auth.POST("paydown", api.OrderPay)

			// 显示金额
			auth.POST("money", api.ShowMoney)
		}
	}
	r.Run(conf.HttpPort)
	return r
}
