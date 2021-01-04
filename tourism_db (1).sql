-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Dec 26, 2020 at 12:44 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tourism_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`name`, `email`, `text`) VALUES
('Suraj Gowda K T', 'surajgowdakt@gmail.com', 'sda'),
('dssd', 'dcds', ''),
('Suraj Gowda K T', 'surajgowdakt@gmail.com', 'sdcdscs'),
('Akshay Aruku', 'surajgowdakt@gmail.comdcdsc', 'dcdcdcdcdcd');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`name`, `email`, `text`) VALUES
('Suraj Gowda K T', 'surajgowdakt@gmail.com', 'dsfdsf');

-- --------------------------------------------------------

--
-- Table structure for table `guide`
--

CREATE TABLE `guide` (
  `gid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `gname` varchar(50) NOT NULL,
  `lang` varchar(100) NOT NULL,
  `phone` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guide`
--

INSERT INTO `guide` (`gid`, `pid`, `gname`, `lang`, `phone`) VALUES
(1, 1, 'Ajith', 'Kannada', 8520145632),
(2, 1, 'Mayank', 'Kannada, English', 7832014530),
(3, 2, 'Prateek', 'Kannada,English,Hindi', 8572401306),
(4, 2, 'Vedant', 'Sanskrit, Marathi', 8596748596),
(5, 3, 'Akash', 'English, Kannada', 8596032333),
(6, 3, 'Anil', 'Tamil, Kannada', 7485967477),
(7, 4, 'Bharat', 'Kannada', 9888965320),
(8, 5, 'Chintu', 'Kannada,English', 9766457789),
(9, 6, 'Dhanush', 'Kannada,Tamil', 8596885520),
(10, 7, 'Chikkana', 'Kannada', 8574777023),
(11, 8, 'Srujan', 'Kannada,Hindi', 7897895858),
(12, 8, 'Lokesh', 'English,Tamil', 7410742356),
(13, 9, 'Rahul', 'Hindi', 81236541230),
(14, 10, 'Dhawan', 'Kannada', 97648794679),
(15, 11, 'Sumanth', 'Kannada,Hindi,Telugu', 9678543160),
(16, 12, 'Gagan', 'English,Hindi,Kannada', 9678451230),
(17, 12, 'Dinesh', 'Kannada,Tamil', 8574858585),
(18, 12, 'Shreyas', 'Kannada,Hindi,English,Telugu', 8574850000),
(19, 12, 'Aditi', 'English, French', 96857240130);

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `hid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `hname` varchar(40) NOT NULL,
  `description` mediumtext NOT NULL,
  `accomodation` text NOT NULL,
  `phone` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`hid`, `pid`, `hname`, `description`, `accomodation`, `phone`) VALUES
(1, 1, 'Hotel Gokul', 'CUISINES\r\nIndian, Asian\r\nSPECIAL DIETS\r\nVegetarian Friendly, Vegan Options, Gluten Free Options\r\nMEALS\r\nBreakfast, Lunch, Dinner, Brunch\r\n', 'Not provided', 86451243150),
(2, 1, 'Swathi Delicasy', 'This is one of the best restaurants on Mangalore to Bangalore highway, We had stopped here for late night snacks. We had rava idli and filter coffee , found to be hot and quite tasty. Nice place to take a break on this highway. Place is kept neat and clean.', 'Not provided', 8529637410),
(3, 1, 'SK FishLand', 'The best place for non veg proud to be their first customer when they started it in 2014 , it\'s a must stop place for me whenever I\'m traveling towards malnad', 'Not provided', 7536952012),
(4, 2, 'Hotel Orchid', 'It was an Amazing Stay. Tapas at the reception made out stay more convenient & comfortable. Bingo to all the maintenance staff & kitchen crew. Nicely made up rooms with all the necessary facilities !', 'Yes provided. \r\n', 8523697520),
(5, 2, 'Hotel Golden palm', 'Very nice hotel and good customer service . food quality is very good and delicious . very nice swimming pool.\r\n\r\n', 'Yes provided.', 9635280210),
(6, 2, 'Hotel Prestige', 'It\'s always a pleasant stay with my family. Decent clean rooms, TV, AC, geyser, parking space and enough complimentary RO water. kind staff\'s. close to metro, paradise biryani, hospitals, Atm\'s & hotel\'s. Food quality is Excellent.', 'Yes provided.   ', 8754613201),
(7, 3, 'ITC Hotel', 'Must visit place is mahajkng room, the food is just awesome and polite service.', 'Not provided.', 8521634201),
(8, 3, 'Lemon Tea Hotel', 'All good. Location is close to a lake to walk around', 'Not provided. Refreshment Cafe', 8569753012),
(9, 3, 'Radisson Hotel', 'Very clean, great breakfast. The business rooms include two pieces of laundry per day. Did I mention the breakfast was amazing? Good selection of global foods.', 'Yes provided.', 9876352040),
(10, 4, 'Chancery pavilion Hotel', 'Staff was very attentive and helpful 24X7. All COVID protocols followed. Rooms are very spacious. Restaurant (Alchemy) lacks a little variety though. Would recommend.\r\nValue for money and flexible check in and check out', 'Yes provided.', 8974521021),
(11, 5, 'Lords Eco Inn', 'It is centrally located and very close to Ashoka pillar. Neat and well maintained. Has a small in house restaurant. Two training rooms which can accommodate 25 to 39 participants are available. Facilities are good. Value for money.', 'Yes available. ', 7896542310),
(12, 5, 'Hotel City Center', 'Excellent Boutique hotel in heart of CMH road close to Metro and lots of eateries and normal shopping. Break fast is more or less made to order and served in Terrace or rooms and is quite goog. Mostly North Indian Break fas', 'Not provided.', 8964270120),
(13, 6, 'Hotel Elite Royal', 'Good hotel on both budget as well as service. The staff is very friendly and also the amenities are good. They have just renovated the place. The only issue I faces was there was no board of hotel name outside which made it difficult for me to find the hotel. The breakfast served is also good but issue was I stayed there for 3 days and it was same daily. They can change the items on rotation or something. Se the stay was good enough.', 'Yes provided.', 9685743012),
(14, 7, 'Jaladi Dhaba', 'Place is good for rest along the highway and staff are friendly. Non-veg food only', 'Not provided', 96785420120),
(15, 8, 'Kadumane Resorts', 'We had a great experience here!!\r\nPeople are so hospitable...food is awesome.Thanks for making our stay a wonderful and a memorable one!@', 'Yes provided', 8754210326),
(16, 8, 'Kadumakkhi resort', 'The highlight of the resort is the beautiful stream which runs through the property and the lush green surroundings. Clean, spacious rooms with yummy food adds to the likeability quotient. There are lots of outdoor activities for the adventure junkies..all in all a perfect weekend getaway', 'Yes provided', 9865320245),
(17, 9, 'Elite Royale', 'Good hotel on both budget as well as service. The staff is very friendly and also the amenities are good. They have just renovated the place. The only issue I faces was there was no board of hotel name outside which made it difficult for me to find the hotel', 'Not provided', 7532036985),
(18, 10, 'Hotel Euphoria', 'Super hotel with wonderful restaurants experience with both food tastes and atmosphere, I also been ther for one day at ther rooms with high quality service, I liked the seafood served by them ', 'Not provided', 9685742578),
(19, 10, 'Hotel RR International', 'Terrible stay..no manners on how to talk to a woman..totally customer UNfriendly.. they value only money..not customers..\r\nI recommend a big NO..', 'Yes provided.', 7894567894),
(20, 11, 'Surya Residency', 'Nice locality. Good and helping people. Very low maintenance. New borewell. No external water needed. Good ventilation and light in each rooms, hall, kitchens. Long balconies on both sides. Big terrace for walking', 'Yes provided.', 8978897889),
(21, 11, 'Regenta Hotel', 'Days which we stayed was wonderful and the staffs in that hotel are very kindful and helpful.It is very near to airport and easy access to reach airport.We recommend this hotel to all the travelers whom travelling .', 'Not provided.', 9785643210),
(22, 12, 'Dawanam hotel', 'I never expected the reception of the hotel to be this good. It was way more than what I expected. The quality of service is amazing. Me Qazi made our stay smooth, enjoyable and memorable. He never gave a small chance to complain. …', 'Yes provided.', 8596857485),
(23, 12, 'Signature Inn', 'Worst experience.\r\nI have booked room for 2-3hrs for Business meeting purpose.\r\nAfter reached place they are telling local people are not allowed.\r\nIt\'s meaningless when you ignored at the time of customers requested.\r\nUnfortunately all my …', 'Yes provided.', 9685742010);

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `pid` int(10) NOT NULL,
  `pname` varchar(40) NOT NULL,
  `distane` varchar(40) NOT NULL,
  `natureof` text NOT NULL,
  `description` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`pid`, `pname`, `distane`, `natureof`, `description`) VALUES
(1, 'Mavnur Betta', ' 35km from hassan', 'Mountain View', 'The total geographical area of village is 292.7 hectares\r\n Hassan is nearest town to Mallappana Betta Kaval.\r\n Mallappana Betta Kaval village is located in Hassan Tehsil of Hassan district in Karnataka, India. \r\nconsists of many windmills ,which is used in power generation plant.\r\nit is 30km from hassan,located nearby to Channnarayapatna,Hassan.\r\nThe nature of place is hilly and malleshwara temple is present at the top of the hill.\r\nThere is a bus convenient to this place '),
(2, 'Shravanabelagola', '60km from hassan', 'Mountain/Pilgrimage', 'Shravanabelagola is a town located near Channarayapatna of Hassan district in the Indian state of Karnataka and is 144 km from Bangalore. The Gommateshwara Bahubali statue at Shravanabelagola is one of the most important tirthas (pilgrimage destinations) in Jainism, one that reached a peak in architectural and sculptural activity under the patronage of Western Ganga dynasty of talakad.\r\nIt is 60km from hassan.\r\nThere is good bus convienience here from hassan and from other districts also.\r\nSince many of the international tourists visit here theres a good accommodation facility,restuarants etc.\r\nSpecial about this place is for every 12 years Mahamastaka abhisheka takes place very grandly where people from different countries visit here to see lord mahaveera .\r\nNature of place is piligrimage , peak in architectural and sculptural activity.\r\n'),
(3, 'Gorur', '25km from hassan', 'Water reservior', '    A dam has been constructed across Hemavati River, an important tributary of the Kaveri. The dam is located at Gorur, near Hassan in Karnataka. Built in 1979, the reservoir has been providing water for drinking and irrigation purposes for the people of Hassan district. Hemavati Dam is very vast and covers a catchment area of 2,810 sq. km. This dam is 4,692 m long and 58.5 m high. The gross storage capacity of this dam is 1,050.63 mcm. The reservoir has six large radial spillway gates.\r\nThere is good bus facility for this place from hassan .\r\nThis place is just a reservoir  ,the gates will be opened when there is increase in the level of water.\r\nSince the place is seasonally opened there is no good hotels nearby\r\nRather than hotels there are many snacks, foodstreet etc.\r\n'),
(4, 'Bisle Ghat', '86km from hassan', 'Western Ghat', 'Bisle is a small village in the heart of south-western India\'s Western Ghats. The village is located in Hassan District\'s Sakleshpur (Sakaleshpura) Taluk.\r\nIt adjoins Bisle Reserve Forest, which has some of India\'s most spectacular rain forests. Near to the forest check post, a unique place called Mankanahilli lake, where the water from two different sides reaches differect direction. One towards Bay of Bengal and the other side towards Arabian Sea\r\nSince this place is interior of the city ther is no place for accommodation.\r\nHotels are not found here ,rather than hotels there is snacks available anytime.\r\nPeople visit here to see the mist early morning ,this place is prefred to visit during monsoon season.\r\nPlenty of tourists visit here during this season .\r\nIt is  86 km\r\n'),
(5, 'Manjarabad Fort', '50km from hassan', 'Fort', 'Manjarabad fort is a star fort built in 1792 by Tipu Sultan the then ruler of Mysore [1] using French military architects. It is in the Hassan district in the Indian state of Karnataka. The fort, as built and existing, is an eight-pointed star. The external walls of the fort have been built with granite stones and lime mortar while the interior buildings, which accommodate army barracks, armoury, stores and others, have been built with fired bricks.\r\nThe fort is located 10 kilometres (6.2 mi) away from the Sakaleshpura town to its south west, which is on the right bank of the Hemavati River, 23 miles (37 km) from Hassan on the National Highway 75 that runs from Bangalore to Mangalore. Sakaleshpura is the headquarters of Manjiraba taluk and is a municipality.\r\nSince the fort is located on a hill at an elevation of 988 metres (3,241 ft), it gives a clear and commanding view of the surroundings. On a clear day, even Arabian sea can also be seen from the fort.\r\nThere is good bus facility nearby to tho  is place .\r\nIt is nearby to sakleshpur on the way to manglore.\r\n'),
(6, 'Hanbal Falls', '65km from hassan', 'Water Falls', 'At a distance of 5 km from Hanbal and 21 km from Sakleshpur, Magajahalli Falls is a beautiful waterfall situated at Magajahalli Village in Hassan district of Karnataka. It is one of the picturesque waterfalls in Sakleshpur and among the best Sakleshpur Tourist Places.\r\n\r\nAlso known as Hanbal Falls , the waterfall falling from a height of about 20 feet and is a popular picnic spot in Sakleshpura region. Wrapped up under the lush greeneries, the whole place is filled with serenity and tranquility. Visitors can even get into the waters and enjoy themselves but need to be more cautious about the slippery rocks. Visitor can get a breathtaking view of the Pushpagiri Mountain range from the waterfall as it is situated just at the foothills of the mountain.\r\n\r\nThe best time to visit Magajahalli waterfalls is post monsoons and is dried up during summer and winter months.\r\nIt is 21 km from sakleshpur and 65 km from hassan .\r\nThere is not much bus facility here \r\nIt is almost located interior of sakleshpur \r\n'),
(7, 'Haluvagilu ', '6km from Hassan', 'Water Reservior', 'haluvagilu\r\n        This place consists of sewage water treatment plant located 6km from hassan . Many people visit here for weekend just from recreation purpose .\r\nThere is no good hotels etc nearby because the place is not so wellknown by the people .\r\nIt is just 6 km from hassan \r\nThe place is located through route of shettihalli road .hassan\r\nWater flows from a check dam constructed there \r\nOverflow of water occurs when there is heavy rainfall\r\n'),
(8, 'Kadumane Estate', '70km from Hassan', 'Hill Station', '   Sakleshpur is a hill station in the Western Ghats mountain range, in India’s Karnataka state. It’s surrounded by slopes covered with tea, coffee and spice plantations. The 18th-century, star-shaped Manjarabad Fort has sweeping mountain views. Trails lead to biodiverse Bisle Reserve Forest, home to cobras, deer and birds. To the northeast, Jenukallu Gudda peak offers vistas stretching as far as the Arabian Sea.\r\n\r\nIt is 70 km from hassan .since it is forest there is no bus facility. Forest department has the full charge  over the entire estate .  there  is a tea manufacture plant inside the estate .\r\n'),
(9, 'Ramadevara Katte', '27km from hassan', 'Waterfall, CheckDam', 'Dam built in 1860 and named after Lord Rama will be modernised at a cost of Rs 60 crore.\r\n A dam across river Hemavathy that has met the needs of farmers of  Hassan and Mandya districts for nearly 150 years, is now likely to be modernised at a cost of Rs 60 crore.\r\n The  dam, Ramadevara Annekatte,  built in 1870 by the then Maharaja of Mysuru with the help of British officials, catered to farmers of Holenarsipur and Channarayapatna in Hassan and Krishnaraja Pet in Mandya before the Hemavathy reservoir was built in Arkalgudu taluk in the seventies.\r\nIt is 45 km from hassan located while going to mysore .\r\nThere is bus facility to this place .\r\nThis is a waterfall type of place ,reservoir built during ancient days for helping farmers .\r\n'),
(10, 'Ethina Bhuja', '80km from Hassan', 'Trekking Hill station', '   Charmadi Ghat is the one among the many western  ghats that are known for its outstanding scenery. It is a stretch of about 25 km from Kottigehara of Chikmagaluru to Charmadi of Dakshina Kannada district. To relish the beauty of the Ghat, you can trek to a series of mountains that come within the Charmadi belt. \r\nEttina Bhuja is one such mountain that is a part of the Charmadi range at an altitude of 1300 m (4,265 ft). It is situated in the Mudigere range of  Chikmagalur district. \r\nIt is the located near to the border of hassan and sakleshpur\r\nIt is 80km from hassan .\r\nThere is bus facility to that place ,but walk for some distance .\r\nThis place is a trekking place where so many people go for trekking there .\r\nThe mountain top is like bulls arm so it is referred by the name ethina bhuja.\r\n'),
(11, 'Halebidu', '31km from Hassan', 'Pilgrimage, Temple ', 'Hoysaleswara Temple is a temple dedicated to Lord Shiva and is located in Halebidu (Halebeedu or Halebid), Hassan. The Hoysaleswara temple is located at a distance of 150 kms from Mysore. The construction of the temple began in the 12th century by the King of Hoysala. This temple was then looted in the 14th century and it fell into ruins after that. Halebidu is easy to reach and is located at a distance of 16 kms from Belur and 31 kms from Hassan.'),
(12, 'Belur', '35km from Hassan', 'pilgrimage, Temple ', 'Belur\r\nLocated in the district of Hassan, Belur lies in the state of Karnataka in India. This ancient town which was known by the name Velapura earlier is situated on the banks of the river Yagachi in Hassan. This was the capital of the Hoysala Empire during the 11th century. The number of monuments and temples built by the Hoysala rulers over a period of 300 years gives enough proof for their love of architecture and art and the best among these lies in Belur.The magnificent sculptures and architecture bring in thousands of tourists each year.  The Chenna Keshava Temple built in the 12th century by the Hoysala King Vishnuvardhana is dedicated to Vijayanarayana an incarnation of Lord Vishnu. The temple is covered in fascinating sculptures and carvings done by the Chalukyan artisans and is a popular destination for tourists and pilgrims.\r\n\r\nThe Gravity Pillar built during the reign of Vijayanagara Empire has a lamppost that\'s 42 feet tall and the architectural brilliance continues to fascinate people from around the globe.  Dedicated to the king and queen of Hoysala, the ancient temple Hoysaleshwara is another site of religious importance. This town is also well known for the Vishnu Samudhra, Veeranarayana Temple, Kappe Chennigaraya Temple and Yagachi Dam. The best time to visit Belur is between the months of October and April.');

-- --------------------------------------------------------

--
-- Table structure for table `test_db`
--

CREATE TABLE `test_db` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `DateOfBirth` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_db`
--

INSERT INTO `test_db` (`id`, `username`, `password`, `DateOfBirth`) VALUES
(1, 'suraj', 'blore', NULL),
(2, 'aruku', 'single', NULL),
(3, 'aruku', 'blore444', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

CREATE TABLE `transport` (
  `pid` int(11) NOT NULL,
  `bus` varchar(40) NOT NULL,
  `time` varchar(40) NOT NULL,
  `booking` varchar(40) NOT NULL,
  `destination` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transport`
--

INSERT INTO `transport` (`pid`, `bus`, `time`, `booking`, `destination`) VALUES
(1, '10A', '6:00A.M - 6.15A.M', 'pre booking', 'Bengaluru'),
(1, '10B', '7:00A.M - 7.15A.M', 'Pre booking', 'Bengaluru'),
(1, '8C', '9:10A.M - 9.15A.M', 'On spot ticket available', 'Mysore'),
(2, '16B', '12:00P.M - 12.10P.M', 'yes available', 'Mysore'),
(3, '27P', '12:00P.M - 12.20P.M', 'yes available', 'Madikeri'),
(2, '17B', '11:00A.M - 11.15P.M', 'On spot book available', 'Mysore'),
(2, '28F', '9.00P.M - 9.15P.M', 'pre booking', 'Tumkur'),
(3, '17Q', '7:00P.M - 7.15P.M', 'pre booking', 'Kushala Nagar'),
(4, '22S', '7:20A.M - 7.45A.M', 'On spot book available', 'Subramanya'),
(4, '21Q', '6:00A.M - 6:15A.M', 'Pre booking', 'Mangaluru'),
(5, '171T', '8:00P.M - 8.15P.M', 'Pre booking', 'Mangaluru'),
(6, '278E', '2.10P.M - 2.30P.M', 'On spot book available', 'Mudigere'),
(7, '320Q', '3:00A.M - 3.15A.M', 'Pre booking', 'Gorur'),
(8, '121F', '12:00P.M - 12.10P.M', 'Pre booking', 'Chikka Magaluru'),
(8, '268Q', '4:00A.M - 4.15A.M', 'Pre booking', 'Mudigere'),
(9, '510A', '7:00A.M - 7.15A.M', 'On spot book available', 'Mysore'),
(9, '610F', '9:00P.M - 9.10P.M', 'Pre booking', 'K R Nagar'),
(10, '126Q', '5.20P.M - 5.40P.M', 'On spot book available', 'Mudigere'),
(10, '135Q', '5:40A.M - 6.15A.M', 'On spot book available', 'Chikka Magaluru'),
(11, '421P', '7:00A.M - 7.15A.M', 'Pre booking', 'Belur'),
(11, '480F', '12:00P.M - 12.10P.M', 'Pre booking', 'Horanadu'),
(12, '720R', '7:00A.M - 7.15A.M', 'On spot book available', 'Kalasa'),
(12, '570P', '12:00P.M - 12.10P.M', 'Pre booking', 'Shringiri'),
(12, '420B', '9:00A.M - 9.15A.M', 'On spot book available', 'Belur');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guide`
--
ALTER TABLE `guide`
  ADD PRIMARY KEY (`gid`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`hid`),
  ADD UNIQUE KEY `hname` (`hname`),
  ADD KEY `hotel_ibfk_1` (`pid`);

--
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `test_db`
--
ALTER TABLE `test_db`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transport`
--
ALTER TABLE `transport`
  ADD KEY `pid` (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `guide`
--
ALTER TABLE `guide`
  MODIFY `gid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `pid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `test_db`
--
ALTER TABLE `test_db`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `guide`
--
ALTER TABLE `guide`
  ADD CONSTRAINT `guide_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `places` (`pid`);

--
-- Constraints for table `hotel`
--
ALTER TABLE `hotel`
  ADD CONSTRAINT `hotel_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `places` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transport`
--
ALTER TABLE `transport`
  ADD CONSTRAINT `transport_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `places` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
