-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Gép: localhost
-- Létrehozás ideje: 2019. Feb 28. 14:07
-- Kiszolgáló verziója: 10.1.37-MariaDB
-- PHP verzió: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `MezProject`
--
CREATE DATABASE IF NOT EXISTS `MezProject` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `MezProject`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `bemutatkozas`
--

DROP TABLE IF EXISTS `bemutatkozas`;
CREATE TABLE `bemutatkozas` (
  `id` int(8) NOT NULL,
  `kep` varchar(1000) NOT NULL,
  `leiras` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `bemutatkozas`
--

INSERT INTO `bemutatkozas` (`id`, `kep`, `leiras`) VALUES
(1, 'https://i.imgur.com/SYYT4pl.jpg', 'Bánhegyi Roland méhész vagyok, 1978-ban egy meleg nyári napon, Mohácson láttam meg a napvilágot. Mecseknádasdon élek családommal, akik mindenben segítségemre vannak a méhészetben. Munka mellett méhészkedem, jelenleg 60 méhcsaláddal lakóhelyemen. Már dédnagyapám is méhészkedett abban a méhes házban, ami egykoron a szüleim háza mellett ált. Első méhcsaládjaimat nagybátyámtól kaptam, aki a mai napig segítségemre van. Elméleti és gyakorlati tudásom gyarapítása végett 2013-ban elvégeztem a méhész szakmunkásképző iskolát, ami nem csak tudást, hanem olyan méhészek ismerettségét is magával hozta, akik azóta is segítenek, hogy jó és eredményes méhészé válljak. Jelenlegi termékeink tavaszi virág, repce, akác, hárs, nyári virág és napraforgó méz valamint propolisz, amelyek a helyi CBA élelmiszerboltban, a Hetényi pincészetben és a Karl-Mikro Sörfőzdében elérhetőek, különböző kiszerelésekben és csomagolásokban.<br>Kínálatunkat az igényeknek megfelelően igyekszünk bővíteni. 2013-ban csatlakoztunk a Mecseki Mézes Körúthoz, hogy több baranyai méhésszel összefogva népszerűsítsük a kiváló minőségű Mecseki Mézet. Termékeinknél nem a mennyiségre, hanem a minőségre törekszünk, amellyel igyekszünk elnyerni vásárlóink bizalmát.');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `diszcsomag`
--

DROP TABLE IF EXISTS `diszcsomag`;
CREATE TABLE `diszcsomag` (
  `id` int(8) NOT NULL,
  `nev` varchar(100) CHARACTER SET utf8 NOT NULL,
  `mennyiseg` varchar(100) CHARACTER SET utf8 NOT NULL,
  `ar` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `diszcsomag`
--

INSERT INTO `diszcsomag` (`id`, `nev`, `mennyiseg`, `ar`) VALUES
(1, 'Méz vegyes', '4x230g', '2450 ft'),
(2, 'Akác-Hárs méz', '2x500g', '2600 ft'),
(3, 'Akác-Vegyes méz', '2x500g', '2450ft'),
(4, 'Hárs-Vegyes méz', '2x500g', '2350ft'),
(5, 'Házikó', '1db', '1500ft');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `elerhetoseg`
--

DROP TABLE IF EXISTS `elerhetoseg`;
CREATE TABLE `elerhetoseg` (
  `id` int(8) NOT NULL,
  `nev` varchar(100) CHARACTER SET utf8 NOT NULL,
  `icon` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `url` varchar(1000) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `elerhetoseg`
--

INSERT INTO `elerhetoseg` (`id`, `nev`, `icon`, `url`) VALUES
(1, 'Facebook', 'https://img.icons8.com/ios/50/000000/facebook.png', 'https://www.facebook.com/roland.banhegyi.1'),
(2, 'Üzenetküldés', 'https://img.icons8.com/ios/50/000000/new-post.png', 'mailto:banhegyimeheszet@gmail.com'),
(3, 'Telefonhívás', 'https://img.icons8.com/ios/50/000000/phone.png', 'tel: +36 30 230 7775'),
(4, 'Útvonaltervezés', 'https://img.icons8.com/ios/50/000000/google-maps.png', 'https://www.google.com/maps/place/Mecsekn%C3%A1dasd,+Kossuth+Lajos+u.+96,+7695/@46.2228237,18.4527833,17z/data=!3m1!4b1!4m5!3m4!1s0x4742bfaf004afccf:0xe90a28f805def21d!8m2!3d46.22282!4d18.454972');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `felhasznalo`
--

DROP TABLE IF EXISTS `felhasznalo`;
CREATE TABLE `felhasznalo` (
  `id` int(8) NOT NULL,
  `felhasznalonev` varchar(100) CHARACTER SET utf8 NOT NULL,
  `jelszo` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `felhasznalo`
--

INSERT INTO `felhasznalo` (`id`, `felhasznalonev`, `jelszo`) VALUES
(1, 'Roland', 'dec9aafaf19bdf640cc32de3b7e4cf1b074f9730'),
(2, 'Zsolt', '3a06fc9da1d06b45ba4ebe2dfbc06e32c40cd491');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `ismerteto`
--

DROP TABLE IF EXISTS `ismerteto`;
CREATE TABLE `ismerteto` (
  `id` int(8) NOT NULL,
  `logo` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `leirt` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `leiras` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `ismerteto`
--

INSERT INTO `ismerteto` (`id`, `logo`, `leirt`, `leiras`) VALUES
(1, 'https://i.imgur.com/dn26Tvw.png', 'Méhek', 'Kicsit sem túlzó kijelentés, hogy méhek nélkül mi sem maradhatnánk sokáig a Föld bolygón. Ugyanis a táplálékul szolgáló növényeink nagy részének a beporzását ezek a kis szorgos rovarok végzik.'),
(2, 'https://i.imgur.com/XOl3Cro.png', 'Méz', 'Igen sok terméket szolgáltatnak a számunkra, melyek nem csak finomak, de rendkívül egészségesek is. A méhek által előállított termékek közül a méz a legismertebb.'),
(3, 'https://i.imgur.com/G5fSyA6.png', 'Egészség', 'A méz kiváló természetes édesítőszer, amit akár a cukorbetegek is fogyaszthatnak. Ugyanakkor a fogyókúrázóknak sem kell lemondjanak az édességekről, hiszen a mézzel készült nyalánkságokkal bátran „bűnözhetnek”.');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `meztermek`
--

DROP TABLE IF EXISTS `meztermek`;
CREATE TABLE `meztermek` (
  `id` int(8) NOT NULL,
  `nev` varchar(100) CHARACTER SET utf8 NOT NULL,
  `mennyiseg` varchar(100) CHARACTER SET utf8 NOT NULL,
  `ar` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `meztermek`
--

INSERT INTO `meztermek` (`id`, `nev`, `mennyiseg`, `ar`) VALUES
(1, 'Akác méz', '900g', '2500ft'),
(2, 'Akác máz', '500g', '1800ft'),
(3, 'Hárs méz', '900g', '2400ft'),
(4, 'Hárs máz', '500g', '1700ft'),
(5, 'Napraforgó méz', '900g', '2200ft'),
(6, 'Napraforgó méz', '500g', '1300ft'),
(7, 'Nyárivirág méz', '900g', '2000ft'),
(8, 'Nyárivirág méz', '500g', '1100ft'),
(9, 'Vegyes méz', '900g', '1800ft'),
(10, 'Vegyes méz', '500g', '1000ft');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `partner`
--

DROP TABLE IF EXISTS `partner`;
CREATE TABLE `partner` (
  `id` int(8) NOT NULL,
  `nev` varchar(100) CHARACTER SET utf8 NOT NULL,
  `icon` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `url` varchar(1000) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `partner`
--

INSERT INTO `partner` (`id`, `nev`, `icon`, `url`) VALUES
(1, 'Hetényi Pincészet Mecseknádasd', 'https://i.imgur.com/YBNc0YV.png', 'http://www.indivinum.hu/hu/'),
(2, 'Karl-Mikro sörfőzde', 'https://i.imgur.com/QTvO1VO.png', 'http://karlbeer.com/'),
(3, 'Mecseknádasd CBA élelmiszerüzlet', 'https://i.imgur.com/RUVc792.png', 'http://www.cba.hu/');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `termekek`
--

DROP TABLE IF EXISTS `termekek`;
CREATE TABLE `termekek` (
  `id` int(8) NOT NULL,
  `nev` varchar(100) CHARACTER SET utf8 NOT NULL,
  `leiras` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `kep` varchar(1000) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `termekek`
--

INSERT INTO `termekek` (`id`, `nev`, `leiras`, `kep`) VALUES
(1, 'Méztermékek', 'Az méz íze lágy és kellemes, ezért kiváló az ételek és italok ízesítésére. Nehezen kristályosodik, vagyis sokáig folyékony marad. Az akácméz nagyon hatékony lehet a gyomorsav túltengés és köhögés ellen is.', 'https://i.imgur.com/t0LhmId.jpg'),
(2, 'Díszcsomagolt termékek', 'Mézeinket díszcsomagolva is áruljuk!', 'https://i.imgur.com/0Z0PnNR.jpg');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `velemeny`
--

DROP TABLE IF EXISTS `velemeny`;
CREATE TABLE `velemeny` (
  `id` int(8) NOT NULL,
  `leiras` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `szerzo` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `velemeny`
--

INSERT INTO `velemeny` (`id`, `leiras`, `szerzo`) VALUES
(1, 'A méz nagyon finom! A kiszolgálás gyors és pontos. Ajánlani tudom mindenkinek!', 'Takács Attila'),
(2, 'Mint mindig, most is minden rendben volt a rendeléssel és a kiszállítással is.', 'Kiss Orsi'),
(3, 'Nagyon jó ízűek a mézek. A legfinomabb a napraforgó íze, a kávémat ezzel édesítem.', 'Nagy Tamás'),
(4, 'Nagyon szeretjük a mézüket, különlegesen finom és kitűnő minőségű magyar termék.', 'Szabó Győző'),
(5, 'További sikeres munkát kívánunk Önöknek és szorgos méheiknek!', 'Ábrahám Péter');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `bemutatkozas`
--
ALTER TABLE `bemutatkozas`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `diszcsomag`
--
ALTER TABLE `diszcsomag`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `elerhetoseg`
--
ALTER TABLE `elerhetoseg`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `felhasznalo`
--
ALTER TABLE `felhasznalo`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `ismerteto`
--
ALTER TABLE `ismerteto`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `meztermek`
--
ALTER TABLE `meztermek`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `partner`
--
ALTER TABLE `partner`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `termekek`
--
ALTER TABLE `termekek`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `velemeny`
--
ALTER TABLE `velemeny`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `bemutatkozas`
--
ALTER TABLE `bemutatkozas`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT a táblához `diszcsomag`
--
ALTER TABLE `diszcsomag`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT a táblához `elerhetoseg`
--
ALTER TABLE `elerhetoseg`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT a táblához `felhasznalo`
--
ALTER TABLE `felhasznalo`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT a táblához `ismerteto`
--
ALTER TABLE `ismerteto`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT a táblához `meztermek`
--
ALTER TABLE `meztermek`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT a táblához `partner`
--
ALTER TABLE `partner`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT a táblához `termekek`
--
ALTER TABLE `termekek`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT a táblához `velemeny`
--
ALTER TABLE `velemeny`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
