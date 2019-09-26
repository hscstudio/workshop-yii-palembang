-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2019 at 09:57 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `go-cinemadb`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `schedule_id` int(11) NOT NULL,
  `amount` int(3) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m130524_201442_init', 1569376588),
('m190124_110200_add_verification_token_column_to_user_table', 1569376588);

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `genre` varchar(25) DEFAULT NULL,
  `director` varchar(50) DEFAULT NULL,
  `rating` varchar(10) DEFAULT NULL,
  `duration` int(3) DEFAULT NULL,
  `cover` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`id`, `title`, `description`, `genre`, `director`, `rating`, `duration`, `cover`) VALUES
(1, 'Boonie Bears The Big Shrink', 'Briar dan Bramble, dua beruang bersaudara yang selalu mengganggu Vick, akan mendengar sebuah kenyataan pahit. Vick ingin mengusir keduanya dari kehidupannya. Dalam pertemuan ini, ketiganya malah terkena mesih sinar pengecil dan menyusutkan ukuran tubuh mereka. Mereka bertiga harus kembali ke mesin itu agar bisa kembali seperti semula, tetapi upaya mereka terhalang oleh ayah Vick. Ketiganya pun memulai sebuah petualangan luar biasa melewati sebuah dunia indah yang berada di bawah kaki manusia, tak hanya untuk kembali ke bentuk asli, tetapi menemukan kembali keluarga mereka.', 'ANIMATION', 'Leon Ding', 'SU', 89, '/movies/BoonieBears-BigShrink.jpg'),
(2, 'Weathering With You', 'seorang anak muda dari desa terpencil di Shikoku, yang meninggalkan rumah dan memutuskan untuk tinggal di Tokyo. Dalam perjalanannya, dia bertemu dengan Keisuke, seorang pria aneh yang menawarkan bantuan kepadanya. Merasa aneh dengan orang tersebut, Hodoka memutuskan untuk mencoba mencari peruntungan yang lain. Namun dia menghadapi kesulitan yang datang silih berganti dalam perjalannya. Setelah beberapa kali tidur di jalanan karena tidak ada orang lain yang bias dihubungi, Hodoka memutuskan untuk menghubungi Keisuke. Hodoka mendapatkan tawaran bekerja sebagai penulis majalah lokal milik Keisuke yang membahas supernatural dan hal hal aneh. Selama di Tokyo, Hodoka selalu diikuti cuaca aneh dimana hujan turun tiada henti. Saat menulis sebuah cerita, dia mendengar kisah pengendalian cuaca. Dia berusaha mencari kebenaran dari legenda urban di mana ada seorang gadis muda yang memiliki kekuatan untuk menghentikan hujan dan membuat langit menjadi cerah kembali. Pencariannya ini membuatnya bertemu dengan Hina Amano, seorang gadis yang memiliki kekuatan luar biasa yang dapat mengendalikan cuaca. ', 'ANIMATION', 'Makoto Shinkai', '13+', 112, '/movies/19025800.jpg'),
(3, 'Warning Do Not Play', 'Mi-jung, seorang sutradara yang sedang berjuang mencari ide untuk film horor baru. Mimpi-mimpi buruk yang kerap dialami tak menghentikan impulsnya mencari laptop setiap pagi. Suatu hari, seorang teman Mi-jung, Jun-seo bercerita tentang sebuah film misterius yang disebut-sebut dibuat oleh hantu, Mi-jung pun langsung tertarik. Sembari menyelidiki tentang film tersebut, Mi-jung mulai menulis skenario film dan memasukkan dirinya dalam cerita: kisah seorang sutradara yang mencari jejak film terlarang yang dibuat oleh hantu. Namun, semakin dekat pada kebenarannya, dan semakin besar peran dirinya dalam cerita yang tengah ditulisnya, Mi-jung mulai mengalami hal-hal ganjil. Seakan-akan ia masuk ke dalam sebuah film horor, batas antara film yang dibuatnya dan kehidupan nyatanya semakin kabur, kemudian membawanya pada akhir yang sama sekali tak terbayangkan.', 'HORROR', 'Jin-won Kim', '17+', 86, '/movies/WarningDoNotPlay-post.jpg'),
(4, 'Dream Girl', 'Ketika kehidupan mulai goyah, santai saja belatar belakang di India Utara, peran protagonist Karm, menemukan pekerjaan yang belum pernah ada sebelumnya. Dia bergabung dengan telepon cinta dan semua berpikir dia tidak akan cocok hingga mereka mendengar suara indahnya dan menjadi penerima telepon persahabatan wanita yang paling popular, Pooja. Jadi, apa yang terjadi ketika ? seorang polisi Haryanvi, seorang anak muda manja dari Delhi, adik laki ? laki pacar Karm semua jatuh cinta kepada Pooja!!! ', 'COMEDY', 'Raaj Shaandilyaa', '13+', 135, '/movies/19029700.jpg'),
(5, 'Hayya The Power of Love', 'Dihantui perasaan bersalah dan dosa di masala lalu, Rahmat(32th) seorang jurnalis yang sedang belajar memahami arti tentang cinta dan keimanan merasa perlu melakukan hal yang berbeda dalam proses hijrahnya. Rahmat pun akhirnya memutuskan untuk menjadi relawan kemanusiaan di perbatasan camp pengungsian. Saat bertugas menjadi relawan kemanusiaan dan jurnalis di daerah tersebut, ia pun bertemu sosok Haya(5th) gadis lugu yatim piatu korban konflik di palestina. Kehadiran Haya banyak membawa perubahan terhadap kehidupan Rahmat, hingga suatu ketika Rahmat harus kembali ke Indonesia karena harus menikah dengan Yasna, membuat Haya terluka. Hubungan Rahmat, Haya dan Yasna tiba-tiba berubah menjadi kompleks, lucu dan menegangkan.', 'DRAMA', 'Jastis Arimba', '13+', 95, '/movies/19028400.jpg'),
(6, 'Pal Pal Dil Ke Paas', 'Ketika blogger video Saher Sethi memulai perjalanan dengan pendaki gunung Karan Sehgal, Tetapi akankah kisah cinta mereka berkembang meski ada kemungkinan? When video blogger Saher Sethi embarks on a tedious trek with mountaineer Karan Sehgal, sparks are bound to fly. But will their love story blossom despite the odds?', 'DRAMA', 'Sunny Deol', 'TBC', 155, '/movies/19031400.jpg'),
(7, 'Horas Amang Tiga Bulan Untuk Selamanya', 'sebuah keluarga dengan hubungan yang tidak harmonis. Seorang Ayah (Amang) dan ketiga anaknya yang tidak berbakti. Karena cinta yang besar kepada anak-anaknya maka sang Ayah (Amang) menggunakan cara yang tidak biasa untuk mengubah hidup mereka selamanya.', 'DRAMA', 'Irham Acho Bahtiar, Steve RR. Wantania', '13+', 109, '/movies/19028800.jpg'),
(8, '6,9 Detik', 'Drama tiga babak seorang atlit yang menjadi viral di negaranya sebagai Spiderwoman, saat ia memenangkan medali emas Asian Games 2018. Kemenangan yang terlihat manis tentunya melewati proses panjang pendewasaan. Tontonan keluarga, anak TKW yang mencari caranya sendiri untuk berprestasi dalam segala keterbasan. Diangkat dari kisah nyata, Aries Rahayu Susanti, didukung oleh atlit Pelatnas Panjat Tebing nasional. Menawarkan kenyataan tumbuh kembang seorang gadis desa yang mendunia dan kehidupan atlit Indonesia.', 'DRAMA', 'Rukman Rosadi', 'SU', 78, '/movies/19031300.jpg'),
(9, 'Warkop DKI Reborn', 'Warkop DKI - Dono, Kasino, Indro kali ini mendapat tugas sebagai agen polisi rahasia. Mereka dibawah komando Komandan Cok, yang kehilangan tangan kanannya, Karman, saat mensinyalir adanya money laundry di dunia perfilman Indonesia. Tepatnya di sebuah PH yang dimiliki Amir Muka. Warkop DKI akhirnya bisa masuk dalam dunia film dan terlibat dalam sebuah pembuatan film komedi berpasangan dengan artis sinetron yang hijrah ke dunia film, Inka. Saat party, Warkop DKI yang sedang menyelidiki malah membuat Inka terjebak bersama mereka di sebuah ruangan. Warkop DKI dan Inka jatuh pingsan. Saat terbangun, Warkop DKI kaget karena berada di padang pasir! Tapi Inka lenyap! Pencarian Warkop DKI mencari jejak Inka, malah menyeret mereka dalam petualangan seru', 'COMEDY', 'Rako Priyanto', '13+', 163, '/movies/19027600.jpg'),
(10, 'Siccin 6', 'Penduduk desa Turki berada di bawah mantra BLACK MAGIC yang dipasang pada mereka oleh keluarga dekat atau jauh yang membuat mereka didera dan diremehkan oleh para Jin (Jenis Iblis Jahat yang Sangat Buruk di antara Muslim yang Datang, Mereka sekarang harus mencari petunjuk dan pengusir setan untuk membantu mereka melarikan diri atau mengalahkannya.', 'HORROR', 'Alper Mestçi', 'TBC', 100, '/movies/19031600.jpg'),
(11, 'Twivortiare', 'Pertama mereka bertemu, langsung jatuh cinta. Dalam hitungan bulan, mereka menikah. Setelah dua tahun, setelah lelah dengan semua konflik dan pertengkaran yang tak berujung, akhirnya, sang Dokter Bedah yang super sibuk, Beno Wicaksono (REZA RAHARDIAN), dan Sang Bankir sukses, Alexandra Rhea (RAIHAANUN) memutuskan untuk bercerai. Sahabat Alex, Wina (ANGGIKA BOLSTERI), menyebutnya sebagai perceraian yang tak pernah serius berpisah, karena tautan berbagai peristiwa senantiasa mempertemukan mereka. Sekali pun ada laki-laki lain, Denny (DENNY SUMARGO) yang berusaha mengisi hati Alexandra, tapi tetap saja, kuatnya rasa cinta yang dipaksa untuk mati, malah makin bersemi. Mereka pun bersatu lagi. Pernikahan kedua pun terjadi. Kali ini Beno dan Alex berjanji, akan menjalani pernikahan ini dengan sikap lebih dewasa, saling mengerti dan mau mengalah. Mereka yakin, mereka bisa, karena masih saling cinta. Tapi apakah benar, cinta saja cukup? atau yang mereka rasakan itu... bukanlah cinta?', 'DRAMA', 'Benni Setiawan', '17+', 163, '/movies/19021900.jpg'),
(12, 'Ayu Anak Titipan Surga', 'Ayu, seorang anak perempuan yang usia Sembilan tahun sudah ditinggal Ayahnya meninggal dunia karena sakit komplikasi, nampaknya benar-benar menunjukan sifat yang jarang dimiliki anak-anak seusianya dan menjadi contoh bagi anak-anak yang lain. Kecerdasan dan kejujurannya, bisa menjadi pelipur lara dan kepercayaan bagi keluarga yang sedang dalam tekanan hidup yang ekonominya pas-pasan kesetia kawanannya, bisa menjadi sahabat bagi semua, termasuk pak karta sosok miskin yang hanya menjadi tukang kebun di sekolahnya. Keberaniannya bisa menjadi penolong sesama.', 'DRAMA', 'Guntoro Sulung', 'SU', 85, '/movies/18002100.jpg'),
(13, 'Section 375', 'Seorang sutradara Bollywood terkenal Rohan Khurana dituduh oleh anggota perempuan krunya, bahwa iya telah memperkosa Anjali Dangle di kediamannya. A celebrated Bollywood director Rohan Khurana stands accused by a female member of his crew, Anjali Dangle of having raped her at his residence.', 'DRAMA', 'Ajay Bahl', 'TBC', 125, '/movies/19030600.jpg'),
(14, 'Good Boys', 'Tiga anak laki-laki kelas 6 Pergi dari sekolah dan memulai petualangan seru mereka membawa obat-obatan yang dicuri secara tidak sengaja, diburu oleh gadis-gadis remaja, dan mereka mencoba pulang ke rumah tepat waktu untuk pesta yang sudah lama dinanti-nantikan. ', 'COMEDY', 'Molly Gordon', '17+', 150, '/movies/19030800.jpg'),
(15, 'Kaappaan', 'Kaappaan aka Kapan is a Tamil political action thriller movie directed by K. V. Anand and written by Pattukkottai Prabakar. The movie Kaappan has Suriya, Mohanlal and Sayyeshaa in the lead roles', 'ACTION', 'K.V. Anand', 'TBC', 164, '/movies/19030000.jpg'),
(16, 'Ne Zha', 'Nezha adalah mitologi Tiongkok yang sangat terkenal, sama halnya seperti mitologi Sun Wukong. Dalam mitologi ini, diceritakan bahwa ibunda Nezha, Lady Lin, melahirkan seorang manusIa berbentuk bola setelah mengandung selama 3 tahun 6 bulan, Ayahnya, Li Jing, menyangka bahwa istrinya telah melahirkan seorang iblis dan menyerang bola tersebut dengan pedangnya. Bola terbelah dan keluarlah Nezha, anak laki-laki yang dapat langsung berjalan dan berbicara. Na Zha disembah dalam suatu agama rakyat Tiongkok. Film ini dimulai dengan aura dari Surga dan Bumi bertemu dan terciptalah sebuah mutiara yang mempunyai kekuatan dahsyat. Yuanshi Tianzun (Dewa Surga) memisahkan mutiara tersebut ke dalam dua pil - Pil Spiritual dan Pil Iblis. Pil Spiritual akan menjelma menjadi seorang lelaki yang ditakdirkan untuk membawa dinasti Zhou baru. Sedangkan Pil Iblis akan melahirkan seorang iblis yang dapat menghancurkan dunia. Oleh karena itu Yuanshi Tianzun menciptakan sebuah mantera pemanggil petir yang akan menghancurkan Pil Iblis dalam 3 tahun', 'ANIMATION', 'Jiaming Zhang', 'SU', 110, '/movies/19030700.jpg'),
(17, 'Tazza One Eyed Jack', 'Do Il-Chool (Park Jung-Min) memiliki bakat untuk bermain poker. Ayahnya adalah seorang penjudi dan satu telinganya dipotong setelah dia ketahuan curang. Il-Chool bertemu penjudi misterius Aekku (Ryoo Seung-Bum) dan terlibat dalam dunia judi utama. Dibantu oleh Kkachi (Lee Kwang Soo) yang lihai manipulasi mereka bergelut dalam action menegangkan dalam dunia perjudian', 'CRIME', 'Kwon Oh-Kwang', '21+', 138, '/movies/19031200.jpg'),
(18, 'Danur 3 Sunyaruri', 'Setelah bersahabat dengan hantu-hantu kecilnya selama bertahun-tahun, Risa (Prilly Latuconsina) yang semakin dewasa mulai merasa bahwa dirinya harus memiliki kehidupan normal seperti perempuan lainnya. Apalagi sekarang Risa sudah memiliki pacar bernama Dimas (Rizky Nazar), yang bekerja sebagai penyiar radio. Risa bahkan tidak menceritakan kepada Dimas tentang kemampuannya melihat hantu, dan kenyataan bahwa dia memiliki 5 sahabat kecil yang bukan manusia. Persahabatan Risa dan Peter CS menjadi goyah, setelah Risa merasa Peter CS mulai mengusili Dimas.', 'HORROR', 'Sandrinna Michelle Skornicki', '13+', 90, '/movies/19027400.jpg'),
(19, 'Abigail', 'Kota yang ditinggali ABIGAIL menutup diri selama bertahun-tahun karena wabah penyakit misterius. Abigail masih kecil saat ayahnya dibawa pergi karena terjangkit penyakit. Namun, suatu hari, Abigail mengetahui kalau ternyata dia punya kekuatan spesial dan kota yang dia tinggali ternyata penuh dengan sihir. Akhirnya, dia paham kalau wabah penyakit yang ada di kota itu hanyalah kebohongan. Itu hanyalah kedok yang dibuat-buat oleh pemerintah kota agar bisa memenjarakan orang-orang yang memiliki kekuatan sihir. Abby menduga ayahnya masih hidup. Jadi, dia berniat untuk mencarinya. Dia mencoba melawan dan akhirnya diburu oleh inspektur Departemen Keamanan. Para pemberontak dari gerakan bawah tanah untuk membebaskan kota juga membantu Abby untuk menghindar dari kejaran Departemen Keamanan. Tujuan utama Abby adalah menemukan ayahnya, namun dia harus menghadapi banyak tantangan dan petualangan menegangkan. Perjalanan Abigail akan membuatnya mengetahui hal-hal baru tentang diri nya sendiri dan dunia sihir.', 'ANIMATION', 'Aleksandr Boguslavskiy', '13+', 110, '/movies/19027900.jpg'),
(20, 'Ad Astra', 'Seorang astronot melakukan perjalanan ke tepi luar tata surya untuk menemukan ayahnya dan mengungkap misteri yang mengancam kelangsungan hidup planet kita. Dia mengungkap rahasia yang mengancam keberadaan manusia dan tempat kita. An astronaut travels to the outer edges of the solar system to find his father and unravel a mystery that threatens the survival of our planet. He uncovers secrets which challenge the nature of human existence and our place in the cosmos.', 'ACTION', 'James Gray', '13+', 123, '/movies/19028200.jpg'),
(21, 'Pretty Boys', 'SAAT PERTELEVISIAN HANCUR MATI KARENA \"BERBEDA\", kita yang menodai TV apa TV yang menodai kita. Ini kisah Anugerah (Vincent Rompies) dan Rahmat (Deddy Mahendra Desta) yang pengen ngetop malah ngedrop! Asty (Danilla Riyadi), Roni (Onadio Leonardo), dan Mas Bayu (Imam Darto) mewarnai perjalanan hidup mereka. Saksikan film #prettyboysthemovie mulai 19 September 2019', 'COMEDY', 'Tompi', '13+', 100, '/movies/19027700.jpg'),
(22, 'IT Chapter Two', 'Dua puluh tujuh tahun setelah pertemuan pertama mereka dengan Pennywise yang menakutkan, Losers Club kini telah dewasa dan pindah dari kota Derry sampai sebuah panggilan membawa mereka kembal ke kota tersebut. Twenty-seven years after their first encounter with the terrifying Pennywise, the Losers Club have grown up and moved away, until a devastating phone call brings them back.', 'HORROR', 'Andy Muschietti', '17+', 170, '/movies/19025100.jpg'),
(23, 'Metallica San Francisco Symphony SM2', 'Pada 9 Oktober 2019, Trafalgar Releasing mempersembahkan S&M2, sebuah selebrasi 20 tahun dari konser S&M Metallica yang wajib ditonton dan album yang direkam Bersama San Francisco Symphony. Tonton mereka tampil Bersama sekali lagi dengan konduktor legendaris Michael Tilson Thomas yang memimpin bagian dari konser dan menutup penampilannya di San Francisco. Direkam langsung pada 6 dan 8 September, konser ini juga merupakan bagian pembukaan dari Chase Center, tempat bersejarah baru di kota tersebut. Memasukkan lagu-lagu ?klasik? mereka dari rilisan S&M 1999 termasuk versi simfonik dari lagu-lagu baru, film ini memberikan kesempatan bagi jutaan fans di seluruh dunia untuk merasakan sensasi konser megah dalam layar bioskop yang besar.', 'MUSIC', 'Wayne Isham', 'TBC', 150, '/movies/19028500.jpg'),
(24, 'Midsommar', 'Saat hubungan keduanya tengah bermasalah, sepasang kekasih muda dari Amerika Serikat melancong ke sebuah festival tengah musim panas Swedia, di mana tempat yang tampak seperti surga permai berubah menjadi mimpi buruk yang mengerikan, seiring warga setempat mulai menunjukkan niat bengis mereka. With their relationship in trouble, a young American couple travel to a fabled Swedish midsummer festival where a seemingly pastoral paradise transforms into a sinister, dread-soaked nightmare as the locals reveal their terrifying agenda', 'DRAMA', 'Ari Aster', '21+', 138, '/movies/19026600.jpg'),
(25, 'One Piece Stampede', 'mereka diundang ke acara besar yang dikenal sebagai Pirates expo! Semua bajak laut terhebat berkumpul di pameran bajak laut,tiba-tiba angkatan laut ikut campur dalam kegiatan tersebut, Sebenarnya ada konspirasi apakah dibalik acara tersebut? Follow the strawhats as they get invited to the large event known as pirate expo! All star pirates are gathered in the pirate expo, the marines decide to interfere, what conspires in this event? A One Piece spin off movie.', 'ANIMATION', 'Takashi Otsuka', '13+', 161, '/movies/19028900.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `start` datetime NOT NULL,
  `room` varchar(25) NOT NULL,
  `quota` int(3) NOT NULL,
  `price` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` enum('customer','admin') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'customer'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `schedule_id` (`schedule_id`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_id` (`movie_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`schedule_id`) REFERENCES `schedule` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `schedule`
--
ALTER TABLE `schedule`
  ADD CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
