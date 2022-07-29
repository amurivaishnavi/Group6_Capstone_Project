create database shopping_cart;

use shopping_cart;

CREATE TABLE `admin` (`id` int NOT NULL AUTO_INCREMENT,`admin_name` varchar(45) NOT NULL,`password` varchar(45) NOT NULL,PRIMARY KEY (`id`)) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `cart` (`id` int NOT NULL AUTO_INCREMENT,`item_name` varchar(45) NOT NULL,`quantity` varchar(45) NOT NULL,`product_price` float NOT NULL,`discount_amt` float NOT NULL,`username` varchar(45) NOT NULL,`img_url` varchar(1000) NOT NULL,`product_id` int NOT NULL,PRIMARY KEY (`id`)) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `category` (`id` int NOT NULL AUTO_INCREMENT,`category_name` varchar(45) NOT NULL,`category_type` varchar(45) NOT NULL,PRIMARY KEY (`id`)) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `product` (`id` int NOT NULL AUTO_INCREMENT,`product_name` varchar(45) NOT NULL,`product_type` varchar(45) NOT NULL,`product_price` int NOT NULL,`product_desc` varchar(45) NOT NULL,`stocks` int NOT NULL,`img_url` varchar(1000) NOT NULL,PRIMARY KEY (`id`)) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `sales_log` (`id` int NOT NULL AUTO_INCREMENT,`username` varchar(45) NOT NULL,`product_name` varchar(45) NOT NULL,`product_price` int NOT NULL,`quantity` int NOT NULL,`date` varchar(100) NOT NULL,PRIMARY KEY (`id`)) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `users` (`id` int NOT NULL AUTO_INCREMENT,`name` varchar(45) NOT NULL,`type` varchar(45) NOT NULL,`password` varchar(45) NOT NULL,PRIMARY KEY (`id`)) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `wishlist` (`id` int NOT NULL AUTO_INCREMENT,`name` varchar(45) NOT NULL,`product_price` float NOT NULL,`quantity` int NOT NULL,`total_amt` float NOT NULL,`username` varchar(45) NOT NULL,`img_url` varchar(1000) NOT NULL,PRIMARY KEY (`id`)) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `admin` VALUES('993','Admin','password'); 

INSERT INTO `product` VALUES 
(1,'Sticker Tree','Wall art',599,'Tree Sticker',97,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNDElvQefNFtr10auxa_lJjd14jEViJ1O38w&usqp=CAU'),
(5,'Photo Frame','frames',299,'Photo Frame',100,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmmq_PnSv6Qs1dRabXw3pxOmEigOiTJU9gPw&usqp=CAU'),
(10,'neXtime Clock','clock',799,'neXtime Clock',98,'https://cdn.shopify.com/s/files/1/0307/0935/0531/files/website_collectie_5225ZW-Atmosphere-02-A-NoaTable-01_450x.jpg?v=1585042122'),
(4,'Cloudy Stand','stand',799,'Cloudy Stand',99,'https://www.whiteteak.com/media/fishpig/webp/catalog/product/cache/4f9684b790a78d2ad48602ec5021b7a8/d/c/dc16-10005_3_.webp'),
(2,'Metalic Art Frame','frames',1000,'Metalic Art Frame',99,'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcTcSDuLYiGTfN4AOiNxVKek5l-UuzlaE0EFmhxZ9FtS1Q2q5C44OQEGdUOGnSycBAW4-D8cjYjzm3cdjyz9nYxFVIWlH8BACbb91EYzv3BkF7YJRNxlenRTaL4&usqp=CAE'),
(6,'Wooden Wall Frame','frames',500,'Wooden Wall Frame',99,'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcSoiqUgOLGpKno8u1A0Hrq8Vg0uv4D2NAObfIezgX0bSic13_ahtCA0c7w7eMiJ_t7kD3mTzUeEcyG2TpDBYyAtcNC1dlCvXJR705_w7qM&usqp=CAE'),
(11,'Peocock Wall Wall Art','Wall art',999,'Iron Peocock Wall Art With LED',99,'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcSdWq2y_urUO9SUT95OHGEtUgdHMVhDc6xqmw-OGofUVCBoOgLC25fbnJQ0JUUvoP-AB1s_ndJuds5doNPJ4CqNCaawalkonzNsEFPluxU&usqp=CAE'),
(8,'Wooden Wall Frame','frames',5999,'Wooden Wall Mural Frame',99,'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcRs3zkCt_zhYqudm4jj78HUplOsjson_w20SvvsaInclnEW-tVpbAY6xQLoqaSoG-cYnyThsVbjGUzAttbqc1ldqW3u4XjrHZcXwKlUUJHxfRKGJCzcn0ar&usqp=CAE'),
(3,'Blue Sofa','sofa',3999,'nice chair',100,'http://cdn.home-designing.com/wp-content/uploads/2017/08/stylish-sofas-600x600.jpg'),
(29,'Wooden Wall Mural','frames',1000,'Wooden Wall Mural Frame',99,'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcSVp_xgvUlWF0w6_-G676pwT89NdCJhyhJRdk4ZQlpGMQBK9pN-o7aKUP9-LIsCJbcFYnkRx0GH0nGz1ObTJlKz4-AZDjA0uzlg-IDxAjUVw29hgVwbeFCm&usqp=CAE'),
(30,'Tree Wall Art','Wall art',599,'Tree Wall Art',97,'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcQTEwZH_YJkZjBX-mYbkzUy_aX3lea5frNXsyyjMfDHNldO-LMUuuylUdO0gWreUS8MExUV4I5cTxSjTdS_VdAQLKlvf3QOM7QTut5rSz8KkQSSI9RlE2Fv&usqp=CAE'),
(12,'Palermo Sofa ','sofa',2899,'Palermo Sofa',100,'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcQa37SHdsFcj4f8f5w3wrtQtm7vPTDClZpMguuGbKhJsmGmUyebOD8FUVOUJn-QD6UqwGw-VK0_Z_xxVhRQhUFmNcFOG288nO0OCjk4ltV3&usqp=CAE'),
(27,'Elegant Curved Sofa','sofa',1999,'Elegant Curved Sofa',100,'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcRxKN1rYSoi0QgicKwAYJV1ysHBq9rsADoFzWKaNKGB9gV0RDoAfa6nH9zDkuDHDii333sA4WURB-rfIKs-tRrGETHqtle9-Q&usqp=CAE'),
(14,'Chandelier','light',1578,'Decorative light',100,'https://5.imimg.com/data5/WH/JL/MY-48831520/pvc-pipes-fittings-500x500.jpg'),
(9,'Century Modern Sofa','sofa',1999,'nCentury Modern Sofa',100,'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcTeMoyHsoLTf16T1f68gE6O6accNJqK6Nh_1OOeKaw-maaJcjqoMk-1xIBt7TT9W_OsLQS3Vi6foYYb-gMqyEStMDBh7ApqwPxDEhPCrj4l&usqp=CAE'),

(24,'Century Modern Sofa','chair',1999,'Century Modern Sofa',100,'https://rukminim1.flixcart.com/image/416/416/kkr72q80/rocking-chair/l/v/f/1-seater-rosewood-sheesham-hop-109-brown-house-of-pataudi-brown-original-imagyf8veyf2rxjh.jpeg?q=70'),
(22,'Plush patio Chair','chair',1800,'Plush patio Chair',100,'https://ii1.pepperfry.com/media/catalog/product/p/l/800x880/plush-occassional-chair-in-brown---beige-color-by--home-plush-occassional-chair-in-brown---beige-col-dpzd1v.jpg'),
(20,'Makaan Yellow Chair','chair',2500,'Makaan Yellow Chair',100,'https://dp5zphk8udxg9.cloudfront.net/wp-content/uploads/2016/04/furniture-802031_1280-e1461737870257.jpg'),
(19,'Chair and Ottoman','chair',4500,'Chair and Ottoman',100,'https://m.media-amazon.com/images/I/91qqTD7QCPS._AC_SL1500_.jpg'),
(7,'Indoor Zero Gravity Chair','chair',1999,'Indoor Zero Gravity Chair',100,'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1642632255-best-zero-gravity-chairs-deep-thoughts-leather-chaise-1642632242.jpg'),
(21,'Wooden Street Chair','chair',1600,'Wooden Street Chair',100,'https://images.woodenstreet.de/image/cache/data%2Flounge-chairs%2Fcrisper-lounge-chair%2Fupdated%2FCream+Robins%2F1-810x702.jpg'),


(16,'Rudhraksh tree','showpiece',2199,'nice showpiece tree',100,'https://bit.ly/3RZH9o2'),
(41,'Wooden Dinning','dinning',10000,'nice chair',99,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuqMaVadr2eVh1a3T3xc611RX46va5GptG77he8JzIZ0npKeKlUZ450sQrnQiy8tFXvjw&usqp=CAU'),
(42,'Modern Dinning','dinning',10000,'nice chair',100,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcrMrarI3rw2GmdoOa5hVdOjK5hX7Nr8PNHg&usqp=CAU'),
(28,'Wooden Dinning','dinning',8000,'nice ',100,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQf3Vmr1Pk2sg8PTzo4Q5fc9E0xgvSRU8ydEA&usqp=CAU'),
(44,'Modern Dinning','dinning',19000,'nice ',99,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQf2DLuIToIWJfqzgwFQQHZWp-hlmUndWtiKQ&usqp=CAU'),
(45,'Classic Dinning','dinning',17000,'nice ',100,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6fBhXzjf_9z84KFI7Pdbiz08KPCte4WsvOQ&usqp=CAU'),
(13,'White chair','chair',299,'nice',100,'https://www.ikea.com/in/en/images/products/skruvsta-swivel-chair-ysane-white__0724712_pe734595_s5.jpg');
