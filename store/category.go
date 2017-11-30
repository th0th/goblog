package store

import (
	"goblog/models"
)

var _ models.CategoryService = &CategoryService{}

// CategoryService represents a service for managing categories.
type CategoryService struct {
	store *Store
}

// List returns all categories.
func (s *CategoryService) List() ([]models.Category, error) {
	var categories []models.Category

	err := s.store.DB.Select(&categories, "SELECT * FROM category")

	return categories, err
}
