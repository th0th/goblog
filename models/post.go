package models

// Post represents the blog post.
type Post struct {
	ID         int64    `db:"id" json:"id"`
	CategoryID int64    `db:"category_id" json:"-"`
	Category   Category `db:"category" json:"category"`
	Title      string   `db:"title" json:"title"`
	Content    string   `db:"content" json:"content"`
}

// PostService is the database access layer for Post.
type PostService interface {
	List() ([]Post, error)
}
