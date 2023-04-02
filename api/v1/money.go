package v1

import (
	"github.com/gin-gonic/gin"
	"mall/service"
	util2 "mall/utils"
)

func ShowMoney(c *gin.Context) {
	showMoneyService := service.ShowMoneyService{}
	claim, _ := util2.ParseToken(c.GetHeader("Authorization"))
	if err := c.ShouldBind(&showMoneyService); err == nil {
		res := showMoneyService.Show(c.Request.Context(), claim.ID)
		c.JSON(200, res)
	} else {
		c.JSON(400, err)
		util2.LogrusObj.Infoln(err)
	}
}
