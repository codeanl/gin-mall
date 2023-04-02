package service

import (
	"context"
	logging "github.com/sirupsen/logrus"
	"mall/dao"
	"mall/serializer"
	"mall/utils/e"
)

type ListCarouselsService struct {
}

func (service *ListCarouselsService) List() serializer.Response {
	code := e.SUCCESS
	carouselsCtx := dao.NewCarouselDao(context.Background())
	carousels, err := carouselsCtx.ListAddress()
	if err != nil {
		logging.Info(err)
		code = e.ErrorDatabase
		return serializer.Response{
			Status: code,
			Msg:    e.GetMsg(code),
			Error:  err.Error(),
		}
	}
	return serializer.BuildListResponse(serializer.BuildCarousels(carousels), uint(len(carousels)))
}
