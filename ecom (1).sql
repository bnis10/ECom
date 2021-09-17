-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2021 at 12:23 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categories` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categories`, `status`) VALUES
(21, 'Beverage', 1),
(22, 'PackedFood', 1),
(23, 'PersonalCare', 1),
(24, 'Household', 1),
(26, 'BabyProducts', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(75) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `comment` text NOT NULL,
  `added_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `mobile`, `comment`, `added_on`) VALUES
(1, 'binish', 'bnismdhr@gmail.com', '9860296462', 'TEst', '2021-03-01');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(250) NOT NULL,
  `city` varchar(50) NOT NULL,
  `pincode` double NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `total_price` float NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `order_status` int(11) NOT NULL,
  `txnid` varchar(20) NOT NULL,
  `mihpayid` varchar(20) NOT NULL,
  `payu_status` varchar(10) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `user_id`, `address`, `city`, `pincode`, `payment_type`, `total_price`, `payment_status`, `order_status`, `txnid`, `mihpayid`, `payu_status`, `added_on`) VALUES
(9, 4, 'Kathmandu', 'kathmandu', 9860296462, 'COD', 320, 'pending', 2, 'd5263885790b83da338c', '', '', '2021-09-01 11:14:18'),
(10, 6, 'Kathmandu', 'kathmandu', 9860296462, 'COD', 710, 'pending', 1, '31ed1043b43de503206a', '', '', '2021-09-01 02:35:41'),
(11, 6, 'Kathmandu', 'Samakhushi', 9860296462, 'COD', 450, 'pending', 2, '822bcbd19526d4526104', '', '', '2021-09-17 12:18:23');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` float NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `qty`, `price`, `added_on`) VALUES
(3, 0, 12, 5, 50, '0000-00-00 00:00:00'),
(4, 0, 12, 5, 50, '0000-00-00 00:00:00'),
(5, 0, 12, 10, 50, '0000-00-00 00:00:00'),
(6, 2, 12, 2, 50, '0000-00-00 00:00:00'),
(7, 3, 17, 8, 20, '0000-00-00 00:00:00'),
(8, 4, 18, 10, 20, '0000-00-00 00:00:00'),
(9, 5, 15, 1, 150, '0000-00-00 00:00:00'),
(10, 6, 15, 1, 150, '0000-00-00 00:00:00'),
(11, 6, 18, 2, 20, '0000-00-00 00:00:00'),
(12, 1, 18, 20, 20, '0000-00-00 00:00:00'),
(13, 2, 15, 20, 150, '0000-00-00 00:00:00'),
(14, 3, 26, 3, 160, '0000-00-00 00:00:00'),
(15, 4, 26, 1, 245, '0000-00-00 00:00:00'),
(16, 4, 22, 1, 150, '0000-00-00 00:00:00'),
(17, 5, 26, 1, 245, '0000-00-00 00:00:00'),
(18, 5, 22, 1, 150, '0000-00-00 00:00:00'),
(19, 6, 25, 1, 160, '0000-00-00 00:00:00'),
(20, 6, 24, 1, 150, '0000-00-00 00:00:00'),
(21, 7, 26, 1, 245, '0000-00-00 00:00:00'),
(26, 12, 24, 1, 150, '0000-00-00 00:00:00'),
(27, 12, 23, 1, 150, '0000-00-00 00:00:00'),
(28, 1, 36, 3, 90, '0000-00-00 00:00:00'),
(29, 2, 44, 1, 320, '0000-00-00 00:00:00'),
(30, 3, 45, 1, 320, '0000-00-00 00:00:00'),
(31, 4, 44, 1, 320, '0000-00-00 00:00:00'),
(32, 5, 44, 1, 320, '0000-00-00 00:00:00'),
(33, 6, 44, 1, 320, '0000-00-00 00:00:00'),
(34, 7, 45, 1, 320, '0000-00-00 00:00:00'),
(35, 8, 26, 1, 245, '0000-00-00 00:00:00'),
(36, 9, 44, 1, 320, '0000-00-00 00:00:00'),
(37, 10, 51, 1, 710, '0000-00-00 00:00:00'),
(38, 11, 39, 1, 450, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `name`) VALUES
(1, 'Pending'),
(2, 'Processing'),
(3, 'Shipped'),
(4, 'Canceled'),
(5, 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `sub_categories_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mrp` float NOT NULL,
  `price` float NOT NULL,
  `qty` int(11) NOT NULL,
  `image` varchar(2000) NOT NULL,
  `short_desc` varchar(2000) NOT NULL,
  `description` text NOT NULL,
  `best_seller` int(11) NOT NULL,
  `meta_title` text NOT NULL,
  `meta_desc` varchar(2000) NOT NULL,
  `meta_keyword` varchar(2000) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `categories_id`, `sub_categories_id`, `name`, `mrp`, `price`, `qty`, `image`, `short_desc`, `description`, `best_seller`, `meta_title`, `meta_desc`, `meta_keyword`, `status`) VALUES
(25, 21, 7, 'Nescafe Pouch', 160, 160, 20, '785629774_NescafePouch.jpg', 'Nescafe Pouch', 'Nescafe Red Cup with Finely Ground Roasted Coffee\r\n\r\n45g', 1, 'Nescafe Pouch', 'Nescafe Pouch', 'Nescafe Pouch', 1),
(26, 21, 7, 'Nescafe Classic Jar, 50gm', 245, 245, 10, '566584792_NescafeJar.jpg', 'Nescafe Classic Jar, 50gm', '-Start your day right with the first sip of this classic that awakens your senses to new opportunities\r\n-Premium frothy instant coffee right at home; a must try for all coffee-lovers\r\n-Made using specially selected and carefully roasted beans to create a captivating coffee experience\r\n-Flavourful and 100% pure coffee that is perfect for any time of the day', 1, 'Nescafe JAr', 'Nescafe JAr', 'Nescafe JAr', 1),
(27, 21, 9, 'Real Apple', 235, 235, 10, '475049197_RealApple.jpg', 'Real Apple', '-Ideal beverage for both children and adults\r\n-No added colours or preservatives', 0, 'Real Apple', 'Real Apple', 'Real Apple', 1),
(28, 21, 9, 'Real Mango', 235, 235, 10, '512887778_RealMango.jpg', 'Real Mango', '-The Real Mango juice is made keeping quality in mind and only the best and the finest mangoes are chosen for this purpose. A great taste along with the boon of the fruits - both are there in the Real juice.\r\n\r\n-Thus a glass full of mango juice can help to keep one energised and fit which is vital for carrying the day\'s activities with ease. The product is especially popular with kids because of the delectable taste. This can provide the kids with healthy alternative to junk food. It is also of great advantage for their overall growth and development as the juice is enriched with the goodness of beta carotene as well as vitamin C. Besides being a wholesome beverage, the nectar can be used as a topping with vanilla ice cream or pudding.', 0, 'Real Mango', 'Real Mango', 'Real Mango', 1),
(29, 21, 9, 'Real Mix', 245, 245, 5, '329030198_RealMix.jpg', 'Real Mix', 'Real Mixed Fruit Juice 1L', 0, 'Real Mix', 'Real Mix', 'Real Mix', 0),
(31, 21, 8, 'Horlicks', 745, 745, 6, '574596632_Horlicks1kg.jpg', 'Horlicks 1kg', '-Original Classic Malt\r\n-More Bone Area, More muscles, better concentration\r\n-Healthier blood, healthy weight gain\r\n-Net Weight: 1 KG', 0, 'Horlicks 1kg', 'Horlicks 1kg', 'Horlicks 1kg', 1),
(32, 21, 8, 'Horlicks Chocolate', 368, 368, 4, '346209131_HorlicksChocolate.jpg', 'Horlicks Chocolate', '-Health Drink that has nutrients to support immunity.\r\n-Clinically proven to improve 5 signs of growth\r\n-Clinically proven to make kids Taller, Stronger & Sharper\r\n-Scientifically proven to improve Power of Milk', 1, 'Horlicks Chocolate', 'Horlicks Chocolate', 'Horlicks Chocolate', 1),
(33, 21, 8, 'Horlicks Sugarfree', 528, 528, 5, '422268231_HorlicksSugarFree.jpg', 'Horlicks Sugarfree', 'Horlicks lite is specially designed to suit the nutritional needs of adults by providing quality protein and antioxidants for maintaining and repairing damaged body cells. The clinically approved contents in Horlicks Lite help fight fatigue and give strength and stamina. Contains antioxidants like Vitamin A, C and E beneficial for cell maintenance and tissue repair Antioxidant Nutrients are known to contribute to the protection of cells Protein help in cell repair.\r\n\r\nContains nutrients known to help\r\n-Zero Cholesterol & No Added Sugar\r\n-Protect cell from damage\r\n-6 Antioxidant nutrients\r\n-High protien\r\n-Regular malt', 0, 'Horlicks Sugarfree', 'Horlicks Sugarfree', 'Horlicks Sugarfree', 1),
(34, 24, 10, 'Tideplus Jasmine', 79, 79, 10, '169043855_TideplusJasmine 1kg.jpg', 'Tideplus Jasmine', '-Superior whiteness- Tide Plus gives you full-on whiteness\r\n-Half the effort- need only half the effort versus ordinary detergents\r\n-No dullness in clothes- retain the whiteness of your white clothes wash after wash\r\n-Half the dosage\r\n-Need only half dosage versus that of ordinary detergents\r\n-Pleasant fragrance', 1, 'Tideplus Jasmine', 'Tideplus Jasmine', 'Tideplus Jasmine', 1),
(35, 24, 10, 'Rin', 125, 125, 10, '301306449_Rin1kg.png', 'Rin', 'Rin', 0, 'Rin', 'Rin', 'Rin', 1),
(36, 22, 11, 'Digestive 250g', 95, 90, 20, '224535713_Digestive250g.jpg', 'Digestive 250g', 'Digestive 250g', 0, 'Digestive 250g', 'Digestive 250g', 'Digestive 250g', 1),
(37, 22, 11, 'Digestive Sugarfree', 150, 150, 10, '834981532_DigestiveSugarfree.jpg', 'Digestive Sugarfree', 'Britannia Sugar free digestive biscuits are created with special care to combine the best of fibers that readily digests and also boost digestion. The great taste and pack of nutrition makes it suitable for all age groups.', 1, 'Digestive Sugarfree', 'Digestive Sugarfree', 'Digestive Sugarfree', 1),
(38, 22, 12, 'Kelloggs Cornflakes', 350, 350, 10, '260329332_KCornflakes.jpg', 'Kelloggs Cornflakes', 'Loaded with iron and 6 other vitamins and minerals, Kellogg\'s Corn Flakes cereal is a great way get your family\'s day off to a nutritious start.', 0, 'Kelloggs Cornflakes', 'Kelloggs Cornflakes', 'Kelloggs Cornflakes', 1),
(39, 22, 12, 'Kelloggs Oats', 450, 450, 5, '995051718_KOats.png', 'Kelloggs Oats', '-Oats is a wonder grain that has more soluble fibre than some grains like wheat and rice. \r\n-Kellogg\'s Oats can be cooked with milk or water and enjoyed hot in a recipe of your choice', 0, 'Kelloggs Oats', 'Kelloggs Oats', 'Kelloggs Oats', 1),
(40, 22, 13, 'Maggie', 65, 65, 50, '529541479_Maggie.jpg', 'Maggie', '-Maggi noodles are dried noodles fused with oil, and sold with a packet of flavorings. \r\n-These noodles are usually eaten after being cooked in boiling water for 3 to 5 minutes or eaten straight from the packet.', 0, 'Maggie', 'Maggie', 'Maggie', 1),
(41, 23, 15, 'Nivea Men Deo', 220, 220, 5, '414943441_Men roll.jpg', 'Nivea Men Deo', 'Specially formulated for men with White BioActive Complex, that effectively lightens repairs and evens out underarm skin, while keeping it dry and fresh', 0, 'Nivea Men Deo', 'Nivea Men Deo', 'Nivea Men Deo', 1),
(42, 23, 15, 'Nivea Women Deo', 220, 220, 5, '421152159_women roll.jpg', 'Nivea Women Deo', '-Nivea protect & care deodorant for women contains anti-microbial agents that help keep bacteria away thus giving long lasting odour control. \r\n-It contains the Nivea creme fragrance that makes you feel fresh.', 0, 'Nivea Women Deo', 'Nivea Women Deo', 'Nivea Women Deo', 1),
(43, 23, 16, 'Nivea Bodywash', 325, 325, 5, '904292436_nivea bodywash.jpg', 'Nivea Bodywash', '-relax and rejuvenate with every shower\r\n-with hydra iq 24h moisture technology for a soft skin feeling\r\n-skin compatibility dermatologically approved', 0, 'Nivea Bodywash', 'Nivea Bodywash', 'Nivea Bodywash', 1),
(44, 23, 16, 'Detol', 320, 320, 10, '798503804_Detol.jpg', 'Detol', '-Dettol Original Bar Soap is a hygiene soap which provides trusted Dettol protection from a wide range of unseen germs.\r\n-It cleanses and protects your skin for a hygienic, clean and refreshing feeling every day. \r\n-Cleans & Protects against 99.9% of germs.', 0, 'Detol', 'Detol', 'Detol', 1),
(45, 23, 14, 'Godrej Mehendi', 320, 320, 10, '248721441_Mehendi.jpg', 'Godrej Mehendi', '-100 percent natural henna\r\n-Popular hair care solution known for its natural-goodness and deep nourishing qualities\r\n-With goodness of 9 herbs: Brahmi, shikakai, aloe vera, methi, bhringraj, amla, neem, hibiscus, jatamansi', 0, 'Godrej Mehendi', 'Godrej Mehendi', 'Godrej Mehendi', 1),
(46, 23, 14, 'Bajaj Oil', 215, 215, 10, '576025135_Bajaj oil.png', 'Bajaj Oil', '-Bajaj Almond Drops hair oil has the goodness of Almond oil and Vitamin E.\r\n -Its every drop is enriched with 3X Vitamin E* and Sweet Almond Oil, that makes your hair Stronger and gives your hair the power to fight Hair fall. \r\n-It is Light & Non sticky and makes hair lustrous.', 0, 'Bajaj Oil', 'Bajaj Oil', 'Bajaj Oil', 1),
(47, 26, 17, 'Pampers Small', 1118, 1118, 10, '650243599_PampersS.jpg', 'Pamper Small', 'Up to 12 hours of dryness with pampers magic gel technology\r\nKeeps baby skin fresh with breathable soft belt and cuffs\r\nComfortable fit with flexible waistband\r\nFaster absorbtion with larger absorbancy zone inside diapers\r\nSkin protection with special baby lotion on the diaper', 0, 'Pamper Small', 'Pamper Small', 'Pamper', 1),
(48, 26, 17, 'Pampers Medium', 1200, 1200, 10, '538684602_Pampers M.jpg', 'Pamper Medium', 'Up to 12 hours of dryness with pampers magic gel technology\r\nKeeps baby skin fresh with breathable soft belt and cuffs\r\nComfortable fit with flexible waistband\r\nFaster absorbtion with larger absorbancy zone inside diapers\r\nSkin protection with special baby lotion on the diaper', 0, 'Pamper Medium', 'Pamper MEdium', 'Pamper', 1),
(49, 26, 17, 'Pampers Large', 900, 900, 10, '673022816_PampersL.jpg', 'Pamper Large', 'Up to 12 hours of dryness with pampers magic gel technology\r\nKeeps baby skin fresh with breathable soft belt and cuffs\r\nComfortable fit with flexible waistband\r\nFaster absorbtion with larger absorbancy zone inside diapers\r\nSkin protection with special baby lotion on the diaper', 1, 'Pamper Large', 'Pamper Large', 'Pamper', 1),
(50, 26, 18, 'Lactogen1', 725, 725, 10, '677700619_Lactogen1.jpg', 'Lactogen1', 'Lactogen is a must-have baby formula in your kitchen when breast milk alone can no longer cover the babyâ€™s growing nutritional requirements. Lactogen 1 is a spray dried infant formula for healthy infants that can be given to them from birth. It is made of essential milk solids that are sure to provide all essential nutrients to your infant.\r\n\r\nA spray dried Infant Formula for infants from birth when they are not breastfed\r\nImportant notice: mother\'s milk is best for your baby', 1, 'Lactogen1', 'Lactogen1', 'Lactogen', 1),
(51, 26, 18, 'Lactogen2', 710, 710, 10, '231120382_Lactogen2.jpg', 'Lactogen 2', 'A spray dried Follow-up Formula for infants after 6 months when they are not breastfed\r\nImportant notice: mother\'s milk is best for your baby\r\nInfant food should be used only on the advice of a health worker as to the need for its use and the proper method of its use. Infant food is not the sole source of nourishment of an infant. Infant food shall be introduced only after the age of six months and upto the age of two years.\r\n\r\nOnly prepare one feed at a time. Feed immediately and follow the instructions exactly. Do not keep unfinished feed, discard the contents. Always hold baby while feeding. Leaving baby unattended may cause choking. Careful and hygienic preparation of infant food is most essential for health. Do not use fewer scoops than directed, since diluted feeding will not provide adequate nutrition needed by your infant. Do not use more scoops than directed, since concentrated feed will not provide the water needed by your infant.\r\n\r\nUnboiled water, unboiled utensils or incorrect dilution can make your baby ill. Incorrect storage, handling, preparation and feeding can potentially lead to adverse effects on the health of your baby. Ensure enclosed scoop is thoroughly washed and dried before use. After opening use the content within 3 weeks or the expiry date, whichever is earlier.', 0, 'Lactogen 2', 'Lactogen 2', 'Lactogen', 1),
(52, 26, 18, 'Lactogen4', 665, 665, 15, '331637384_Lactogen4.jpg', 'Lactogen 4', 'A spray dried Follow-up Formula for older infants after 18 months upto 24 months when they are not breastfed\r\nImportant notice: mother\'s milk is best for your baby', 1, 'Lactogen 4', 'Lactogen 4', 'Lactogen', 1),
(53, 26, 17, 'Baby Wipes', 115, 115, 10, '604493291_BabyWipes.jpg', 'Baby Wipes', '0 thick soft , strong, kind and gently baby wipes\r\nExtra large\r\nDermatology tested\r\nIdeal for cleansing at nappy changing time and for use on hands at feeding time.\r\nHypoallergenic\r\nPH balanced.\r\nAlcohol and lanolin free\r\nAnti Bacterial With vitamin E\r\nMade for your babyâ€™s Sensitive Skin\r\nWith Aloe Vera', 0, 'Baby Wipes', 'Baby Wipes', 'Baby Wipes', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `sub_categories` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `categories_id`, `sub_categories`, `status`) VALUES
(1, 16, 'Noodles', 1),
(2, 16, 'Biscuits', 1),
(3, 17, 'Facewash', 1),
(4, 18, 'Shampoo', 1),
(5, 25, 'BabyDiapers and Wipes', 1),
(6, 25, 'BabyFoods', 1),
(7, 21, 'Coffee', 1),
(8, 21, 'Energy and Health Drinks', 1),
(9, 21, 'SoftDrinks', 1),
(10, 24, 'Detergent', 1),
(11, 22, 'Biscuits And Cookies', 1),
(12, 22, 'Breakfast Cereal', 1),
(13, 22, 'Noodles and Pasta', 1),
(14, 23, 'Hair Care', 1),
(15, 23, 'Deodrant & Fragance', 1),
(16, 23, 'Soap & Bodywash', 1),
(17, 26, 'BabyDiapers and Wipes', 1),
(18, 26, 'BabyFoods', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`, `mobile`, `added_on`) VALUES
(4, 'Baka', 'baka mdhr', 'bakamdhr@gmail.com', '9841430477', '2021-03-24 11:28:24'),
(6, 'Binish', 'bnis mdhr 3', 'bnismdhr@gmail.com', '9860296462', '2021-09-01 11:02:22');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
