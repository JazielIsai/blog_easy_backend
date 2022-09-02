<?php

class PDO_Connection {
    
    private PDO|bool|null $pdo;
    private $db;
    private $db_server = 'localhost';
    private $db_user = 'root';
    private $db_password = 'root123';

    function __construct($db) {
        $this->db = $db;
    }

    public function connect() {
        try {
            $this->pdo = new PDO('mysql:host=' . $this->db_server . ';dbname=' . $this->db, $this->db_user, $this->db_password);
        } catch (PDOException $e) {
            $this->pdo = false;
            error_log("Connection failed: " . $e->getMessage());
            die("Connection to " . $this->db . " has failed: " . $e->getMessage());
        }
    } 

    public function disconnect() {
        $this->pdo = null;
    }

    public function selectQuery ($query, $params=null) : array {
        $this->connect();

        $data = array();
        $stmt = $this->pdo->prepare($query);

        if ($params) {
            $stmt->execute($params);
        } else {
            $stmt->execute();
        }

        if ( $stmt->rowCount() > 0 ) {
            while ( $row = $stmt->fetchObject() ) {
                $data[] = $row;
            }
        }

        $stmt = null;
        $this->disconnect();
        return $data;
    }

    public function insertQuery($query, $data): bool|string {
        $this->connect();

        $stmt = $this->pdo->prepare($query);

        foreach ($data as $row) {
            $stmt->execute($row);
        }

        $id = $this->pdo->lastInsertId();

        $stmt = null;

        return $id;
    }

    public function updateDeleteQuery ($query, $data) : bool {
        $this->connect();

        $stmt = $this->pdo->prepare($query);

        foreach ($data as $row ) {
            $stmt->execute($row);
        }

        $rowCount = $stmt->rowCount();
        $stmt = null;
        
        $this->disconnect();
        return $rowCount;
    }
}