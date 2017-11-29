package models

// Post represents the blog post.
type Post struct {
	ID         int64    `db:"id" json:"id"`
	CategoryID int64    `db:"category_id" json:"-"`
	Category   Category `db:"category" json:"category"`
}

// PostService is the database access layer for Post.
type PostService interface {
	Create(p *Post) (*Post, error)
	List() (*[]Post, error)
	ListByCategory(categoryID int64) (*[]Post, error)
	ReadById(id int64) (*Post, error)
	Update(id int64, p *Post) (*Post, error)
	Delete(id int64) error
}
