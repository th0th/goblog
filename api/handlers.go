package api

import (
	"github.com/julienschmidt/httprouter"
	"goblog/store"
	"fmt"
	"net/http"
)

func ListCategories(w http.ResponseWriter, _ *http.Request, _ httprouter.Params) {
	s := store.New()

	data, err := s.CategoryService.List()

	if err != nil {
		fmt.Fprint(w, err)
	}

	respondJSON(w, 200, data)
}

func ListPosts(w http.ResponseWriter, _ *http.Request, _ httprouter.Params) {
	s := store.New()

	data, err := s.PostService.List()

	if err != nil {
		respondError(w, 500, err.Error())
		return
	}

	respondJSON(w, 200, data)
}