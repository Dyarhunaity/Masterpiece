-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2022 at 02:24 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `master`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `categoryname` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updat` int(11) NOT NULL DEFAULT 0,
  `delet` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `categoryname`, `updated_at`, `created_at`, `updat`, `delet`) VALUES
(1, 'Hotels & Restaurants', '2022-09-19 17:29:15', '2022-09-19 17:29:15', 0, 0),
(2, 'Petra', '2022-09-20 15:32:04', '2022-09-20 15:32:04', 0, 0),
(3, 'Wadi Rum', '2022-09-20 15:32:04', '2022-09-20 15:32:04', 0, 0),
(10, 'Archeological Sites', '2022-09-20 09:40:52', '2022-09-20 09:40:52', 0, 0),
(11, ' Resorts\r\n', '2022-09-20 12:00:14', '2022-09-20 12:00:14', 0, 0),
(12, 'Activities & Tours', '2022-09-20 14:00:31', '2022-09-20 14:00:31', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `comment_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `comment_text` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `user_name`, `comment_date`, `comment_text`, `product_id`) VALUES
(1, 'ahmed', '2022-05-21 12:09:57', 'This is a beautiful Sofa', 2),
(2, 'ahmed', '2022-05-21 12:10:21', 'This is a beautiful Sofa', 2),
(3, 'ahmed', '2022-05-21 12:15:47', 'This is a beautiful Sofa', 2),
(4, 'ahmed', '2022-05-21 12:17:59', 'This is a beautiful Sofa', 0),
(5, 'ahmed', '2022-05-21 12:18:03', 'This is a beautiful Sofa', 0),
(6, 'ahmed', '2022-05-21 12:25:22', 'I like It a lot !!!', 3),
(7, 'ahmed', '2022-05-21 12:25:25', 'I like It a lot !!!', 3),
(8, 'ahmed', '2022-05-21 12:25:28', 'I like It a lot !!!', 3),
(9, 'ahmed', '2022-05-21 12:26:25', 'I like It a lot !!!', 3),
(10, 'ahmed', '2022-05-21 12:27:37', 'I like It a lot !!!', 3),
(11, 'ahmed', '2022-05-21 12:30:05', 'I like It a lot !!!', 0),
(12, 'ahmed', '2022-05-21 12:32:54', 'I like It a lot !!!', 0),
(13, 'ahmed', '2022-05-21 12:34:48', 'I like It a lot !!!', 0),
(14, 'ahmed', '2022-05-21 12:39:23', 'I like It a lot !!!', 0),
(15, 'ahmed', '2022-05-21 12:42:44', 'I like It a lot !!!', 0),
(16, 'ahmed', '2022-05-21 12:44:58', 'I like It a lot !!!', 0),
(17, 'ahmed', '2022-05-21 12:45:21', 'I like It a lot !!!', 0),
(18, 'Dyar', '2022-05-28 03:08:16', 'Amazing Sofa', 2),
(19, 'Dyar', '2022-05-28 03:08:20', 'Amazing Sofa', 2),
(20, 'made', '2022-08-27 10:25:11', 'wow', 23),
(21, 'made', '2022-08-27 10:25:14', 'wow', 23),
(22, 'leap', '2022-09-24 06:14:13', 'hello', 34),
(23, 'leap', '2022-09-24 06:14:17', 'hello', 34),
(24, 'saja', '2022-09-26 06:11:55', 'such a fabulous view', 5),
(25, 'saja', '2022-09-26 06:12:01', 'such a fabulous view', 5);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_name` varchar(50) DEFAULT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_price` float(6,2) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `total_price` double(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `image2` varchar(255) NOT NULL,
  `image3` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `new_price` int(11) NOT NULL,
  `sale` int(11) NOT NULL DEFAULT 0,
  `description` varchar(11000) NOT NULL DEFAULT 'no description',
  `quantity` int(11) NOT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp(),
  `updated_at` date NOT NULL DEFAULT current_timestamp(),
  `updat` int(11) NOT NULL DEFAULT 0,
  `delet` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pname`, `category_id`, `image`, `image2`, `image3`, `price`, `new_price`, `sale`, `description`, `quantity`, `created_at`, `updated_at`, `updat`, `delet`) VALUES
(7, 'Wadi Rum Bubble Luxotel', 3, './images/wadirum/wadi7.jpg', './images/secondimages/wad13.jpg', './images/secondimages/wad14.jpg', 0, 0, 0, ' \r\nLocated in Wadi Rum, 15 km from Maḩaţţat Dīsah, Rum paradise camp provides accommodation with a restaurant, free private parking, a shared lounge and a garden. Featuring family rooms, this property also provides guests with a terrace. The accommodation features a 24-hour front desk, room service and currency exchange for guests.\r\n\r\nAt the hotel, every room is equipped with a patio. Rooms come complete with a private bathroom equipped with a bidet and free toiletries, while certain rooms at Rum paradise camp also provide guests with a seating area.\r\n\r\nThe accommodation offers a continental or buffet breakfast.\r\n\r\nThe area is popular for skiing, and car hire is available at Rum paradise camp.', 0, '2022-09-18', '2022-09-18', 0, 0),
(8, 'Disi Women Association', 3, './images/wadirum/wadi8.jpg', './images/secondimages/wad15.jpg', './images/secondimages/wad16.jpg', 0, 0, 0, 'In the heart of Wadi Rum red rose desert, Bedouin women struggle to prove themselves through working in projects that enable them to achieve better economic and social life, therefore Desi Women Association was established in order to create opportunities for Desi women and other community members to learn, share and grow.\r\n\r\nThe Association offers Desi women projects where they can make handmade ceramics and sell them to visitors of Wadi Rum. In collaboration with national and international organizations, the Association provides women with training courses.\r\n\r\nThe association is led by the remarkable Bedouin woman known as \"Oum Laith\". She along with a group of women in the village launched this NGO in January 2010 with aims to support women and children in the village.\r\n\r\nThe association welcomes volunteers under their many projects; CeraDisi - a ceramics making project where 10 women are employed to create art from mud. Jadayel - is a project where the women collected old tales from the elderly and created photos and paintings inspired by these tales.', 0, '2022-09-20', '2022-09-20', 0, 0),
(9, 'Spend a Day with a Bedouin', 3, './images/wadirum/wadi9.jpg', './images/secondimages/wad17.jpg', './images/secondimages/wad18.jpg', 0, 0, 0, '“Ahlan wa Sahlan” (meaning, welcome) sounds familiar to every foreigner who visits Jordan. Spending a day with a Bedouin is an experience you will never forget. Watch, learn and live there lifestyle which is their key of survival in the harsh desert.\r\n\r\nWadi Rum desert is your distention to escape the modern, civilised world. where artificial world seems unbelievable far away. Bedouin live their lives in the natural rhythm and cycles of nature. Being in the desert is a back in time experience.\r\n\r\nThe Bedouin have inhabited Wadi Rum for thousands of years, their lifestyle perfectly adapted to the semi-arid environment. They bred camels, goats and sheep on the sand floor and the mountain slopes and lived in tents or in caves. They would move their livestock seasonally in search of grazing areas, maintaining on ancestral knowledge of the desert mountain environment, of water management and of the use wild plants and animals as food and medicine.\r\n\r\nBedouin life has always been about surviving in the desert. The desert is a harsh and inhospitable place.', 0, '2022-09-20', '2022-09-20', 0, 0),
(10, 'Camel Riding', 3, './images/wadirum/wadi10.jpg', './images/secondimages/wad19.jpg', './images/secondimages/wad20.jpg', 0, 0, 0, 'Camels are a fascinating animal with a unique character. If not for Camels, Bedouin life in the Desert would have been impossible. Spending time travelling through the Desert is the epitome of the Bedouin experience. Camels are considered “ships” of the desert; they don’t sink in the deep red sand, they float across it carrying their riders safely over the dunes. Camel riding is the traditional Bedouin way to move around in the desert. Experience the natural desert landscapes and classic sites of Wadi Rum at a slower pace in just one day on our full day camel tour. Enjoy the tranquility of the desert, sleep overnight under the stars or stay in our desert camp', 0, '2022-09-20', '2022-09-20', 0, 0),
(11, 'The Treasury', 2, './images/petra/petra1.jpg', './images/secondimages/pet1.jpg', './images/secondimages/pet2.jpg', 0, 0, 0, 'Al-Khazneh (Arabic: الخزنة; \"The Treasury\") is one of the most elaborate temples in Petra, a city of the Nabatean Kingdom inhabited by the Arabs in ancient times. As with most of the other buildings in this ancient town, including the Monastery (Arabic: Ad Deir), this structure was carved out of a sandstone rock face.\r\n\r\nThe structure is believed to have been the mausoleum of the Nabatean King Aretas IV in the 1st century AD. It is one of the most popular tourist attractions in both Jordan and the region. It became known as \"Al-Khazneh\", or The Treasury, in the early 19th century by the area\'s Bedouins as they had believed it contained treasures.\r\n\r\nAl-Khazneh was originally built as a mausoleum and crypt at the beginning of the 1st century AD during the reign of Aretas IV Philopatris.[3]\r\n\r\nMany of the building\'s architectural details have eroded away during the two thousand years since it was carved and sculpted from the cliff. The sculptures are thought to be those of various mythological figures associated with the afterlife.[4] On top are figures of four eagles that would carry away the souls. The figures on the upper level are dancing Amazons with double-axes. The entrance is flanked by statues of the twins Castor and Pollux who lived partly on Olympus and partly in the underworld.\r\n\r\n\r\n', 0, '2022-09-20', '2022-09-20', 0, 0),
(12, 'The Street of Facades', 2, './images/petra/petra2.jpg', './images/secondimages/pet3.jpg', './images/secondimages/pet4.jpg', 0, 0, 0, 'The walk from Al-Khazneh (Treasury) to the center of Petra leads first through the narrow Outer Siq. Where the gorge widens, high tomb facades carved out of the rock on the left side stand next to each other like a row of mansions, for which this part is dubbed Street of Facades. In our informative photo tour, we draw attention to various details along the path and of the heavily weathered fronts that are not immediately noticeable.\r\n\r\nAn unusual example of Nabataean rock architecture is the tomb tower BD 70, which is over 15 m high. Carved out on three sides and bearing a wreath of bricked-up crenellations, it stands at an exposed location and was probably particularly important. Passing some apparently buried facades, whose gables can be seen from close up, one reaches the restored tomb BD 825 with 17 graves and some remarkable details, such as a nefesh on the door frame. Another highlight is the Uneishu Tomb, which stands elevated at the beginning of the western wall of the Jabal al-Khubtha massif.', 0, '2022-09-20', '2022-09-20', 0, 0),
(13, 'The Theater', 2, './images/petra/petra3.jpg', './images/secondimages/pet5.jpg', './images/secondimages/pet6.jpg', 0, 0, 0, ' \r\nThe monumental theater at the end of the Street of Facades’ necropolis gives the visitor an overwhelming proof that Petra was also a true \"city of the living\". Thousands of people used to gather here to attend cultic or cultural performances. Hewn directly from the rock of the Jabal al-Madhbah, the theater’s semicircular auditorium (cavea) could seat up to eight thousand spectators.\r\n\r\nStonemasons’ marks on column drums uncovered by Philip C. Hammond during his excavations led him to date its construction to the early first century AD, when Petra witnessed an architectural boom under the Nabataean King Aretas IV. After the Roman annexation in 106 AD, the theater was enlarged slicing trough some older tombs, remains of which can be seen on the smoothed rock face in the back.', 0, '2022-09-20', '2022-09-20', 0, 0),
(14, 'Corinthian Tomb', 2, './images/petra/petra4.jpg', './images/secondimages/pet7.jpg', './images/secondimages/pet8.jpg', 0, 0, 0, ' \r\nThe design of this tomb (BD 776, dated 40-70 AD) is based on the structure of Al-Khazneh (Treasury). When Leon de Laborde visited Petra in 1828, he called it the Corinthian Tomb because of its capitals. This has often been dismissed as a mistake, but in fact they are a Nabataean adaptation of Corinthian capitals, in which tendrils with flowers appear in the middle field between the corner volutes instead of the spirals (helixes). At the Corinthian Tomb, however, the tendrils are much less detailed and worked out than at the lower capitals of the Al-Khazneh, where the Alexandrian model is more easily recognizable (see the detailed photos above).\r\n\r\nThe heavily weathered façade (27.55 m width x 28 m height) consists of three orders. The lowest is structured by eight half columns, whose centre pair carries a segmental (curved) weather-beaten pediment. The middle order is also very eroded especially on the left half. It has eight dwarf pilasters in alignment with the order below. The recessed and protruding spaces between the supports of the entablatures alternate in an opposite way on both orders.', 0, '2022-09-20', '2022-09-20', 0, 0),
(15, 'Colonnaded Street', 2, './images/petra/petra5.jpg', './images/secondimages/pet9.jpg', './images/secondimages/pet10.jpg', 0, 0, 0, ' \r\nThe street represents an original Nabataean creation,later refurbished during the period of Roman occupation. It would have been one of the principal shopping streets of ancient Petra.The street was rebuilt in 106 BC with a width of 6 meters.\r\nThe excavation fossil indicates that there was an older road with 1-2 floor building, lying on its side. On the left of the portico street to the south, there is a set of stairs that leads to the courtyard, which is called the market. This is believed to have been the heart of the city and center of various types of commercial activities and transactions during the third century BC. The street continued to be used throughout the Byzantine period during the fourth and fifth centuries, until the sixth. \r\n\r\nAt the end of the road lies the triple gate, which leads to the Temple of Qasr Al-Bint. The street was paved in horizontal and vertical ways in order to facilitate the movement of vehicles as it curved from the middle to allow the draining of water, which is equipped with a network of channels under the street level. The main tripartite gate led to the sacred courtyard known as the Temple of Qasr Al-Bint. Ahead of the entrance to the Gate, there lies a set of stairs that leads to the Temple, and on the other side lies the Black Winged Temple, which is dedicated to the God of Lat and Uzza, who is the mate of the major Nabataean gods.', 0, '2022-09-20', '2022-09-20', 0, 0),
(16, 'Siq al Barid', 2, './images/petra/petra6.jpg', './images/secondimages/pet11.jpg', './images/secondimages/pet12.jpg', 0, 0, 0, ' Just 6 km north the Nabataean capital\'s centre, the Siq al-Barid (\"cold canyon\"), also known as Little Petra, and the area around Al-Beidha were an important base for the long-distance trade, and an ideal rest place for caravans. On the once fertile plains the pack and saddle animals could graze extensively. Thanks to numerous cisterns, there was sufficient water so that agriculture could flourish, including wine growing and making, as evidenced by a large number of well-preserved wine presses.\r\n\r\nThe rock-cut buildings in the 350 metres long Siq al-Barid originated most likely in the heyday of the Nabataean Empire during the 1st century AD, and seem to have served mainly cultic purposes. A funnel-shaped entrance area, where there is a grave with classical facade, leads to a gate and narrow passage through which one enters the deep and therefore \"cool\" gorge.\r\n', 0, '2022-09-20', '2022-09-20', 0, 0),
(17, 'The Temple of Qasr Al-Bint', 2, './images/petra/petra7.jpg', './images/secondimages/pet13.jpg', './images/secondimages/pet14.jpg', 0, 0, 0, ' Excavations and restoration work at Qasr al-Bint were started in the late fifties by the British School of Archaeology in Jerusalem and are still conducted by the Department of Antiquities of Jordan.\r\n\r\nThe Nabataean temple of Qasr Al-Bint is standing within a large paved temenos to a height of 23m. it is surrounded by a peribolos, an enclosure wall, to which seats were added during the time of King Aretas IV ( 9BC-AD40) according to two inscriptions, one of which is still engaged between the seats.\r\n\r\nThe northern façade is atetrastyle-in-antis  ( four columns framed by pilasters) and approached through a monumental stairway, rivetted with marble. An altar for sacrifices faces the cultic chaple to the north.\r\n\r\nthe priests proceeded from the pronaos to the cella and to the tripartite adyton or holy of the holies according to the Syrian tradition. In the central chapel the idols were exposed on a raised platform. A fourth century author recorded that the temples was dedicated to Dhu-Shara and his virgin mother al-Uzza-Aphrodite. Greek inscriptions and a fragmentary eye-idol discovered in the temple confirm this attribution.\r\n\r\nThe side chambers had balcony roofs, accessible through stairways logged in the walls. They served for sacred symposia and were provided with marble seats. The upper floors were probably for the storage of archives and sacred objects. Qasr Al-Bint was remarkable for its inner and outer stucco decoration, representing ashlar courses, relief panels and vegetal scrolls. A marble dado rivetted the inner wall to a height of 70cm.The temple was built in the second half of the first century BC and reused by the Romans in the second century AD. At the end of the third century AD the monument was looted and intentionally destroyed by fire-before it was struck by the AD 363 earthquake. A medieval occupation was revealed on the Monumental Stairway. \r\n', 0, '2022-09-20', '2022-09-20', 0, 0),
(18, 'The Siq', 2, './images/petra/petra8.jpg', './images/secondimages/pet15.jpg', './images/secondimages/pet16.jpg', 0, 0, 0, '\r\nIt is the ancient main entrance leading to the city of Petra, starts at the Dam and ends at the opposite side of the vault, a split rock with a length of about 1200m and a width of 3 to 12m, and height up to about 80m; most of the rock is natural and another part was sculptured by the Nabataeans.  The Siq, the main road that leads to the city, starts from the Dam and ends at the Treasury.  It is a rock canal that measures 160 meters in length, 3 to 12 meters in width and reaches up to 80 meters in height. The main part of the Siq is created by natural rock formation and the rest is carved by the Nabataeans.\r\n\r\nAt the beginning of the Siq, one can still view the remains of the city’s gate. On both sides of the Siq, there are channels to draw water from Wadi Musa (the Valley of Moses), from outside the city to the inside.\r\n\r\nFrom the right, it is evident that the water flowed through pottery pipes but the left channel is carved from the rock and covered with panels of stone, and there are spaces in place to filter water. At the start of the Siq the original Nabataean dams are visible, and these prevented the flooding in the Siq, and collected water for use. The floor of the Siq is paved with stone slabs, part of which can be viewed in its original location.\r\n\r\nAspects of the Siq were decorated with Nabataean sculptures, mostly representing gods. It is believed that the statues of gods and their sculptures were situated very close and even adjacent to the channels due to the Nabataean belief that water was sacred. In addition, on the left side there are idols called Sabinos Statues.', 0, '2022-09-20', '2022-09-20', 0, 0),
(19, 'The Sextius Florentinus Tomb', 2, './images/petra/petra9.jpg', './images/secondimages/pet17.jpg', './images/secondimages/pet18.jpg', 0, 0, 0, 'To reach the last and only datable tomb with pediment in Petra, one has to walk down from the Palace Tomb about 250 m to the north into the Wadi al-Mataha. The heavily weathered façade is best seen in the late afternoon with lateral sunlight.\r\n\r\nAccording to the Latin dedicatory inscription, the tomb (BD 763) was built for Titus Aninius Sextius Florentinus by order of his son Lucius. Sextius Florentinus was Roman governor of Provincia Arabia from 127 AD on, but already in 130 AD the name of his successor T. Haterius Nepo is mentioned in ancient sources, which means that he probably died in 129. The hypothesis of some researchers that an older Nabataean tomb was reused is refuted by stylistic comparisons with Roman buildings elsewhere, among other things. After the Roman annexation, burials in the city center of Petra were forbidden. Probably for this reason, the tomb of this prominent personality is located further away.', 0, '2022-09-20', '2022-09-20', 0, 0),
(20, 'The Monastery', 2, './images/petra/petra10.jpg', './images/secondimages/pet19.webp', './images/secondimages/pet20.jpg', 0, 0, 0, 'After the ascent - usually walking up the processional way from the ancient city centre (but see also: Petra back trail) - you reach a vast plateau dominated by the monumental façade of Ad Deir, the so called Monastery. It is most beautiful in the mild light of the late afternoon, but one should not arrive too late, because the area has numerous rock-cut halls, cult niches, sacrificial places, and cisterns (altogether over 100 monuments.) And the rocks at the edge of the western cliff offer awesome views of the mountain scenery right down to the 1000 m lower situated Wadi Araba.\r\n\r\nThe Arabic name \"Ad Deir\" (the Monastery) was given to the place by native Bedouins because of the crosses inscribed on the interior back wall during its Christian use in Byzantine times. The monument\'s façade of 47 m width and 48 m height, and the large hall behind it were carved out of the mountain around the mid-1st century AD.\r\n', 0, '2022-09-20', '2022-09-20', 0, 0),
(21, 'Intercontinental Hotel', 1, './images/hotels/hotel1.jpg', './images/secondimages/hot1.jpg', './images/secondimages/hot2.jpg', 0, 0, 0, 'Combining contemporary facilities with local features, InterContinental offers stylish accommodation in Amman’s Diplomatic Area. It features a palm-fringed pool, a palatial indoor pool and a spa with hot tub and massage treatments.\r\n\r\nFitted with designer furnishings, rooms at InterContinental Jordan are chic and functional. They all include a spacious lounge with seating area, satellite TV channels and deluxe bathrooms with bathtub.\r\n\r\nHomemade cakes and pastries in the mornings, snacks during the day and pre-dinner aperitifs are served at the Boulevard Café. The place is fitted with large couches and provides a chance to meet the locals in an informal ambience.\r\n\r\nThe 24-hour reception staff can help plan visits and excursions into Jordan’s Red Desert. Amman Citadel is 2 km away and the elegant Al Mukhtar Mall is only a 5-minute drive from the InterContinental Hotel.\r\n\r\nCouples particularly like the location — they rated it 8.6 for a two-person trip.', 0, '2022-09-20', '2022-09-20', 0, 0),
(22, 'Lacosta Hotel\r\n', 1, './images/hotels/hotel2.jpg', './images/secondimages/hot3.webp', './images/secondimages/hot4.jpg', 0, 0, 0, 'Lacosta Hotel is situated in Aqaba and features free Wi-Fi. It is also located just a short walk from Ahlan Aqaba Scuba Diving Center, and provides a shuttle service. There are a variety of amenities on offer to those staying at the hotel, including a concierge, a car rental desk and a 24-hour reception. Those staying at the property can also enjoy canoeing, scuba diving and fishing. Each room at Lacosta Hotel offers a refrigerator and all the necessities for a comfortable stay. Those staying at the hotel can sit down to a unique dining experience at the on-site restaurant, conveniently situated for those who want to stay nearby when looking for a bite to eat. A selection of cafés and restaurants are also found in close proximity to the property. Tourist attractions close to Lacosta Hotel include Aqaba Archaeological Museum, Port of Aqaba and Aqaba Castle. Additionally, a range of tourist destinations are within easy reach.\r\n\r\n', 0, '2022-09-20', '2022-09-20', 0, 0),
(23, 'Oryx Hotel', 1, './images/hotels/hotel3.jpg', './images/secondimages/hot5.jpg', './images/secondimages/hot6.jpg', 0, 0, 0, ' Just 380 m away from Saraya Beach and 900 m away from the city down town, Oryx Hotel Aqaba is located in Aqaba. Free WiFi access is available. It offers a gym. The spa features hot tubs, steam rooms and an extensive variety of facial and body massage treatments.\r\n\r\nEach room here will provide you with a 32 inch flat-screen TV, air conditioning and a balcony. Featuring a bath or shower, private bathroom also comes with a hairdryer and a bidet.\r\n\r\nAqaba Museum is 3 km from Oryx Hotel Aqaba. King Hussein Airport is 15 km away.\r\n\r\nCouples particularly like the location — they rated it 8.4 for a two-person trip.\r\n', 0, '2022-09-20', '2022-09-20', 0, 0),
(24, 'Double Tree Hotel', 1, './images/hotels/hotel4.jpg', './images/secondimages/hot7.jpg', './images/secondimages/hot8.jpg', 0, 0, 0, ' Property Location With a stay at DoubleTree by Hilton Hotel Aqaba in Aqaba, you\'ll be in the business district, within a 5-minute drive of Port of Aqaba and Palm Beach. This 5-star hotel is 12 mi (19.3 km) from Dolphin Reef and 13.2 mi (21.2 km) from Coral Beach Nature Reserve. Rooms Make yourself at home in one of the 173 air-conditioned rooms featuring minibars. Satellite programming provides entertainment, and wired and wireless Internet access is available for a surcharge. Private bathrooms with bathtubs or showers feature complimentary toiletries and bidets. Conveniences include phones, as well as laptop-compatible safes and desks. Amenities Be sure to enjoy recreational amenities including an outdoor pool and a fitness center. Additional features at this hotel include complimentary wireless Internet access and concierge services. The beach shuttle (surcharge) makes getting to the surf and sand a breeze. Dining Enjoy international cuisine at Gusto, one of the hotel\'s 3 restaurants, or stay in and take advantage of the 24-hour room service. Snacks are also available at the 2 coffee shops/cafés. Unwind at the end of the day with a drink at the bar/lounge or the poolside bar. Buffet breakfasts are available daily from 6:30 AM to 10:30 AM for a fee. Business, Other Amenities Featured amenities include complimentary wired Internet access, a computer station, and complimentary newspapers in the lobby. Free valet parking is available onsite.\r\n', 0, '2022-09-20', '2022-09-20', 0, 0),
(25, 'kempinski Hotel', 1, './images/hotels/hotel5.jpg', './images/secondimages/hot9.jpg', './images/secondimages/hot10.jpg', 0, 0, 0, '\r\nOverlooking the Red Sea, this beach resort offers 5 different dining outlets and an outdoor pool bordering white sandy beaches. Its modern designs add to the tranquillity of the surroundings.\r\n\r\nThe bright and airy rooms at the Kempinski feature a private balcony with direct sea view. Each one has a flat-screen satellite TV mounted on the wall. The spacious bathroom offers a bathrobe and hairdryer.\r\n\r\nThe Aqaba Kempinski offers a range of water sports such as jet-skiing, banana boat riding, parasailing, and scuba diving. Alternatively, poolside loungers provide sunbathing possibilities in the shade of bamboo trees.\r\n\r\nFor relaxation, various body therapies are offered at the spa. It also features a dry and wet sauna and a hot tub. The gym with sea views allows guests to keep in shape.\r\n\r\nThe Kempinski Hotel Aqaba is a 5-minute walk from the shops and entertainment of Aqaba city. Aqaba Airport is a 12 minute drive away.\r\n\r\nDue to health and safety precautions we do not allow any food and beverages including alcohol, from outside the hotel to be consumed in the hotel.\r\n\r\nCouples particularly like the location — they rated it 9.5 for a two-person trip.', 0, '2022-09-20', '2022-09-20', 0, 0),
(26, 'Movenpick Hotel', 1, './images/hotels/hotel6.jpg', './images/secondimages/hot11.jpg', './images/secondimages/hot12.jpg', 0, 0, 0, '\r\nThe Movenpick Resort & Residences Aqaba is located in the centre of Aqaba Jordan, with a magnificent view of the Red Sea and coloured mountains, providing guests direct access to their own private beach. Our luxury hotel is located 10 km from King Hussein International Airport, near the archaeological sites of the Islamic city of Ayla.\r\n\r\n \r\n\r\nThis architectural delight features a mix of European and Arabesque designs, reflecting a homely feeling. The resort combines grandeur, 5 star luxury and welcoming hospitality.\r\n\r\n \r\n\r\n At Movenpick Resort & Residence Aqaba there is something for everyone to enjoy from an all day buffet to the Red Sea Grill serving up fresh seafood.\r\n \r\n\r\nThe resort\'s four swimming pools are guaranteed to keep you cool in the hot temperatures of Aqaba. Unwind at our adult lap pool or stay fit in the gym.\r\n\r\n \r\n\r\nEnjoy the unique beauty and colours of the Red Sea through excursions to nearby scuba diving and snorkelling locations, as well as sunset cruises and glass-bottomed boat trips. Other fun activities include parasailing, water skiing and jet skiing.\r\n\r\n \r\n\r\nWe have not forgotten about our younger guests, who can enjoy the kid’s pool or the resort\'s \"Little Birds Club\" children activities centre to ensure a high spirited stay for all.', 0, '2022-09-20', '2022-09-20', 0, 0),
(27, 'Red See Grill', 1, './images/resturants/res1.jpg', './images/secondimages/re1.jpg', './images/secondimages/re2.jpg', 0, 0, 0, '\r\nBeautifully located along the magnificent sea shore of the Gulf of Aqaba, Red Sea Grill is the perfect escape to enjoy a candle-lit moment or a pleasant dinner with family and friends in a relaxing, al fresco setting.   Enjoy Aqaba\'s finest fresh seafood specialities, cooked and served to suit your taste buds. We offer an incredible selection of seafood freshly caught from the Red Sea and prepared by our chefs, as well as an exquisite fusion of flavours for you to savour.\r\n\r\n\r\nRed Sea Grill is a striking and elegant restaurant that features Afro-Arab cuisine with a twist made from the best and freshest seafood specialties. An outdoor romantic al fresco terrace seating with magnificent panoramic views of the Gulf of Aqaba offers seating for couples, which is perfect for special occasions. A unique seafood restaurant in the heart of Aqaba downtown, Red Sea Grill’s Afro-Arab menu will transport guests from Jordan to Africa. This culinary experience is accompanied by the servers\' excellent service.', 0, '2022-09-20', '2022-09-20', 0, 0),
(28, ' Burj Al Hamam', 1, './images/resturants/res2.jpg', './images/secondimages/re3.jpg', './images/secondimages/re4.webp', 0, 0, 0, 'Burj Al Hamam Restaurant has Mastered \"The Art of Lebanese Cuisine\" for more than 40 years, with our signature fresh seafood dishes and BBQ offerings. Burj Al Hamam restaurant also offers a wide range of authentic home cooked Lebanese Mezzah that are served in the only branded Lebanese restaurant in Aqaba.\r\n\r\n', 0, '2022-09-20', '2022-09-20', 0, 0),
(29, 'Captain\'s Restaurant', 1, './images/resturants/res3.jpg', './images/secondimages/re5.jpg', './images/secondimages/re6.jpg', 0, 0, 0, '\r\nSINCE 1981 CAPTAIN\'S RESTAURANT With its small welcoming atmosphere Captain\'s restaurant welcomes up to 200 Guests in its pleasant indoor venue. The restaurant offers an all day dining experience - a la carte, indulging the day with the finest selection of Oriental and Traditional meals and spectacular sea food cuisine. Captain\'s Restaurant is one of the leading Sea Food & Oriental restaurants in Aqaba and is one of the few remaining vestiges of its type. It\'s located in the middle of Aqaba city two hundred meters from down town. Our mission is to be a restaurant of choice in our league, by providing an exceptional dining experience that satisfies our guests\' grown-up tastes by being a \"Cut-Above\" in everything we do.', 0, '2022-09-20', '2022-09-20', 0, 0),
(30, 'Aurjwan Cafe and Restaurant', 1, './images/resturants/res4.jpg', './images/secondimages/re7.jpg', './images/secondimages/re8.jpg', 0, 0, 0, 'Aurjwan cafe and restaurant is one of the most attractive places in Aqaba. It is located in the middle of Aqaba and you would easily get there walking from any spot.\r\nOur Menu contains many  food options and surely you would get the best services while you are in the restaurant. ', 0, '2022-09-20', '2022-09-20', 0, 0),
(34, 'One Day Jeep Tours', 3, './images/wadirum/wadi11.jpg', './images/secondimages/wad21.jpg', './images/secondimages/wad22.jpg', 0, 0, 0, 'Jeep Tour is a flexible, fun tour for all ages. If you are active people then there are plenty of opportunities to scramble, hike, jump. If you are more sedate by nature then you can sit and enjoy the views, stroll, take photos, discover in your own way. This Jeep Tour covers all the best, most interesting Wadi Rum ‘sites’, and can be tailored to include a camel trek, or extra hiking. An active full day exploring in the beautiful Wadi Rum desert. Experience the most classic sites in the protected area, climb sand dunes, discover inscriptions and natural arches.', 0, '2022-09-20', '2022-09-20', 0, 0),
(35, 'Hiking or Scrambling', 3, './images/wadirum/wadi12.jpg', './images/secondimages/wad23.jpg', './images/secondimages/wad24.jpg', 0, 0, 0, 'Jordan’s Wadi Rum provides a magical setting for a walking trip. Rising abruptly from the desert plains, the red-ochre sandstone mesas of Wadi Rum provide one of the world’s most dramatic landscapes. In this traditional land of the Bedouin, our treks will take you on Lawrence or Arabia tracks, ancient trails through hidden canyons and across open rocky slopes to the summits of several of the biggest formations in Jordan. A selection of hikes that can be done in one day : Jebel Um Ad Dami, the highest peak in Jordan, Jebel Burdah famous for its arch and Rakhabat Canyon', 0, '2022-09-20', '2022-09-20', 0, 0),
(36, 'The Great Temple', 2, './images/petra/petra11.jpg', './images/secondimages/pet21.jpg', './images/secondimages/pet22.jpg', 0, 0, 0, 'The “Great” Temple Complex represents one of the major archaeological and architectural components of central Petra. Since 1993 archaeologist from Brown University have been Excavating this temple precinct. These investigations are conducted under the auspices of the department of Antiquates of Jordan .\r\n\r\nThe great temple precinct which you see before the majors estimated 7.000m2( 76.000 sq. ft) and this comprised north south of Propylaea monumental entryway ( a lower temenos ) sacred area : twin exedra ( semi-circular structures ) flanked by broad stairways: and an upper temenos – the sacred enclosure for the temple itself.\r\n\r\nIn the lower temenos are triple colonnades on the east and west. Here, large limestone hexagonal pavers were positioned above an extensive water canalization system.\r\n\r\nWith its red-and-white-succeed exterior, the ` Great ` temple must have had a dramatic impact when set against its rose-red environment. The temple is tetrastyle in antis (four large frontal columns) with solid outer walls, typical of Nabataean architecture, as is seen on the Qasr El.BINT farther to the west. Approximately 15 meters ( 45 ft) in height, the columns plus the entablature they carried, would place the temple`s height at a minimum of 18 meters ( 57 ft). The ` great `Temple measures 28 meters ( 84 ft) east –west, and is 40 meters ( 120 ft). in Length.\r\n\r\nThe style and quality of the Temple`s elaborate floral friezes and acanthus-laden limestone capitals suggest that the sanctuary was constructed by the end of the first century BCE by the Nabataean , who combined their native traditions with the classical spirit. The ` Great ` Temple was in use until some point in the late Byzantine Period.', 0, '2022-09-20', '2022-09-20', 0, 0),
(37, 'The Urn Tomb', 2, './images/petra/petra12.png', './images/secondimages/pet23.jpg', './images/secondimages/pet24.jpg', 0, 0, 0, 'Its 26 m x 16.49 m façade is structured by two half columns at the center and two pilasters with engaged quarter columns at the corners, erected on a podium on either side of the doorway order. They bear Nabataean capitals and support a weathered entablature whose frieze contains four panels with bust-reliefs. These unusual frieze figures with their heads intruding the upper frame probably represent Nabataean deities. The dwarf pilasters of the upper order are in alignment with the bust-reliefs and the supports of the lower order. The triangular pediment is crowned by a lidded urn, which has given the tomb its name.\r\n\r\nAnother unique feature are the three burial niches (loculi) in the intercolumnar spaces high up on the façade, becoming an integral part of its design. In the opening of the middle one, there is still a relief plate on which the bust of a dignitary dressed in a tunic can be seen. Unfortunately his face is completely destroyed. Due to missing inscriptions it will never be known who was once portrayed here, but scholars believe that it is the bust of a Nabataean king, perhaps Malichus II (40-70 AD). In fact, the dwarf pilasters suggest that the tomb was made in the second half of the 1st century AD', 0, '2022-09-20', '2022-09-20', 0, 0),
(38, ' Romero', 1, './images/resturants/res5.jpg', './images/secondimages/re9.jpg', './images/secondimages/re10.jpg', 0, 0, 0, 'In 1994, Romero Group\'s vision was transferred to Aqaba, where the group collaborated with The Royal Yacht Club in establishing Romero Restaurant, the group\'s fifth branch, on the shores of the magnificent Red Sea.\r\n\r\nThe genuine essence of Italian cuisine was conveyed to Aqaba, and authentic international dishes were added to the menu, creating a haven of good food & refreshing atmosphere.', 0, '2022-09-20', '2022-09-20', 0, 0),
(39, 'Julia’s\r\n', 1, './images/resturants/res6.jpg', './images/secondimages/re11.jpg', './images/secondimages/re12.jpg', 0, 0, 0, 'Our story Simply we believe that the best food comes from fresh ingredients, Julia\'s recipes will fulfill your senses with the traditional yet magical taste of Italian cuisine\r\n\r\nAccepts Credit Cards, Table Service, Delivery, Takeout, Outdoor Seating, Seating, Parking Available, Free Wifi, Family style, Gift Cards Available', 0, '2022-09-20', '2022-09-20', 0, 0),
(40, 'Fourth Century Roman Church', 10, './images/Archeological/site1.jpg', './images/secondimages/arc1.jpg', './images/secondimages/arc2.jpg', 0, 0, 0, 'During the Byzantine period, a great deal of construction took place throughout Jordan. All of the major cities of the Roman era continued to flourish as the regional population grew. As Christianity expanded across this region in the fourth century, churches began to sprout up across Jordan.\r\n\r\nFrom this growing Christian scene came one of the most exciting discoveries in recent times, where archaeologists in Aqaba have unearthed what they believe to be the world’s oldest church, from the late 3rd Century AD. It is slightly older than the Church of the Holy Sepulcher in Jerusalem and the Church of Nativity in Bethlehem, both of which date back to the 4th Century. It has since been back-filled with earth for protection.\r\n\r\nAqaba church, a mud-brick building with traces of “dipinto” that could have represented a procession of figures, would be slightly more ancient than any of the known public meeting church buildings. It is also unique because of it subsequent history.', 0, '2022-09-20', '2022-09-20', 0, 0),
(41, 'Aqaba Castle', 10, './images/Archeological/site2.jpg', './images/secondimages/arc3.jpg', './images/secondimages/arc4.jpg', 0, 0, 0, 'Every corner in Aqaba tells  a tale. The Aqaba Fort offers a glimpse into Jordan’s history. It dates back to the region of the Mamluke Sultan Qanswah el-Ghawri (1501-1517 AD). The fort was used and renovated during many historical dynasties from the Mamluks themselves to Ottomans. Situated on the coastline, it would later on serve as vital base for overthrowing the Ottomans Empire.\r\n\r\nThe fort was part of the pilgrimage stops aligning the Northern Way (Darb Al-Sham).Larger than the other forts, considering its location at the Red Sea. Pilgrims and travelers would flock to the area seeking safety and lodging within the gates of the fort, which offered compartments and accommodation for passers-by.\r\n\r\n The fort was designed in a rectangular 56.5m x 58m shape, with towers protruding from the corners, from the middle of the northern side stood the two towered gatehouse. The towers where structured with around internal space, and a polygonal exterior. However, with time they were rebuilt to take an overall rounded structure.\r\n\r\nThe walls were built to encompass a two story set of chambers that would provide lodging and safety for travelers and pilgrims passing by. At later times, these same chambers where utilized for army accommodation.\r\n\r\nWithin the fort mosque was built structure by the south wall. The only surviving monuments of this are the Qibla and Mihrab.\r\n\r\nThe fort was meant to give the impression of being symmetrical, the two towers give the allusion of being of the same size, and the gate seems to be in the middle of the wall joining the two towers. However, one tower is larger than the other and the gate is slightly to the west.\r\n\r\nThe below grounds of the castle bring originate from early Islamic times, before the Mamluk`s fort was built. However, these remains where obliterated during the Crusaders attack and settlement in Aqaba.', 0, '2022-09-20', '2022-09-20', 0, 0),
(42, 'Al Sharif Hussein Bin Ali House', 10, './images/Archeological/site3.jpg', './images/secondimages/arc5.jpg', './images/secondimages/arc6.jpg', 0, 0, 0, 'Take time off from the sun and fun to stroll around Sharif Hussein Bin Ali’s House, This house is where the great grandfather of His Majesty King Abdullah II resided for six months after World War I.  \r\n\r\nHussein bin Ali was the Sharif and Emir of Mecca from 1908 until 1917. He is known as the initiator of the Arab Revolt in 1916 against the increasingly nationalistic Ottoman Empire during the course of the First World War. In 1924, when the Ottoman Caliphate was abolished he ruled Hejaz until 1924, when, defeated by Abdul Aziz al Saud, he abdicated the kingdom and other secular titles to his eldest son Ali.\r\n\r\nThe house was built in the style of Hijaz houses. Tourists are welcome to visit and discover the history and legacy of the triumphs achieved during the Great Arab Revolution. It displays a collection  of  rifles,  copper  and silver  bowls, coffee  pots  and  mills, Mansaf trays (to display Jordan’s traditional mutton and rice dish) and other typical items of the period.', 0, '2022-09-20', '2022-09-20', 0, 0),
(43, ' Early Islamic Ayla', 10, './images/Archeological/site4.jpg', './images/secondimages/arc7.jpg', './images/secondimages/arc8.jpg', 0, 0, 0, 'The city of Aqaba is both rich in its heritage and its history. The ancient city prospered under many eras and witnessed many different dynasties. Formerly in biblical times it was known as Elot, and during the Roman and Islamic eras it was referred to as Aela or Aliana, whereas, the Ancient Greeks had named it Berenice.\r\n\r\nThe Mamlukes called the city Aqaba in reference to the mountains located west of the city on the road to Egypt, its name today derived from “Aqaba Ayla”, the word Aqaba is referred to any road or path with high edges and steep slopes, which refers to the narrow passageway leading to Wadi Yitm. \r\n\r\nThe city was rediscovered and excavated in 1989, inscribed in fortified stone walls 165m x 140m, with a thickness of 2.6m. it was surrounded by 24 towers that were positioned around the city in a u-shape. Two main streets ran through the city and met in the middle, dividing it into four sections. Each section had gate, the Northern gate come from Egypt, the Eastern gate was the Damascus gate, Hejaz gate on the south and the western gate led to the sea, making it vital as a trade route and connection between the Mediterranean Sea and Arabian  Peninsula.\r\n\r\nAfter the Muslim conquest in 636 AD. The Prophet Muhammed, peace be upon him, established the first Islamic city outside the Arabian Peninsula within Ayla, and this city was referred to as the Door to Palestine. The city served as a station for pilgrims heading towards the Holy cities and Macca. Its location was crucial for the effective spread of Islam throughout the Arab region, Africa, and Europe. Aqaba would further thrive under the Ummayad Dynasty, the Abbasids, and Fatmids. ', 0, '2022-09-20', '2022-09-20', 0, 0),
(44, 'Aqaba Archeological Museum', 10, './images/Archeological/site5.jpg', './images/secondimages/arc9.jpg', './images/secondimages/arc10.jpg', 0, 0, 0, 'This museum is located in the former house of Sharif Hussein bin Ali, it  includes artefacts from excavated sites in the Aqaba district; they range in date from the mid-7th millennium BC to the beginning of the AD 12th century. Particularly important are the ceramic and steatite vessels excavated from Islamic Ayla.\r\n\r\nThe museum houses Bronze Age artifacts that were recently discovered in the Tall Hujayrat Al-Ghuzlan archaeological site near Aqaba, dating back to 4000 BC. The discovery of the Tall Hujayrat al-Ghuzlan settlement provides an important proof that Aqaba is one of the oldest continuous settlements in the region that had a vibrant copper production. The museum also houses a collection of artifacts from the 7th to the early 12th century AD. Some of the most known pieces of the museum\'s collections include a large inscription of a Quranic verse that was hanging on top of the eastern gate of the city in the 9th century, as well as golden coins that date back to the Fatimides and other coins from the kingdom of Segelmasa in Morocco.', 0, '2022-09-20', '2022-09-20', 0, 0),
(45, 'Aqaba Heritage Museum', 10, './images/Archeological/site6.jpg', './images/secondimages/arc11.jpg', './images/secondimages/arc12.jpg', 0, 0, 0, 'Some cities are thought of as walking museums, with ruins in public spaces and well preserved history inside their museums, Aqaba is one such city.\r\n\r\nLocated in the middle coast of the fishermen port, with a view of the tranquil sea, its strategic location is a walking distance from the Sherif Hussein`s museum, the Mamluk castle and the Great Arab Revolt Flag.\r\n\r\nThe old house is an intact model of mud houses, build with a roof made from pine leaves, with a floor made from gravel, with traditional window and doors. The house is divided into two rooms, each serving an efficient purpose.\r\n\r\nOne room was a guest house with Mada mattresses as a seating area with cushions and covers, and Menkad which was used to prepare coffee and tea. In addition to a Mehbash, a wooden tool used to grind fresh coffee, and fueled lantern, and an old radio. Upon the walls hug personal weapons and pistols, in addition to the house keys, prayer mattress and Holy Quran.\r\n\r\nThe second room was the bedroom, with a metal bed, above it hung a mosquito net. The room has cavity within the wall called the Metwa, which is a large as the window and was used to preserve the bed’s mattress. In the room is a wooden chest for storing clothing, which called the sandook Al Arousa (The brides Chest) which was given to the bride as a gift upon marrying. There is also a baby coat made from pine fronds and hessian and the hesera, a mattress used an extra bed.\r\n\r\nThe entry is free', 0, '2022-09-20', '2022-09-20', 0, 0),
(46, 'Movenpick Resort & Spa Tala Bay ', 11, './images/resorts/spa1.jpg', './images/secondimages/reso1.jpg', './images/secondimages/reso2.jpg', 0, 0, 0, 'Relax on our private beach, dive in the Red Sea and unwind with a spa treatment - all while staying at the luxury 5-star Mövenpick Resort & Spa Tala Bay Aqaba. Our award-winning resort combines contemporary decor and first-class facilities in a stunning beachfront location, just 15 minutes from Aqaba’s city centre and 25 minutes from King Hussein International Airport.\r\n\r\n \r\n\r\nEnjoy complimentary Wi-Fi and views of the Red Sea, mountains, gardens and pools from our 306 rooms and suites. All of our 5-star hotel rooms have private terraces or balconies, so you can unwind at leisure with a drink from the complimentary minibar.\r\n\r\n \r\n\r\nFresh seafood, authentic Italian cuisine, informal poolside dining and sea view lounges are just some of the highlights at our eight hotel restaurants and bars in Aqaba. Lavish events, receptions and conferences can be hosted in our ballroom, meeting room and beautiful outdoor venues.', 0, '2022-09-20', '2022-09-20', 0, 0),
(47, 'Grand Tala Bay Resort, Aqaba', 11, './images/resorts/spa2.jpg', './images/secondimages/reso3.jpg', './images/secondimages/reso4.jpg', 0, 0, 0, 'Grand Tala Bay Resort Aqaba features 5 swimming pools, water sports activities and private beach. Located on the banks of the Red Sea, this resort has deluxe rooms with free WiFi.\r\n\r\nGrand Tala Bay Hotel Aqaba features rooms with large windows leading to a private balcony, some of which overlook the Red Sea. Each one has luxurious bedding and is fitted with a flat-screen TV.\r\n\r\nAziab Restaurant boasts panoramic Red Sea views and serves international and regional specialties in an outdoor setting. Cocktails, wines and light snacks are available at the Sunset Bar.\r\n\r\nAt Grand Tala Bay Hotel Aqaba, guests can take part in banana boat rides or go diving with certified instructors. Located on the banks of the Red Sea, the hotel has easy access to coral reefs.\r\n\r\nGrand Tala Bay Hotel Aqaba is one hour drive away from Petra.\r\n\r\nCouples particularly like the location — they rated it 8.5 for a two-person trip.', 0, '2022-09-20', '2022-09-20', 0, 0),
(48, 'Marina Plaza Tala Bay', 11, './images/resorts/spa3.jpg', './images/secondimages/reso5.jpg', './images/secondimages/reso6.jpg', 0, 0, 0, 'Situated along the Red Sea shore, this 4-star hotel offers modern rooms with air conditioning and satellite TV. Facilities include Tala Bay Beach Club and outdoor pools.\r\n\r\nEach room at Marina Plaza Hotel Tala Bay is equipped with a private balcony. Some rooms have limited sea view, while others offer views of the swimming pool or the surrounding Aqaba Mountains.\r\n\r\nHotel Marina Plaza’s spa offers a variety of health and beauty treatments, specialising in Dead Sea treatments. The hotel also offers daily activities, such as aqua aerobics and yoga and another activities for kids.\r\n\r\nMarina Plaza’s main restaurant, Solero, serves both international and regional dishes. Guests can enjoy local teas and coffees, live music and a hookah by the pools.\r\n\r\nIt is only 250 m to Marina Plaza’s private beach, and a free shuttle service takes guests to the centre of Aqaba. The ancient city of Petra is accessible by day trip and Wadi Rum is only 1 hour away.', 0, '2022-09-20', '2022-09-20', 0, 0),
(49, 'Bedouin Garden Village', 11, './images/resorts/spa4.jpg', './images/secondimages/reso7.jpg', './images/secondimages/reso8.jpg', 0, 0, 0, 'Bedouin Garden Village is located on the Red Sea coast, 2 km from Tala Bay Aqaba. It has a pool area with barbecue facilities and a restaurant serving fresh fish.\r\n\r\nIn the guest rooms, Bedouin Garden Village offers a terrace, free Wi-Fi and satellite TV. All rooms are air conditioned and have a private bathroom.\r\n\r\nThe front desk is available 24 hours a day. Guests can relax on the terrace with a refreshing drink from the bar. Live music can be enjoyed in the traditional Bedouin tent in the evening.\r\n\r\nThe Bedouin Garden is set right in front of the Japanese Gardens coral reefs, one of the best snorkelling and diving sites in the Red Sea. Aqaba Bedouin Dive offers diving courses.\r\n\r\nFree parking is provided on site. Aqaba King Hussein International Airport is a 25-minute drive away.\r\n\r\nCouples particularly like the location — they rated it 9.1 for a two-person trip.', 0, '2022-09-20', '2022-09-20', 0, 0),
(50, 'Hyatt Regency Ayla Resort', 11, './images/resorts/spa5.jpg', './images/secondimages/reso9.jpg', './images/secondimages/reso10.jpg', 0, 0, 0, 'Hyatt Regency Aqaba Ayla Resort is a scenic retreat nestled midst towering mountains, dazzling blue lagoons, exclusive marina and the fairways of the 18-hole Ayla Golf Club. Indulge yourself at our tranquil spa, build sand castles with the kids or simply sit back and relax by one of our pools.\r\n\r\nAdventure seeking kids, will be thrilled at this impressive Camp Hyatt facility where they will have the opportunity to engage and socialize, asserting their freedom and leaving them with lasting happy memories. Camp Hyatt welcomes all young guests. Kids below 4 years old must be accompanied by an adult.\r\n\r\nUse treadmills, elliptical machines, stationary bicycles, weight machines, free weights and more at our 24-hour StayFit™ Gym.\r\n', 0, '2022-09-20', '2022-09-20', 0, 0);
INSERT INTO `products` (`id`, `pname`, `category_id`, `image`, `image2`, `image3`, `price`, `new_price`, `sale`, `description`, `quantity`, `created_at`, `updated_at`, `updat`, `delet`) VALUES
(51, 'Saraya Resort', 11, './images/resorts/spa6.jpg', './images/secondimages/reso11.jpg', './images/secondimages/reso12.jpg', 0, 0, 0, 'Saraya Aqaba Resort is one of the largest urban and tourism development projects in Jordan, located on the western shores of the Gulf of Aqaba on an area of 617,000 m².   Saraya features four 5-star hotels and two boutique hotels, amphitheatre, offices and conventional centre, retail shops and restaurants, as well as grand villas and duplex villas, residential complexes, townhouses, water park, and a beach club, sports complex, of total 484,262 m2 built up area, spread around a 1.5 km length manmade lagoon.   Works also included infrastructure networks for all zones.', 0, '2022-09-20', '2022-09-20', 0, 0),
(52, ' Diving in the Red Sea Paradise\r\n', 12, './images/activities/activity1.jpg', './images/secondimages/act1.jpg', './images/secondimages/act2.jpg', 0, 0, 0, 'Are you planning on spending your next holiday diving in the Red Sea?\r\n\r\nIf diving is what you\'re after, then Aqaba is one of a kind. Imagine you being in a coastal location and diving in warm waters, surrounded by brightly colored coral and fish. There are some renowned dive sites such as the shipwreck and the sunken tank and the Japanese gardens. You and your family or friends can put on your diving gear to enter the water and explore the abundance of marine life, all the while hovering weightlessly underwater.\r\n\r\nThe absence of stormy weather, along with the mild water currents contribute to clear waters, one of Aqaba\'s exceptional perks. Warm waters provide a hospitable environment for the growth of corals, and favorable salinity levels provide an environment for myriad varieties of marine-life forms.\r\n\r\nWhatever your calling bringing you to Jordan, we are confident that diving in the Red Sea will be one of your most memorable experiences. And if you own a diving camera, you will have the bonus of some amazing photographs to show your friends back home.', 0, '2022-09-20', '2022-09-20', 0, 0),
(53, 'Take a Cruise\r\n', 12, './images/activities/activity2.jpg', './images/secondimages/act3.webp', './images/secondimages/act4.jpg', 0, 0, 0, 'Your visit to Aqaba will only be complete when you detach from the hustle and bustle and enjoy a relaxing day on a cruise and witness the city lights from the ocean.\r\n\r\nAqaba cruises will let you enjoy the cool breeze of the sea while seeing the town from a different angle. Enjoy doing as much as you want onboard: snorkel, swim or just chill on the deck with a sumptuous buffet. Night cruises are also available.\r\n\r\nCruises are available for rent should you wish to spend a day with your family or friends and enjoy some quality time in a serene setting.\r\n\r\n\r\n', 0, '2022-09-20', '2022-09-20', 0, 0),
(54, 'Explore the Places of Worship\r\n', 12, './images/activities/activity3.jpg', './images/secondimages/act5.jpg', './images/secondimages/act6.jpg', 0, 0, 0, 'Stroll past the shops and the beaches to explore the majestic landscape of Al Hussein Bin Ali Mosque. Shrouded in pristine whiteness, intricate glass windows, and soaring minarets, Al Hussein Bin Ali mosque is a beacon of Islamic architecture and a moving sight among the hustle and bustle of the beach and city life. Well known to locals; visitors can quietly promenade around the elegant interior and watch the city’s daily life at its most tranquil and pious.\r\n\r\n\r\nIn the heart of the rosy mountains of Aqaba lies Masjid Al Sheikh Zayed. It overlooks the sparkling sea and is set to transform Aqaba into a vibrant center of tourism, commerce, and coastal living.\r\n\r\nStanding high with its two minarets and 28 domes, Al Sheikh Zayed Mosque is an architectural masterpiece inspired by the design of Sheikh Zayed Grand Mosque in Abu Dhabi. The Mosque is surrounded by intricate gardens decorated with fountains and lush landscapes.\r\n\r\nAl Sheikh Zayed Mosque is adorned with Islamic geometric arts. The original decorations crafted by virtuous Jordanian artisans give the mosque a rich sense of Islamic heritage.\r\n\r\n', 0, '2022-09-20', '2022-09-20', 0, 0),
(55, 'Your Name in Sand', 12, './images/activities/activity4.jpg', './images/secondimages/act7.jpg', './images/secondimages/act8.jpg', 0, 0, 0, 'In Aqaba, the sands of time are poured elegantly into small bottles to form desert scenes. Watch the terms of colours or want to see your name, or that of family or friends, enshrined in sand, the craftsmen will be happy to oblige, giving you a souvenir that is truly unique.\r\n', 0, '2022-09-20', '2022-09-20', 0, 0),
(57, 'See Birds on their Annual Migration\r\n', 12, './images/activities/activity6.jpg', './images/secondimages/act9.jpg', './images/secondimages/act10.jpg', 0, 0, 0, 'Discover some more of what Aqaba offers in terms of natural wonders. Aqaba is not only a desirable destination for tourists, it is also the resting site for many migratory birds heading north up the Gulf of Aqaba each spring. Any tree, bush, dripping irrigation pipe, or pool of water is a welcome sight for a tired migrating bird arriving from an exhausting flight over the sea or across the desert. Aqaba boasts a bird observatory where you get up close with some of the 390 species of birds which reside in Jordan, or used as an annual migratory stop. Because of its location, the observatory receives flocks of birds coming from Europe, Asia and Africa every migration season. The flocks fly towards the observatory, which houses an exceptional diversity of habitats critical for to attracting birds; shallow and deep waters, herbal plants, trees and green surfaces. These habitats integrate with each other to form a vibrant bird hub, especially for the waders. The observatory is like a restaurant for birds. Develop your passion for bird-watching by paying a visit to this astounding bird observatory!', 0, '2022-09-20', '2022-09-20', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `total_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `order_id`, `product_id`, `product_name`, `product_image`, `product_price`, `qty`, `total_price`) VALUES
(1, 46, 6, 'Strada TV Stand Gray', './images/living-cate/stand2.jpg', 340, 1, 340),
(2, 47, 1, 'Sullivan Sofa White', './images/living-cate/sofa1.jpg', 499, 1, 499),
(3, 48, 11, 'Envy Bed', './images/bedroom-cate/bed1.jpg', 599, 1, 599),
(4, 49, 2, 'Annaliese Sofa Blue', './images/living-cate/sofa2.jpg', 399, 1, 399),
(5, 50, 1, 'Sullivan Sofa White', './images/living-cate/sofa1.jpg', 499, 1, 499),
(6, 51, 2, 'Annaliese Sofa Blue', './images/living-cate/sofa2.jpg', 399, 1, 399);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `addres` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `bdate` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `updat` int(11) NOT NULL DEFAULT 0,
  `delet` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `email`, `phone`, `addres`, `city`, `pass`, `bdate`, `created_at`, `updated_at`, `updat`, `delet`) VALUES
(1, 'admin', 'admin', 'admin@admin.com', '07777777777', '', 'Aqaba', '123456', '2022-05-18', '2022-05-18 10:29:04', '2022-05-18 10:29:04', 0, 0),
(2, 'ahmed', 'Otto', 'test1@test.com', '0777555555', '', 'Ajloun', '321321', '1997-05-20', '2022-05-18 14:33:36', '0000-00-00 00:00:00', 1, 0),
(3, '', '', '', '', '', '', '', '0000-00-00', '2022-05-19 13:40:56', '2022-05-19 13:40:56', 0, 0),
(4, 'Dyar', '', 'Dyar@gmail.com', '123456789', '', '', '22005544', '0000-00-00', '2022-05-19 13:41:49', '2022-05-19 13:41:49', 0, 0),
(8, 'Dyar', 'Hunaity', 'Dyar@example.com', '07765630842220', '', 'Amman', 'DDhhh*999', '2003-05-05', '2022-05-22 05:21:11', '2022-05-22 05:21:11', 0, 0),
(9, 'John', 'Marston', 'johnmarston@gmail.com', '0776563084', '', 'Amman', '0e2e181e56235ec446bad181923b39dd', '2000-05-05', '2022-06-25 00:55:28', '2022-06-25 00:55:28', 0, 0),
(11, 'Dyar', 'Hunaity', 'test@yo.com', '0776563084', '', 'Amman', '73b73caaa7520c1857ea549633684530', '1999-02-22', '2022-07-19 18:31:01', '2022-07-20 03:32:03', 0, 0),
(12, 'joe', 'Doe', 'joe@gmail.com', '0776563084', '', 'Aqaba', '0e2e181e56235ec446bad181923b39dd', '1999-02-22', '2022-07-19 19:18:56', '2022-07-19 19:18:56', 0, 0),
(13, 'ibra', 'hunaity', 'ibra@gmail.com', '0776563084', '', 'Aqaba', '0e2e181e56235ec446bad181923b39dd', '2002-06-06', '2022-07-19 23:35:32', '2022-07-19 23:35:32', 0, 0),
(14, 'user', 'yes', 'John@you.com', '0776563084', '', 'Aqaba', 'a8b2906a4d0c5d5bc6d41e7feff7b846', '1999-03-31', '2022-08-06 23:26:20', '2022-08-07 08:27:12', 0, 0),
(15, 'morad', 'lo', 'lo@gmail.com', '0776563084', '', 'Aqaba', 'a8b2906a4d0c5d5bc6d41e7feff7b846', '2000-06-06', '2022-08-24 23:12:23', '2022-08-25 08:19:01', 0, 0),
(16, 'osama', 'al', 'osama@gmail.com', '0776563084', '', 'Amman', 'a8b2906a4d0c5d5bc6d41e7feff7b846', '1999-07-07', '2022-08-25 00:15:28', '2022-08-25 00:15:28', 0, 0),
(17, 'confident', 'co', 'confident@gmail.com', '0776563084', '', 'Aqaba', 'a8b2906a4d0c5d5bc6d41e7feff7b846', '1994-05-22', '2022-08-25 02:58:48', '2022-08-25 02:58:48', 0, 0),
(18, 'job', '', 'job@gmail.com', '0778563269', '', '', 'Orange@123', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(20, 'pre', 'pre', 'pre@gmail.com', '0776563084', '', 'Aqaba', 'a8b2906a4d0c5d5bc6d41e7feff7b846', '2000-08-09', '2022-08-26 01:13:25', '2022-08-26 01:13:25', 0, 0),
(21, 'lap', 'lap', 'lap@gmail.com', '0776563084', '', 'Aqaba', 'a8b2906a4d0c5d5bc6d41e7feff7b846', '1999-09-09', '2022-08-27 02:33:08', '2022-08-27 02:33:08', 0, 0),
(22, 'te', '', 'te@gmail.com', '07896325', '', '', 'Orange@123', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(23, 'ilu', 'ilu', 'ilu@gmail.com', '0776563084', '', 'Aqaba', 'a8b2906a4d0c5d5bc6d41e7feff7b846', '1998-08-08', '2022-08-27 06:02:03', '2022-08-27 06:02:03', 0, 0),
(24, 'made', 'it', 'made@gmail.com', '0776563084', '', 'Aqaba', 'a8b2906a4d0c5d5bc6d41e7feff7b846', '1999-02-07', '2022-08-27 09:39:35', '2022-08-27 09:39:35', 0, 0),
(25, 'osa', 'osa', 'osa@gmail.com', '0776563084', '', 'Aqaba', 'a8b2906a4d0c5d5bc6d41e7feff7b846', '1993-02-12', '2022-08-27 20:52:18', '2022-08-27 20:52:18', 0, 0),
(26, 'hey', '', 'hey@gmail.com', '0777632507', '', '', 'Orange@123', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(27, 'mooo', 'mooooo', 'moooo@gmail.com', '0776563084', '', 'Aqaba', 'a8b2906a4d0c5d5bc6d41e7feff7b846', '1999-08-08', '2022-08-28 09:06:37', '2022-08-28 09:06:37', 0, 0),
(29, 'yup', 'yup', 'yup@gmail.com', '0776563084', '', 'Aqaba', 'a8b2906a4d0c5d5bc6d41e7feff7b846', '1988-08-08', '2022-08-28 09:51:09', '2022-08-28 09:51:09', 0, 0),
(30, 'yes', 'yes', 'yes@gmail.com', '0776563084', '', 'aqaba', 'a8b2906a4d0c5d5bc6d41e7feff7b846', '2000-04-04', '2022-08-28 09:58:53', '2022-08-28 09:58:53', 0, 0),
(31, 'press', 'press', 'press@gmail.com', '0776563083', '', 'Aqaba', 'a8b2906a4d0c5d5bc6d41e7feff7b846', '1993-03-31', '2022-08-28 10:02:03', '2022-08-28 10:02:03', 0, 0),
(32, 'op', 'op', 'op@gmail.com', '0776563084', '', 'jordan', 'a8b2906a4d0c5d5bc6d41e7feff7b846', '1988-08-08', '2022-08-28 10:15:27', '2022-08-28 10:15:27', 0, 0),
(33, 'popo', 'popo', 'popo@gmail.com', '0776563084', 'Third Area', 'Aqaba', 'a8b2906a4d0c5d5bc6d41e7feff7b846', '1996-06-06', '2022-08-28 10:26:57', '2022-08-28 10:26:57', 0, 0),
(34, 'bro', 'bro', 'bro@gmail.com', '0776563084', '', 'jordan', 'a8b2906a4d0c5d5bc6d41e7feff7b846', '2000-02-22', '2022-08-28 10:58:19', '2022-08-28 10:58:19', 0, 0),
(35, 'yes', 'are', 'beautifull@gmail.com', '0776563084', '', 'jordan', 'a8b2906a4d0c5d5bc6d41e7feff7b846', '1988-08-08', '2022-08-28 11:02:48', '2022-08-28 21:46:45', 0, 0),
(36, 'lapss', 'laps', 'laps@gmail.com', '0776563084', '', 'jordan', 'a8b2906a4d0c5d5bc6d41e7feff7b846', '1992-02-22', '2022-08-28 12:52:51', '2022-08-28 21:54:42', 0, 0),
(37, 'new', 'new', 'new@gmail.com', '0776563084', '', 'jordan', 'a8b2906a4d0c5d5bc6d41e7feff7b846', '1996-02-06', '2022-08-28 15:45:02', '2022-08-28 15:45:02', 0, 0),
(38, 'firsts', 'first', 'first@gmail.com', '0776563084', '', 'jordan', 'a8b2906a4d0c5d5bc6d41e7feff7b846', '2000-04-05', '2022-08-28 18:11:35', '2022-08-29 03:12:12', 0, 0),
(41, 'moon', 'sun', 'mon@gmail.com', '07764531246', '', 'jordan', 'a8b2906a4d0c5d5bc6d41e7feff7b846', '1999-09-06', '2022-08-31 23:00:55', '2022-08-31 23:00:55', 0, 0),
(42, 'your', '', 'your@gmail.com', '0776325698', '', '', 'Orange@123', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(44, 'hello', '', 'hello@gmail.com', '0', '', '', '', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1),
(45, 'hellos', '', 'hellos@gmail.com', '0773265149', '', '', 'Orange@123', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(46, 'purple', 'purple', 'purple@gmail.com', '0776563084', '', 'jordan', 'a8b2906a4d0c5d5bc6d41e7feff7b846', '1996-03-06', '2022-09-14 19:21:47', '2022-09-14 19:21:47', 0, 0),
(47, 'omaryo', 'omar', 'omar@gmail.com', '0776563084', '', 'jordan', 'a8b2906a4d0c5d5bc6d41e7feff7b846', '1996-03-23', '2022-09-22 02:48:51', '2022-09-22 11:50:13', 0, 0),
(48, 'leap', 'leap', 'leap@gmail.com', '0776563084', '', 'jordan', 'a8b2906a4d0c5d5bc6d41e7feff7b846', '1994-06-05', '2022-09-23 02:01:59', '2022-09-23 02:01:59', 0, 0),
(49, 'saj', 'alghalayini', 'saja@gmail.com', '0778089122', '', 'france', 'a8b2906a4d0c5d5bc6d41e7feff7b846', '2002-03-14', '2022-09-26 06:04:40', '2022-09-26 15:06:31', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_orders`
--

CREATE TABLE `user_orders` (
  `id` int(11) NOT NULL,
  `user_idd` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `total_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_orders`
--

INSERT INTO `user_orders` (`id`, `user_idd`, `product_name`, `product_price`, `qty`, `total_price`) VALUES
(5, 2, 'Giovani Sofa Gray', 500, 2, 1),
(6, 2, 'Annaliese Sofa Blue', 300, 1, 300),
(7, 2, 'Sullivan Sofa White', 250, 2, 500),
(8, 2, 'Annaliese Sofa Blue', 300, 1, 300),
(9, 4, 'Sullivan Sofa White', 250, 2, 500),
(10, 4, 'Annaliese Sofa Blue', 300, 1, 300),
(11, 4, 'Giovani Sofa Gray', 500, 1, 500),
(12, 4, 'Annaliese Sofa Blue', 300, 1, 300),
(13, 4, 'Sullivan Sofa White', 250, 3, 750),
(14, 4, 'Sullivan Sofa White', 250, 1, 250),
(15, 4, 'Annaliese Sofa Blue', 300, 1, 300),
(16, 4, 'Giovani Sofa Gray', 500, 1, 500),
(17, 4, 'Giovani Sofa Gray', 500, 1, 500),
(18, 4, 'Giovani Sofa Gray', 500, 2, 1),
(19, 2, 'Annaliese Sofa Blue', 300, 1, 300),
(20, 2, 'Annaliese Sofa Blue', 300, 1, 300),
(21, 2, 'Sullivan Sofa White', 250, 1, 250),
(22, 2, 'Sullivan Sofa White', 250, 1, 250),
(23, 2, 'Sullivan Sofa White', 250, 1, 250),
(24, 2, 'Sullivan Sofa White', 250, 1, 250),
(25, 2, 'Annaliese Sofa Blue', 300, 1, 300),
(26, 2, 'Annaliese Sofa Blue', 300, 1, 300),
(27, 2, 'Annaliese Sofa Blue', 300, 1, 300),
(28, 2, 'Annaliese Sofa Blue', 399, 1, 399),
(29, 2, 'Strada TV Stand Gray', 340, 1, 340),
(30, 8, 'Sullivan Sofa White', 499, 1, 499),
(31, 8, 'Envy Bed', 599, 1, 599),
(32, 8, 'Annaliese Sofa Blue', 399, 1, 399),
(33, 8, 'Sullivan Sofa White', 499, 1, 499),
(34, 13, 'Annaliese Sofa Blue', 399, 1, 399),
(35, 47, 'Lawrence’s House', 340, 1, 340),
(36, 48, 'Seven Pillars of Wisdom', 399, 1, 399),
(37, 48, 'Rock Bridges', 599, 1, 599),
(38, 48, 'Rock Bridges', 599, 1, 599),
(39, 49, 'Under The Blanket Of A Millions Stars', 499, 1, 499);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `foreign` (`categoryname`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `foreign` (`product_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `foriegn` (`category_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_orders`
--
ALTER TABLE `user_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `foreign` (`user_idd`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `user_orders`
--
ALTER TABLE `user_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_orders`
--
ALTER TABLE `user_orders`
  ADD CONSTRAINT `user_orders_ibfk_1` FOREIGN KEY (`user_idd`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
