package v1

import (
	"github.com/gin-gonic/gin"
	"mall/service"
	util2 "mall/utils"
)

func CreateOrder(c *gin.Context) {
	createOrderService := service.OrderService{}
	claim, _ := util2.ParseToken(c.GetHeader("Authorization"))
	if err := c.ShouldBind(&createOrderService); err == nil {
		res := createOrderService.Create(c.Request.Context(), claim.ID)
		c.JSON(200, res)
	} else {
		c.JSON(400, err)
		util2.LogrusObj.Infoln(err)
	}
}

func ListOrders(c *gin.Context) {
	listOrdersService := service.OrderService{}
	claim, _ := util2.ParseToken(c.GetHeader("Authorization"))
	if err := c.ShouldBind(&listOrdersService); err == nil {
		res := listOrdersService.List(c.Request.Context(), claim.ID)
		c.JSON(200, res)
	} else {
		c.JSON(400, err)
		util2.LogrusObj.Infoln(err)
	}
}

// 订单详情
func ShowOrder(c *gin.Context) {
	showOrderService := service.OrderService{}
	if err := c.ShouldBind(&showOrderService); err == nil {
		res := showOrderService.Show(c.Request.Context(), c.Param("id"))
		c.JSON(200, res)
	} else {
		c.JSON(400, err)
		util2.LogrusObj.Infoln(err)
	}
}

func DeleteOrder(c *gin.Context) {
	deleteOrderService := service.OrderService{}
	if err := c.ShouldBind(&deleteOrderService); err == nil {
		res := deleteOrderService.Delete(c.Request.Context(), c.Param("id"))
		c.JSON(200, res)
	} else {
		c.JSON(400, err)
		util2.LogrusObj.Infoln(err)
	}
}
