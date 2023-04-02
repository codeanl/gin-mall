package v1

import (
	"github.com/gin-gonic/gin"
	"mall/service"
	util2 "mall/utils"
)

func OrderPay(c *gin.Context) {
	orderPay := service.OrderPay{}
	claim, _ := util2.ParseToken(c.GetHeader("Authorization"))
	if err := c.ShouldBind(&orderPay); err == nil {
		res := orderPay.PayDown(c.Request.Context(), claim.ID)
		c.JSON(200, res)
	} else {
		util2.LogrusObj.Infoln(err)
		c.JSON(400, err)
	}
}
