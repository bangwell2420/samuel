-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Jun 2023 pada 09.09
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `suratku`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_disposisi`
--

CREATE TABLE `tb_disposisi` (
  `id_disposisi` int(11) NOT NULL,
  `tujuan` varchar(50) NOT NULL,
  `isi_disposisi` text NOT NULL,
  `sifat` varchar(20) NOT NULL,
  `catatan` text NOT NULL,
  `id_suratmasuk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_instansi`
--

CREATE TABLE `tb_instansi` (
  `id_instansi` int(11) NOT NULL,
  `institusi` varchar(250) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `status` varchar(250) NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `kepala` varchar(250) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `notelp` varchar(50) NOT NULL,
  `logo` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_instansi`
--

INSERT INTO `tb_instansi` (`id_instansi`, `institusi`, `nama`, `status`, `alamat`, `kepala`, `nip`, `email`, `notelp`, `logo`) VALUES
(1, 'PT Nesva', 'Bubuk Jahe Merah', 'Pabrik', 'Jalan Sutomo No.18 Pematang Raya', 'Evaria Mona Purba', '123456789123', '  samuelsumbayak2000@gmail.com', '   082261937394', 'table-lamp-g060914fd9_640.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_klasifikasi`
--

CREATE TABLE `tb_klasifikasi` (
  `id_klasifikasi` int(11) NOT NULL,
  `kode_klasifikasi` varchar(20) NOT NULL,
  `judul_klasifikasi` varchar(250) NOT NULL,
  `keterangan` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_klasifikasi`
--

INSERT INTO `tb_klasifikasi` (`id_klasifikasi`, `kode_klasifikasi`, `judul_klasifikasi`, `keterangan`) VALUES
(2, 'BESAR', '300 gr', 'ppt\r\n'),
(3, 'sedang', '100 gr', ' ready\r\n'),
(4, 'kecil', '1', '1\r\n'),
(5, 'e', 'e', 'e'),
(6, 'ew', 'wewed', 'wedwe'),
(7, 'wwe', 'wwewd', 'wwed'),
(8, 'wewe', 'wdwef', 'wewewe'),
(9, 'edwed', 'wewe', 'wewe'),
(10, 'erferf', 'feferfe', 'erferfe'),
(11, 'wefewf', 'ewfwef', 'weFwef'),
(12, 'aefwefa', 'aaefae', 'wefef');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_suratkeluar`
--

CREATE TABLE `tb_suratkeluar` (
  `id_suratkeluar` int(11) NOT NULL,
  `no_suratkeluar` varchar(50) NOT NULL,
  `lampiran` text NOT NULL,
  `tujuan_surat` varchar(250) NOT NULL,
  `kode_klasifikasi` varchar(50) NOT NULL,
  `kepada` text NOT NULL,
  `perihal` text NOT NULL,
  `isi_surat` text NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_keluar` date NOT NULL,
  `file_suratkeluar` varchar(250) NOT NULL,
  `ket_suratkeluar` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_suratkeluar`
--

INSERT INTO `tb_suratkeluar` (`id_suratkeluar`, `no_suratkeluar`, `lampiran`, `tujuan_surat`, `kode_klasifikasi`, `kepada`, `perihal`, `isi_surat`, `tgl_surat`, `tgl_keluar`, `file_suratkeluar`, `ket_suratkeluar`) VALUES
(45, '789', '1', 'cvbcvbcbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb', '01', '1. Contrary to popular belief\r\n\r\n2. Contrary to popular belief\r\n3. Contrary to popular belief\r\n4. Contrary to popular belief\r\n\r\n1. Contrary to popular belief\r\n\r\n5. Contrary to popular belief\r\n6. Contrary to popular belief', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dumm</p>\r\n', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', '2023-03-30', '2023-03-30', '32162_Group 95.png', 'jlkjkllllllllllllllllllllllll');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_suratmasuk`
--

CREATE TABLE `tb_suratmasuk` (
  `id_suratmasuk` int(11) NOT NULL,
  `no_suratmasuk` varchar(50) NOT NULL,
  `no_agenda` varchar(50) NOT NULL,
  `asal_surat` varchar(250) NOT NULL,
  `kode_klasifikasi` varchar(50) NOT NULL,
  `isi_surat` text NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_diterima` date NOT NULL,
  `file_suratmasuk` varchar(250) NOT NULL,
  `ket_suratmasuk` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_suratmasuk`
--

INSERT INTO `tb_suratmasuk` (`id_suratmasuk`, `no_suratmasuk`, `no_agenda`, `asal_surat`, `kode_klasifikasi`, `isi_surat`, `tgl_surat`, `tgl_diterima`, `file_suratmasuk`, `ket_suratmasuk`) VALUES
(1, '1', '300 gr', 'Pt Nesva', 'BESAR', '<p>prduk untuk kantor bupati</p>\r\n<quillbot-extension-portal></quillbot-extension-portal>', '2023-06-07', '2023-06-07', '22718_CC.jpg', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `username`, `password`, `nama`, `level`) VALUES
(1, 'SumbayakWell', '082166127790', 'Evaria Mona Purba', 'Admin'),
(7, 'staf', 'staf', 'staf', 'Admin'),
(8, 'riswan', '12345', 'riswan simbolon', 'Admin'),
(9, 'staf', '12345', 'samuel', 'Staf');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_disposisi`
--
ALTER TABLE `tb_disposisi`
  ADD PRIMARY KEY (`id_disposisi`);

--
-- Indeks untuk tabel `tb_instansi`
--
ALTER TABLE `tb_instansi`
  ADD PRIMARY KEY (`id_instansi`);

--
-- Indeks untuk tabel `tb_klasifikasi`
--
ALTER TABLE `tb_klasifikasi`
  ADD PRIMARY KEY (`id_klasifikasi`);

--
-- Indeks untuk tabel `tb_suratkeluar`
--
ALTER TABLE `tb_suratkeluar`
  ADD PRIMARY KEY (`id_suratkeluar`);

--
-- Indeks untuk tabel `tb_suratmasuk`
--
ALTER TABLE `tb_suratmasuk`
  ADD PRIMARY KEY (`id_suratmasuk`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_disposisi`
--
ALTER TABLE `tb_disposisi`
  MODIFY `id_disposisi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_instansi`
--
ALTER TABLE `tb_instansi`
  MODIFY `id_instansi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_klasifikasi`
--
ALTER TABLE `tb_klasifikasi`
  MODIFY `id_klasifikasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tb_suratkeluar`
--
ALTER TABLE `tb_suratkeluar`
  MODIFY `id_suratkeluar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT untuk tabel `tb_suratmasuk`
--
ALTER TABLE `tb_suratmasuk`
  MODIFY `id_suratmasuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
