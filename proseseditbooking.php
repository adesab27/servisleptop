<?php
include 'connect.php';
if ($_SERVER['REQUEST_METHOD'] == "POST") {
    $id_booking = $_POST['id_booking'];
    $merek = $_POST['merek'];
    $jenis_servis = $_POST['jenis_servis'];
    $query = mysqli_query($conn, "UPDATE booking SET merek = '$merek', jenis_servis = '$jenis_servis' WHERE id_booking = '$id_booking'");
    if ($query) {
        echo "<script>alert('Data Berhasil Diupdate'); window.location.href='booking.php';</script>";
    } else {
        echo "<script>alert('Data Gagal Diupdate'); window.location.href='booking.php';</script>";
    }
}
