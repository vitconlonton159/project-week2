<?php
    $conn = mysqli_connect("localhost", "root" ,"", "webbanhang_tùng");

    // Kiểm tra kết nối
    if (!$conn) {
        echo "<h2>Lỗi: " . mysqli_connect_error() . "</h2>";
        
    } else {
        echo "<h2>Kết nối thành công</h2>";
       
    }
?>
