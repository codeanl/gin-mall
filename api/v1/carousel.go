package v1

import (
	"github.com/gin-gonic/gin"
	"mall/service"
	"mall/utils"
)

func ListCarousels(c *gin.Context) {
	listCarouselsService := service.ListCarouselsService{}
	if err := c.ShouldBind(&listCarouselsService); err == nil {
		res := listCarouselsService.List()
		c.JSON(200, res)
	} else {
		c.JSON(400, err)
		util.LogrusObj.Infoln(err)
	}
}
