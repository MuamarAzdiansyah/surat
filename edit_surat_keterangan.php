<?php
session_start();
if (!isset($_SESSION['loggedin'])) {
    header("Location: index.php");
    exit;
}

include 'config.php';

// Get the ID of the record to be edited
$id = $_GET['id'] ?? null;
if ($id) {
    $stmt = $conn->prepare("SELECT * FROM surat_keterangan WHERE id = ?");
    $stmt->bind_param("i", $id);
    $stmt->execute();
    $result = $stmt->get_result();
    $surat = $result->fetch_assoc();
} else {
    header("Location: surat_keterangan.php");
    exit;
}

// Process form submission
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $nomor = $_POST['nomor'];
    $tanggal = $_POST['tanggal'];
    $perihal = $_POST['perihal'];
    $nomor_keterangan = htmlspecialchars($nomor);
    
    $upload_ok = 1;
    $target_file = $surat['dokumen'];
    
    // Check if a new file is uploaded
    if ($_FILES['dokumen']['size'] > 0) {
        $target_dir = "uploads/";
        $target_file = $target_dir . basename($_FILES['dokumen']['name']);
        $file_type = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));
        
        if ($_FILES['dokumen']['size'] > 5000000) {
            $upload_ok = 0;
            $error_message = "File terlalu besar.";
        }

        if (!in_array($file_type, ["pdf", "doc", "docx"])) {
            $upload_ok = 0;
            $error_message = "Hanya file PDF, DOC, dan DOCX yang diizinkan.";
        }

        if ($upload_ok && move_uploaded_file($_FILES['dokumen']['tmp_name'], $target_file)) {
            if (file_exists($surat['dokumen'])) {
                unlink($surat['dokumen']); // Delete old file
            }
        } else {
            $error_message = "Terjadi kesalahan saat mengupload file.";
        }
    }

    if ($upload_ok) {
        $stmt = $conn->prepare("UPDATE surat_keterangan SET nomor_keterangan = ?, dokumen = ?, tanggal = ?, perihal = ? WHERE id = ?");
        $stmt->bind_param("ssssi", $nomor_keterangan, $target_file, $tanggal, $perihal, $id);
        if ($stmt->execute()) {
            $success_message = "Data berhasil diperbarui.";
        } else {
            $error_message = "Terjadi kesalahan saat memperbarui data.";
        }
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Surat Keterangan</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-image: url('ocean-blue-copy-space-abstract-paper-waves_23-2148319152.avif'); /* Ganti dengan path gambar Anda */
            background-size: cover; /* Mengatur gambar agar menutupi seluruh halaman */
            background-repeat: no-repeat;
            background-position: center;
        }
        body {
            background-color: #f8f9fa;
        }
        .container {
            max-width: 700px;
            background: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.1);
        }
        h2 {
            margin-bottom: 20px;
        }
        .btn-primary {
            background-color: #007bff;
            border: none;
        }
        .btn-secondary {
            background-color: #6c757d;
        }
    </style>
</head>
<body>

<div class="container mt-5">
    <h2 class="text-center">Edit Surat Keterangan</h2>

    <?php if (isset($success_message)) : ?>
        <div class="alert alert-success" role="alert">
            <?php echo $success_message; ?>
        </div>
    <?php elseif (isset($error_message)) : ?>
        <div class="alert alert-danger" role="alert">
            <?php echo $error_message; ?>
        </div>
    <?php endif; ?>

    <form action="edit_surat_keterangan.php?id=<?php echo $id; ?>" method="POST" enctype="multipart/form-data">
        <div class="form-group">
            <label for="nomor">Nomor Keterangan</label>
            <input type="text" class="form-control" id="nomor" name="nomor" value="<?php echo htmlspecialchars($surat['nomor_keterangan']); ?>" required>
        </div>
        <div class="form-group">
            <label for="tanggal">Tanggal</label>
            <input type="date" class="form-control" id="tanggal" name="tanggal" value="<?php echo htmlspecialchars($surat['tanggal']); ?>" required>
        </div>
        <div class="form-group">
            <label for="perihal">Perihal</label>
            <input type="text" class="form-control" id="perihal" name="perihal" value="<?php echo htmlspecialchars($surat['perihal']); ?>" required>
        </div>
        <div class="form-group">
            <label for="dokumen">Upload Dokumen (PDF/DOC/DOCX - Maksimal 5MB)</label>
            <input type="file" class="form-control-file" id="dokumen" name="dokumen">
            <p class="text-muted">File saat ini: <a href="<?php echo htmlspecialchars($surat['dokumen']); ?>" target="_blank">Lihat Dokumen</a></p>
        </div>
        <div class="text-center">
            <button type="submit" class="btn btn-primary">Perbarui</button>
            <a href="surat_keterangan.php" class="btn btn-secondary">Kembali</a>
        </div>
    </form>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
