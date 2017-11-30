package store

import (
	"log"
	_ "github.com/go-sql-driver/mysql"
	"github.com/jmoiron/sqlx"
)

// Store wraps all services
type Store struct {
	DB *sqlx.DB

	CategoryService CategoryService
}

// New creates and returns new Store
func New() Store {
	var s Store

	db, err := sqlx.Connect("mysql", "goblog:111111@(localhost:3306)/goblog")

	if err != nil {
		log.Fatal(err)
	}

	s.DB = db

	s.CategoryService.store = &s

	return s
}
