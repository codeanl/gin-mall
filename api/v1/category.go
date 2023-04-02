package v1

import (
	"github.com/gin-gonic/gin"
	"mall/service"
	"mall/utils"
)

func ListCategories(c *gin.Context) {
	listCategoriesService := service.ListCategoriesService{}
	if err := c.ShouldBind(&listCategoriesService); err == nil {
		res := listCategoriesService.List(c.Request.Context())
		c.JSON(200, res)
	} else {
		c.JSON(400, err)
		util.LogrusObj.Infoln(err)
	}
}
