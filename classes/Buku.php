<?php
class Buku {
    private $conn;
    private $table = "buku";

    public function __construct($db) {
        $this->conn = $db;
    }

    public function tampilkanSemua() {
        $query = "SELECT * FROM " . $this->table;
        $stmt = $this->conn->prepare($query);
        $stmt->execute();
        return $stmt;
    }
}
?>
