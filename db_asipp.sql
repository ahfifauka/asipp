-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 17, 2024 at 11:39 AM
-- Server version: 5.7.33
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_asipp`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `tb_berita`
--

CREATE TABLE `tb_berita` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `gambar` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isi` text COLLATE utf8_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `id_user` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `view` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `tb_histori_akses`
--

CREATE TABLE `tb_histori_akses` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `tb_laporan_akhir_penelitian`
--

CREATE TABLE `tb_laporan_akhir_penelitian` (
  `id` int(11) UNSIGNED NOT NULL,
  `judul_penelitian` bigint(20) NOT NULL DEFAULT '0',
  `lama_penelitian` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `lama_penelitian_riil` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `file` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `jenis_luaran` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `jenis_luaran1` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `jenis_luaran2` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `jenis_luaran3` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `luaran` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_dosen` bigint(20) NOT NULL,
  `tanggal` date NOT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `tb_laporan_akhir_pengabmas`
--

CREATE TABLE `tb_laporan_akhir_pengabmas` (
  `id` int(11) UNSIGNED NOT NULL,
  `judul_pengabmas` bigint(20) NOT NULL DEFAULT '0',
  `lama_pengabmas` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `lama_pengabmas_riil` int(11) NOT NULL,
  `file` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `jenis_luaran` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `jenis_luaran1` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `jenis_luaran2` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `jenis_luaran3` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `luaran` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `id_dosen` bigint(20) NOT NULL,
  `tanggal` date NOT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `tb_laporan_kemajuan_penelitian`
--

CREATE TABLE `tb_laporan_kemajuan_penelitian` (
  `id` int(11) UNSIGNED NOT NULL,
  `judul_penelitian` bigint(20) NOT NULL DEFAULT '0',
  `presentase_kemajuan` int(11) NOT NULL,
  `file` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jenis_berkas` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_dosen` bigint(20) NOT NULL,
  `tanggal` date NOT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `tb_laporan_kemajuan_pengabmas`
--

CREATE TABLE `tb_laporan_kemajuan_pengabmas` (
  `id` int(11) UNSIGNED NOT NULL,
  `judul_pengabmas` bigint(20) NOT NULL DEFAULT '0',
  `presentase_kemajuan` int(11) NOT NULL,
  `file` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `jenis_berkas` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_dosen` bigint(20) NOT NULL,
  `tanggal` date NOT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `tb_lookbook_penelitian`
--

CREATE TABLE `tb_lookbook_penelitian` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_usulan` bigint(20) NOT NULL,
  `judul_kegiatan` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `jenis_kegiatan` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tanggal` date NOT NULL,
  `catatan` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `tb_lookbook_pengabmas`
--

CREATE TABLE `tb_lookbook_pengabmas` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_usulan` bigint(20) NOT NULL,
  `judul_kegiatan` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `jenis_kegiatan` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tanggal` date NOT NULL,
  `catatan` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengaturan`
--

CREATE TABLE `tb_pengaturan` (
  `id` int(11) NOT NULL,
  `nama_instansi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lembaga` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nama_lembaga` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ketua_lembaga` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ketua_nik` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alamat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kota` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telepon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_pengaturan`
--

INSERT INTO `tb_pengaturan` (`id`, `nama_instansi`, `lembaga`, `nama_lembaga`, `ketua_lembaga`, `ketua_nik`, `logo`, `alamat`, `kota`, `telepon`, `email`, `website`, `updated_at`) VALUES
(1, 'UNISOFT', 'LPPM', 'LEMBAGA PENELITIAN DAN PENGABDIAN MASYARAKAT', 'Gunawan, M.Kom,.', '123456', 'assets/image/logo/logo.png', 'Jl. Indonesia Raya No.123', 'Purwokerto', '(0281) 12345678', 'info@unisoft.edu', 'unisoft.edu', '2022-09-05 08:24:59');

-- --------------------------------------------------------

--
-- Table structure for table `tb_petunjuk`
--

CREATE TABLE `tb_petunjuk` (
  `id` int(11) NOT NULL,
  `petunjuk` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tb_petunjuk`
--

INSERT INTO `tb_petunjuk` (`id`, `petunjuk`, `created_at`, `updated_at`) VALUES
(1, '<p>Petunjuk upload laporan penelitian dan pengabdian kepada masyarakat di ASIPP, berikut panduannya:</p>', '2022-01-19 12:00:54', '2021-08-29 06:01:18');

-- --------------------------------------------------------

--
-- Table structure for table `tb_reviewer_penelitian`
--

CREATE TABLE `tb_reviewer_penelitian` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_usulan` bigint(20) NOT NULL,
  `reviewer1` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reviewer2` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `status` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `jenis` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jenis_laporan` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `tb_reviewer_pengabmas`
--

CREATE TABLE `tb_reviewer_pengabmas` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_usulan` bigint(20) NOT NULL,
  `reviewer1` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reviewer2` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `status` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `jenis` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jenis_laporan` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `tb_surattugas_penelitian`
--

CREATE TABLE `tb_surattugas_penelitian` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_lookbook` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `no_surat` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `nama_ketua` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `anggota_internal1` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `anggota_internal2` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `anggota_internal3` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `anggota_internal4` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `anggota_eksternal1` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `anggota_eksternal2` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `anggota_eksternal3` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `anggota_eksternal4` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `judul_penelitian` text COLLATE utf8_unicode_ci NOT NULL,
  `lama_penelitian` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `mahasiswa` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `alumni` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `admin` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `afiliasi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tempat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `transport` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `afiliasi_internal1` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `afiliasi_internal2` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `afiliasi_internal3` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `afiliasi_internal4` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `afiliasi_eksternal1` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `afiliasi_eksternal2` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `afiliasi_eksternal3` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `afiliasi_eksternal4` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `afiliasi_mahasiswa` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `afiliasi_alumni` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `afiliasi_admin` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `keperluan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tb_surattugas_pengabmas`
--

CREATE TABLE `tb_surattugas_pengabmas` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_lookbook` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `no_surat` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `nama_ketua` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `anggota_internal1` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `anggota_internal2` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `anggota_internal3` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `anggota_internal4` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `anggota_eksternal1` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `anggota_eksternal2` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `anggota_eksternal3` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `anggota_eksternal4` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `judul_pengabmas` text COLLATE utf8_unicode_ci NOT NULL,
  `lama_pengabmas` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `mahasiswa` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `alumni` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `admin` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `afiliasi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tempat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `transport` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `afiliasi_internal1` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `afiliasi_internal2` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `afiliasi_internal3` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `afiliasi_internal4` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `afiliasi_eksternal1` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `afiliasi_eksternal2` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `afiliasi_eksternal3` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `afiliasi_eksternal4` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `afiliasi_mahasiswa` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `afiliasi_alumni` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `afiliasi_admin` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `keperluan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tb_tanggapan_penelitian`
--

CREATE TABLE `tb_tanggapan_penelitian` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_usulan` bigint(20) NOT NULL,
  `id_reviewer` bigint(20) NOT NULL,
  `tanggapan` longtext COLLATE utf8_unicode_ci NOT NULL,
  `file` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nilai_1` int(11) NOT NULL,
  `nilai_2` int(11) NOT NULL,
  `nilai_3` int(11) NOT NULL,
  `nilai_4` int(11) NOT NULL,
  `nilai_5` int(11) NOT NULL,
  `nilai_6` int(11) NOT NULL DEFAULT '0',
  `tanggal` date NOT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `jenis_laporan` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `tb_tanggapan_pengabmas`
--

CREATE TABLE `tb_tanggapan_pengabmas` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_usulan` bigint(20) NOT NULL,
  `id_reviewer` bigint(20) NOT NULL,
  `tanggapan` longtext COLLATE utf8_unicode_ci NOT NULL,
  `file` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nilai_1` int(11) NOT NULL,
  `nilai_2` int(11) NOT NULL,
  `nilai_3` int(11) NOT NULL,
  `nilai_4` int(11) NOT NULL,
  `nilai_5` int(11) NOT NULL,
  `nilai_6` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `jenis_laporan` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `tb_unduh`
--

CREATE TABLE `tb_unduh` (
  `id` int(11) NOT NULL,
  `file` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `id_status` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tb_unduh`
--

INSERT INTO `tb_unduh` (`id`, `file`, `keterangan`, `tanggal`, `id_status`, `created_at`, `updated_at`) VALUES
(1, 'PANDUAN PENELITIAN.pdf', 'PANDUAN PENELITIAN', '2021-09-02', 1, '2022-01-19 20:39:21', '2021-09-02 01:20:11'),
(2, 'PANDUAN PKM.pdf', 'PANDUAN PKM', '2021-09-02', 2, '2022-01-19 20:39:15', '2021-09-02 01:20:34'),
(3, 'Panduan ASIPP untuk Dosen.pdf', 'Panduan ASIPP untuk Dosen', '2021-09-09', 0, '2022-01-19 20:39:11', '2021-09-09 04:59:55'),
(4, 'Panduan ASIPP untuk Operator.pdf', 'Panduan ASIPP untuk Operator', '2021-09-09', 0, '2022-01-19 20:39:08', '2021-09-09 05:00:20'),
(5, 'Panduan ASIPP untuk Reviewer.pdf', 'Panduan ASIPP untuk Reviewer', '2021-09-09', 0, '2021-09-09 05:00:39', '2021-09-09 05:00:39');

-- --------------------------------------------------------

--
-- Table structure for table `tb_usulan_penelitian`
--

CREATE TABLE `tb_usulan_penelitian` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_usulan` bigint(20) NOT NULL,
  `nama_ketua` bigint(20) NOT NULL DEFAULT '0',
  `anggota_internal1` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `anggota_internal2` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `anggota_internal3` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `anggota_internal4` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `anggota_eksternal1` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `anggota_eksternal2` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `anggota_eksternal3` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `anggota_eksternal4` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `judul_penelitian` text COLLATE utf8_unicode_ci NOT NULL,
  `file` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `jenis_penelitian` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nama_institusi` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `alamat` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tahun_pelaksanaan` int(11) NOT NULL,
  `biaya_mandiri` int(11) NOT NULL,
  `biaya_hibah_pt` int(11) NOT NULL,
  `biaya_hibah_luar` int(11) NOT NULL,
  `pemberi_hibah` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `id_dosen` bigint(20) NOT NULL,
  `tanggal` date NOT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `user_confirm` int(11) NOT NULL,
  `luaran_wajib` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `luaran_tambahan` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mahasiswa` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `alumni` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `admin` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `tb_usulan_pengabmas`
--

CREATE TABLE `tb_usulan_pengabmas` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_usulan` bigint(20) NOT NULL,
  `nama_ketua` bigint(20) NOT NULL DEFAULT '0',
  `anggota_internal1` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `anggota_internal2` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `anggota_internal3` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `anggota_internal4` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `anggota_eksternal1` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `anggota_eksternal2` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `anggota_eksternal3` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `anggota_eksternal4` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `judul_pengabmas` text COLLATE utf8_unicode_ci NOT NULL,
  `file` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `jenis_pengabmas` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nama_institusi` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `alamat` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tahun_pelaksanaan` int(11) NOT NULL,
  `biaya_mandiri` int(11) NOT NULL,
  `biaya_hibah_pt` int(11) NOT NULL,
  `biaya_hibah_luar` int(11) NOT NULL,
  `pemberi_hibah` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `id_dosen` bigint(20) NOT NULL,
  `tanggal` date NOT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `user_confirm` int(11) NOT NULL,
  `luaran_wajib` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `luaran_tambahan` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mahasiswa` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `alumni` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `admin` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `foto` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_view` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nik` bigint(20) NOT NULL,
  `nidn` int(11) DEFAULT NULL,
  `jafung` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `institusi` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fakultas` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `program_studi` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `no_handphone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pin` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `foto`, `name`, `email`, `username`, `password`, `password_view`, `nik`, `nidn`, `jafung`, `institusi`, `fakultas`, `program_studi`, `no_handphone`, `level`, `remember_token`, `pin`, `created_at`, `updated_at`) VALUES
(1, 'default.png', 'Administrator', 'admin@gmail.com', 'admin', '$2y$10$As7ScPRr5qySQnFj3HBiQ.S292086.28.MZP7w5RxpgVDYhfgvjeq', 'admin123456789', 123, 123, '-', 'Test', '-', '-', '0812456789', 1, 'asz5gfKyYJK8AjjBAyvyCjYhCwR1wJr7BPZXCrV57KOgzPIZYiF74T1fo0Wj', 1, '2020-08-19 04:23:21', '2024-01-17 11:36:02'),
(2, 'default.png', 'Operator ASIPP', 'lppm@gmail.com', 'operator', '$2y$10$2k8L7Smoqc3b2iKDFsrBhO7IViJq6M84FglKLWnb8eBcKOmVnW20.', '123456789', 4567, NULL, '-', '', '-', '-', '0812456789', 3, 'wx8GVirZnCmnNNPm1D51SHOrd2OxXJ51OSPoA25xHZDqgKhaHPo3Kdhjpc7S', 3, '2020-07-13 06:58:22', '2024-01-17 11:27:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_berita`
--
ALTER TABLE `tb_berita`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `tb_histori_akses`
--
ALTER TABLE `tb_histori_akses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_histori_akses_ibfk_1` (`email`);

--
-- Indexes for table `tb_laporan_akhir_penelitian`
--
ALTER TABLE `tb_laporan_akhir_penelitian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `judul_penelitian` (`judul_penelitian`),
  ADD KEY `id_dosen` (`id_dosen`);

--
-- Indexes for table `tb_laporan_akhir_pengabmas`
--
ALTER TABLE `tb_laporan_akhir_pengabmas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `judul_pengabmas` (`judul_pengabmas`),
  ADD KEY `id_dosen` (`id_dosen`);

--
-- Indexes for table `tb_laporan_kemajuan_penelitian`
--
ALTER TABLE `tb_laporan_kemajuan_penelitian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `judul_penelitian` (`judul_penelitian`),
  ADD KEY `id_dosen` (`id_dosen`);

--
-- Indexes for table `tb_laporan_kemajuan_pengabmas`
--
ALTER TABLE `tb_laporan_kemajuan_pengabmas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `judul_pengabmas` (`judul_pengabmas`),
  ADD KEY `id_dosen` (`id_dosen`);

--
-- Indexes for table `tb_lookbook_penelitian`
--
ALTER TABLE `tb_lookbook_penelitian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user` (`user`),
  ADD KEY `id_usulan` (`id_usulan`);

--
-- Indexes for table `tb_lookbook_pengabmas`
--
ALTER TABLE `tb_lookbook_pengabmas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user` (`user`),
  ADD KEY `id_usulan` (`id_usulan`);

--
-- Indexes for table `tb_pengaturan`
--
ALTER TABLE `tb_pengaturan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_petunjuk`
--
ALTER TABLE `tb_petunjuk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_reviewer_penelitian`
--
ALTER TABLE `tb_reviewer_penelitian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usulan` (`id_usulan`),
  ADD KEY `reviewer1` (`reviewer1`),
  ADD KEY `reviewer2` (`reviewer2`);

--
-- Indexes for table `tb_reviewer_pengabmas`
--
ALTER TABLE `tb_reviewer_pengabmas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usulan` (`id_usulan`),
  ADD KEY `reviewer1` (`reviewer1`),
  ADD KEY `reviewer2` (`reviewer2`);

--
-- Indexes for table `tb_surattugas_penelitian`
--
ALTER TABLE `tb_surattugas_penelitian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_lookbook` (`id_lookbook`);

--
-- Indexes for table `tb_surattugas_pengabmas`
--
ALTER TABLE `tb_surattugas_pengabmas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_lookbook` (`id_lookbook`);

--
-- Indexes for table `tb_tanggapan_penelitian`
--
ALTER TABLE `tb_tanggapan_penelitian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usulan` (`id_usulan`),
  ADD KEY `id_reviewer` (`id_reviewer`);

--
-- Indexes for table `tb_tanggapan_pengabmas`
--
ALTER TABLE `tb_tanggapan_pengabmas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usulan` (`id_usulan`),
  ADD KEY `id_reviewer` (`id_reviewer`);

--
-- Indexes for table `tb_unduh`
--
ALTER TABLE `tb_unduh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_usulan_penelitian`
--
ALTER TABLE `tb_usulan_penelitian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usulan` (`id_usulan`),
  ADD KEY `id_dosen` (`id_dosen`);

--
-- Indexes for table `tb_usulan_pengabmas`
--
ALTER TABLE `tb_usulan_pengabmas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usulan` (`id_usulan`),
  ADD KEY `id_dosen` (`id_dosen`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `nik` (`nik`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_berita`
--
ALTER TABLE `tb_berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_histori_akses`
--
ALTER TABLE `tb_histori_akses`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_laporan_akhir_penelitian`
--
ALTER TABLE `tb_laporan_akhir_penelitian`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_laporan_akhir_pengabmas`
--
ALTER TABLE `tb_laporan_akhir_pengabmas`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_laporan_kemajuan_penelitian`
--
ALTER TABLE `tb_laporan_kemajuan_penelitian`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_laporan_kemajuan_pengabmas`
--
ALTER TABLE `tb_laporan_kemajuan_pengabmas`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_lookbook_penelitian`
--
ALTER TABLE `tb_lookbook_penelitian`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_lookbook_pengabmas`
--
ALTER TABLE `tb_lookbook_pengabmas`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_pengaturan`
--
ALTER TABLE `tb_pengaturan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_petunjuk`
--
ALTER TABLE `tb_petunjuk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_reviewer_penelitian`
--
ALTER TABLE `tb_reviewer_penelitian`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_reviewer_pengabmas`
--
ALTER TABLE `tb_reviewer_pengabmas`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_surattugas_penelitian`
--
ALTER TABLE `tb_surattugas_penelitian`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_surattugas_pengabmas`
--
ALTER TABLE `tb_surattugas_pengabmas`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_tanggapan_penelitian`
--
ALTER TABLE `tb_tanggapan_penelitian`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_tanggapan_pengabmas`
--
ALTER TABLE `tb_tanggapan_pengabmas`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_unduh`
--
ALTER TABLE `tb_unduh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_usulan_penelitian`
--
ALTER TABLE `tb_usulan_penelitian`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_usulan_pengabmas`
--
ALTER TABLE `tb_usulan_pengabmas`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_berita`
--
ALTER TABLE `tb_berita`
  ADD CONSTRAINT `tb_berita_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Constraints for table `tb_histori_akses`
--
ALTER TABLE `tb_histori_akses`
  ADD CONSTRAINT `tb_histori_akses_ibfk_1` FOREIGN KEY (`email`) REFERENCES `users` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_laporan_akhir_penelitian`
--
ALTER TABLE `tb_laporan_akhir_penelitian`
  ADD CONSTRAINT `tb_laporan_akhir_penelitian_ibfk_1` FOREIGN KEY (`judul_penelitian`) REFERENCES `tb_usulan_penelitian` (`id_usulan`),
  ADD CONSTRAINT `tb_laporan_akhir_penelitian_ibfk_2` FOREIGN KEY (`id_dosen`) REFERENCES `users` (`nik`);

--
-- Constraints for table `tb_laporan_akhir_pengabmas`
--
ALTER TABLE `tb_laporan_akhir_pengabmas`
  ADD CONSTRAINT `tb_laporan_akhir_pengabmas_ibfk_1` FOREIGN KEY (`judul_pengabmas`) REFERENCES `tb_usulan_pengabmas` (`id_usulan`),
  ADD CONSTRAINT `tb_laporan_akhir_pengabmas_ibfk_2` FOREIGN KEY (`id_dosen`) REFERENCES `users` (`nik`);

--
-- Constraints for table `tb_laporan_kemajuan_penelitian`
--
ALTER TABLE `tb_laporan_kemajuan_penelitian`
  ADD CONSTRAINT `tb_laporan_kemajuan_penelitian_ibfk_1` FOREIGN KEY (`judul_penelitian`) REFERENCES `tb_usulan_penelitian` (`id_usulan`),
  ADD CONSTRAINT `tb_laporan_kemajuan_penelitian_ibfk_2` FOREIGN KEY (`id_dosen`) REFERENCES `users` (`nik`);

--
-- Constraints for table `tb_laporan_kemajuan_pengabmas`
--
ALTER TABLE `tb_laporan_kemajuan_pengabmas`
  ADD CONSTRAINT `tb_laporan_kemajuan_pengabmas_ibfk_1` FOREIGN KEY (`judul_pengabmas`) REFERENCES `tb_usulan_pengabmas` (`id_usulan`),
  ADD CONSTRAINT `tb_laporan_kemajuan_pengabmas_ibfk_2` FOREIGN KEY (`id_dosen`) REFERENCES `users` (`nik`);

--
-- Constraints for table `tb_lookbook_penelitian`
--
ALTER TABLE `tb_lookbook_penelitian`
  ADD CONSTRAINT `tb_lookbook_penelitian_ibfk_1` FOREIGN KEY (`user`) REFERENCES `users` (`name`),
  ADD CONSTRAINT `tb_lookbook_penelitian_ibfk_2` FOREIGN KEY (`id_usulan`) REFERENCES `tb_usulan_penelitian` (`id_usulan`);

--
-- Constraints for table `tb_lookbook_pengabmas`
--
ALTER TABLE `tb_lookbook_pengabmas`
  ADD CONSTRAINT `tb_lookbook_pengabmas_ibfk_1` FOREIGN KEY (`user`) REFERENCES `users` (`name`),
  ADD CONSTRAINT `tb_lookbook_pengabmas_ibfk_2` FOREIGN KEY (`id_usulan`) REFERENCES `tb_usulan_pengabmas` (`id_usulan`);

--
-- Constraints for table `tb_reviewer_penelitian`
--
ALTER TABLE `tb_reviewer_penelitian`
  ADD CONSTRAINT `tb_reviewer_penelitian_ibfk_1` FOREIGN KEY (`id_usulan`) REFERENCES `tb_usulan_penelitian` (`id_usulan`),
  ADD CONSTRAINT `tb_reviewer_penelitian_ibfk_2` FOREIGN KEY (`reviewer1`) REFERENCES `users` (`name`),
  ADD CONSTRAINT `tb_reviewer_penelitian_ibfk_3` FOREIGN KEY (`reviewer2`) REFERENCES `users` (`name`);

--
-- Constraints for table `tb_reviewer_pengabmas`
--
ALTER TABLE `tb_reviewer_pengabmas`
  ADD CONSTRAINT `tb_reviewer_pengabmas_ibfk_1` FOREIGN KEY (`id_usulan`) REFERENCES `tb_usulan_pengabmas` (`id_usulan`),
  ADD CONSTRAINT `tb_reviewer_pengabmas_ibfk_2` FOREIGN KEY (`reviewer1`) REFERENCES `users` (`name`),
  ADD CONSTRAINT `tb_reviewer_pengabmas_ibfk_3` FOREIGN KEY (`reviewer2`) REFERENCES `users` (`name`);

--
-- Constraints for table `tb_surattugas_penelitian`
--
ALTER TABLE `tb_surattugas_penelitian`
  ADD CONSTRAINT `tb_surattugas_penelitian_ibfk_1` FOREIGN KEY (`id_lookbook`) REFERENCES `tb_lookbook_penelitian` (`id`);

--
-- Constraints for table `tb_surattugas_pengabmas`
--
ALTER TABLE `tb_surattugas_pengabmas`
  ADD CONSTRAINT `tb_surattugas_pengabmas_ibfk_1` FOREIGN KEY (`id_lookbook`) REFERENCES `tb_lookbook_pengabmas` (`id`);

--
-- Constraints for table `tb_tanggapan_penelitian`
--
ALTER TABLE `tb_tanggapan_penelitian`
  ADD CONSTRAINT `tb_tanggapan_penelitian_ibfk_1` FOREIGN KEY (`id_usulan`) REFERENCES `tb_usulan_penelitian` (`id_usulan`),
  ADD CONSTRAINT `tb_tanggapan_penelitian_ibfk_2` FOREIGN KEY (`id_reviewer`) REFERENCES `users` (`nik`);

--
-- Constraints for table `tb_tanggapan_pengabmas`
--
ALTER TABLE `tb_tanggapan_pengabmas`
  ADD CONSTRAINT `tb_tanggapan_pengabmas_ibfk_1` FOREIGN KEY (`id_usulan`) REFERENCES `tb_usulan_pengabmas` (`id_usulan`),
  ADD CONSTRAINT `tb_tanggapan_pengabmas_ibfk_2` FOREIGN KEY (`id_reviewer`) REFERENCES `users` (`nik`);

--
-- Constraints for table `tb_usulan_penelitian`
--
ALTER TABLE `tb_usulan_penelitian`
  ADD CONSTRAINT `tb_usulan_penelitian_ibfk_1` FOREIGN KEY (`id_dosen`) REFERENCES `users` (`nik`);

--
-- Constraints for table `tb_usulan_pengabmas`
--
ALTER TABLE `tb_usulan_pengabmas`
  ADD CONSTRAINT `tb_usulan_pengabmas_ibfk_1` FOREIGN KEY (`id_dosen`) REFERENCES `users` (`nik`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
