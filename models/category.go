package models

// Category represents the blog post category.
type Category struct {
	ID    int64  `db:"id" json:"id"`
	Title string `db:"title" json:"title"`
}

// CategoryService is the database access layer for Category.
type CategoryService interface {
	Create(c *Category) error
	List() (*[]Category, error)
	ReadById(id int64) (*Category, error)
	Update(id int64, c *Category) (*Category, error)
	Delete(id int64) error
}
