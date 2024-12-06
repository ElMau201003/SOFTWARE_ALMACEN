-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mydb
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `cae`
--

DROP TABLE IF EXISTS `cae`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cae` (
  `idCAE` int(11) NOT NULL AUTO_INCREMENT,
  `dniCAE` varchar(8) NOT NULL,
  `nombresCAE` varchar(45) NOT NULL,
  `apellidopCAE` varchar(45) NOT NULL,
  `apellidomCAE` varchar(45) NOT NULL,
  `telefonoCAE` varchar(20) NOT NULL,
  `cargoCAE` varchar(15) NOT NULL,
  PRIMARY KEY (`idCAE`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cae`
--

LOCK TABLES `cae` WRITE;
/*!40000 ALTER TABLE `cae` DISABLE KEYS */;
INSERT INTO `cae` VALUES (1,'56560602','Rogelio McGlynn','Rath','Koss','+13606835183','Director/a'),(2,'11405704','Johanna Gislason MD','Ferry','Balistreri','1-831-600-1009','PPFF'),(3,'88183318','Tom Beatty','Feeney','Gottlieb','478.416.0869','Docente'),(4,'48484130','Lurline Armstrong','Graham','Harvey','+1 (260) 779-4258','PPFF'),(5,'16707310','Tyrese Maggio','Nikolaus','Gutkowski','320.677.3875','Docente'),(6,'86689432','Lydia Jakubowski','Tillman','Wunsch','+1-401-219-9498','PPFF'),(7,'74311402','Mabel Carroll','Hirthe','Waters','1-478-396-5361','Director/a'),(8,'97004347','Johnnie Boyle','Roob','Johns','865-355-5111','Director/a'),(9,'78949181','Ms. Joanny Senger','Lebsack','Littel','+1.817.276.6752','Docente'),(10,'73579284','Dr. Brayan Kling DDS','Christiansen','Mayer','215.555.4583','Docente');
/*!40000 ALTER TABLE `cae` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caeinstitucion`
--

DROP TABLE IF EXISTS `caeinstitucion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `caeinstitucion` (
  `idCAEInstitucion` int(11) NOT NULL AUTO_INCREMENT,
  `idCAE` int(11) NOT NULL,
  `idInstitucion` int(11) NOT NULL,
  PRIMARY KEY (`idCAEInstitucion`),
  KEY `fk_cae_caeinstitucion_idx` (`idCAE`),
  KEY `fk_institucion_caeinstitucion_idx` (`idInstitucion`),
  CONSTRAINT `fk_cae_caeinstitucion` FOREIGN KEY (`idCAE`) REFERENCES `cae` (`idCAE`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_institucion_caeinstitucion` FOREIGN KEY (`idInstitucion`) REFERENCES `institucion` (`idInstitucion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caeinstitucion`
--

LOCK TABLES `caeinstitucion` WRITE;
/*!40000 ALTER TABLE `caeinstitucion` DISABLE KEYS */;
/*!40000 ALTER TABLE `caeinstitucion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conductor`
--

DROP TABLE IF EXISTS `conductor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conductor` (
  `idConductor` int(11) NOT NULL AUTO_INCREMENT,
  `nombresConductor` varchar(45) NOT NULL,
  `apellidopConductor` varchar(45) NOT NULL,
  `apellidomConductor` varchar(45) NOT NULL,
  `telefonoConductor` varchar(20) NOT NULL,
  `licenciaConductor` varchar(9) NOT NULL,
  PRIMARY KEY (`idConductor`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conductor`
--

LOCK TABLES `conductor` WRITE;
/*!40000 ALTER TABLE `conductor` DISABLE KEYS */;
INSERT INTO `conductor` VALUES (1,'Dr. Daniela Borer','Mayer','Kunze','1-248-349-3277','adipisci'),(2,'Maiya Hills','Nitzsche','Crona','(410) 338-5172','hi24714'),(3,'Keira Lehner V','Cruickshank','Fisher','(912) 290-2240','sr09091'),(4,'Augustus Goodwin I','Schuster','Block','(951) 499-2912','ks87410'),(5,'Wiley Corwin','Bernhard','Hermann','(406) 334-2397','sf49450'),(6,'Giovani Oberbrunner III','Lebsack','O\'Connell','1-380-968-2620','dk74632'),(7,'Jaylan Parisian','Streich','Denesik','+1.443.769.6032','wh53650'),(8,'Layla Gutmann','Jones','Harvey','715.612.3147','kk69826'),(9,'Isac Purdy','Daugherty','Dare','(240) 865-2434','xq96508'),(10,'Enos Gislason','Pollich','Hirthe','276-717-8828','pz81357'),(11,'Ms. Syble Skiles I','Treutel','Powlowski','1-531-716-8431','gk66936'),(12,'Helen Legros','Stracke','Lowe','1-458-338-3848','cq93215'),(13,'Mr. Jaeden Prohaska','McKenzie','Schmitt','+13313389452','zc44473'),(14,'Presley Stokes','Oberbrunner','Kemmer','+1-602-955-3882','eu05543'),(15,'Prof. Brant Hessel','Treutel','Ritchie','865.881.8451','yp63796'),(16,'Prof. Oliver Blanda','Hermann','Dibbert','(754) 527-7622','em02533'),(17,'Kirsten Gorczany','Conroy','Wiza','+1-651-687-3294','xp48628'),(18,'Dr. Russell Hoeger III','Tillman','Bogan','1-769-861-3730','ly36901'),(19,'Kattie Bechtelar','Stanton','Armstrong','786-464-6989','tj63441'),(20,'Rickie Conn','Glover','Berge','520.229.4236','lo60941'),(21,'Pablo Beer III','Goldner','Nikolaus','+1-620-788-4786','iy93653'),(22,'Dr. Kolby O\'Kon','Schinner','Halvorson','+1-838-685-7649','fp12330');
/*!40000 ALTER TABLE `conductor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institucion`
--

DROP TABLE IF EXISTS `institucion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `institucion` (
  `idInstitucion` int(11) NOT NULL AUTO_INCREMENT,
  `codigoInstitucion` varchar(10) NOT NULL,
  `nombreInstitucion` varchar(45) NOT NULL,
  `nivelInstitucion` varchar(13) NOT NULL,
  `direccionInstitucion` varchar(100) NOT NULL,
  `localidadInstitucion` varchar(30) NOT NULL,
  `distritoInstitucion` varchar(30) NOT NULL,
  `provinciaInstitucion` varchar(30) NOT NULL,
  `departamentoInstitucion` varchar(30) NOT NULL,
  PRIMARY KEY (`idInstitucion`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institucion`
--

LOCK TABLES `institucion` WRITE;
/*!40000 ALTER TABLE `institucion` DISABLE KEYS */;
INSERT INTO `institucion` VALUES (1,'8005','Vandervort, Hettinger and Prosacco','Inicial','454 Kuhn Mills Apt. 705\nWest Marleebury, SD 59618','North Wavaborough','Oklahoma','Montana','Illinois'),(2,'5813','Abshire LLC','Primaria','4018 Chelsey Street\nPort Christiana, MS 51629-5443','Port Jakayla','Vermont','South Dakota','South Dakota'),(3,'2794','Torphy-Bahringer','Inicial','7931 Littel Road Suite 410\nLake Rodrick, VT 40365','Hagenesberg','Utah','Rhode Island','Kansas'),(4,'9806','Heaney Ltd','Secundaria','64718 Caterina Route\nWest Aydenfurt, ME 21066','Warrenton','Colorado','Missouri','Arkansas'),(5,'5594','Hilpert Ltd','Inicial','6525 Spencer Way Apt. 799\nWest Henry, AL 85900','New Romaine','Arizona','Colorado','New York'),(6,'2845','Leannon-Schamberger','Secundaria','127 Gutkowski Field\nWest Nikitaville, KS 57408','North Kayla','Utah','Alaska','Rhode Island'),(7,'3021','Lind-Kemmer','Primaria','6304 Beier Lodge Suite 127\nLake Valentinberg, UT 93020','Schambergerton','Florida','Oklahoma','Oklahoma'),(8,'6968','Wolf-Bayer','Inicial','94884 Iliana Stravenue Suite 508\nWest Ceceliaton, TX 73169','East Hanstown','Missouri','Kentucky','Kentucky'),(9,'3189','Bashirian, Wiza and Howe','Primaria','27873 Jaskolski Lakes\nNew Elody, KS 02836-0488','Schuppestad','Illinois','North Carolina','Utah'),(10,'6940','Larkin Ltd','Inicial','6093 Hudson Estates Apt. 859\nNew Darius, AK 14737','Jenifermouth','Massachusetts','Delaware','Kansas'),(11,'2516','Jacobs-Christiansen','Secundaria','612 Lilla Fork\nEast Bertashire, NH 75097-6883','New Mariontown','Wisconsin','Ohio','Utah'),(12,'7955','Bernhard-Zboncak','Inicial','335 Enrique Lights\nGreenfelderfurt, MN 30060','East Rory','Illinois','Pennsylvania','Oklahoma'),(13,'7522','Cormier, Lindgren and Will','Primaria','50237 Adams Course Apt. 412\nLake Justinashire, FL 49170','New Eldon','Oklahoma','Kentucky','Arkansas'),(14,'3977','Will-Schowalter','Primaria','14510 Zelma Pines Suite 745\nWest Ada, CT 65672-9000','Bergstromborough','Florida','Idaho','Tennessee'),(15,'5312','Marks-Luettgen','Primaria','4192 Medhurst Corners Suite 221\nSouth Vicenta, CO 54523-9922','East Maryjaneview','Montana','Connecticut','Texas'),(16,'3000','Tillman, Ernser and Huels','Secundaria','1389 Dare Causeway Apt. 439\nEast Isobel, WY 88565','Hankside','Ohio','Maine','Massachusetts'),(17,'6244','Casper LLC','Primaria','45333 Adams Shores Apt. 849\nMarielleton, ME 75320-9599','East Sebastian','Alabama','Iowa','Utah'),(18,'5862','Hartmann-Kovacek','Primaria','418 Ebert Corner\nWest Gladyceberg, KS 81756-2388','New Amie','California','North Carolina','Missouri'),(19,'2373','Raynor Inc','Secundaria','3496 Brent Ramp\nNorth Curtborough, NM 59524-1055','East Tracyport','Maryland','Nevada','Colorado'),(20,'8503','Lind Ltd','Primaria','934 Trantow Ways\nRubenport, HI 37978-4608','Luettgenland','Georgia','Louisiana','Hawaii'),(21,'7123','O\'Kon-Bechtelar','Primaria','188 Chester Divide Apt. 098\nPort Kaleshire, RI 44862','Zoemouth','Idaho','Florida','Missouri'),(22,'8237','Dickinson, Mueller and Lynch','Primaria','36204 Juliet Forest Suite 971\nOlinhaven, TX 23073','Seanton','Kansas','Kentucky','Georgia'),(23,'6721','Veum and Sons','Inicial','397 Nader Trace Apt. 483\nLake Kobeburgh, DC 55973','Monahanstad','Delaware','Illinois','Alabama'),(24,'9042','Heidenreich Group','Primaria','428 Alfredo Summit Apt. 222\nPort Quincy, FL 66240','Julianaborough','Missouri','Tennessee','Louisiana'),(25,'1181','McLaughlin Inc','Primaria','81414 Zora Hill Apt. 858\nAdityafort, NJ 00953-7782','Port Leopoldfort','West Virginia','Delaware','Georgia'),(26,'1537','Rolfson, Berge and Lang','Secundaria','9146 Prosacco Dam Suite 179\nArthaven, IN 03533','Skylamouth','North Carolina','North Carolina','Virginia'),(27,'4143','Watsica-Veum','Secundaria','12074 Kuhic Green\nDietrichport, AR 26113-4905','Port Derrick','Ohio','Arizona','Iowa'),(28,'1577','Cassin, Johnston and Towne','Inicial','6706 Deckow Dam\nNorth Rettamouth, PA 38702','Hackettborough','Arizona','California','Arizona'),(29,'7053','Witting LLC','Primaria','13198 Sarah Squares Suite 181\nWest Bill, SD 64636','Kobebury','North Carolina','Kentucky','Wyoming'),(30,'2251','West PLC','Primaria','346 Maggio Harbor\nGerdashire, MS 06798-3948','West Erik','Colorado','New Mexico','Mississippi'),(31,'5943','Langworth-Bins','Secundaria','93228 Frami Spurs Apt. 505\nZackaryland, OR 26595-3751','Lake Maurine','Oklahoma','Oregon','New Jersey'),(32,'8805','Dietrich Ltd','Primaria','658 Cummerata Shoal Suite 191\nPort Duanetown, TN 25034-5236','West Leannechester','North Carolina','Texas','Alaska'),(33,'1257','McLaughlin, Greenfelder and Borer','Secundaria','137 Sasha Pines Apt. 142\nSouth Ellen, NM 16016','Moenborough','Nebraska','New Jersey','West Virginia'),(34,'2673','Mertz and Sons','Secundaria','1065 Vandervort Alley Suite 470\nDooleyton, RI 02407-4844','East Eli','Pennsylvania','Florida','Michigan'),(35,'1226','Spencer, Larkin and Smith','Primaria','4489 Tyson Inlet Suite 183\nNew Rebeccamouth, TN 24260-5363','New Dannieside','New York','Oregon','Connecticut'),(36,'9880','Gorczany-Rodriguez','Inicial','261 Mitchell Parkway\nNew Brayanfort, NV 59214','Ondrickaton','New Hampshire','West Virginia','Idaho'),(37,'6075','Koepp-DuBuque','Secundaria','5746 Ondricka Trail Apt. 999\nMerrittshire, NE 64178-4140','Wilhelmland','Arizona','Utah','Connecticut'),(38,'1896','Smith-Schmidt','Secundaria','66808 Bernier Cape Apt. 033\nEmerybury, HI 52845','North Melvinburgh','Colorado','Iowa','Montana'),(39,'9419','D\'Amore PLC','Inicial','98126 Kelli Manors Apt. 942\nBrionnafort, TX 51150','South Zoiemouth','District of Columbia','Hawaii','Kentucky'),(40,'6902','Swift-Blanda','Primaria','54036 Kling View Suite 637\nMurrayland, NC 35195-1854','Yundtmouth','Kansas','District of Columbia','Colorado'),(41,'3909','Tillman-Goyette','Secundaria','2917 Hilbert Drive Suite 339\nCeceliastad, VT 63857-4865','Yundtmouth','North Dakota','Virginia','Ohio'),(42,'5066','Morissette-Buckridge','Inicial','73266 Walter Road Suite 436\nNorth Ollie, MT 24328','Janellemouth','Louisiana','Indiana','New Jersey'),(43,'7158','Kuphal-Pagac','Inicial','30583 Vernie Road Apt. 430\nWest Leeton, MT 63864','West Bethany','New Jersey','Illinois','North Dakota'),(44,'8243','Durgan, Considine and McGlynn','Inicial','518 Beahan Forge Suite 093\nPort Cordieburgh, HI 48088-1594','Goyettestad','New York','Hawaii','Nebraska'),(45,'3825','Gutmann-Ledner','Primaria','71231 Ferne Flats Suite 858\nEast Sabrina, IN 42882','Noahtown','Oregon','Nevada','Ohio'),(46,'7503','Emard, Smitham and Daniel','Secundaria','527 Ali Spring\nLehnerview, MI 35960-5340','Trinityshire','Louisiana','Minnesota','Michigan'),(47,'5411','Vandervort-Bradtke','Secundaria','449 Yasmeen Centers Apt. 347\nSouth Archibaldmouth, DC 69277','Kathlynshire','South Dakota','Iowa','Massachusetts'),(48,'6502','Blanda-Spencer','Inicial','94997 Carlee Lock Suite 173\nSatterfieldberg, IL 10993','North Leonardo','South Dakota','South Carolina','Mississippi'),(49,'6523','Willms, Wisozk and Shields','Inicial','733 Conroy Prairie Apt. 628\nMiguelchester, CO 19533-2019','West Zackary','South Carolina','New York','Kentucky'),(50,'3213','Herman Ltd','Inicial','275 Rickey Parkway Apt. 725\nLemkeborough, HI 14803','West Rasheedville','Iowa','North Dakota','Maryland'),(51,'8413','Parisian, Leuschke and Spinka','Primaria','854 Howe Forge\nCliftonhaven, AL 88410','Tyratown','Iowa','Ohio','Massachusetts'),(52,'8950','Jacobs, Goldner and Goyette','Primaria','592 Meaghan Canyon\nOfeliaport, RI 11979','Satterfieldfurt','Kentucky','Maine','Georgia'),(53,'3406','Donnelly-Schuppe','Inicial','5422 Belle Meadows Apt. 817\nSouth Ulisesside, SD 49606','Purdyberg','Georgia','Virginia','Oregon'),(54,'4834','Bechtelar and Sons','Inicial','169 Hartmann Union\nLake Rustyport, RI 13263-9792','West Lexie','Texas','Virginia','Pennsylvania'),(55,'9503','Marks, Reichert and Haley','Secundaria','7833 Jerry Road\nDanteburgh, AR 94791','South Saul','Alabama','Georgia','Maine'),(56,'5015','Miller LLC','Secundaria','5908 Geraldine Circle\nNorth Buford, TN 76310','East Albertha','West Virginia','Utah','District of Columbia'),(57,'3637','Hodkiewicz, Flatley and Wolff','Inicial','1489 Von Mountains Apt. 791\nSouth Sydneyhaven, ME 55468','Aufderharchester','Colorado','Indiana','Wisconsin'),(58,'5518','Harber-O\'Keefe','Secundaria','92987 Boyle Lane Apt. 947\nLake Kaydenstad, AK 48146-1041','Gladysborough','Massachusetts','Wisconsin','Maine'),(59,'7771','Graham, Moen and Mueller','Secundaria','57306 Harber Square\nVandervorttown, IN 16447-9761','Adrienneshire','Washington','Kansas','Oklahoma'),(60,'1861','Reynolds Group','Secundaria','1426 Langosh Hills Apt. 155\nReingerbury, NE 21458-9449','Lake Arjunhaven','New Hampshire','Mississippi','Hawaii'),(61,'6798','Smith-Kreiger','Secundaria','6891 Ondricka Summit\nNorth Jeanshire, GA 95307-2695','Klockomouth','Michigan','Arizona','Tennessee'),(62,'2401','Schultz, Rodriguez and Sawayn','Primaria','5487 Jimmie Harbor Suite 658\nWest Fanny, DE 72667','Alyceport','New York','New Hampshire','Rhode Island'),(63,'1467','Moore, Crona and Armstrong','Inicial','33092 Hirthe Knolls Suite 754\nLake Hillaryhaven, LA 08379-2691','South Doylehaven','Alaska','Arizona','Ohio'),(64,'3796','Johnston, Ziemann and Osinski','Secundaria','678 Angeline Track Suite 984\nDaxfort, MT 59345','East Artland','Utah','Nevada','Vermont'),(65,'6155','Hilpert-Hudson','Secundaria','76565 Brad Rest Apt. 730\nNorth Nickfurt, NY 56719','North Bryanaborough','Arkansas','Maine','New York'),(66,'5405','Keebler Ltd','Primaria','529 Schimmel Lodge\nBatzton, AR 98662','Lake Imani','Michigan','Tennessee','Michigan'),(67,'4781','Farrell-Conn','Inicial','1767 Bradtke Mountains Apt. 002\nDanielfurt, AZ 24237-8686','Beattyberg','Hawaii','New York','Oregon'),(68,'6102','Hoeger Ltd','Primaria','79192 Isabelle Spring Apt. 687\nNew Gretchen, NC 19124-4357','South Tillman','Maryland','Maine','Oklahoma'),(69,'5785','Emard, Huels and Wuckert','Secundaria','661 Rasheed Union\nPort Alanberg, ND 28806','East Elmirastad','California','South Dakota','New Hampshire'),(70,'2059','Frami, Bechtelar and Stokes','Inicial','11072 Cartwright Cape\nEast Trishamouth, TN 59846','East Sydnie','Missouri','Virginia','Arkansas'),(71,'9064','Spinka, Waelchi and Wiza','Secundaria','9088 Rosalinda Orchard Suite 968\nTrantowmouth, AZ 65604-6102','North Alexandrinefort','Rhode Island','District of Columbia','Virginia'),(72,'6329','Wiegand and Sons','Secundaria','38162 Dickens Mountains\nMorarbury, NJ 84067-7345','Feilburgh','California','Oklahoma','Minnesota'),(73,'5227','Dooley Inc','Secundaria','585 Danyka Point Suite 663\nSouth Lila, VA 16225','Kingland','Kentucky','New Jersey','Kansas'),(74,'4326','Fritsch, Wunsch and Nitzsche','Secundaria','7901 Gutmann Flats\nPort Vivian, FL 73576-2856','Loriview','Virginia','North Carolina','Missouri'),(75,'2116','Witting PLC','Primaria','65397 Alessandro Shoal\nBoscoland, FL 20250','Lake Murl','Alabama','Illinois','Montana'),(76,'9000','Fay, Cummerata and Dietrich','Secundaria','43759 Lorenzo Lane Suite 902\nNorth Domenicton, OK 93108-1392','Port Lane','Wyoming','Nebraska','North Dakota'),(77,'8254','Cronin, Christiansen and Schulist','Primaria','29923 Jaclyn Grove Suite 657\nNew Patrickfort, MT 82831','Boyleview','Alaska','Wyoming','Kansas'),(78,'5659','Wunsch-Daniel','Inicial','1728 Ruth Greens\nWest Mossiestad, SD 81586','New Tatum','Ohio','Alaska','Vermont'),(79,'7004','Bins LLC','Secundaria','827 Isaias Vista Suite 384\nEast Juwanborough, AZ 00381','Gerholdborough','Kentucky','Pennsylvania','Rhode Island'),(80,'4519','Zemlak Ltd','Secundaria','53854 Feest Forks\nWest Leannaborough, LA 38255-8409','South Flaviebury','South Dakota','New Jersey','Minnesota'),(81,'8688','Yundt, Torphy and Donnelly','Primaria','96259 Modesto Dam Apt. 704\nEast Craigville, NE 51740-2672','West Andersonmouth','Nebraska','Minnesota','Iowa'),(82,'2347','Krajcik, Klein and Lehner','Primaria','177 Gaylord Glens\nSouth Marcelino, AL 90180-0337','Stammbury','North Dakota','District of Columbia','Michigan'),(83,'9351','Harvey-Lesch','Secundaria','42379 Cronin Port Apt. 836\nEast Susanna, NE 69585','Jastbury','Kentucky','Louisiana','Massachusetts'),(84,'1605','Donnelly-Reinger','Secundaria','95372 Kulas Falls\nNew Ressieton, ID 78746','Lake Trisha','Texas','South Dakota','California'),(85,'2403','Kunde PLC','Inicial','38726 Jaunita Crossing Suite 164\nWest Callieport, NE 07188-7878','West Jovanbury','South Dakota','Massachusetts','Maryland'),(86,'1906','Dach and Sons','Secundaria','896 Dach Parkway\nPort Adrienne, DE 62848-9524','Wiegandtown','Virginia','Nevada','Mississippi'),(87,'2554','Mann Ltd','Primaria','350 Gia Crest Suite 325\nHauckberg, MS 51853','East Wiley','West Virginia','California','Idaho'),(88,'2836','Mante-Kshlerin','Primaria','81061 Clinton Garden Apt. 801\nKatharinafort, ID 49267-7707','Larryberg','Massachusetts','Oklahoma','Nebraska'),(89,'9350','Krajcik PLC','Inicial','989 Rosie Underpass\nKayleyville, NC 41238','Grantshire','West Virginia','Vermont','Missouri'),(90,'5524','Kuhlman, Anderson and Lindgren','Inicial','136 Maxine Manor\nPort Stephen, NC 67120','Hartmannside','North Dakota','Iowa','South Carolina');
/*!40000 ALTER TABLE `institucion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institucionproducto`
--

DROP TABLE IF EXISTS `institucionproducto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `institucionproducto` (
  `idInstitucionProducto` int(11) NOT NULL AUTO_INCREMENT,
  `idInstitucion` int(11) NOT NULL,
  `idProducto` int(11) NOT NULL,
  `cantidadInstitucionProducto` int(11) NOT NULL,
  PRIMARY KEY (`idInstitucionProducto`),
  KEY `fk_institucion_institucionproducto_idx` (`idInstitucion`),
  KEY `fk_producto_institucionproducto_idx` (`idProducto`),
  CONSTRAINT `fk_institucion_institucionproducto` FOREIGN KEY (`idInstitucion`) REFERENCES `institucion` (`idInstitucion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_producto_institucionproducto` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institucionproducto`
--

LOCK TABLES `institucionproducto` WRITE;
/*!40000 ALTER TABLE `institucionproducto` DISABLE KEYS */;
/*!40000 ALTER TABLE `institucionproducto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institucionruta`
--

DROP TABLE IF EXISTS `institucionruta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `institucionruta` (
  `idInstitucionRuta` int(11) NOT NULL AUTO_INCREMENT,
  `idInstitucion` int(11) NOT NULL,
  `idRuta` int(11) NOT NULL,
  PRIMARY KEY (`idInstitucionRuta`),
  KEY `fk_institucion_institucionruta_idx` (`idInstitucion`),
  KEY `fk_ruta_institucionruta_idx` (`idRuta`),
  CONSTRAINT `fk_institucion_institucionruta` FOREIGN KEY (`idInstitucion`) REFERENCES `institucion` (`idInstitucion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ruta_institucionruta` FOREIGN KEY (`idRuta`) REFERENCES `ruta` (`idRuta`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institucionruta`
--

LOCK TABLES `institucionruta` WRITE;
/*!40000 ALTER TABLE `institucionruta` DISABLE KEYS */;
/*!40000 ALTER TABLE `institucionruta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `idProducto` int(11) NOT NULL AUTO_INCREMENT,
  `nombreProducto` varchar(45) NOT NULL,
  `marcaProducto` varchar(45) NOT NULL,
  `loteProducto` varchar(20) NOT NULL,
  `cantidadTotalProducto` int(11) NOT NULL,
  PRIMARY KEY (`idProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'nostrum','voluptatem','explicabo',896781),(2,'id','architecto','asperiores',778621),(3,'harum','quo','aut',799012),(4,'dolore','molestiae','molestiae',867590),(5,'doloribus','non','dolor',236140),(6,'numquam','qui','repellat',815030),(7,'illum','minus','et',274424),(8,'officiis','sed','rem',226255),(9,'ex','et','aliquam',731430),(10,'esse','rem','et',649507),(11,'molestiae','consectetur','et',490882),(12,'deleniti','qui','cupiditate',403266),(13,'placeat','labore','sunt',637722),(14,'ut','voluptate','illum',862694),(15,'mollitia','modi','voluptas',525777),(16,'necessitatibus','facilis','quia',893250),(17,'vel','quia','nulla',656525),(18,'iusto','laudantium','voluptate',643827),(19,'sit','totam','illo',279861),(20,'maxime','incidunt','maxime',856052),(21,'temporibus','aut','aut',737926),(22,'blanditiis','inventore','est',121895),(23,'nihil','facilis','aliquam',327222),(24,'ut','consequatur','non',282993),(25,'et','magnam','aut',380936),(26,'possimus','reprehenderit','modi',430115),(27,'qui','sint','voluptatem',835070),(28,'ut','omnis','distinctio',901430),(29,'praesentium','suscipit','laudantium',289950),(30,'voluptatum','minus','sit',246461),(31,'praesentium','quis','eaque',47023),(32,'aperiam','adipisci','omnis',929037),(33,'ut','molestias','asperiores',603990),(34,'omnis','voluptates','dicta',836572),(35,'velit','maiores','voluptatem',714164),(36,'ullam','cupiditate','neque',122997),(37,'tenetur','ipsam','nihil',479366),(38,'aspernatur','voluptatem','omnis',469740),(39,'a','velit','aut',10163),(40,'nulla','et','cupiditate',859376),(41,'nulla','recusandae','autem',480433),(42,'nostrum','cumque','minus',671347),(43,'velit','a','quo',555224),(44,'distinctio','consequuntur','vero',653769),(45,'est','adipisci','quo',268562),(46,'nobis','omnis','corrupti',695850),(47,'omnis','officiis','veniam',426805),(48,'delectus','aut','velit',418271),(49,'consectetur','dolor','sed',610399),(50,'maxime','deleniti','quam',894196);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referenciador`
--

DROP TABLE IF EXISTS `referenciador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `referenciador` (
  `idReferenciador` int(11) NOT NULL AUTO_INCREMENT,
  `nombresReferenciador` varchar(45) NOT NULL,
  `apellidopReferenciador` varchar(45) NOT NULL,
  `apellidomReferenciador` varchar(45) NOT NULL,
  `telefonoReferenciador` varchar(20) NOT NULL,
  `carnetsanidadReferenciador` varchar(15) NOT NULL,
  PRIMARY KEY (`idReferenciador`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referenciador`
--

LOCK TABLES `referenciador` WRITE;
/*!40000 ALTER TABLE `referenciador` DISABLE KEYS */;
INSERT INTO `referenciador` VALUES (1,'Evan Hilpert MD','Pacocha','Altenwerth','954-272-0089','pu17776'),(2,'Elyssa Nolan','Will','Auer','1-661-652-5200','mi35803'),(3,'Tatum Ondricka','Grimes','Mitchell','1-986-315-8660','pf42700'),(4,'Ms. Dixie Ward MD','Shields','Denesik','813-953-3699','no38808'),(5,'Ryan Nienow I','Mann','Metz','949.852.9630','ae38411'),(6,'Reagan Morar','Mueller','Franecki','+1 (385) 389-6094','eo07330'),(7,'Isai Zboncak','Mosciski','Stiedemann','1-951-227-7265','bp87144'),(8,'Alanis Shanahan','Prosacco','Rodriguez','985.563.9728','uh48476'),(9,'Mikel Becker','Leannon','Roberts','+16896024349','ug57104'),(10,'Miss Magali Jakubowski Sr.','Hills','Feest','+17608617604','jf89633');
/*!40000 ALTER TABLE `referenciador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ruta`
--

DROP TABLE IF EXISTS `ruta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ruta` (
  `idRuta` int(11) NOT NULL AUTO_INCREMENT,
  `fechaRuta` date NOT NULL,
  `idVehiculo` int(11) NOT NULL,
  `idConductor` int(11) NOT NULL,
  `idReferenciador` int(11) NOT NULL,
  PRIMARY KEY (`idRuta`),
  KEY `fk_conductor_ruta_idx` (`idConductor`),
  KEY `fk_referenciador_ruta_idx` (`idReferenciador`),
  KEY `fk_vehiculo_ruta_idx` (`idVehiculo`),
  CONSTRAINT `fk_conductor_ruta` FOREIGN KEY (`idConductor`) REFERENCES `conductor` (`idConductor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_referenciador_ruta` FOREIGN KEY (`idReferenciador`) REFERENCES `referenciador` (`idReferenciador`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_vehiculo_ruta` FOREIGN KEY (`idVehiculo`) REFERENCES `vehiculo` (`idVehiculo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ruta`
--

LOCK TABLES `ruta` WRITE;
/*!40000 ALTER TABLE `ruta` DISABLE KEYS */;
/*!40000 ALTER TABLE `ruta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (16,'Dr. Shanna Vandervort Sr.','green.damon@example.net','2024-10-11 07:12:04','$2y$04$Fi1kouP6gY/.g7fNw.0i8uqtmBf7MFeXOgdWUJm07W8s85aaqmKuO','PTFLQbgSxQ','2024-10-11 07:12:04','2024-10-11 07:12:04'),(17,'Test User','test@example.com',NULL,'$2y$04$Fi1kouP6gY/.g7fNw.0i8uqtmBf7MFeXOgdWUJm07W8s85aaqmKuO','TOWXuKJnB3','2024-10-11 07:12:04','2024-10-11 07:12:04'),(18,'Test User','konopelski.collin@example.org','2024-10-11 07:12:04','$2y$04$Fi1kouP6gY/.g7fNw.0i8uqtmBf7MFeXOgdWUJm07W8s85aaqmKuO','la2uDb51v1','2024-10-11 07:12:04','2024-10-11 07:12:04'),(20,'Ava Rutherford','jayde65@example.org','2024-10-11 07:12:04','$2y$04$Fi1kouP6gY/.g7fNw.0i8uqtmBf7MFeXOgdWUJm07W8s85aaqmKuO','ZsAL9xlZI7','2024-10-11 07:12:04','2024-10-11 07:12:04'),(21,'Mauricio Rivera','72569167@continental.edu.pe',NULL,'$2y$12$tcWdyziUn0X44WBSFYFaFe2bh0M9qunCsM1IQ5extmQUH.hCAW13C',NULL,'2024-10-11 07:29:55','2024-10-11 07:29:55');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehiculo`
--

DROP TABLE IF EXISTS `vehiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehiculo` (
  `idVehiculo` int(11) NOT NULL AUTO_INCREMENT,
  `placaVehiculo` varchar(7) NOT NULL,
  `tipoVehiculo` varchar(10) NOT NULL,
  `capacidadVehiculo` float NOT NULL,
  PRIMARY KEY (`idVehiculo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehiculo`
--

LOCK TABLES `vehiculo` WRITE;
/*!40000 ALTER TABLE `vehiculo` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehiculo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-15 22:16:52
