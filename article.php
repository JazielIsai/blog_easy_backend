<?php

class Article {

    private PDO_Connection|null $connection = null;

    public function __construct() {
        require_once 'blog_connection.php';
    }

    function make_connection () {
        if($this->connection == null) {
            $this->connection = new PDO_Connection('blog_easy');
        }
    }

    public function add_article_to_blog ($article_info) : bool|string {
        $this->make_connection();
        $query = "INSERT INTO article (title, content, img) VALUES (?,?,?);";
        $query_data = array($article_info->title, $article_info->content, $article_info->img);
        return $this->connection->insertQuery($query, array($query_data));
    }

    public function get_articles_from_blog () : array {
        $this->make_connection();
        $query = "SELECT id_article, title, content, img, date FROM article;";
        return $this->connection->selectQuery($query);
    }

    public function get_articles_top_10_from_blog () : array {
        $this->make_connection();
        $query = "SELECT id_article, title, content, img, date FROM article ORDER BY date DESC LIMIT 6;";
        return $this->connection->selectQuery($query);
    }

    public function search_article_by_id ($id_article) : array {
        $this->make_connection();
        $query = "SELECT id_article, title, content, img, date FROM article WHERE id_article = ?;";
        return $this->connection->selectQuery($query, array($id_article));
    }

    public function search_article ($search) : array {
        $this->make_connection();
        $query = "SELECT id_article, title, content, img, date FROM article WHERE title LIKE ? OR content LIKE ?;";
        $params = array('%' . $search . '%', '%' . $search . '%');
        return $this->connection->selectQuery($query, $params);
    }

    public function update_article ($article_info) : bool|string {
        $this->make_connection();
        $query = "UPDATE article SET title = ?, content = ?, img = ? WHERE id_article = ?;";
        $query_data = array($article_info->title, $article_info->content, $article_info->img, $article_info->id_article);
        return $this->connection->insertQuery($query, array($query_data));
    }

}