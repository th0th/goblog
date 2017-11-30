package store

import (
	"goblog/models"
)

var _ models.PostService = &PostService{}

// PostService represents a service for managing posts.
type PostService struct {
	store *Store
}

// List returns all posts.
func (s *PostService) List() ([]models.Post, error) {
	var posts []models.Post

	err := s.store.DB.Select(&posts, "SELECT * FROM posts")

	return posts, err
}
