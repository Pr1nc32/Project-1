-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2022 at 04:18 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grocery`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `catid` int(11) NOT NULL,
  `sub_catid` int(11) NOT NULL,
  `catgory_title` varchar(25) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`catid`, `sub_catid`, `catgory_title`, `description`, `status`) VALUES
(1, 0, 'Household', 'household', 'active'),
(5, 0, 'Groceries', 'Groceries', 'Active'),
(11, 0, 'Packaged foods', 'packaged foods', 'Active'),
(12, 0, 'Beverages', 'beverages test', 'Active'),
(16, 11, 'Baby Food', 'Baby Food', 'Active'),
(20, 5, 'Dry Fruit', 'Dry Fruit', 'Active'),
(21, 5, 'Rice & Rice Products', 'Rice & Rice Products', 'Active'),
(22, 3, 'Cookware', 'Cookware', 'Active'),
(27, 3, 'Mops', 'Mops', 'Active'),
(28, 3, 'Kitchenware', 'Kitchenware', 'Active'),
(35, 11, 'Biscuits', 'Biscuits', 'Active'),
(36, 11, 'Breakfast Cereals', 'Breakfast Cereals', 'Active'),
(39, 12, 'Coffee', 'Coffee', 'Active'),
(41, 12, 'Tea', 'Tea', 'Active'),
(43, 5, 'Fruits', 'Fruits', 'Active'),
(44, 5, 'Vegetables', 'Vegetables', 'Active'),
(45, 11, 'Rusk', '', 'Active'),
(46, 11, 'Millet Powder', '', 'Active'),
(48, 12, 'Cool Drinks', '', 'Active'),
(49, 11, 'Chocolates', '', 'Active'),
(50, 0, 'Vegetables', 'All types of vegetables', 'Active'),
(51, 50, 'Herbs', 'Herbs', 'Active'),
(52, 50, 'Seasonal', 'Seasonal', 'Active'),
(54, 1, 'Cookware', 'cookware', 'Active'),
(55, 1, 'Kitchenware', 'kitchenware', 'Active'),
(56, 1, 'Mop', 'mop', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `custid` int(11) NOT NULL,
  `cust_type` varchar(25) NOT NULL,
  `custname` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob_no` varchar(10) NOT NULL,
  `cpassword` varchar(255) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`custid`, `cust_type`, `custname`, `email`, `mob_no`, `cpassword`, `status`) VALUES
(31, 'Customer', 'Ashok Dhittal', 'AshokDhittal@12gmail.com', '123456789', 'e10adc3949ba59abbe56e057f20f883e', 'Active'),
(33, 'Customer', 'John', 'John@gmail.com', '012345678', 'e10adc3949ba59abbe56e057f20f883e', 'Active'),
(34, 'Customer', 'Mike', 'Mike@gmail.com', '123456789', 'a1029e9c5142618dcc11e361cc38b1bb', 'Active'),
(39, 'Customer', 'Princee', 'pinka@123gmail.com', '1234567890', 'fcea920f7412b5da7be0cf42b8c93759', 'Active'),
(40, 'Customer', 'Prince', 'pinkaaa@12gmail.com', '1234567890', 'e10adc3949ba59abbe56e057f20f883e', 'Active'),
(41, 'Customer', 'Prince', 'prince123456@gmail.com', '1234567890', 'd41d8cd98f00b204e9800998ecf8427e', 'Active'),
(43, 'Customer', 'Mike', 'Mike12@gmail.com', '123456789', 'e10adc3949ba59abbe56e057f20f883e', 'Active'),
(44, 'Customer', 'Mike', 'Mike123@gmail.com', '123456789', 'd41d8cd98f00b204e9800998ecf8427e', 'Active'),
(45, 'Customer', 'Mike', 'Mike1234@gmail.com', '123456789', 'd41d8cd98f00b204e9800998ecf8427e', 'Active'),
(48, 'Customer', 'Prince', 'pinka@1234gmail.com', '1234567890', 'd41d8cd98f00b204e9800998ecf8427e', 'Active'),
(49, 'Customer', 'King', 'King@gmail.com', '0468393167', 'e10adc3949ba59abbe56e057f20f883e', 'Active'),
(51, 'Customer', 'TESTING', 'testing123@gmail.com', '0123456789', 'e10adc3949ba59abbe56e057f20f883e', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `prodid` int(10) NOT NULL,
  `catid` int(10) NOT NULL,
  `prodname` varchar(100) NOT NULL,
  `price` double(10,2) NOT NULL,
  `discount` float(10,2) NOT NULL,
  `unit` varchar(25) NOT NULL,
  `stockstatus` varchar(20) NOT NULL,
  `prodspecif` text NOT NULL,
  `images` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`prodid`, `catid`, `prodname`, `price`, `discount`, `unit`, `stockstatus`, `prodspecif`, `images`, `status`) VALUES
(20, 21, 'India Gate Rice 5 kg', 100.00, 10.00, 'KG', 'Out Of Stock', 'India Gate Rice 5 kg\r\nWhite\r\n5kg bags', 'a:1:{i:0;s:24:\"1655279218INDIA GATE.jpg\";}', 'Inactive'),
(21, 44, 'Fresho Carrot - Orange, 5', 38.00, 10.00, '1/2 Gm', 'Avaiable', 'Fresho Carrot - Orange\r\nAbout the Product\r\nA popular sweet-tasting root vegetable, Carrots are narrow and cone shaped.\r\nThey have thick, fleshy, deeply colored root, which grows underground, and feathery green leaves that emerge above the ground.\r\nWhile these greens are fresh tasting and slightly bitter, the carrot roots are crunchy textured with a sweet and minty aromatic taste.\r\nFresho brings you the flavour and richness of the finest crispy and juicy carrots that are locally grown and the best of the region.\r\nDo not forget to check our delicious recipe - https://www.bigbasket.com/cookbook/recipes/912/carrot-halwa/\r\nBenefits\r\nCarrots provide the highest content of vitamin A of all the vegetables.\r\nBrightly orange colored carrots have pigments like carotenoids and flavonoids, that provide several antioxidants and act as a defense against cancer.\r\nThey aid in maintaining oral health and also decrease the risk of stroke and other heart diseases.', 'a:1:{i:0;s:18:\"1630925096cara.jpg\";}', 'Active'),
(22, 43, 'Apple Royal Gala Approximately 1KG', 50.00, 4.00, '4 pcs', 'Avaiable', 'Apple is one of the most popular fruits worldwide. It is rich in Fiber, Potassium, Vitamin C, Vitamin K, Carbs and Calories. It also consists of soluble fibers that helps in weight loss and maintaining gut health. Eating apples lower the risks of major diseases like Cancer, Diabetes etc. You can include Apples as a part of your diet in the form of Salads, Smoothies, Pies and several other desserts. Buy Apple Royal Gala (4 pcs) (Approx 500 g - 700 g) online now.', 'a:1:{i:0;s:61:\"16546839241631005692apple-royal-gala-4-pcs-0-20201118 (1).jpg\";}', 'Active'),
(23, 43, 'Apple', 33.00, 0.00, '4 pcs', 'Avaiable', 'Apple is one of the most popular fruits worldwide. It is rich in Fiber, Potassium, Vitamin C, Vitamin K, Carbs and Calories. It also consists of soluble fibers that helps in weight loss and maintaining gut health. Eating apples lower the risks of major diseases like Cancer, Diabetes etc. You can include Apples as a part of your diet in the form of Salads, Smoothies, Pies and several other desserts. Buy Apple Royal Gala (4 pcs) (Approx 500 g - 700 g) online now.', 'a:1:{i:0;s:61:\"16546838971631005692apple-royal-gala-4-pcs-0-20201118 (1).jpg\";}', 'Active'),
(24, 44, 'Carrot', 50.00, 0.00, '1/2 Gm', 'Avaiable', 'Fresho Carrot - Orange\r\nAbout the Product\r\nA popular sweet-tasting root vegetable, Carrots are narrow and cone shaped.\r\nThey have thick, fleshy, deeply colored root, which grows underground, and feathery green leaves that emerge above the ground.\r\nWhile these greens are fresh tasting and slightly bitter, the carrot roots are crunchy textured with a sweet and minty aromatic taste.\r\nFresho brings you the flavour and richness of the finest crispy and juicy carrots that are locally grown and the best of the region.\r\nDo not forget to check our delicious recipe - https://www.bigbasket.com/cookbook/recipes/912/carrot-halwa/\r\nBenefits\r\nCarrots provide the highest content of vitamin A of all the vegetables.\r\nBrightly orange colored carrots have pigments like carotenoids and flavonoids, that provide several antioxidants and act as a defense against cancer.\r\nThey aid in maintaining oral health and also decrease the risk of stroke and other heart diseases.', 'a:1:{i:0;s:28:\"16546839601630925096cara.jpg\";}', 'Active'),
(25, 21, 'Bvk brown rice 10 kg', 800.00, 0.00, 'KG', 'Avaiable', 'Bvk brown rice 5 kg\r\nBrown\r\n5kg bags', 'a:1:{i:0;s:23:\"1630924176shopping.webp\";}', 'Active'),
(27, 45, 'Britania Rusk', 32.00, 5.00, '1pc', 'Avaiable', 'Premium Bake Rusk with goodness of wheat is been a traditional tea companion and is loved by many. Britannia Toast Tea Premium Bake Rusk is as crispy as your traditional one, but with a hint of elaichi and right amount of sweetness, it\'s taste will leave you amazed. Britannia Toast Tea Premium Bake Rusk for long has been a part of every home, sharing those moments of joy.', 'a:1:{i:0;s:69:\"1631009987premium-sooji-rusk-britannia-original-imag5j4ur2fbjfpf.jpeg\";}', 'Active'),
(28, 46, 'Origo Fresh Bajra Pearl Millet', 37.00, 0.00, '1 KG', 'Avaiable', 'Brand\r\nOrigo Fresh\r\nModel Name\r\nBajra\r\nType\r\nPearl Millet\r\nQuantity\r\n1 kg\r\nMaximum Shelf Life\r\n4 Months\r\nIs Perishable\r\nNo\r\nOrganic\r\nNo\r\nNutrient Content\r\nNA\r\nEAN\r\n8906059935923', 'a:1:{i:0;s:73:\"16310103091-bajra-pearl-millet-origo-fresh-original-imaf8abbgbdfdumk.jpeg\";}', 'Active'),
(29, 16, 'Baby Food', 85.00, 10.00, '2 Pack', 'Avaiable', '\r\n    Low allergen first rice rusks\r\n    A wholesome, nutritious and tasty first food\r\n    A perfect, gluten free snack\r\n    Easy to eat, easy to digest\r\n    This product is safe to use for babies aged 6 to 12 months.\r\n', 'a:1:{i:0;s:17:\"1654684069pc2.png\";}', 'Active'),
(30, 48, 'Pepsi', 4.00, 0.00, 'Ltr', 'Avaiable', 'Pepsi is a carbonated soft drink manufactured by PepsiCo. Originally created and developed in 1893 by Caleb Bradham and introduced as Brad\'s Drink, it was renamed as Pepsi-Cola in 1898, and then shortened to Pepsi in 1961.', 'a:1:{i:0;s:54:\"16546837021632676628750ml-pepsi-cold-drink-500x500.jpg\";}', 'Active'),
(31, 49, 'Kitkat', 3.00, 0.00, '1 pc', 'Avaiable', 'Kit Kat is a chocolate-covered wafer bar confection created by Rowntree\'s of York, United Kingdom, and is now produced globally by Nestlé, except in the United States, where it is made under license by the H. B. Reese Candy Company, a division of the Hershey Company.', 'a:1:{i:0;s:41:\"16546837341632677403kitkat-brand-page.png\";}', 'Active'),
(32, 49, 'Mentos', 8.00, 0.00, '1 pc', 'Avaiable', 'Mentos (stylised as mentos) are a brand of packaged scotch mints sold in stores and vending machines. ', 'a:1:{i:0;s:44:\"1654683860163267754891Vg3t5kqEL._SL1500_.jpg\";}', 'Active'),
(33, 49, 'Boomer', 5.00, 0.00, '1pc', 'Out Of Stock', 'With Wrigley\'s Boomer Strawberry Flavoured Bubble Gum, treat yourself to the explosively fruity flavor of a fun and delicious bubble gum. This delicious chewing', 'a:1:{i:0;s:21:\"1632677667images.jfif\";}', 'Active'),
(34, 49, 'Cadbury Choclairs Gold 117 Candies', 35.00, 0.00, '725 Gm', 'Avaiable', 'The luscious new candy contains an indulgent brownie flavor in its caramel and rich Cadbury chocolate at its center\r\nA sweet home pack of your favorite chocolatiers\r\nExperience the yummy flavor of chocolate as soon as you bite into the candy', 'a:1:{i:0;s:44:\"1654679974163267787271VoCACMrSL._SL1500_.jpg\";}', 'Active'),
(35, 35, 'Cadbury Oreo - Creme Biscuit, Vanilla, Family Pack', 25.00, 2.00, '300 g', 'Avaiable', 'Cadbury Oreo family pack includes 3 delicious vanilla flavoured Oreo cookies, each of 100 gm. Oreo sandwich creme biscuit brings together the rich, smooth taste of vanilla creme filling with the bold taste of two crunchy chocolate wafers. Take a delicious break with an Oreo cookie, the perfect anytime snack.', 'a:1:{i:0;s:18:\"1654675286oreo.jpg\";}', 'Active'),
(36, 44, 'Fresho Onion', 60.00, 15.00, '1kg', 'Avaiable', 'About the Product\r\nOnion is a vegetable which is almost like a staple in Indian food. This is also known to be one of the essential ingredients of raw salads. They come in different colours like white, red or yellow and are quite in demand in cold salads and hot soups.\r\nYou can dice, slice or cut it in rings and put it in burgers and sandwiches. Onions emit a sharp flavour and fragrance once they are fried; it is due to the sulphur compound in the vegetable.Onions are known to be rich in biotin.\r\nMost of the flavonoids which are known as anti-oxidants are concentrated more in the outer layers, so when you peel off the layers, you should remove as little as possible.', 'a:1:{i:0;s:35:\"16546260081200px-Onion_on_White.jpg\";}', 'Active'),
(37, 44, 'Tomato', 30.00, 12.00, '20', 'Avaiable', '<b>Deprecated</b>:  str_replace(): Passing null to parameter #3 ($subject) of type array|string is deprecated in <b>C:\\xampp\\htdocs\\Store\\product.php</b> on line <b>172</b>\r\n', 'a:1:{i:0;s:46:\"1654626147fresh-tomato-1576301489-5206912.jpeg\";}', 'Active'),
(39, 51, 'Bonnie Plant', 500.00, 1.00, '10', 'Avaiable', '<br />\r\n<b>Deprecated</b>:  str_replace(): Passing null to parameter #3 ($subject) of type array|string is deprecated in <b>C:\\xampp\\htdocs\\Store\\product.php</b> on line <b>172</b><br />\r\n', 'a:1:{i:0;s:32:\"1654626364AniseHyssop_2000x.jpeg\";}', 'Active'),
(40, 22, 'Pressure Cooker', 160.00, 15.00, '6L', 'Avaiable', 'Le Creuset Signature Cast Iron Round French Oven Casserole 80cm / 6L\r\n', 'a:1:{i:0;s:17:\"1654678898hh5.png\";}', 'Active'),
(41, 28, 'Kitchen Utensils Set', 1500.00, 30.00, '16 Pieces', 'Avaiable', 'Tasty Non-Stick Ceramic Cookware Set 16 Piece', 'a:1:{i:0;s:28:\"165467908717379819225118.jpg\";}', 'Active'),
(42, 27, 'Self-Cleaning Mop', 160.00, 10.00, '2 Piece', 'Avaiable', 'Scrubway™ Self-Cleaning Mop is designed to make mopping easy and convenient for you! Unlike traditional mops, which pick up dirty residuals with which you end up using to clean, our evolutionary ALL IN ONE self-cleaning system washes and dries your mop so you get a clean mop each use without having to wet your hands with dirty mop and water. It effectively cuts your cleaning time in half! \r\n', 'a:1:{i:0;s:56:\"1654679343Untitleddesign-2020-04-11T162301.390_800x.jpeg\";}', 'Active'),
(43, 22, ' Skillet Cooking Pen', 85.00, 5.00, '12-Inch', 'Avaiable', 'Lodge L10SK3 12 Inch Cast Iron Skillet with Helper Handle, Black', 'a:1:{i:0;s:17:\"1654679500hh1.png\";}', 'Active'),
(44, 20, 'Dried Apricots', 30.00, 0.00, '1Kg', 'Avaiable', 'A delicious snack by itself or placed on a sharing platter, store in a cool dry place', 'a:1:{i:0;s:21:\"16546798612149231.jpg\";}', 'Active'),
(45, 27, 'PTN Spin Mop and Bucket', 60.00, 4.00, '1', 'Avaiable', 'PTN Spin Mop and Bucket, Microfiber Mop and Bucket with Wringer Set, Mops and Buckets for Floor Cleaning with Decontamination Separation Function, 1 Extra Refills ', 'a:1:{i:0;s:42:\"1654683014718LLuPp+RL._AC_SY300_SX300_.jpg\";}', 'Active'),
(46, 28, 'GreenLife Soft Grip Healthy Ceramic Nonstick Utensils', 900.00, 25.00, '16 Pieces', 'Avaiable', 'GreenLife Soft Grip Healthy Ceramic Nonstick, 16 pc Cookware Pots and Pans Set, PFAS-Free, Dishwasher Safe, Black & Cream ', 'a:1:{i:0;s:37:\"165468318781qLCofHUvL._AC_SL1500_.jpg\";}', 'Active'),
(47, 20, 'Dried Apricots', 25.00, 2.00, '1 Pieces', 'Avaiable', 'A perfect combination of creamy cashews coated in caramelised honey Great for sharing and snacking', 'a:1:{i:0;s:33:\"1654683457attachment_93535036.jpg\";}', 'Active'),
(48, 36, 'Pops Chocolatey Breakfast Cereal', 25.00, 0.00, '650 g', 'Avaiable', 'Pops Chocolatey Breakfast Cereal is a delicious breakfast cereal with grains of puffed rice and real cocoa.\r\nChocolatey cereal\r\nGood source of 5 vitamins including folate\r\nNo artificial colours\r\nNo preservatives\r\n\r\n', 'a:1:{i:0;s:99:\"1654684306https _prod.static9.net.au___media_Network_Images_2017_02_03_12_20_rice-bubbles-17023.png\";}', 'Active'),
(49, 39, 'Coffee', 15.00, 3.00, '1', 'Avaiable', 'One of Vittoria\'s premium blends, Mountain Grown is a full-strength coffee with a full rich flavour and a delicate finish. A 100% premium Arabica blend of high-altitude coffee beans gives a fine espresso taste whether served as an espresso or with milk. Blend: 100% Arabica Roast: Dark Origins: Ce ...\r\n', 'a:1:{i:0;s:21:\"16546855279180375.jpg\";}', 'Active'),
(50, 41, 'Lipton English Breakfast Black Tea Bags', 25.00, 5.00, '1 pack', 'Avaiable', 'Say hello to the mornings and awaken your senses with this deliciously satisfying blend of rich and robust tea leaves grown in the central hills of Ceylon.\r\nMade with top sun-ripened tea leaves freshly picked for their brightening, bold and aromatic flavour for a thick, sweet brew.\r\nA sunny sip of a full bodied tea to awaken you to what the world has to offer.\r\nAt the heart of the rich delicious taste of English Breakfast are our sun-ripened tea leaves picked by our passionate farmers. Their work is at the root of every cup of Lipton tea. That\'s why we\'ve already trained over 50,000 farmers in Kenya in partnership with Rainforest Alliance. We\'re committed to equipping our farmers with the tools and resources they need to help create a better life for themselves, their families and their wider communities.', 'a:1:{i:0;s:21:\"16546856793081315.jpg\";}', 'Active'),
(51, 54, 'Skillet Cooking Pen', 250.00, 5.00, '3L', 'Avaiable', 'The Cooks Collective Classic Non-Stick pan 28cm', 'a:1:{i:0;s:17:\"1654702047hh1.png\";}', 'Active'),
(52, 54, 'Pressure Cooker', 350.00, 2.00, '5L', 'Avaiable', 'HAWKINS Classic CL50 5-Liter New Improved Aluminum Pressure Cooker, Large ', 'a:1:{i:0;s:17:\"1654702186hh5.png\";}', 'Active'),
(53, 55, 'GreenLife Soft Grip Healthy Ceramic Nonstick ', 1500.00, 25.00, '16 Pack', 'Avaiable', 'GreenLife Soft Grip Healthy Ceramic Nonstick, 16 pc Cookware Pots and Pans Set, PFAS-Free, Dishwasher Safe, Soft Pink\r\n', 'a:1:{i:0;s:37:\"165470236181qLCofHUvL._AC_SL1500_.jpg\";}', 'Active'),
(54, 55, 'Scan Bakeware Piece Set', 1800.00, 10.00, '16 Pieces', 'Avaiable', 'Scan Bakeware Piece makes uncompromising kitchenware for modern kitchens. Good cookware must be functional, it has to feel good in the hand, offer excellent cooking properties and be easy to clean.', 'a:1:{i:0;s:28:\"165470260017379819225118.jpg\";}', 'Active'),
(55, 56, 'Self-Cleaning Mop', 180.00, 10.00, '1 pack', 'Avaiable', 'This set includes 2 pieces of microfiber pads which are water absorbent, durable for different usage and being more effective cleaning.\r\n', 'a:1:{i:0;s:42:\"1654702689718LLuPp+RL._AC_SY300_SX300_.jpg\";}', 'Active'),
(56, 56, 'PTN Spin Mop and Bucket', 350.00, 15.00, '1 pack', 'Avaiable', 'Save more, waste less, and get a customised clean with the Rubbermaid Reveal Spray Mop. Safe for use on all hard floor types including hardwood, vinyl, laminate, tile and cement, it comes with a washable and reusable microfibre pad that picks up 50% more dirt and dust per swipe than traditional mops. Simply fill the bottle with hot water and two teaspoons of your favourite cleaning solution and you’re ready to mop!\r\n', 'a:1:{i:0;s:56:\"1654702806Untitleddesign-2020-04-11T162301.390_800x.jpeg\";}', 'Active'),
(57, 48, 'Red Bull', 20.00, 0.00, '4', 'Avaiable', 'Red Bull Give You The Wings', 'a:1:{i:0;s:17:\"1654714628bv9.png\";}', 'Active'),
(59, 48, 'Fruit Juice', 8.00, 2.00, '1 Bottle', 'Avaiable', 'Fresh and Cool Juice', 'a:1:{i:0;s:17:\"1654923209bv8.png\";}', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `purchid` int(10) NOT NULL,
  `prodid` int(10) NOT NULL,
  `typeid` int(10) NOT NULL,
  `custid` int(10) NOT NULL,
  `bilid` int(10) NOT NULL,
  `entry_type` varchar(25) NOT NULL,
  `qty` float(10,2) NOT NULL,
  `price` double(10,2) NOT NULL,
  `discount_price` float(10,2) NOT NULL,
  `comment` text NOT NULL,
  `purchasestatus` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staffid` int(10) NOT NULL,
  `staff_type` varchar(25) NOT NULL,
  `staffname` varchar(25) NOT NULL,
  `loginid` varchar(30) NOT NULL,
  `apassword` varchar(255) NOT NULL,
  `emailid` varchar(30) NOT NULL,
  `contactno` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staffid`, `staff_type`, `staffname`, `loginid`, `apassword`, `emailid`, `contactno`, `status`) VALUES
(1, 'Admin', 'Mr. admin', 'admin', 'e00cf25ad42683b3df678c61f42c6bda', 'admin@gmail.com', '0123456789', 'Active'),
(15, 'Staff', 'Prince', 'Prince', 'e10adc3949ba59abbe56e057f20f883e', 'princesisodiya@gmail.com', '0123456789', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `typeid` int(10) NOT NULL,
  `prodid` int(10) NOT NULL,
  `color` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `cost` double(10,2) NOT NULL,
  `discount` double(10,2) NOT NULL,
  `unit` varchar(25) NOT NULL,
  `stockstatus` varchar(25) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`catid`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`custid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`prodid`),
  ADD KEY `catid` (`catid`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staffid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `catid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `custid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `prodid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staffid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
