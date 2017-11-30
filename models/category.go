package models

// Category represents the blog post category.
type Category struct {
	ID    int64  `db:"id" json:"id"`
	Title string `db:"title" json:"title"`
}

// CategoryService is the database access layer for Category.
type CategoryService interface {
	List() ([]Category, error)
}
