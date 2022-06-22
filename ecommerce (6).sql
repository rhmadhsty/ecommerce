-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Jun 2022 pada 06.11
-- Versi server: 10.1.31-MariaDB
-- Versi PHP: 7.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `adminname` varchar(50) NOT NULL,
  `adminpass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `adminname`, `adminpass`) VALUES
(1, 'admin', '321');

-- --------------------------------------------------------

--
-- Struktur dari tabel `album`
--

CREATE TABLE `album` (
  `id_album` int(11) NOT NULL,
  `id_posisi` int(11) NOT NULL,
  `foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `album`
--

INSERT INTO `album` (`id_album`, `id_posisi`, `foto`) VALUES
(3, 1, '62aaa28fe0a94.png'),
(4, 1, '62aaa2a7bba43.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bankwire`
--

CREATE TABLE `bankwire` (
  `id_bank` int(11) NOT NULL,
  `nama_bank` varchar(100) NOT NULL,
  `logo_bank` int(50) NOT NULL,
  `nama_akun` varchar(150) NOT NULL,
  `no_rekening` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bankwire`
--

INSERT INTO `bankwire` (`id_bank`, `nama_bank`, `logo_bank`, `nama_akun`, `no_rekening`) VALUES
(1, 'BCA', 62, 'Gilang RAmadan', '54545455');

-- --------------------------------------------------------

--
-- Struktur dari tabel `foto`
--

CREATE TABLE `foto` (
  `id_foto` int(11) NOT NULL,
  `file_foto` varchar(200) NOT NULL,
  `keterangan_foto` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `foto`
--

INSERT INTO `foto` (`id_foto`, `file_foto`, `keterangan_foto`) VALUES
(1, '629c227228dce.png', 'sfsdfsf'),
(2, '629c22ab50a48.jpg', 'addas'),
(3, '629c23417dcf8.jpg', 'wwee');

-- --------------------------------------------------------

--
-- Struktur dari tabel `galery`
--

CREATE TABLE `galery` (
  `id_galery` int(11) NOT NULL,
  `foto` int(11) NOT NULL,
  `vidio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `informasi`
--

CREATE TABLE `informasi` (
  `id_informasi` int(11) NOT NULL,
  `nama_menu` varchar(25) NOT NULL,
  `judul` varchar(150) NOT NULL,
  `body_informasi` text NOT NULL,
  `id_posisi` int(11) NOT NULL,
  `status_informasi` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `informasi`
--

INSERT INTO `informasi` (`id_informasi`, `nama_menu`, `judul`, `body_informasi`, `id_posisi`, `status_informasi`) VALUES
(24, 'tentang kami', 'brand jersey motorcross terkemuka di Indonesia.', '&lt;p&gt;&lt;strong&gt;&amp;nbsp; &amp;nbsp; &lt;span style=&quot;color:#e74c3c&quot;&gt;&amp;nbsp; Cross Rock&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;color:#e74c3c&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;strong&gt;Indonesia&lt;/strong&gt;&amp;nbsp;merupakan salah satu&amp;nbsp;&lt;strong&gt;brand jersey motorcross&amp;nbsp;terkemuka di Indonesia&lt;/strong&gt;.&amp;nbsp;Seperti halnya situs layanan jual-beli, kami&amp;nbsp;menyediakan produk yang&amp;nbsp;selalu tampil up-to-date, fresh dan komplit dan tentunya dijamin asli serta resmi.&amp;nbsp;&lt;q&gt;&lt;a href=&quot;http://Crossrockindo.com&quot;&gt;&lt;span style=&quot;color:#c0392b&quot;&gt;Crossrockindo.com&lt;/span&gt;&lt;/a&gt;&lt;/q&gt;&amp;nbsp;melayani pembeli dari seluruh Indonesia untuk transaksi satuan maupun banyak.&lt;/p&gt;\r\n', 1, 'Aktif'),
(26, 'Merah', '', '&lt;p&gt;Halo semuanya&lt;/p&gt;\r\n', 2, 'Aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori`) VALUES
(1, 'Jersey'),
(2, 'Jerset'),
(3, 'Motor'),
(4, 'Motor'),
(5, 'Motor'),
(6, 'Motor'),
(7, 'Motor');

-- --------------------------------------------------------

--
-- Struktur dari tabel `keranjang`
--

CREATE TABLE `keranjang` (
  `id_keranjang` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `total_harga` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kontak`
--

CREATE TABLE `kontak` (
  `id_kontak` int(11) NOT NULL,
  `alamat_kontak` text NOT NULL,
  `no_hp_admin` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kontak`
--

INSERT INTO `kontak` (`id_kontak`, `alamat_kontak`, `no_hp_admin`) VALUES
(1, 'alamt', '0821 2323 3234');

-- --------------------------------------------------------

--
-- Struktur dari tabel `media`
--

CREATE TABLE `media` (
  `id_media` int(11) NOT NULL,
  `nama_media` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `media`
--

INSERT INTO `media` (`id_media`, `nama_media`) VALUES
(1, 'Facebook'),
(2, 'Instagram'),
(3, 'Youtube'),
(4, 'Blogger');

-- --------------------------------------------------------

--
-- Struktur dari tabel `news`
--

CREATE TABLE `news` (
  `id_news` int(11) NOT NULL,
  `judul_news` varchar(20) NOT NULL,
  `foto_news` varchar(100) NOT NULL,
  `deskripsi_news` varchar(225) NOT NULL,
  `isi_news` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `news`
--

INSERT INTO `news` (`id_news`, `judul_news`, `foto_news`, `deskripsi_news`, `isi_news`) VALUES
(2, 'CROSSS', '6294e79264b53.png', 'Cross 44', '&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; wtwetwetewtewtwetwetwetwt&lt;/p&gt;\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id_order` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `id_keranjang` int(11) NOT NULL,
  `nama_pelanggan` varchar(70) NOT NULL,
  `total_harga` int(20) NOT NULL,
  `ongkir` varchar(20) NOT NULL,
  `status_pengiriman` int(50) NOT NULL,
  `jenis_ekpedisi` varchar(50) NOT NULL,
  `alamat_penerima` varchar(225) NOT NULL,
  `tanggal_order` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id_order`, `id_pelanggan`, `id_produk`, `id_keranjang`, `nama_pelanggan`, `total_harga`, `ongkir`, `status_pengiriman`, `jenis_ekpedisi`, `alamat_penerima`, `tanggal_order`) VALUES
(1, 2, 3, 4, 'GIlang Aldiano', 500000, '15000', 50, 'JNE', 'GIAFasf', '434 434'),
(2, 2, 3, 4, 'GIlang Aldiano', 500000, '15000', 50, 'JNE', 'GIAFasf', '434 434');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `f_name` varchar(25) NOT NULL,
  `l_name` varchar(25) NOT NULL,
  `username` varchar(125) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nohp` char(15) NOT NULL,
  `password` varchar(225) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `kode_pos` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `f_name`, `l_name`, `username`, `email`, `nohp`, `password`, `alamat`, `kode_pos`) VALUES
(1, 'hai', 'juga', 'gilang', 'sdad@dads', '2132132132', 'asd', 'adsdasd saddas sdada', 2332),
(2, 'alvi', 'dasda', 'adm', 'asdads@dasd', '3232', 'asdasd', 'dada sdads dasda', 321312),
(3, 'Alvin', 'Kurnia', 'aldi', 'alpin@gmail.com', '0895 5', '234', 'KAtapang Bandung katapang', 40921);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `nama_pentransfer` varchar(100) NOT NULL,
  `no_rekening` int(20) NOT NULL,
  `nama_bank` varchar(150) NOT NULL,
  `status_pembayaran` enum('done','undone','','') NOT NULL,
  `bukti_pembayaran` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `posisi`
--

CREATE TABLE `posisi` (
  `id_posisi` int(11) NOT NULL,
  `posisi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `posisi`
--

INSERT INTO `posisi` (`id_posisi`, `posisi`) VALUES
(1, 'Tentang Kami'),
(2, 'Pembayaran');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(50) NOT NULL,
  `warna` varchar(15) NOT NULL,
  `foto_produk` varchar(50) NOT NULL,
  `harga` int(10) NOT NULL,
  `promo` int(55) DEFAULT NULL,
  `persen` int(11) DEFAULT NULL,
  `deskripsi_produk` text NOT NULL,
  `berat` int(10) NOT NULL,
  `kategori` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `warna`, `foto_produk`, `harga`, `promo`, `persen`, `deskripsi_produk`, `berat`, `kategori`) VALUES
(30, 'CROSS', 'Merah', '629d64fbe2fa7.png', 49000, 24500, 50, '&lt;p&gt;HAI GUYS&lt;/p&gt;\r\n', 5000, 1),
(35, 'CROSS B', 'Biru', '62a805e0e3a8e.png', 50000, NULL, NULL, '&lt;p&gt;dfsfsdfsf&lt;/p&gt;\r\n', 434324, 2),
(36, 'CROSS', 'Kuning', 'dsad42432.jpg', 4000, 24500, 50, 'dsadadsad', 32113, 1),
(37, 'CROSS B ', 'Biru', '62a81ae81e49c.png', 50000, NULL, NULL, '&lt;p&gt;dsadasd&lt;/p&gt;\r\n', 4344, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `promo`
--

CREATE TABLE `promo` (
  `id_promo` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `promo` int(11) NOT NULL,
  `diskon` int(5) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `promo`
--

INSERT INTO `promo` (`id_promo`, `id_produk`, `promo`, `diskon`, `status`) VALUES
(3, 30, 24500, 0, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `slideshow`
--

CREATE TABLE `slideshow` (
  `id_slideshow` int(11) NOT NULL,
  `nama_slideshow` varchar(50) NOT NULL,
  `foto_slideshow` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `slideshow`
--

INSERT INTO `slideshow` (`id_slideshow`, `nama_slideshow`, `foto_slideshow`) VALUES
(3, 'ADADAd', '62961a0224253.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sosmed`
--

CREATE TABLE `sosmed` (
  `id_sosmed` int(11) NOT NULL,
  `nama_sosmed` int(10) NOT NULL,
  `link_sosmed` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sosmed`
--

INSERT INTO `sosmed` (`id_sosmed`, `nama_sosmed`, `link_sosmed`) VALUES
(10, 2, 'https://www.w3schools.com/icons/icons_reference.asp'),
(11, 1, 'adasdasda'),
(12, 3, 'dasdadasd'),
(13, 4, 'asdadasda');

-- --------------------------------------------------------

--
-- Struktur dari tabel `spesifik`
--

CREATE TABLE `spesifik` (
  `id_spesifik` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `ukuran` varchar(11) NOT NULL,
  `stok` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `spesifik`
--

INSERT INTO `spesifik` (`id_spesifik`, `id_produk`, `ukuran`, `stok`) VALUES
(13, 30, 'S', 3232),
(15, 30, 'M', 2000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `toko`
--

CREATE TABLE `toko` (
  `id_toko` int(11) NOT NULL,
  `nama_toko` varchar(50) NOT NULL,
  `foto_toko` varchar(100) NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `no_hp` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `toko`
--

INSERT INTO `toko` (`id_toko`, `nama_toko`, `foto_toko`, `alamat`, `no_hp`) VALUES
(2, 'Adasd', '629f133cf0006.jpg', 'Bandung', '3244324'),
(3, 'Adasd', '629f13adccebd.png', 'sdada', '03424324'),
(4, 'BAndung', '629f16ebe3593.png', 'dasdsad', '3244324'),
(5, 'asdas', '62a41f0b4da0b.png', 'sdadas', '0687876');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ukuran`
--

CREATE TABLE `ukuran` (
  `id_ukuran` int(11) NOT NULL,
  `ukuran` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ukuran`
--

INSERT INTO `ukuran` (`id_ukuran`, `ukuran`) VALUES
(1, 'S'),
(2, 'M'),
(3, 'L'),
(4, 'XL');

-- --------------------------------------------------------

--
-- Struktur dari tabel `vidio`
--

CREATE TABLE `vidio` (
  `id_vidio` int(11) NOT NULL,
  `link_vidio` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `warna`
--

CREATE TABLE `warna` (
  `id_warna` int(11) NOT NULL,
  `warna` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `warna`
--

INSERT INTO `warna` (`id_warna`, `warna`) VALUES
(1, 'Merah'),
(2, 'Biru'),
(3, 'Kuning');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`),
  ADD UNIQUE KEY `adminname` (`adminname`);

--
-- Indeks untuk tabel `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id_album`),
  ADD KEY `id_posisi` (`id_posisi`);

--
-- Indeks untuk tabel `bankwire`
--
ALTER TABLE `bankwire`
  ADD PRIMARY KEY (`id_bank`),
  ADD UNIQUE KEY `no_rekening` (`no_rekening`);

--
-- Indeks untuk tabel `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`id_foto`);

--
-- Indeks untuk tabel `galery`
--
ALTER TABLE `galery`
  ADD PRIMARY KEY (`id_galery`),
  ADD KEY `foto` (`foto`),
  ADD KEY `vidio` (`vidio`);

--
-- Indeks untuk tabel `informasi`
--
ALTER TABLE `informasi`
  ADD PRIMARY KEY (`id_informasi`),
  ADD KEY `posisi_informasi` (`id_posisi`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id_keranjang`);

--
-- Indeks untuk tabel `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id_kontak`);

--
-- Indeks untuk tabel `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id_media`);

--
-- Indeks untuk tabel `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id_news`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_order`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indeks untuk tabel `posisi`
--
ALTER TABLE `posisi`
  ADD PRIMARY KEY (`id_posisi`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`),
  ADD KEY `kategori` (`kategori`);

--
-- Indeks untuk tabel `promo`
--
ALTER TABLE `promo`
  ADD PRIMARY KEY (`id_promo`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indeks untuk tabel `slideshow`
--
ALTER TABLE `slideshow`
  ADD PRIMARY KEY (`id_slideshow`);

--
-- Indeks untuk tabel `sosmed`
--
ALTER TABLE `sosmed`
  ADD PRIMARY KEY (`id_sosmed`),
  ADD KEY `nama_sosmed` (`nama_sosmed`);

--
-- Indeks untuk tabel `spesifik`
--
ALTER TABLE `spesifik`
  ADD PRIMARY KEY (`id_spesifik`),
  ADD KEY `id_produk` (`id_produk`),
  ADD KEY `id_ukuran` (`ukuran`);

--
-- Indeks untuk tabel `toko`
--
ALTER TABLE `toko`
  ADD PRIMARY KEY (`id_toko`);

--
-- Indeks untuk tabel `ukuran`
--
ALTER TABLE `ukuran`
  ADD PRIMARY KEY (`id_ukuran`);

--
-- Indeks untuk tabel `vidio`
--
ALTER TABLE `vidio`
  ADD PRIMARY KEY (`id_vidio`);

--
-- Indeks untuk tabel `warna`
--
ALTER TABLE `warna`
  ADD PRIMARY KEY (`id_warna`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `album`
--
ALTER TABLE `album`
  MODIFY `id_album` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `bankwire`
--
ALTER TABLE `bankwire`
  MODIFY `id_bank` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `foto`
--
ALTER TABLE `foto`
  MODIFY `id_foto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `galery`
--
ALTER TABLE `galery`
  MODIFY `id_galery` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `informasi`
--
ALTER TABLE `informasi`
  MODIFY `id_informasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id_keranjang` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id_kontak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `media`
--
ALTER TABLE `media`
  MODIFY `id_media` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `news`
--
ALTER TABLE `news`
  MODIFY `id_news` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `posisi`
--
ALTER TABLE `posisi`
  MODIFY `id_posisi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `promo`
--
ALTER TABLE `promo`
  MODIFY `id_promo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `slideshow`
--
ALTER TABLE `slideshow`
  MODIFY `id_slideshow` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `sosmed`
--
ALTER TABLE `sosmed`
  MODIFY `id_sosmed` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `spesifik`
--
ALTER TABLE `spesifik`
  MODIFY `id_spesifik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `toko`
--
ALTER TABLE `toko`
  MODIFY `id_toko` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `ukuran`
--
ALTER TABLE `ukuran`
  MODIFY `id_ukuran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `vidio`
--
ALTER TABLE `vidio`
  MODIFY `id_vidio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `warna`
--
ALTER TABLE `warna`
  MODIFY `id_warna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `album_ibfk_1` FOREIGN KEY (`id_posisi`) REFERENCES `posisi` (`id_posisi`);

--
-- Ketidakleluasaan untuk tabel `galery`
--
ALTER TABLE `galery`
  ADD CONSTRAINT `galery_ibfk_1` FOREIGN KEY (`foto`) REFERENCES `foto` (`id_foto`),
  ADD CONSTRAINT `galery_ibfk_2` FOREIGN KEY (`vidio`) REFERENCES `vidio` (`id_vidio`);

--
-- Ketidakleluasaan untuk tabel `informasi`
--
ALTER TABLE `informasi`
  ADD CONSTRAINT `informasi_ibfk_1` FOREIGN KEY (`id_posisi`) REFERENCES `posisi` (`id_posisi`);

--
-- Ketidakleluasaan untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_ibfk_1` FOREIGN KEY (`kategori`) REFERENCES `kategori` (`id_kategori`);

--
-- Ketidakleluasaan untuk tabel `promo`
--
ALTER TABLE `promo`
  ADD CONSTRAINT `promo_ibfk_1` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`);

--
-- Ketidakleluasaan untuk tabel `sosmed`
--
ALTER TABLE `sosmed`
  ADD CONSTRAINT `sosmed_ibfk_1` FOREIGN KEY (`nama_sosmed`) REFERENCES `media` (`id_media`);

--
-- Ketidakleluasaan untuk tabel `spesifik`
--
ALTER TABLE `spesifik`
  ADD CONSTRAINT `spesifik_ibfk_1` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
