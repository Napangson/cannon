-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 25, 2020 at 08:20 AM
-- Server version: 5.7.15-log
-- PHP Version: 5.6.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `canon`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `aid` int(6) NOT NULL,
  `aname` varchar(100) NOT NULL,
  `auser` varchar(100) NOT NULL,
  `apwd` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=tis620;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aid`, `aname`, `auser`, `apwd`) VALUES
(1, 'ADMIN TA', 'tuta', '25d55ad283aa400af464c76d713c07ad'),
(2, 'ADMIN  JAM', 'Saipin', '25d55ad283aa400af464c76d713c07ad'),
(3, 'ADMIN EARN', 'earn', '25d55ad283aa400af464c76d713c07ad'),
(4, 'ADMIN JANE', 'jane', '25d55ad283aa400af464c76d713c07ad'),
(5, 'ADMIN KIE', 'kie', '25d55ad283aa400af464c76d713c07ad');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `cid` int(10) NOT NULL,
  `csubject` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cEmail` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ccompany` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cmessage` text COLLATE utf8_unicode_ci NOT NULL,
  `ctime` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`cid`, `csubject`, `cname`, `cEmail`, `ccompany`, `cmessage`, `ctime`) VALUES
(6, 'ติอต่อ', 'นันทวัฒน์ เปลื้องกระโทก', 'tacap2540@gmail.com', 'AA Company', 'ขอติดต่อสอบถาม', '2020-11-01 17:38:37');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `mid` int(10) NOT NULL,
  `muser` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mpassword` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mname` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `mtol` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `maddress` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`mid`, `muser`, `mpassword`, `mname`, `mtol`, `maddress`) VALUES
(24, 'tanantawat', '25d55ad283aa400af464c76d713c07ad', 'นันทวัฒน์ เปลื้องกระโทก', '0800005272', 'KORAT'),
(25, 'saipin', 'e10adc3949ba59abbe56e057f20f883e', 'saipin maholan', '0642010907', 'udonthani'),
(36, 'tutanantha', '12345678', 'Nantawat Pluengkratok', '0800005272', ''),
(37, 'Mukda', '25d55ad283aa400af464c76d713c07ad', 'Mukda', 'K', 'Udonthani'),
(38, 'taaaaa', '11111', 'etshjirsij', '08214551774257', 'tutyiryol');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `oid` int(7) UNSIGNED ZEROFILL NOT NULL,
  `ototal` int(7) NOT NULL,
  `odate` datetime NOT NULL,
  `member_id` int(7) NOT NULL,
  `member_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`oid`, `ototal`, `odate`, `member_id`, `member_name`) VALUES
(0000022, 68990, '2020-11-03 22:11:54', 24, 'นันทวัฒน์ เปลื้องกระโทก'),
(0000023, 478000, '2020-11-04 15:27:21', 25, 'saipin maholan'),
(0000024, 10490, '2020-11-04 22:11:21', 35, 'asdfg'),
(0000025, 23500, '2020-11-05 06:13:53', 36, 'Nantawat Pluengkratok'),
(0000026, 13780, '2020-11-05 06:27:24', 36, 'Nantawat Pluengkratok'),
(0000027, 4780, '2020-11-05 06:27:58', 36, 'Nantawat Pluengkratok'),
(0000028, 23500, '2020-11-05 06:29:41', 36, 'Nantawat Pluengkratok'),
(0000029, 5960, '2020-11-05 06:30:27', 36, 'Nantawat Pluengkratok'),
(0000030, 23500, '2020-11-05 06:33:43', 36, 'Nantawat Pluengkratok'),
(0000031, 72804, '2020-11-05 01:19:16', 36, 'Nantawat Pluengkratok'),
(0000032, 15900, '2020-11-05 01:20:34', 36, 'Nantawat Pluengkratok'),
(0000033, 24800, '2020-11-05 01:41:58', 36, 'Nantawat Pluengkratok');

-- --------------------------------------------------------

--
-- Table structure for table `orders_detail`
--

CREATE TABLE `orders_detail` (
  `od_id` int(6) NOT NULL,
  `oid` int(7) UNSIGNED ZEROFILL NOT NULL,
  `pid` int(7) NOT NULL,
  `item` int(7) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `orders_detail`
--

INSERT INTO `orders_detail` (`od_id`, `oid`, `pid`, `item`) VALUES
(29, 0000022, 301, 1),
(28, 0000022, 205, 1),
(27, 0000021, 403, 1),
(26, 0000020, 406, 1),
(25, 0000019, 506, 1),
(24, 0000019, 203, 1),
(23, 0000019, 502, 1),
(30, 0000023, 509, 1),
(31, 0000023, 101, 10),
(32, 0000024, 202, 1),
(33, 0000024, 411, 1),
(34, 0000025, 502, 1),
(35, 0000026, 202, 2),
(36, 0000027, 403, 1),
(37, 0000027, 406, 1),
(38, 0000028, 502, 1),
(39, 0000029, 203, 1),
(40, 0000030, 502, 1),
(41, 0000031, 503, 1),
(42, 0000032, 103, 1),
(43, 0000033, 102, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `p_id` int(4) NOT NULL,
  `p_name` varchar(200) NOT NULL,
  `p_detail` text NOT NULL,
  `p_price` int(6) NOT NULL,
  `p_picture` varchar(200) NOT NULL,
  `p_type` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`p_id`, `p_name`, `p_detail`, `p_price`, `p_picture`, `p_type`) VALUES
(1, 'EOS 850D (EF-S18-55mm f/4-5.6 IS STM)\n', 'กล้อง EOS 850D คือ กล้อง DSLR ซึ่งรวบรวมฟีเจอร์ต่างๆ เข้าไว้เหมือนเป็นกล้องชั้นสูงที่ง่ายต่อการใช้งานและให้ ผลงานคุณภาพเยี่ยมที่คุณต้องการในราคาที่จับต้องได้ สำหรับผู้ที่หลงใหลการถ่ายภาพ กล้องตัวนี้คือตัวเลือกที่สมเหตุสมผลเพื่อช่วยให้คุณก้าวข้ามไปสู่ความเป็นมืออาชีพในการถ่ายภาพ\n', 89000, '1/1.png', 1),
(2, 'EOS 90D (Body Only)', 'EOS 90D ได้รับการออกแบบมาสำหรับผู้ที่ต้องการสร้างชิ้นงานอันยอดเยี่ยมได้อย่างไม่รู้จบ มาพร้อมกับออโต้โฟกัสแบบ cross-type AF มากถึง 45 จุด เมื่อถ่ายภาพผ่านช่องมองภาพ ซึ่งครอบคลุมการมองเห็น 100% และยังสามารถโฟกัสเกาะติดวัตถุในทุกโมเม้นต์ ไม่ว่าจะเป็นการถ่ายภาพกีฬาหรือสัตว์ป่าต่าง ๆ ด้วยความสามารถในการถ่ายภาพต่อเนิ่องได้ถึง 10 ภาพต่อวินาที อีกทั้งยังมีจุดโฟกัสให้เลือกได้ถึง 5,481 ตำแหน่ง ร่วมด้วยระบบตรวจจับดวงตาอัตโนมัติ (eye detection AF) ช่วยให้อิสระแก่ผู้ใช้งานในการจัดองค์ประกอบของภาพได้แม้ถ่ายภาพในโหมด Live View โดยมั่นใจได้ว่าทุกภาพถ่ายจะมีความคมชัดอย่างแน่นอน', 90000, '1/2.png', 1),
(3, 'EOS 90D (EF-S18-55mm f/3.5-5.6 IS STM)', 'EOS 90D ได้รับการออกแบบมาสำหรับผู้ที่ต้องการสร้างชิ้นงานอันยอดเยี่ยมได้อย่างไม่รู้จบ มาพร้อมกับออโต้โฟกัสแบบ cross-type AF มากถึง 45 จุด เมื่อถ่ายภาพผ่านช่องมองภาพ ซึ่งครอบคลุมการมองเห็น 100% และยังสามารถโฟกัสเกาะติดวัตถุในทุกโมเม้นต์ ไม่ว่าจะเป็นการถ่ายภาพกีฬาหรือสัตว์ป่าต่าง ๆ ด้วยความสามารถในการถ่ายภาพต่อเนิ่องได้ถึง 10 ภาพต่อวินาที อีกทั้งยังมีจุดโฟกัสให้เลือกได้ถึง 5,481 ตำแหน่ง ร่วมด้วยระบบตรวจจับดวงตาอัตโนมัติ (eye detection AF) ช่วยให้อิสระแก่ผู้ใช้งานในการจัดองค์ประกอบของภาพได้แม้ถ่ายภาพในโหมด Live View โดยมั่นใจได้ว่าทุกภาพถ่ายจะมีความคมชัดอย่างแน่นอน', 78000, '1/3.png', 1),
(4, 'EOS 90D (EF-S18-135mm f/3.5-5.6 IS USM)', 'EOS 90D ได้รับการออกแบบมาสำหรับผู้ที่ต้องการสร้างชิ้นงานอันยอดเยี่ยมได้อย่างไม่รู้จบ มาพร้อมกับออโต้โฟกัสแบบ cross-type AF มากถึง 45 จุด เมื่อถ่ายภาพผ่านช่องมองภาพ ซึ่งครอบคลุมการมองเห็น 100% และยังสามารถโฟกัสเกาะติดวัตถุในทุกโมเม้นต์ ไม่ว่าจะเป็นการถ่ายภาพกีฬาหรือสัตว์ป่าต่าง ๆ ด้วยความสามารถในการถ่ายภาพต่อเนิ่องได้ถึง 10 ภาพต่อวินาที อีกทั้งยังมีจุดโฟกัสให้เลือกได้ถึง 5,481 ตำแหน่ง ร่วมด้วยระบบตรวจจับดวงตาอัตโนมัติ (eye detection AF) ช่วยให้อิสระแก่ผู้ใช้งานในการจัดองค์ประกอบของภาพได้แม้ถ่ายภาพในโหมด Live View โดยมั่นใจได้ว่าทุกภาพถ่ายจะมีความคมชัดอย่างแน่นอน', 89000, '1/4.png', 1),
(5, 'EOS 200D II (EF-S 18-55mm f/4-5.6 IS STM)', 'EOS 200D II คือกล้อง DSLR ที่เบาที่สุดของแคนนอน ด้วยหน้าจอ LCD หมุนได้แบบทัชสกรีน ด้วยน้ำหนักที่มากกว่าขวดน้ำเพียงเล็กน้อย ตัวกล้องสามารถใส่ในกระเป๋าได้พกพาได้สะดวกสำหรับการถ่ายภาพในชีวิตประจำวัน ตัวกล้องประกอบด้วยเซนเซอร์ APS-C CMOS ความละเอียด 24.1 ล้านพิกเซล ระบบประมวลผล DIGIC 8 และฟีเจอร์อื่นๆ ที่จะทำให้การถ่ายภาพในทุกวันของคุณเป็นเรื่องง่ายๆ และไร้ขีดจำกัด', 64000, '1/5.png', 1),
(6, 'EOS 1500D Kit (EF S18-55 IS II)', 'ผู้ใช้กล้องทุกคนไม่ว่าจะเป็นมือใหม่หรือมืออาชีพจะสามารถถ่ายภาพและวิดีโอได้อย่างสวยงามน่าทึ่งได้ด้วยกล้องดีเอสแอลอาร์รุ่นนี้ ซึ่งมีเซ็นเซอร์ภาพ CMOS APS-C ความละเอียด 24.1 ล้านพิกเซล และช่องมองภาพแบบออปติคัลเพื่อประสบการณ์การถ่ายภาพที่เป็นเอกลักษณ์ของกล้องดีเอสแอลอาร์ ถ่ายภาพได้คมชัดอย่างง่ายดายด้วยระบบออโต้โฟกัสที่รวดเร็วและแม่นยำ พร้อมบริเวณมือจับขนาดใหญ่ที่ช่วยให้สามารถถือกล้องได้ถนัดกระชับมือ นอกจากนี้ยังสามารถเชื่อมต่อ Wi-Fi และ NFC เพื่อการอัพโหลดภาพและวิดีโอไปยังโซเชียลมีเดียได้อย่างไม่สะดุด', 58900, '1/6.png', 1),
(7, 'EOS 3000D Kit (EF S18-55 III)', 'EOS 3000D มอบประสบการณ์เฉพาะตัวในการใช้กล้องดีเอสแอลอาร์ให้กับมือใหม่ โดยมาพร้อมที่จับกระชับมือ ช่องมองภาพแบบออปติคัลที่ช่วยในการถ่ายภาพอย่างรวดเร็ว และแป้นปุ่มหลักเพื่อการปรับเปลี่ยนฟังก์ชันอย่างฉับไว อีกทั้งยังมีเซ็นเซอร์ CMOS APS-C ความละเอียด 18 ล้านพิกเซล ซึ่งมีขนาดใหญ่กว่าเซ็นเซอร์กล้องสมาร์ทโฟนถึง 25 เท่า จึงสามารถตรวจจับแสงและรายละเอียดของภาพได้มากกว่า ทั้งยังช่วยในการถ่ายภาพเบลอฉากหลังได้อย่างสวยงาม ข้อมูลภาพถูกประมวลผลอย่างรวดเร็วโดยชิป DIGIC 4+ ที่ให้ภาพที่มีความละเอียดและคุณภาพสูง กล้องมีขนาดเล็กและน้ำหนักเบาเพียง 436 กรัม (รวมแบตเตอรีและการ์ดหน่วยความจำ) จึงเหมาะอย่างยิ่งสำหรับการพกพาไปในการเดินทาง', 78900, '1/7.png', 1),
(8, 'EOS 5D Mark IV Kit (EF 24 - 105 IS II USM)', 'EOS 5D Mark IV เป็นกล้องรุ่นที่ 4 ในตระกูลกล้องฟูลเฟรมที่ขายดีที่สุดของ แคนนอน โดดเด่นด้วยการพัฒนาที่สมบูรณ์และความก้าวหน้าในหลายด้าน มาพร้อมเซ็นเซอร์ CMOS ฟูลเฟรม ความละเอียด 30.4 ล้านพิกเซล เทคโนโลยี Dual Pixel CMOS AF ช่วยในการถ่ายภาพได้อย่างรวดเร็วและแม่นยำสูงทั้งภาพนิ่งและวิดีโอ 4K ได้คุณภาพระดับโปร ด้วยความสามารถที่หลากหลายในการถ่ายภาพ นี่คือสุดยอดกล้องดีเอสแอลอาร์ที่เกิดมาเพื่อถ่ายทอด ไอเดียสร้างสรรค์ของช่างภาพมืออาชีพออกมาเป็นภาพถ่าย', 84900, '1/8.png', 1),
(9, 'EOS 5D Mark IV Kit (EF 24 - 70 IS USM)', 'EOS 5D Mark IV เป็นกล้องรุ่นที่ 4 ในตระกูลกล้องฟูลเฟรมที่ขายดีที่สุดของ แคนนอน โดดเด่นด้วยการพัฒนาที่สมบูรณ์และความก้าวหน้าในหลายด้าน มาพร้อมเซ็นเซอร์ CMOS ฟูลเฟรม ความละเอียด 30.4 ล้านพิกเซล เทคโนโลยี Dual Pixel CMOS AF ช่วยในการถ่ายภาพได้อย่างรวดเร็วและแม่นยำสูงทั้งภาพนิ่งและวิดีโอ 4K ได้คุณภาพระดับโปร ด้วยความสามารถที่หลากหลายในการถ่ายภาพ นี่คือสุดยอดกล้องดีเอสแอลอาร์ที่เกิดมาเพื่อถ่ายทอดไอเดียสร้างสรรค์ของช่างภาพมืออาชีพออกมาเป็นภาพถ่าย', 89000, '1/9.png', 1),
(10, 'EOS 80D Kit (EF-S18-55 IS STM)', 'EOS 80D มีช่องมองภาพอัจฉริยะครอบคลุมพื้นที่ในภาพ 100% พร้อมระบบออโต้โฟกัส 45 จุด cross-type ทั้งหมด ออโต้โฟกัสแบบ cross-type ได้ 27 จุดแม้ที่ขนาดรูรับแสง f/8 ถ่ายภาพต่อเนื่องได้สูงสุด 7 ภาพต่อวินาทีได้อย่างรวดเร็วและเงียบยิ่งขึ้น ถ่ายวิดีโอ Full HD 60p มีระบบออโต้โฟกัส Dual Pixel CMOS AF ช่วยในการเปลี่ยนระยะโฟกัสจากด้านหน้าไปยังฉากหลังของภาพได้อย่างรวดเร็วและง่ายดายแค่แตะบนหน้าจอแอลซีดี ใช้งานร่วมกับเลนส์ EF ได้หลากหลาย มี WiFi และ NFC ในตัวกล้องจึงเชื่อมต่ออุปกรณ์มือถือ สั่งการถ่ายภาพ และควบคุมการซูมจากระยะไกลได้ถึง 15 ระดับ ผ่านแอปพลิเคชั่น Canon Camera Connect', 67900, '1/10.png', 1),
(11, 'PIXMA TS707', 'เครื่องพิมพ์ไร้สายประสิทธิภาพสูงสำหรับการใช้งานที่บ้านหรือในสำนักงานขนาดเล็ก เครื่องพิมพ์ภาพแบบไร้สายประสิทธิภาพสูงมีขนาดกะทัดรัดและออพชั่นการพิมพ์ที่หลากหลายสำหรับการพิมพ์ที่บ้านหรือในสำนักงานขนาดเล็ก', 2400, '2/1.png', 2),
(12, 'MAXIFY iB4170', 'เครื่องพิมพ์ความเร็วสูงเพื่องานปริมาณมากสำหรับธุรกิจ ประสิทธิภาพน่าเชื่อถือสำหรับทุกความต้องการด้านการพิมพ์', 3500, '2/2.png', 2),
(13, 'MAXIFY MB5170', 'เครื่องพิมพ์ความเร็วสูงสำหรับธุรกิจความแบบมัลติฟังก์ชัน เครื่องพิมพ์อิงค์เจ็ตประสิทธิภาพสูงสำหรับธุรกิจมาพร้อมการใช้งานกับอุปกรณ์มือถือ บริการคลาวด์ต่างๆ และการผสมผสานเน็ตเวิร์', 2900, '2/3.png', 2),
(14, 'MAXIFY MB5470', 'เครื่องพิมพ์ความเร็วสูงเพื่องานปริมาณมากในธุรกิจหลากหลายฟังก์ชัน สำหรับการพิมพ์งานในสำนักงานขนาดเล็กโดยไม่ทำให้ประสิทธิภาพการทำงาน คุณภาพหรือความน่าเชื่อถือลดลง MB5470 ถือเป็นตัวเลือกที่ดีที่สุดของคุณ ด้วยหมึกกันเปื้อนคุณภาพสูง การเชื่อมต่อไวไฟและอีเธอร์เน็ต รวมทั้งการแสกนแบบสองด้านด้วยการฟีดเอกสารเพียงครั้งเดียว คุณจะสามารถพิมพ์งานปริมาณมากได้อย่างรวดเร็วกว่าที่เคย', 4300, '2/4.png', 2),
(15, 'PIXMA E4270', 'เครื่องพิมพ์ไร้สาย ALL-IN-ONE ขนาดกะทัดรัดมาพร้อมแฟกซ์และการพิมพ์สองหน้าแบบอัตโนมัติสำหรับการพิมพ์แบบต้นทุนต่ำ', 2490, '2/5.png', 2),
(16, 'PIXMA MG2570S', 'ALL-IN-ONE ขนาดกะทัดรัดสำหรับการพิมพ์แบบต้นทุนต่ำ เครื่องพิมพ์แบบประหยัด ALL-IN-ONE มาพร้อฟังก์ชันการพิมพ์ การทำสำเนาและการสแกนพื้นฐาน', 3900, '2/6.png', 2),
(17, 'PIXMA G6070', 'เครื่องพิมพ์ไร้สาย ALL-IN-ONE พร้อมแทงค์หมึกแบบเติมได้สำหรับการพิมพ์ปริมาณมาก ได้รับการออกแบบมาเพื่อการพิมพ์ในปริมาณมากและมีต้นทุนต่ำ เครื่องพิมพ์ประสิทธิภาพสูงนี้รวบรวมเอาความกะทัดรัดและออพชันการพิมพ์ที่หลากหลายสำหรับการพิมพ์ที่บ้านหรือในสำนักงานขนาดเล็ก', 2900, '2/7.png', 2),
(18, 'PIXMA G5070', 'เครื่องพิมพ์ไร้สายพร้อมแทงค์หมึกแบบเติมได้สำหรับการพิมพ์ปริมาณมาก ได้รับการออกแบบมาเพื่อการพิมพ์ในปริมาณมากและมีต้นทุนต่ำ เครื่องพิมพ์ประสิทธิภาพสูงนี้รวบรวมเอาความกะทัดรัดและออพชันการพิมพ์ที่หลากหลายสำหรับการพิมพ์ที่บ้านหรือในสำนักงานขนาดเล็ก', 4900, '2/8.png', 2),
(19, 'PIXMA GM2070', 'เครื่องพิมพ์ไร้สายติดตั้งแทงค์หมึกแบบเติมได้สำหรับการพิมพ์ขาว-ดำปริมาณมาก ออกแบบมาเพื่อการพิมพ์ขาว-ดำปริมาณมากโดยเสียค่าใช้จ่ายต่ำ เครื่องพิมพ์มีออพชันสำหรับการพิมพ์เอกสารสี', 3200, '2/9.png', 2),
(20, 'PIXMA TS307', 'เครื่องพิมพ์ไร้สายพร้อมการถ่ายสำเนาจากสมาร์ทโฟน PIXMA TS307 มีรูปร่างและฟังก์ชันพร้อมการออกแบบที่ทันสมัย พิ้นผิวด้านบนที่ราบเรียบทำให้มีพื้นที่สำหรับเอกสารที่จะสแกน ผู้ใช้สมาร์ทโฟนสามารถทำสำเนาเอกสารคุณภาพสูงได้อย่างง่าย', 4300, '2/10.png', 2),
(21, 'XA11', 'XA11 กล้องวิดีโอ ความละเอียดระดับ Full HD มีตัวเซ็นเซอร์ภาพ HD CMOS, เลนส์ซูมออปติคอล 20X ระบบการประมวลผลภาพ DIGIC DV 4 และระบบประมวลผลภาพ แบบ HD CMOS Pro คุณภาพสูงได้บันทึกวิดีโอ ในรูปแบบ AVCHD,MP4 ที่ 50P/35 Mbps AVCHD', 98000, '3/1.png', 3),
(22, 'XA15', 'XA15 กล้องวิดีโอ ความละเอียดระดับ Full HD มีตัวเซ็นเซอร์ภาพ HD CMOS, เลนส์ซูมออปติคอล 20X ระบบการประมวลผลภาพ DIGIC DV 4 และระบบประมวลผลภาพ แบบ HD CMOS Pro คุณภาพสูงได้บันทึกวิดีโอ ในรูปแบบ MP4 ที่ 50P/35 Mbps AVCHD', 120000, '3/2.png', 3),
(23, 'XA55', 'XA55 กล้องวิดีโอ ความละเอียดระดับ 4K มีตัวเซ็นเซอร์ภาพ 4K UHD CMOS, เลนส์ซูมออปติคอล 15X ระบบการประมวลผลภาพ DIGIC DV 6 และเลนส์วิดีโอ 4K สามารถรับภาพ 4K คุณภาพสูงได้บันทึกวิดีโอ 4K 25P / 30P ในรูปแบบ MP4 กล้องยังสามารถถ่ายวิดีโอภาพเคลื่อนไหวที่รวดเร็วและช้าได้สูงสุดถึง 1200x และ 0.5x / 0.4x ความเร็วปกติตามลำดับ', 130000, '3/3.png', 3),
(24, 'XA50', 'XA50 กล้องวิดีโอ ความละเอียดระดับ 4K มีตัวเซ็นเซอร์ภาพ 4K UHD CMOS, เลนส์ซูมออปติคอล 15X ระบบการประมวลผลภาพ DIGIC DV 6 และเลนส์วิดีโอ 4K สามารถรับภาพ 4K คุณภาพสูงได้บันทึกวิดีโอ 4K 25P / 30P ในรูปแบบ MP4 กล้องยังสามารถถ่ายวิดีโอภาพเคลื่อนไหวที่รวดเร็วและช้าได้สูงสุดถึง 1200x และ 0.5x / 0.4x ความเร็วปกติตามลำดับ', 280000, '3/4.png', 3),
(25, 'XF705', 'XF705 กล้องวิดีโอ ความละเอียดระดับ 4K มีตัวเซ็นเซอร์ภาพ 4K UHD CMOS, เลนส์ซูมออปติคอล 15x ระบบการประมวลผลภาพ DIGIC DV 6 ความเปรียบต่างของสีที่ 4:2:2 และเลนส์วิดีโอ 4K สามารถรับภาพ 4K คุณภาพสูงได้ ในรูปแบบ MXF 50 Mbps 4:2:2 10 bit', 360000, '3/5.png', 3),
(26, 'XF405', 'XF405 กล้องวิดีโอ ความละเอียดระดับ 4K มีตัวเซ็นเซอร์ภาพ UHD 4K CMOS, เลนส์ซูมออปติคอล 15X ระบบการประมวลผลภาพ DIGIC DV 5 ความเปรียบต่างของสีที่ 4:2:2 และเลนส์วิดีโอ คุณภาพสูงได้ ในรูปแบบ MP4 H.264', 89000, '3/6.png', 3),
(27, 'XF400', 'XF405 กล้องวิดีโอ ความละเอียดระดับ 4K มีตัวเซ็นเซอร์ภาพ UHD 4K CMOS, เลนส์ซูมออปติคอล 15X ระบบการประมวลผลภาพ DIGIC DV 5 ความเปรียบต่างของสีที่ 4:2:2 และเลนส์วิดีโอ คุณภาพสูงได้ ในรูปแบบ MP4 H.264', 120000, '3/7.png', 3),
(28, 'XA40', 'XA40 กล้องวิดีโอ ความละเอียดระดับ 4K มีตัวเซ็นเซอร์ภาพ 4K UHD CMOS, เลนส์ซูมออปติคอล 20x ระบบการประมวลผลภาพ DIGIC DV 6 และเลนส์วิดีโอ 4K สามารถรับภาพ 4K คุณภาพสูงได้บันทึกวิดีโอ 4K 25P / 30P ในรูปแบบ MP4 กล้องยังสามารถถ่ายวิดีโอภาพเคลื่อนไหวที่รวดเร็วและช้าได้สูงสุดถึง 1200x และ 0.5x / 0.4x ความเร็วปกติตามลำดับ', 340000, '3/8.png', 3),
(29, 'XA45', 'XA45 กล้องวิดีโอ ความละเอียดระดับ 4K มีตัวเซ็นเซอร์ภาพ 4K UHD CMOS, เลนส์ซูมออปติคอล 20x ระบบการประมวลผลภาพ DIGIC DV 6 และเลนส์วิดีโอ 4K สามารถรับภาพ 4K คุณภาพสูงได้บันทึกวิดีโอ 4K 25P / 30P ในรูปแบบ MP4 กล้องยังสามารถถ่ายวิดีโอภาพเคลื่อนไหวที่รวดเร็วและช้าได้สูงสุดถึง 1200x และ 0.5x / 0.4x ความเร็วปกติตามลำดับ', 290000, '3/9.png', 3),
(30, 'EOS C100 Mark II', 'ตัวรับภาพ Super 35 mm. ตัวรับภาพ CMOS ความละเอียด 8.29 ล้านพิกเซล มีระบบการ โฟกัสเบบ Dual Pixel CMOS AF , ระบบโฟกัสใบหน้า , ระบบโฟกัสแบบ manual , ระบบการโฟกัสแบบต่อเนื่อง Bit Rate : AVCHD 28 Mbps , MP4 35 Mbps จอ LCD 3.5 นิ้ว 16:9 ระบบสัมผัส ความละเอียด 1.23 ล้านพิกเซล ช่องมองภาพ 16:9 ความละเอียด 1.23 ล้านพิกเซล Frame Rate (24P / 25P / 50P /60P)', 99000, '3/10.png', 3),
(31, 'XEED 4K5020Z', 'The 4K5020Z is a native 4K projector, which is small and light weight compared to other projectors in the same class. It combines the long-lasting benefits of laser projection with 5,000 lumens of brightness and a native 4K (4096 x 2160) display resolution for high-quality image reproduction.', 3400, '4/1.png', 4),
(32, 'XEED 4K6020Z', 'The 4K6020Z is a native 4K projector, which is small and light weight compared to other projectors in the same class. It combines the long-lasting benefits of laser projection with 6,000 lumens of brightness and a native 4K (4096 x 2160) display resolution for high-quality image reproduction.', 2300, '4/2.png', 4),
(33, 'XEED WUX7000Z', 'The WUX7000Z is a high-brightness (7,000 lumens) LCOS projector (laser model) with a new centred lens mount that fits six interchangeable genuine Canon lenses. The new AISYS 4.2 optical system has been improved with a slimmer optical which results in a more compact form factor with high brightness.', 1900, '4/3.png', 4),
(34, 'XEED WUX7500', 'The WUX7500 is a high-brightness (7,500 lumens) LCOS projector (lamp model) with a new centred lens mount that fits six interchangeable genuine Canon lenses. The new AISYS 4.2 optical system has been improved with a slimmer optical component which results in a more compact form factor with high brightness.', 2600, '4/4.png', 4),
(35, 'XEED WUX6600Z', 'The WUX6600Z is a high-brightness (6,600 lumens) LCOS projector (laser model) with a new centred lens mount that fits six interchangeable genuine Canon lenses. The new AISYS 4.2 optical system has been improved with a slimmer optical component which results in a more compact form factor with high brightness.', 3100, '4/5.png', 4),
(36, 'XEED WUX6700', 'The WUX6700 is a high-brightness (6,700 lumens) LCOS projector (lamp model) with a new centred lens mount that fits six interchangeable genuine Canon lenses. The new AISYS 4.2 optical system has been improved with a slimmer optical component which results in a more compact form factor with high brightness.', 2800, '4/6.png', 4),
(37, 'XEED WUX5800Z', 'The WUX5800Z is a high-brightness (5,800 lumens) LCOS projector (laser model) with a new centred lens mount that fits six interchangeable genuine Canon lenses. The new AISYS 4.2 optical system has been improved with a slimmer optical component which results in a more compact form factor with high brightness.', 1999, '4/7.png', 4),
(38, 'XEED WUX5800', 'The WUX5800 is a high-brightness (5,800 lumens) LCOS projector (lamp model) with a new centred lens mount that fits six interchangeable genuine Canon lenses. The new AISYS 4.2 optical system has been improved with a slimmer optical component which results in a more compact form factor with high brightness.', 2900, '4/8.png', 4),
(39, 'LX-MU500Z', 'The LX-MU500Z is a high-brightness, high-resolution laser light source projector with brightness up to 5,000 lumens. The long-lasting laser light source provides about 20,000* hours of operation hence reducing maintenance cost. The versatile and compact design allows the projector to be installed in various orientations.', 3100, '4/9.png', 4),
(40, 'XEED WUX500', 'The XEED WUX500 is a compact install model featuring high resolution, high luminance and high contrast. These features, combined with an advanced Genuine Canon projection lens and Canon\'s proprietary LCOS technology with AISYS 5.0 helps to produce crisp, bright images with exceptional colour reproduction.', 2500, '4/10.png', 4);

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE `product_type` (
  `pt_id` int(3) NOT NULL,
  `pt_name` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_type`
--

INSERT INTO `product_type` (`pt_id`, `pt_name`) VALUES
(1, 'CAMERA'),
(2, 'PRINTER'),
(3, 'VIDEO CAMERA'),
(4, 'PROJECTOR');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`oid`);

--
-- Indexes for table `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD PRIMARY KEY (`od_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`pt_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `aid` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `cid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `mid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `oid` int(7) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `orders_detail`
--
ALTER TABLE `orders_detail`
  MODIFY `od_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
