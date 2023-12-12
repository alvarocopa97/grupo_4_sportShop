-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: shop_db
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `price` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `envio` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `img` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` varchar(2000) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Zapatillas Running Nike Downshifter 12 Mujer','74000','$3000','image-1701982849951.jpg','Aumentá tus kilómetros con la calidad de las Zapatillas Running Nike Downshifter 12 Mujer. La parte superior de malla aporta ligereza y transpirabilidad en zonas clave del antepié para proporcionar mayor frescura donde se necesita. Además, la suela de goma junto con la banda de ajuste en el mediopié, proporcionan máxima estabilidad y agarre para mantener el pie más seguro cuanto más ajustadas están. Sentí máxima sensación de confort gracias a la espuma sumamente suave en la entresuela que ayuda a amortiguar el pie en cada pisada, ideal para mantenerte cómoda mientras salís a correr o por una caminata por la ciudad. Completá tu mejor look deportivo y destacate a donde vayas.'),(4,'Zapatillas Urbanas Olympikus G-boreal Mujer','20000','$2000','image-1701982993762.jpg','Despertá tu energía con las Zapatillas Running Olympikus G-Boreal Mujer. Con su capellada de malla y su suela de goma elevada en el talón, estas zapatillas te brindan el impulso perfecto para tu día a día o tu rutina deportiva. Disfrutá de tus mañanas corriendo con este par que cumple con todas tus necesidades. Elevá tus pasos y tu confianza con cada aterrizaje!'),(5,'Zapatillas adidas Adizero Rc 5','66000','$1500','image-1701983078082.jpg','\r\nAumentá tus kilómetros con la calidad de las Zapatillas Running Nike Downshifter 12 Mujer. La parte superior de malla aporta ligereza y transpirabilidad en zonas clave del antepié para proporcionar mayor frescura donde se necesita. Además, la suela de goma junto con la banda de ajuste en el mediopié, proporcionan máxima estabilidad y agarre para mantener el pie más seguro cuanto más ajustadas están. Sentí máxima sensación de confort gracias a la espuma sumamente suave en la entresuela que ayuda a amortiguar el pie en cada pisada, ideal para mantenerte cómoda mientras salís a correr o por una caminata por la ciudad. Completá tu mejor look deportivo y destacate a donde vayas.'),(6,'Zapatillas Nike Court Vision Low Next Nature','81000','$0','image-1701983311922.jpg','\r\nInspiradas por y para el básquet y con un look urbano, las Zapatillas Nike Court Vision Low Next Nature son tan versátiles que podes usarlas en la cancha y en las calles. Las perforaciones de la capellada aportan respirabilidad para que te sientas fresco durante más tiempo y sus materiales reciclados de alta calidad aportan un look moderno y fácil de combinar con todos tus outfits.'),(7,'Remera Urbana Topper Essentials Hombre','11479','$1000','image-1701983680460.jpg','\r\nLa Remera Urbana Topper Essentials Hombre es una prenda esencial para cualquier ocasión. Fabricada con materiales suaves y transpirables, te brinda comodidad y estilo. Su diseño clásico y corte regular hacen que sea fácil de combinar con otras prendas, permitiéndote lucir siempre bien y a la moda.'),(8,'Remera Topper Basica','8000','$0','image-1701983740540.jpg','\r\nLa remera Topper Básica te brinda la frescura que necesitas y una sensación de comodidad que vas a tener que exigirte cada vez más para lograr transpirarla como se debe. El desarrollo de la marca en atletas profesionales llega a vos para que disfrutes cada vez más tu jornada de entrenamiento o cuando salis a correr. Con la remera Topper Básica poné tus límites cada vez más lejos.'),(9,'Remera Lotto Pride','13500','$5000','image-1701983800798.jpg','\r\nUn diseño único y un mensaje importante te acompañan en tus días con la Remera Lotto Pride. Su diseño liso, corte relajado y cuello redondo, hacen de esta remera una prenda para vestir cualquier plan que tengas. El logo de la marca y los colores del orgullo, te recuerdan tu amor en cualquier forma y dimensión. Ponétela con tus jeans o joggers favoritos.'),(10,'Remera Urbana Urbo Stream Hombre','12000','$5000','image-1701983930906.jpg','\r\nLa Remera Urbana Urbo Stream Hombre es ideal para que luzcas con estilo y comodidad en tu rutina diaria. Podrás aprovechar toda su versatilidad para combinarla con cualquier atuendo y en cualquier ocasión, tanto para ir a trabajar, a la universidad o salir con amigos. Su tela de algodón suave te brinda la comodidad que te merecés para afrontar tu día con mucha energía. Además, el logo en el pecho es el plus de esta prenda que realza tu estilo urbano y añade un toque divertido y canchero a tu look.');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-12 12:18:23
--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `country` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `avatar` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'alvaro','alvaro@gmail.com','$2a$10$PuxKtB2IUayFcFavsBvFCO/HGYNHh2NAbwfFljCIgSXTVy5F8hI/m','argentina','foto-1701386989121.jpg'),(2,'alvaro','alvaro@gmail.com','$2a$10$XKRDrKWjeS7UI.elFZF5auw2bf45Yi02cOAVhMACeodKdL6bkGTky','argentina','foto-1701387216041.png'),(3,'test','test@gmail.com','$2a$10$6wmttttG9D2n68P3ooLhmeYe8g9OGOi0H3H5NqPG9lWkDVndayvtu','argentina','foto-1701387552919.png');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-12 12:18:23