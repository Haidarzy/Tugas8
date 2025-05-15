<?php
require_once 'config/Database.php';
require_once 'classes/Buku.php';

$db = new Database();
$conn = $db->getConnection();

$buku = new Buku($conn);
$stmt = $buku->tampilkanSemua();
?>

<!DOCTYPE html>
<html>
<head>
    <title>Daftar Buku</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <h1>Daftar Buku Perpustakaan</h1>
    <table>
        <thead>
            <tr>
                <th>Judul</th>
                <th>Penulis</th>
                <th>Tahun Terbit</th>
            </tr>
        </thead>
        <tbody>
            <?php while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) : ?>
                <tr>
                    <td><?= htmlspecialchars($row['judul']) ?></td>
                    <td><?= htmlspecialchars($row['penulis']) ?></td>
                    <td><?= $row['tahun_terbit'] ?></td>
                </tr>
            <?php endwhile; ?>
        </tbody>
    </table>
</body>
</html>
