<?php
include 'connect.php';

$merek = $_POST['merek'];
$jenis_servis = $_POST['jenis_servis'];
$id_pemilik = $_POST['id_pemilik'];

$query = mysqli_query($conn, "INSERT INTO booking (merek, jenis_servis, id_pemilik) VALUES ('$merek','$jenis_servis','$id_pemilik')");

if ($query) {
    echo "<script>alert('Data Berhasil ditambah...'); window.location = 'booking.php'</script>";
} else {
    echo "<script>alert('Data Gagal ditambah...'); window.location = 'booking.php'</script>";
}
