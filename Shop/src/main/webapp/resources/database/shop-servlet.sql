
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `product_id`) VALUES
(7, 3, 1),
(10, 4, 3),
(11, 4, 1),
(12, 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `size` int(11) DEFAULT NULL,
  `price` double NOT NULL,
  `image_link` varchar(2555) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `company`, `size`, `price`, `image_link`) VALUES
(1, 'Nike Tn Plus 1', 'Nike', 42, 150, 'https://cdn.shopify.com/s/files/1/0654/0132/3763/products/b966fd4c.jpg?v=1661778094&width=1445'),
(2, 'Nike TN Plus 3', 'Nike', 43, 180, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/f21a648c-4017-442c-b1c6-270b28fab14d/air-max-plus-3-zapatillas-RTWxs7.png'),
(3, 'adidas Ozweego', 'Adidas', 41, 120, 'https://img01.ztat.net/article/spp-media-p1/7126d660694c39449d2edc6b3ebf864d/ca397cd6463f42659ea6a20a79796e0b.jpg?imwidth=762'),
(4, 'Nike Air Max 270', 'Nike', 46, 120, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/852099ce-b105-48e4-b97a-5b6fd14d7ddf/air-max-270-zapatillas-KC0N0q.png'),
(5, 'Nike Air Max 270', 'Nike', 46, 120, 'https://www.thesneakerone.com/27228-large_default/NIKE-AIR-MAX-270-WHITE-BLACK-PHOTO-BLUE-PURE-PLATI-AH8050-110.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `type` int(10) NOT NULL DEFAULT 0,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `type`, `username`, `password`, `email`) VALUES
(1, 0, 'Pablo', '123asd', "email1@test.com"),
(2, 0, 'Jorge', '1234', "email2@test.com"),
(3, 0, 'Alvaro', 'asd1234', "email3@test.com"),
(4, 0, 'Dani', '1234', "email4@test.com"),
(5, 1, 'admin', 'admin', "admin@test.com"),
(6, 0, 'Sergio', '12341234', "email5@test.com"),
(7, 0, 'Angel', '12341234', "email6@test.com");


--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;



ALTER TABLE `orders`
  ADD CONSTRAINT `product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;