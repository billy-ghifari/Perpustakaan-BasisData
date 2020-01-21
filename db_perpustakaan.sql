-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2018 at 01:30 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";ddb_perpustakaantb_pengembaliantb_pengembaliantb_pengembalianb_perpustakaan


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_anggota`
--

CREATE TABLE `tb_anggota` (
  `id_anggota` varchar(7) NOT NULL,
  `nama_anggota` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_hp` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_anggota`
--

INSERT INTO `tb_anggota` (`id_anggota`, `nama_anggota`, `jenis_kelamin`, `alamat`, `no_hp`) VALUES
('ANG-001', 'Adam Saleho', 'Laki-Laki', 'Taman Pondok  Jati No.69', '089876234765'),
('ANG-002', 'Gagah Primayoga', 'Laki-Laki', 'Semampir Selatan No.70', '089767565343'),
('ANG-003', 'Maudy Ayunda', 'Perempuan', 'Pejanten Timur No.69', '081234567765'),
('ANG-004', 'Irvan Alfaridzi', 'Laki - Laki', 'Sebelahe Warkop Suwun', '089789678567'),
('ANG-005', 'Suzuki Inui', 'Perempuan', 'Yoshinawa', '12312312412'),
('ANG-006', 'FX. Krisna', 'Laki - Laki', 'Menganti', '089675645');

-- --------------------------------------------------------

--
-- Table structure for table `tb_buku`
--

CREATE TABLE `tb_buku` (
  `kode_buku` varchar(7) NOT NULL,
  `jenis_buku` varchar(255) NOT NULL,
  `judul_buku` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `tahun_terbit` varchar(4) NOT NULL,
  `jumlah_buku` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_buku`
--

INSERT INTO `tb_buku` (`kode_buku`, `jenis_buku`, `judul_buku`, `penulis`, `penerbit`, `tahun_terbit`, `jumlah_buku`) VALUES
('KO1-001', 'Novel', 'Laskar Pelangi', 'Andrea Hirata', 'Bentang Pustaka', '2007', 4),
('KO1-002', 'Novel', 'Supernova: Ksatria, Putri, dan Bintang Jatuh', 'Dewi Lestari', 'Truedee Books', '2001', 1),
('KO2-001', 'Novel', 'Ronggeng Dukuh Paruk', 'Ahmad Tohari', 'Gramedia Pustaka Utama', '2003', 3),
('KO3-001', 'Novel', 'Sang Pemimpi', 'Andrea Hirata', 'Bentang Pusaka', '2007', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_peminjaman`
--

CREATE TABLE `tb_peminjaman` (
  `kode_peminjaman` varchar(7) NOT NULL,
  `nama_anggota` varchar(255) NOT NULL,
  `kode_buku` varchar(7) NOT NULL,
  `judul_buku` varchar(255) NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_kembali` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengembalian`
--

CREATE TABLE `tb_pengembalian` (
  `kode_pengembalian` varchar(7) NOT NULL,
  `nama_anggota` varchar(255) NOT NULL,
  `kode_buku` varchar(7) NOT NULL,
  `judul_buku` varchar(255) NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `keterlambatan` int(3) DEFAULT NULL,
  `denda` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pengembalian`
--

INSERT INTO `tb_pengembalian` (`kode_pengembalian`, `nama_anggota`, `kode_buku`, `judul_buku`, `tanggal_pinjam`, `tanggal_kembali`, `keterlambatan`, `denda`) VALUES
('KEM-001', 'Suzuki Inui', 'KO1-002', 'Supernova: Ksatrian, Puter, dan Bintang Jatuhi', '2018-07-15', '2018-07-23', 1, 250),
('KEM-002', 'Irvan Alfaridzi', 'KO3-001', 'Sang Pemimpi', '2018-07-15', '2018-07-17', 0, 0),
('KEM-003', 'FX. Krisna', 'KO2-001', 'Ronggeng Dukuh Paruk', '2018-08-06', '2018-08-07', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` varchar(7) NOT NULL,
  `nama_user` varchar(255) NOT NULL,
  `password` varchar(10) NOT NULL,
  `hak_akses` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nama_user`, `password`, `hak_akses`) VALUES
('ghozzy', 'Ghozzy Siemens', 'ghozzy', 'Teknisi'),
('sembara', 'Sebastianus Sembara', 'sembara', 'Kepala Perpustakaan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_anggota`
--
ALTER TABLE `tb_anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indexes for table `tb_buku`
--
ALTER TABLE `tb_buku`
  ADD PRIMARY KEY (`kode_buku`);

--
-- Indexes for table `tb_peminjaman`
--
ALTER TABLE `tb_peminjaman`
  ADD PRIMARY KEY (`kode_peminjaman`);

--
-- Indexes for table `tb_pengembalian`
--
ALTER TABLE `tb_pengembalian`
  ADD PRIMARY KEY (`kode_pengembalian`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
db_perpustakaantb_anggotatb_anggotatb_usertb_user