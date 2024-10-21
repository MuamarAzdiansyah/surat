/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.5.2-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: suratdb
-- ------------------------------------------------------
-- Server version	11.5.2-MariaDB-ubu2404

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `dokumen_lain`
--

DROP TABLE IF EXISTS `dokumen_lain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dokumen_lain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomor_memo` varchar(255) NOT NULL,
  `dokumen` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `perihal` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dokumen_lain`
--

LOCK TABLES `dokumen_lain` WRITE;
/*!40000 ALTER TABLE `dokumen_lain` DISABLE KEYS */;
INSERT INTO `dokumen_lain` VALUES
(10,'526536','uploads/publikasi.pdf','2024-09-06','r4e4'),
(11,'90900','uploads/LAPORAN MINGGUAN MAGANG AMAR.pdf','2024-10-25','dewfe');
/*!40000 ALTER TABLE `dokumen_lain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laporan_2024`
--

DROP TABLE IF EXISTS `laporan_2024`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `laporan_2024` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomor_memo` varchar(255) NOT NULL,
  `dokumen` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `perihal` text NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laporan_2024`
--

LOCK TABLES `laporan_2024` WRITE;
/*!40000 ALTER TABLE `laporan_2024` DISABLE KEYS */;
INSERT INTO `laporan_2024` VALUES
(5,'22222','uploads/LAPORAN MINGGUAN MAGANG AMAR.pdf','2024-10-10','cdc','2024-10-03 03:41:59'),
(6,'121','uploads/LAPORAN MINGGUAN MAGANG AMAR.pdf','2024-10-17','apaya','2024-10-03 03:42:21'),
(7,'90','uploads/PROPOSAL LOMBA UHAMKA 2024.pdf','2024-10-12','apaya','2024-10-03 03:46:40');
/*!40000 ALTER TABLE `laporan_2024` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laporan_tahunan`
--

DROP TABLE IF EXISTS `laporan_tahunan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `laporan_tahunan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomor_memo` varchar(255) NOT NULL,
  `dokumen` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `perihal` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laporan_tahunan`
--

LOCK TABLES `laporan_tahunan` WRITE;
/*!40000 ALTER TABLE `laporan_tahunan` DISABLE KEYS */;
INSERT INTO `laporan_tahunan` VALUES
(1,'44/LAP-SURVEI/DLL/E.IV/2024','uploads/publikasi.pdf','2024-09-04','laporan');
/*!40000 ALTER TABLE `laporan_tahunan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nota_dinas`
--

DROP TABLE IF EXISTS `nota_dinas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nota_dinas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomor_memo` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `perihal` varchar(255) NOT NULL,
  `tujuan` varchar(255) NOT NULL,
  `dokumen` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nota_dinas`
--

LOCK TABLES `nota_dinas` WRITE;
/*!40000 ALTER TABLE `nota_dinas` DISABLE KEYS */;
INSERT INTO `nota_dinas` VALUES
(24,'77/AI.07.02/ND/E.IV/2021','2024-10-15','laporan saja yak','WAKIL KEPALA, DIREKTORAT PENSIUN PNS DAN PEJABAT NEGARA','soalsoalsoal.docx'),
(25,'6/KP.09.02/ND/E.IV/2024','2023-10-18','paguyuban','KEPALA, WAKIL KEPALA, DIREKTORAT JABATAN ASN','LAPORAN FORKUM.pdf'),
(27,'2/AI.02/ND/E.IV/2023','2024-10-09','dec','PUSAT KONSULTASI DAN BANTUAN HUKUM','LAPORAN MINGGUAN MAGANG AMAR_4.pdf'),
(28,'11/AI.02/ND/E.IV/2023','2024-10-16','marrrrrrrrrrrrr','KEPALA','arap_1.docx'),
(29,'6/KP.09.02/ND/E.IV/2021','2024-10-10','SIAPA','KEPALA, WAKIL KEPALA','LAPORAN MINGGUAN MAGANG AMAR_5.pdf'),
(30,'1111/AI.02/ND/E.IV/2023','2024-10-03','ITSA','DIREKTORAT PDPIK','LAPORAN FORKUM_1.pdf'),
(31,'6/KP.09.02/ND/E.IV/2023','2024-09-18','aaa','SEKRETARIAT UTAMA','LAPORAN FORKUM_2.pdf'),
(32,'7/AI.02/ND/E.IV/2023','2024-06-05','rsfg','WAKIL KEPALA','LAPORAN MINGGUAN MAGANG AMAR_6.pdf'),
(33,'1/AI.01/UI/E.IV/2022','2024-12-05','SIUUUUUUUUUUU','DIREKTORAT JABATAN ASN','LAPORAN MINGGUAN MAGANG AMAR_7.pdf'),
(35,'4/KP.09.02/ND/E.IV/2023','2024-07-23','ANJAYANI','JPT MADYA','LAPORAN MINGGUAN MAGANG AMAR_8.pdf'),
(36,'5/KP.09.02/ND/E.IV/2023','2024-08-21','edfew','SEKRETARIAT UTAMA','LAPORAN MINGGUAN MAGANG AMAR_9.pdf'),
(39,'22/Array/ND/E.IV/2025','2024-10-30','33e','DEPUTI BIDANG PEMBINAAN MANAJEMEN KEPEGAWAIAN','print.pdf'),
(40,'59/AI.02/ND/E.IV/2023','2024-11-15','xsss','DEPUTI BIDANG PEMBINAAN MANAJEMEN KEPEGAWAIAN','LAPORAN MINGGUAN MAGANG AMAR.pdf'),
(41,'1221/AK/ND/E.IV/2022','2024-11-07','aa','SEKRETARIAT UTAMA','LAPORAN FORKUM.pdf'),
(42,'113/KP.04/UI/E.IV/2020','2024-10-03','ddd','WAKIL KEPALA','print.pdf'),
(43,'99/AI.07.03/ND/E.IV/2023','2024-09-19','ss','KANTOR REGIONAL XIV MANOKWARI','Pengembangan Aplikasi Perangkat Lunak - Team Alpha.pdf'),
(44,'11/AI.03/ND/E.IV/2023','2024-11-27','efr','DIREKTORAT PENSIUN PNS DAN PEJABAT NEGARA','Wave-Wonderland-Website-Edukasi-Tentang-Eksplorasi-Kehidupan-Laut-Dan-Ekosistem.pdf');
/*!40000 ALTER TABLE `nota_dinas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surat_keterangan`
--

DROP TABLE IF EXISTS `surat_keterangan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surat_keterangan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomor_keterangan` varchar(255) NOT NULL,
  `dokumen` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `perihal` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surat_keterangan`
--

LOCK TABLES `surat_keterangan` WRITE;
/*!40000 ALTER TABLE `surat_keterangan` DISABLE KEYS */;
INSERT INTO `surat_keterangan` VALUES
(1,'111','uploads/PROPOSAL LOMBA UHAMKA 2024.pdf','2024-08-09','sndhbwu'),
(2,'121','uploads/LAPORAN FORKUM.pdf','2024-10-12','swwwww');
/*!40000 ALTER TABLE `surat_keterangan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surat_penugasan`
--

DROP TABLE IF EXISTS `surat_penugasan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surat_penugasan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomor_memo` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `perihal` varchar(255) NOT NULL,
  `tujuan` varchar(255) NOT NULL,
  `dokumen` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surat_penugasan`
--

LOCK TABLES `surat_penugasan` WRITE;
/*!40000 ALTER TABLE `surat_penugasan` DISABLE KEYS */;
INSERT INTO `surat_penugasan` VALUES
(10,'13/KP.09.02/SP/E.IV/2024','2024-10-24','MAMAMA','DEPUTI BIDANG MUTASI KEPEGAWAIAN','Pengembangan Aplikasi Perangkat Lunak - Team Alpha.pdf'),
(16,'4232/AI.02/UI/E.IV/2024','2024-11-20','reeee','DEPUTI BIDANG MUTASI KEPEGAWAIAN','PROPOSAL LOMBA UHAMKA 2024.pdf'),
(18,'33/AI.02/SP/E.IV/2024','2024-11-05','apa','KEPALA','LAPORAN MINGGUAN MAGANG AMAR.pdf'),
(19,'6/AI.02/SP/E.IV/2023','2024-11-14','swxdsw','SEKRETARIAT UTAMA','LAPORAN MINGGUAN MAGANG AMAR.pdf');
/*!40000 ALTER TABLE `surat_penugasan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `undangan_internal`
--

DROP TABLE IF EXISTS `undangan_internal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `undangan_internal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomor_memo` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `perihal` varchar(255) NOT NULL,
  `tujuan` varchar(255) NOT NULL,
  `dokumen` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `undangan_internal`
--

LOCK TABLES `undangan_internal` WRITE;
/*!40000 ALTER TABLE `undangan_internal` DISABLE KEYS */;
INSERT INTO `undangan_internal` VALUES
(5,'2/KP.09.02/UI/E.IV/2024','2024-09-11','3w','Biro Keuangan','1208240157_2103015036.pdf'),
(7,'3/KP.09.02/UI/E.IV/2023','2024-11-01','ITSA','Biro Keuangan','LAPORAN MINGGUAN MAGANG AMAR.pdf'),
(9,'12/AI.01/ND/E.IV/2020','2024-10-11','qedqwedqwed','Biro SDM, PPSI','LAPORAN MINGGUAN MAGANG AMAR_1.pdf'),
(10,'111/KP.09.02/ND/E.IV/2023','2024-10-16','wdwed','Biro SDM, PPSI','LAPORAN MINGGUAN MAGANG AMAR_3.pdf'),
(11,'2/AK/UI/E.IV/2024','2024-10-02','MAMAMA','DEPUTI BIDANG PEMBINAAN MANAJEMEN KEPEGAWAIAN, DEPUTI BIDANG MUTASI KEPEGAWAIAN','PROPOSAL LOMBA UHAMKA 2024_1.pdf'),
(12,'4/AI.01/UI/E.IV/2023','2024-09-13','ITSA','SEKRETARIAT UTAMA','2520-Article Text-8104-1-10-20200901.pdf'),
(13,'7/KP.09.02/UI/E.IV/2023','2024-11-06','marmar','WAKIL KEPALA, DEPUTI BIDANG SISTEM INFORMASI KEPEGAWAIAN','Wave-Wonderland-Website-Edukasi-Tentang-Eksplorasi-Kehidupan-Laut-Dan-Ekosistem.pdf'),
(14,'20/AI.02/UI/E.IV/2023','2024-12-06','makama','DEPUTI BIDANG SISTEM INFORMASI KEPEGAWAIAN','Pengembangan Aplikasi Perangkat Lunak - Team Alpha.pdf'),
(15,'4/AI.01/UI/E.IV/2023','2024-06-13','ITSA','BIRO UMUM','Wave-Wonderland-Website-Edukasi-Tentang-Eksplorasi-Kehidupan-Laut-Dan-Ekosistem_1.pdf'),
(18,'2/KP.09.02/ND/E.IV/2023','2024-10-20','ITSA','DEPUTI BIDANG PEMBINAAN MANAJEMEN KEPEGAWAIAN','Pengembangan Aplikasi Perangkat Lunak - Team Alpha_1.pdf');
/*!40000 ALTER TABLE `undangan_internal` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2024-10-15  9:39:53
