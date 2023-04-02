package main

import (
	"mall/conf"
	"mall/dao"
	"mall/routes"
)

func main() {
	conf.InitConf()
	dao.InitDB()
	routes.InitRouter()

}
