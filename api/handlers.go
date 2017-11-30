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
