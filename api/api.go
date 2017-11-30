package api

import (
	"net/http"
	"log"
	"github.com/julienschmidt/httprouter"
	"goblog/store"
)

type API struct {
	router *httprouter.Router
	store store.Store
}

func (a *API) init() {
	a.router = httprouter.New()

	a.router.GET("/categories/", ListCategories)
}

func (a *API) Run() {
	a.init()

	log.Fatal(http.ListenAndServe(":8080", a.router))
}

