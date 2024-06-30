CREATE DATABASE  IF NOT EXISTS `systemtransport` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci */;
USE `systemtransport`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: systemtransport
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.28-MariaDB

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_nome` varchar(50) DEFAULT NULL,
  `admin_email` varchar(50) DEFAULT NULL,
  `admin_senha` varchar(50) DEFAULT NULL,
  `admin_avatar` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'Francisco','francisco@gmail.com','d9b1d7db4cd6e70935368a1efb10e377','avatar.png'),(2,'Kissilone Manuel','kisilone@gmail.com','d9b1d7db4cd6e70935368a1efb10e377','avatar.png');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caminhao`
--

DROP TABLE IF EXISTS `caminhao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `caminhao` (
  `caminhao_id` int(11) NOT NULL AUTO_INCREMENT,
  `caminhao_nome` varchar(50) DEFAULT NULL,
  `caminhao_ano_fabricacao` date DEFAULT NULL,
  `caminhao_km_rodadas` varchar(20) DEFAULT NULL,
  `caminhao_marca` varchar(50) DEFAULT NULL,
  `pneus_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`caminhao_id`),
  KEY `fk_caminhao_pneus` (`pneus_id`),
  CONSTRAINT `caminhao_ibfk_1` FOREIGN KEY (`pneus_id`) REFERENCES `pneus` (`pneus_id`),
  CONSTRAINT `fk_caminhao_pneus` FOREIGN KEY (`pneus_id`) REFERENCES `pneus` (`pneus_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caminhao`
--

LOCK TABLES `caminhao` WRITE;
/*!40000 ALTER TABLE `caminhao` DISABLE KEYS */;
INSERT INTO `caminhao` VALUES (1,'Toyota 02','1990-02-20','50km','Toyota',1);
/*!40000 ALTER TABLE `caminhao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `data_nascimento` datetime DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telefone` varchar(10) DEFAULT NULL,
  `morada` varchar(50) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `cliente_ativo` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Francisca Gabriela Fernandes Ferreira','f','1953-01-19 00:00:00','francisca.422.gabriela@gmail.com','924040453','Rua Gonçalves Gomes n.º600 1º Esq','Viana do Castelo',0),(2,'Beatriz Alexandra Ribeiro Cunha','f','1950-05-10 00:00:00','beatriz.426.alexandra@outlook.com','977342153','Avenida Ferreira Neves n.º195 2º Esq','Porto',1),(3,'Filipe Leandro Lima Gonçalves','m','2003-11-23 00:00:00','filipe.855.leandro@outlook.com','982858385','Praça Antunes Miranda n.º21 5º Drt','Braga',1),(4,'Inês Teresa Barros Castro','f','1968-01-15 00:00:00','in.701.teresa@hotmail.com','998359433','Avenida Magalhães Martins n.º191 2º Drt','Covilhã',1),(5,'Rosa Laura Araújo Matos','f','1969-04-12 00:00:00','rosa.132.laura@gmail.com','947595041','Praça Cardoso Lourenço n.º912 3º Esq','Setúbal',1),(6,'Gabriel Rafael Matos Neves','m','2000-09-06 00:00:00','gabriel.822.rafael@microsoft.com','933172351','Rua Vieira Soares n.º123 4º Drt','Viseu',1),(7,'Luís Rúben Araújo Silva','m','2001-12-08 00:00:00','lu.353.ren@outlook.com','905824896','Avenida Soares Barbosa n.º646 2º Esq','Vila Real',1),(8,'Luciana Rita Costa Faria','f','1980-08-13 00:00:00','luciana.998.rita@hotmail.com','901094336','Praça Magalhães Almeida n.º595 4º Esq','Faro',1),(9,'Miguel Lourenço Guerreiro Ribeiro','m','1988-07-05 00:00:00','miguel.93.louren@hotmail.com','980424744','Rua Correia Ramos n.º512 2º Esq','Beja',1),(10,'Hugo Matias Soares Faria','m','1960-06-15 00:00:00','hugo.87.matias@outlook.com','994322040','Rua Guerreiro Fonseca n.º394 6º Drt','Amadora',1),(11,'Sara Rosa Henriques Sousa','f','1978-01-14 00:00:00','sara.358.rosa@outlook.com','960455241','Rua Matos Castro n.º292 1º Drt','Bragança',1),(12,'Guilherme Nuno Cruz Vieira','m','1992-11-08 00:00:00','guilherme.871.nuno@outlook.com','908501005','Rua Batista Jesus n.º919 1º Esq','Setúbal',1),(13,'Santiago Leonardo Costa Rodrigues','m','1999-08-09 00:00:00','santiago.296.leonardo@hotmail.com','927086814','Avenida Correia Henriques n.º270 4º Esq','Chaves',1),(14,'Mariana Gabriela Soares Figueiredo','f','1994-02-14 00:00:00','mariana.257.gabriela@microsoft.com','947070644','Avenida Batista Soares n.º705 1º Drt','Setúbal',1),(15,'André Matias Simões Rodrigues','m','1967-11-01 00:00:00','andr.670.matias@hotmail.com','951442612','Avenida Alves Coelho n.º781 4º Esq','Braga',1),(16,'Margarida Sara Mendes Cruz','f','1974-12-28 00:00:00','margarida.694.sara@hotmail.com','934370623','Avenida Correia Guerreiro n.º701 3º Drt','Lisboa',0),(17,'Samuel Pedro Vieira Jesus','m','1951-01-15 00:00:00','samuel.373.pedro@hotmail.com','927395540','Avenida Henriques Pereira n.º22 6º Drt','Lisboa',1),(18,'Alexandra Aurora Rodrigues Pinto','f','1960-05-14 00:00:00','alexandra.492.aurora@microsoft.com','900663309','Avenida Barros Santos n.º989 1º Esq','Aveiro',1),(19,'Daniela Carolina Henriques Lourenço','f','1965-05-18 00:00:00','daniela.106.carolina@microsoft.com','917509782','Avenida Teixeira Fernandes n.º702 5º Esq','Aveiro',1),(20,'Laura Teresa Miranda Neves','f','1985-02-13 00:00:00','laura.643.teresa@gmail.com','939315214','Avenida Nunes Henriques n.º17 5º Drt','Lisboa',1),(21,'Rafael Rúben Batista Sousa','m','1967-06-19 00:00:00','rafael.70.ren@outlook.com','965196895','Praça Tavares Rocha n.º637 5º Drt','Lisboa',1),(22,'Filipe Dinis Raposo Carvalho','m','2002-09-19 00:00:00','filipe.332.dinis@hotmail.com','993683378','Rua Rocha Mendes n.º885 5º Drt','Viseu',1),(23,'Lara Amélia Machado Neves','f','2001-12-16 00:00:00','lara.374.amia@hotmail.com','918241566','Avenida Magalhães Teixeira n.º795 2º Esq','Bragança',1),(24,'Catarina Emília Silva Carvalho','f','1990-01-01 00:00:00','catarina.853.emia@gmail.com','970959654','Rua Oliveira Coelho n.º563 2º Esq','Lisboa',1),(25,'Amélia Inês Alves Matos','f','1997-09-10 00:00:00','amia.259.in@outlook.com','920690035','Praça Barbosa Carvalho n.º464 4º Drt','Amadora',1),(26,'Duarte João Lourenço Soares','m','1988-12-15 00:00:00','duarte.41.jo@hotmail.com','940083219','Avenida Martins Freitas n.º773 3º Esq','Lisboa',1),(27,'Salvador Manuel Gomes Alves','m','2003-07-23 00:00:00','salvador.987.manuel@gmail.com','962809112','Praça Barbosa Santos n.º534 1º Esq','Guarda',1),(28,'Francisco Gonçalo Tavares Nunes','m','1985-07-19 00:00:00','francisco.571.gonlo@outlook.com','901886864','Praça Costa Miranda n.º485 2º Esq','Castelo Branco',1),(29,'Matilde Maria Ramos Lourenço','f','1982-08-19 00:00:00','matilde.648.maria@gmail.com','966447601','Rua Santos Gomes n.º405 3º Esq','Coimbra',1),(30,'Lara Rosa Rodrigues Alves','f','1999-01-12 00:00:00','lara.800.rosa@gmail.com','928453471','Rua Mendes Rocha n.º441 1º Esq','Vila Real',0),(31,'Filipe Vicente Lourenço Antunes','m','1950-03-27 00:00:00','filipe.853.vicente@gmail.com','960877479','Rua Martins Gonçalves n.º896 2º Drt','Guarda',1),(32,'João Vicente Guerreiro Nunes','m','1988-02-05 00:00:00','jo.416.vicente@gmail.com','993471049','Rua Araújo Ramos n.º913 5º Esq','Bragança',1),(33,'Joana Diana Pereira Pinto','f','1957-02-21 00:00:00','joana.336.diana@gmail.com','986582152','Avenida Lourenço Costa n.º63 4º Drt','Braga',1),(34,'Raquel Beatriz Ferreira Lopes','f','1958-11-13 00:00:00','raquel.909.beatriz@gmail.com','984157020','Rua Ferreira Mendes n.º964 5º Esq','Setúbal',1),(35,'Rui Matias Freitas Sousa','m','1963-05-21 00:00:00','rui.41.matias@gmail.com','919357498','Rua Sousa Carvalho n.º532 2º Esq','Beja',1),(36,'Diana Débora Machado Araújo','f','1989-11-09 00:00:00','diana.542.dora@microsoft.com','941874901','Avenida Alves Monteiro n.º451 2º Drt','Lisboa',1),(37,'Rúben Gonçalo Faria Rodrigues','m','1975-02-13 00:00:00','ren.516.gonlo@microsoft.com','967353782','Rua Tavares Lopes n.º26 6º Drt','Bragança',1),(38,'Pedro Ricardo Miranda Figueiredo','m','1977-01-20 00:00:00','pedro.234.ricardo@outlook.com','902767047','Praça Ribeiro Rodrigues n.º168 2º Esq','Coimbra',1),(39,'Rúben José Rodrigues Fernandes','m','2000-06-02 00:00:00','ren.679.jos@outlook.com','927719104','Rua Pires Neves n.º789 2º Drt','Setúbal',1),(40,'Rafaela Débora Rodrigues Pinheiro','f','1981-08-03 00:00:00','rafaela.871.dora@hotmail.com','961539450','Rua Ribeiro Correia n.º587 5º Drt','Guarda',1),(41,'Rúben Duarte Monteiro Castro','m','1951-07-27 00:00:00','ren.974.duarte@microsoft.com','955578518','Avenida Soares Rodrigues n.º723 1º Drt','Guarda',1),(42,'Tiago Rui Monteiro Magalhães','m','1999-07-26 00:00:00','tiago.80.rui@gmail.com','957894155','Praça Rodrigues Martins n.º785 1º Esq','Coimbra',1),(43,'Juliana Ana Alves Jesus','f','2001-10-18 00:00:00','juliana.135.ana@outlook.com','902392616','Praça Monteiro Martins n.º949 4º Drt','Braga',1),(44,'Gonçalo José Pinto Barros','m','1965-12-23 00:00:00','gonlo.389.jos@microsoft.com','987311295','Avenida Castro Neves n.º296 3º Drt','Beja',1),(45,'Bruna Alice Henriques Barbosa','f','1966-05-01 00:00:00','bruna.922.alice@hotmail.com','936124233','Praça Soares Antunes n.º712 1º Drt','Setúbal',1),(46,'Henrique Carlos Antunes Mendes','m','2000-09-16 00:00:00','henrique.695.carlos@hotmail.com','919683046','Avenida Neves Santos n.º484 5º Drt','Aveiro',1),(47,'Matilde Diana Ferreira Mendes','f','1976-11-06 00:00:00','matilde.687.diana@outlook.com','941242869','Rua Rodrigues Batista n.º661 2º Drt','Amadora',0),(48,'Lara Teresa Pinto Fonseca','f','1950-10-08 00:00:00','lara.652.teresa@hotmail.com','902263952','Rua Barros Gomes n.º930 1º Esq','Porto',1),(49,'Eva Joana Miranda Cunha','f','1966-12-21 00:00:00','eva.211.joana@outlook.com','995446301','Avenida Rocha Cardoso n.º715 1º Esq','Coimbra',1),(50,'Débora Clara Machado Raposo','f','2004-08-03 00:00:00','dora.502.clara@hotmail.com','997852144','Praça Figueiredo Rocha n.º101 2º Drt','Amadora',1),(51,'Mariana Eva Ribeiro Mendes','f','1950-11-01 00:00:00','mariana.989.eva@microsoft.com','915553851','Praça Cardoso Pires n.º999 2º Esq','Beja',1),(52,'Rui António Ribeiro Rodrigues','m','1986-07-07 00:00:00','rui.461.antio@hotmail.com','920206931','Avenida Rocha Gonçalves n.º233 3º Esq','Aveiro',1),(53,'Diogo Bernardo Moreira Azevedo','m','2005-05-23 00:00:00','diogo.830.bernardo@hotmail.com','924650781','Rua Correia Antunes n.º517 3º Drt','Coimbra',1),(54,'Juliana Rosa Teixeira Simões','f','1969-07-22 00:00:00','juliana.222.rosa@outlook.com','970656068','Praça Azevedo Jesus n.º658 4º Drt','Viana do Castelo',1),(55,'João Alexandre Azevedo Raposo','m','1987-09-19 00:00:00','jo.581.alexandre@microsoft.com','966667399','Avenida Moreira Barros n.º228 3º Esq','Aveiro',1),(56,'Isabel Rita Lopes Jesus','f','1954-10-06 00:00:00','isabel.156.rita@microsoft.com','937715963','Avenida Gonçalves Coelho n.º816 5º Drt','Amadora',1),(57,'Nuno Dinis Rodrigues Fonseca','m','1962-01-03 00:00:00','nuno.947.dinis@hotmail.com','927548382','Rua Machado Ribeiro n.º445 2º Drt','Faro',1),(58,'Lucas Lourenço Pires Coelho','m','1978-02-22 00:00:00','lucas.95.louren@microsoft.com','986503565','Praça Pinheiro Moreira n.º558 1º Esq','Chaves',1),(59,'Martim Luís Guerreiro Figueiredo','m','1993-02-14 00:00:00','martim.80.lu@outlook.com','958019836','Rua Correia Ramos n.º567 1º Drt','Aveiro',1),(60,'Sofia Clara Mendes Magalhães','f','2005-01-11 00:00:00','sofia.503.clara@outlook.com','917072762','Rua Fernandes Henriques n.º663 6º Drt','Amadora',1),(61,'Rodrigo Dinis Coelho Correia','m','1970-09-01 00:00:00','rodrigo.501.dinis@microsoft.com','907729280','Avenida Costa Barros n.º366 1º Esq','Amadora',1),(62,'Fabiana Eva Machado Rocha','f','1989-03-18 00:00:00','fabiana.55.eva@gmail.com','902085103','Rua Pinheiro Oliveira n.º367 3º Esq','Coimbra',1),(63,'Guilherme Duarte Tavares Monteiro','m','1969-04-20 00:00:00','guilherme.772.duarte@outlook.com','969135875','Praça Pires Ramos n.º813 3º Drt','Covilhã',1),(64,'Afonso Samuel Martins Barros','m','1960-08-18 00:00:00','afonso.217.samuel@hotmail.com','914275606','Praça Ribeiro Correia n.º187 3º Esq','Porto',1),(65,'Sara Rafaela Magalhães Faria','f','1958-11-18 00:00:00','sara.114.rafaela@outlook.com','920165287','Rua Lourenço Antunes n.º299 4º Esq','Castelo Branco',1),(66,'Eva Daniela Cardoso Cruz','f','1982-06-27 00:00:00','eva.774.daniela@hotmail.com','975075189','Praça Rodrigues Vieira n.º944 6º Drt','Vila Real',0),(67,'Filipe Mateus Cunha Jesus','m','1955-07-06 00:00:00','filipe.308.mateus@gmail.com','955519569','Praça Fernandes Ferreira n.º38 4º Esq','Coimbra',1),(68,'Matias Duarte Cruz Simões','m','1987-07-03 00:00:00','matias.284.duarte@outlook.com','910871182','Avenida Carvalho Silva n.º943 2º Esq','Covilhã',1),(69,'Ricardo Alexandre Batista Ferreira','m','1994-01-23 00:00:00','ricardo.456.alexandre@outlook.com','923521967','Rua Coelho Barbosa n.º251 4º Drt','Viseu',1),(70,'Eva Alice Gonçalves Sousa','f','2002-06-10 00:00:00','eva.527.alice@hotmail.com','944255303','Rua Moreira Silva n.º700 2º Drt','Vila Real',1),(71,'Vera Francisca Coelho Ferreira','f','1996-01-04 00:00:00','vera.842.francisca@outlook.com','942431650','Praça Araújo Castro n.º973 1º Esq','Lisboa',1),(72,'Hugo Bruno Martins Antunes','m','1987-07-03 00:00:00','hugo.249.bruno@gmail.com','986190060','Rua Figueiredo Gonçalves n.º67 2º Esq','Viana do Castelo',1),(73,'Nuno Luís marques Pinheiro','m','2001-05-21 00:00:00','nuno.492.lu@hotmail.com','984140563','Rua Rodrigues Cardoso n.º884 6º Esq','Guarda',1),(74,'Clara Filipa Correia Gomes','f','1986-02-07 00:00:00','clara.784.filipa@hotmail.com','978949429','Rua Gomes Lopes n.º213 5º Esq','Vila Real',1),(75,'Rui Tomás Simões Carvalho','m','2004-04-16 00:00:00','rui.664.tom@gmail.com','936551236','Rua Santos Ramos n.º508 3º Drt','Coimbra',1),(76,'Rafael Samuel marques Antunes','m','1981-08-13 00:00:00','rafael.173.samuel@gmail.com','995011556','Praça Faria Sousa n.º760 4º Esq','Amadora',1),(77,'Miguel Lourenço Monteiro Santos','m','2003-06-03 00:00:00','miguel.834.louren@outlook.com','913119993','Praça Coelho Barbosa n.º931 1º Drt','Viana do Castelo',1),(78,'Hugo Rúben Pinto Monteiro','m','1975-08-20 00:00:00','hugo.969.ren@outlook.com','927608758','Avenida Matos Sousa n.º329 5º Esq','Vila Real',1),(79,'Clara Alice Guerreiro Figueiredo','f','1995-06-10 00:00:00','clara.354.alice@outlook.com','909866154','Praça Lourenço Rocha n.º184 1º Drt','Beja',1),(80,'António Diogo Ferreira Batista','m','1975-01-25 00:00:00','antio.199.diogo@hotmail.com','907087498','Avenida Mendes Martins n.º407 2º Esq','Chaves',1),(81,'Júlia Adriana Barros Soares','f','1982-12-27 00:00:00','jia.519.adriana@hotmail.com','975387260','Praça Ribeiro Henriques n.º131 4º Drt','Viseu',1),(82,'Bernardo Guilherme Lopes Ferreira','m','1996-07-18 00:00:00','bernardo.881.guilherme@outlook.com','906817797','Rua Lourenço Carvalho n.º692 5º Drt','Covilhã',1),(83,'André Francisco Nunes Mendes','m','1983-04-07 00:00:00','andr.993.francisco@gmail.com','923688833','Rua Alves Ribeiro n.º9 6º Drt','Viseu',1),(84,'Raquel Juliana Ribeiro Santos','f','1997-11-03 00:00:00','raquel.253.juliana@microsoft.com','904723613','Rua Cruz Matos n.º903 3º Drt','Braga',1),(85,'Tiago Lucas Pinheiro Simões','m','1966-01-23 00:00:00','tiago.472.lucas@hotmail.com','980943699','Praça Rodrigues Cunha n.º938 5º Drt','Beja',1),(86,'Duarte Luís Magalhães Ferreira','m','2003-01-09 00:00:00','duarte.456.lu@gmail.com','907892286','Praça Ribeiro Costa n.º532 1º Esq','Viana do Castelo',1),(87,'Pedro Alexandre Pereira Ribeiro','m','1983-01-12 00:00:00','pedro.637.alexandre@outlook.com','909772960','Rua Raposo Rodrigues n.º696 6º Drt','Vila Real',1),(88,'Marta Luísa Cunha Raposo','f','1961-10-22 00:00:00','marta.36.lua@gmail.com','967864359','Praça Ferreira Ramos n.º856 4º Drt','Setúbal',1),(89,'Gustavo André Rocha Raposo','m','1951-07-23 00:00:00','gustavo.556.andr@gmail.com','992371219','Avenida Nunes Cardoso n.º400 5º Drt','Faro',1),(90,'Eduardo Lourenço Correia Oliveira','m','1981-09-11 00:00:00','eduardo.753.louren@hotmail.com','950880410','Rua Pereira Figueiredo n.º44 4º Esq','Viana do Castelo',1),(91,'Guilherme Francisco Magalhães Ferreira','m','2001-01-10 00:00:00','guilherme.219.francisco@microsoft.com','992106192','Praça Sousa Cardoso n.º579 3º Drt','Guarda',1),(92,'Diego Rúben Costa Gonçalves','m','1974-08-11 00:00:00','diego.217.ren@hotmail.com','936730770','Praça Ferreira Barbosa n.º648 6º Esq','Guarda',1),(93,'Luciana Elisa Jesus Neves','f','1953-09-09 00:00:00','luciana.365.elisa@outlook.com','945082061','Avenida Pires Gonçalves n.º636 3º Drt','Guarda',1),(94,'Leandro Guilherme Cardoso Martins','m','1992-08-11 00:00:00','leandro.751.guilherme@hotmail.com','980053178','Avenida Barbosa Pinto n.º545 4º Drt','Viana do Castelo',1),(95,'Gonçalo António Oliveira Faria','m','2004-06-03 00:00:00','gonlo.170.antio@microsoft.com','940374168','Avenida Ribeiro Vieira n.º256 2º Esq','Faro',1),(96,'Luís Santiago Correia Ramos','m','1989-07-14 00:00:00','lu.147.santiago@microsoft.com','906077294','Rua Rocha Matos n.º541 2º Esq','Viseu',1),(97,'Rosa Lara Simões Almeida','f','1997-01-16 00:00:00','rosa.520.lara@outlook.com','937685360','Praça Antunes Ferreira n.º151 1º Esq','Vila Real',1),(98,'Mariana Clara Cunha marques','f','1979-01-15 00:00:00','mariana.485.clara@microsoft.com','904811913','Avenida Cardoso Raposo n.º576 1º Drt','Faro',1),(99,'Tiago Gabriel Coelho Lopes','m','1997-07-12 00:00:00','tiago.64.gabriel@hotmail.com','935861910','Rua Simões Rodrigues n.º184 3º Drt','Chaves',1),(100,'André Eduardo Gonçalves Fonseca','m','2005-03-18 00:00:00','andr.646.eduardo@outlook.com','917777392','Avenida Mendes Sousa n.º922 2º Esq','Setúbal',1),(101,'Luís Rodrigo Cunha Alves','m','1966-11-13 00:00:00','lu.242.rodrigo@gmail.com','940035131','Praça Raposo Figueiredo n.º753 2º Drt','Guarda',1),(102,'Matilde Fabiana Cunha Miranda','f','1958-01-07 00:00:00','matilde.106.fabiana@hotmail.com','940332098','Rua Castro Tavares n.º253 3º Esq','Amadora',0),(103,'Alexandre Salvador Pereira Barros','m','1954-04-12 00:00:00','alexandre.924.salvador@microsoft.com','943863554','Avenida Pinto Costa n.º407 1º Drt','Faro',1),(104,'Vicente Bernardo Pinto Cruz','m','1965-07-15 00:00:00','vicente.621.bernardo@gmail.com','909685591','Avenida Moreira Matos n.º748 6º Esq','Vila Real',1),(105,'Carolina Isabel Tavares Barbosa','f','2000-07-06 00:00:00','carolina.208.isabel@gmail.com','914738591','Praça Pinheiro Freitas n.º993 5º Drt','Faro',1),(106,'Elisa Débora Martins Silva','f','2003-01-25 00:00:00','elisa.466.dora@hotmail.com','926536103','Rua Martins Fernandes n.º107 3º Esq','Covilhã',1),(107,'Inês Ana Figueiredo Miranda','f','1982-04-02 00:00:00','in.316.ana@hotmail.com','902456277','Avenida Teixeira Alves n.º116 2º Drt','Amadora',1),(108,'Luísa Luciana Pinto Lourenço','f','1977-05-16 00:00:00','lua.934.luciana@microsoft.com','959002839','Rua marques Martins n.º806 2º Drt','Guarda',1),(109,'Elisa Luísa Cruz Moreira','f','1981-11-09 00:00:00','elisa.390.lua@gmail.com','954389494','Avenida Silva Matos n.º885 6º Esq','Aveiro',1),(110,'Bernardo Luís Jesus Correia','m','1969-09-20 00:00:00','bernardo.867.lu@outlook.com','975625678','Rua Simões Ferreira n.º881 1º Esq','Castelo Branco',1),(111,'Rita Mafalda Figueiredo Machado','f','1997-08-24 00:00:00','rita.845.mafalda@microsoft.com','994093970','Praça Moreira Costa n.º352 6º Esq','Porto',1),(112,'Carlos Rodrigo Teixeira Barros','m','1985-05-14 00:00:00','carlos.793.rodrigo@hotmail.com','925708950','Rua Gonçalves Lima n.º379 1º Esq','Braga',1),(113,'Manuel Matias Azevedo marques','m','1980-04-19 00:00:00','manuel.497.matias@outlook.com','951889223','Rua Almeida Ferreira n.º307 1º Drt','Porto',1),(114,'Luís Gustavo Silva Araújo','m','1952-04-17 00:00:00','lu.43.gustavo@microsoft.com','970371622','Rua Gomes Pires n.º478 4º Esq','Viseu',1),(115,'Lucas João Barros Lourenço','m','1975-11-14 00:00:00','lucas.551.jo@hotmail.com','990757243','Praça Cunha Miranda n.º661 6º Drt','Amadora',1),(116,'Juliana Mariana Tavares Moreira','f','1958-08-28 00:00:00','juliana.38.mariana@outlook.com','917141331','Rua Rodrigues Guerreiro n.º598 5º Drt','Braga',1),(117,'Diogo Daniel marques Magalhães','m','1962-06-18 00:00:00','diogo.145.daniel@gmail.com','919154708','Rua Almeida Moreira n.º971 3º Esq','Braga',1),(118,'Elisa Carolina Pires Teixeira','f','1980-09-06 00:00:00','elisa.237.carolina@hotmail.com','905458874','Praça Rodrigues Sousa n.º244 3º Drt','Faro',1),(119,'Bernardo João Faria Miranda','m','1964-03-06 00:00:00','bernardo.125.jo@gmail.com','984775438','Praça Cruz Ferreira n.º279 1º Drt','Faro',1),(120,'Leandro António Barros Machado','m','1989-03-18 00:00:00','leandro.591.antio@outlook.com','944691601','Avenida Miranda Antunes n.º294 3º Esq','Beja',1),(121,'Gabriel João Magalhães Raposo','m','1995-07-24 00:00:00','gabriel.402.jo@gmail.com','921742859','Rua Correia Carvalho n.º713 5º Esq','Beja',1),(122,'Catarina Elisa Silva Matos','f','2006-01-10 00:00:00','catarina.521.elisa@microsoft.com','938784350','Avenida Freitas Lourenço n.º423 1º Drt','Covilhã',1),(123,'Gabriela Sofia Lopes Ramos','f','1983-01-18 00:00:00','gabriela.218.sofia@gmail.com','998663557','Rua Castro Soares n.º147 6º Drt','Faro',1),(124,'André Carlos Rodrigues Vieira','m','1983-08-23 00:00:00','andr.722.carlos@microsoft.com','989374763','Praça Gonçalves Santos n.º859 6º Esq','Setúbal',1),(125,'Matias Bernardo Henriques Costa','m','1950-05-05 00:00:00','matias.637.bernardo@hotmail.com','962705166','Praça Machado Magalhães n.º893 4º Drt','Porto',1),(126,'Rosa Elisa Alves Martins','f','1978-05-11 00:00:00','rosa.871.elisa@microsoft.com','929305593','Avenida Monteiro Simões n.º593 2º Esq','Covilhã',1),(127,'Rui Gustavo Oliveira Soares','m','1977-09-25 00:00:00','rui.154.gustavo@microsoft.com','938916158','Rua Rodrigues Pereira n.º411 3º Esq','Viseu',1),(128,'Mariana Francisca Simões Faria','f','2005-09-06 00:00:00','mariana.203.francisca@gmail.com','927642206','Avenida Matos Fernandes n.º84 6º Drt','Aveiro',1),(129,'Marta Isabel Azevedo Teixeira','f','1957-05-14 00:00:00','marta.432.isabel@hotmail.com','949816975','Avenida Vieira Pereira n.º425 4º Esq','Castelo Branco',1),(130,'Lucas Bernardo Castro Rodrigues','m','1966-01-03 00:00:00','lucas.19.bernardo@outlook.com','978074473','Rua Nunes Faria n.º515 3º Drt','Coimbra',1),(131,'Teresa Vera Guerreiro Azevedo','f','1970-10-24 00:00:00','teresa.461.vera@hotmail.com','957568645','Avenida Teixeira Figueiredo n.º651 2º Drt','Viseu',1),(132,'Adriana Júlia Teixeira Araújo','f','1988-11-07 00:00:00','adriana.126.jia@gmail.com','949159609','Rua Alves Rodrigues n.º188 2º Esq','Lisboa',1),(133,'Bernardo Duarte Batista Sousa','m','1986-10-22 00:00:00','bernardo.225.duarte@microsoft.com','937955485','Rua Correia Castro n.º244 2º Drt','Setúbal',1),(134,'Amélia Adriana Martins Alves','f','1959-06-16 00:00:00','amia.843.adriana@microsoft.com','986534017','Rua marques Mendes n.º271 3º Drt','Covilhã',1),(135,'José Diego Tavares Henriques','m','1974-03-15 00:00:00','jos.917.diego@outlook.com','930863651','Rua Teixeira Gomes n.º745 2º Drt','Guarda',1),(136,'Rosa Teresa Barbosa Lopes','f','1989-11-15 00:00:00','rosa.767.teresa@hotmail.com','968740590','Praça Pires Guerreiro n.º245 2º Drt','Faro',1),(137,'João David Henriques Barros','m','1952-06-22 00:00:00','jo.561.david@gmail.com','906716574','Rua Tavares Jesus n.º416 1º Esq','Lisboa',1),(138,'Ana Luísa Freitas Teixeira','f','1991-06-21 00:00:00','ana.698.lua@outlook.com','914918444','Rua Machado Gomes n.º260 3º Drt','Setúbal',1),(139,'Madalena Maria Jesus Moreira','f','1954-11-09 00:00:00','madalena.179.maria@microsoft.com','918504939','Praça Costa Soares n.º794 2º Esq','Guarda',1),(140,'Júlia Vera Silva Henriques','f','1981-04-03 00:00:00','jia.568.vera@outlook.com','995340014','Praça Rodrigues Castro n.º984 5º Drt','Braga',1),(141,'Leandro Miguel Pires Lopes','m','1970-05-04 00:00:00','leandro.866.miguel@gmail.com','957120919','Rua Correia Monteiro n.º270 3º Esq','Porto',1),(142,'Hugo Luís Alves Castro','m','1994-11-20 00:00:00','hugo.782.lu@gmail.com','902247920','Rua Cunha Raposo n.º997 3º Drt','Covilhã',1),(143,'Miguel Rafael Guerreiro Henriques','m','2000-07-05 00:00:00','miguel.299.rafael@outlook.com','990163242','Avenida Barbosa Neves n.º460 3º Esq','Aveiro',1),(144,'Carlos Filipe Correia Carvalho','m','2001-04-02 00:00:00','carlos.473.filipe@hotmail.com','931543835','Rua Pires Pinheiro n.º519 3º Esq','Bragança',1),(145,'Matias Henrique Mendes Correia','m','1981-03-18 00:00:00','matias.503.henrique@hotmail.com','945059097','Avenida Soares Costa n.º293 5º Esq','Aveiro',1),(146,'Luís Rúben Cruz Coelho','m','1979-05-13 00:00:00','lu.361.ren@microsoft.com','913745111','Rua Lopes Cruz n.º879 1º Esq','Guarda',1),(147,'Filipe Diogo Ferreira Oliveira','m','1989-09-21 00:00:00','filipe.366.diogo@gmail.com','938452791','Rua Araújo Santos n.º543 3º Drt','Beja',1),(148,'Fabiana Joana Lourenço Monteiro','f','1982-05-17 00:00:00','fabiana.677.joana@outlook.com','963115317','Rua Guerreiro Alves n.º540 2º Esq','Bragança',1),(149,'Filipa Sara Lima Gomes','f','1963-08-24 00:00:00','filipa.825.sara@microsoft.com','915316085','Rua Pinheiro Correia n.º523 6º Drt','Viana do Castelo',1),(150,'Sofia Juliana Soares Correia','f','1958-12-01 00:00:00','sofia.497.juliana@outlook.com','942329324','Praça Rocha Tavares n.º288 6º Drt','Faro',1),(151,'Beatriz Teresa Miranda Silva','f','1987-08-22 00:00:00','beatriz.475.teresa@hotmail.com','904777302','Rua Antunes Correia n.º741 3º Drt','Faro',0),(152,'Samuel Rúben Teixeira Faria','m','2000-08-13 00:00:00','samuel.636.ren@microsoft.com','990583218','Rua Moreira Machado n.º862 3º Drt','Coimbra',1),(153,'Leonardo Matias Lourenço Cardoso','m','2001-01-11 00:00:00','leonardo.349.matias@hotmail.com','944526944','Rua Almeida Ferreira n.º427 2º Esq','Viana do Castelo',1),(154,'Duarte Eduardo Teixeira Raposo','m','1968-05-14 00:00:00','duarte.596.eduardo@outlook.com','953142559','Avenida Machado Batista n.º98 1º Esq','Aveiro',1),(155,'Francisco Bernardo Simões Soares','m','1973-03-15 00:00:00','francisco.191.bernardo@microsoft.com','911625907','Rua Rodrigues Vieira n.º354 6º Esq','Castelo Branco',1),(156,'António Nuno Azevedo Cardoso','m','1988-05-24 00:00:00','antio.454.nuno@gmail.com','989242814','Rua Pires Teixeira n.º124 6º Drt','Vila Real',1),(157,'Ricardo Leandro Ribeiro Fonseca','m','1990-11-20 00:00:00','ricardo.654.leandro@hotmail.com','930800026','Rua Matos marques n.º388 2º Esq','Setúbal',1),(158,'Bruno Samuel Barros Correia','m','1962-08-04 00:00:00','bruno.308.samuel@hotmail.com','932387959','Avenida Mendes Barros n.º762 2º Drt','Covilhã',1),(159,'Rafael Pedro Jesus Miranda','m','1964-10-25 00:00:00','rafael.717.pedro@hotmail.com','957360555','Rua Nunes Pires n.º394 2º Esq','Setúbal',1),(160,'José Lucas Costa Ramos','m','1964-03-12 00:00:00','jos.553.lucas@microsoft.com','985340821','Rua Silva Coelho n.º456 6º Drt','Coimbra',1),(161,'Clara Beatriz Alves Rodrigues','f','1982-02-03 00:00:00','clara.815.beatriz@outlook.com','951836837','Praça Rocha marques n.º910 1º Drt','Vila Real',1),(162,'Rui Bruno Correia Soares','m','1953-01-05 00:00:00','rui.580.bruno@hotmail.com','910302970','Rua Faria Fernandes n.º801 6º Esq','Faro',1),(163,'Rita Teresa Henriques Freitas','f','1988-09-19 00:00:00','rita.576.teresa@microsoft.com','998990454','Rua Soares Neves n.º923 5º Drt','Amadora',1),(164,'José Hugo Gonçalves Antunes','m','1988-03-12 00:00:00','jos.968.hugo@microsoft.com','995036906','Rua Teixeira Barros n.º700 3º Drt','Coimbra',1),(165,'Eduardo Salvador Monteiro Batista','m','1999-08-27 00:00:00','eduardo.746.salvador@hotmail.com','990757434','Avenida Pinheiro Coelho n.º259 2º Drt','Viseu',1),(166,'Dinis Santiago Sousa Azevedo','m','1973-06-07 00:00:00','dinis.19.santiago@microsoft.com','986132423','Rua Moreira Raposo n.º352 2º Drt','Faro',1),(167,'Leonardo Santiago Lima Tavares','m','1967-02-26 00:00:00','leonardo.773.santiago@hotmail.com','991589172','Avenida Pinheiro Azevedo n.º229 2º Esq','Vila Real',1),(168,'Eduarda Diana Nunes Barros','f','1964-05-16 00:00:00','eduarda.865.diana@hotmail.com','928786423','Rua Antunes Nunes n.º376 2º Esq','Lisboa',1),(169,'Eduardo Rui Coelho Castro','m','1992-08-12 00:00:00','eduardo.501.rui@hotmail.com','908745126','Avenida Figueiredo Pires n.º969 4º Drt','Faro',1),(170,'Eduardo Nuno Lopes Coelho','m','1981-05-23 00:00:00','eduardo.720.nuno@microsoft.com','959284449','Avenida Rodrigues Nunes n.º408 4º Drt','Beja',1),(171,'Elisa Margarida Costa Freitas','f','1973-07-24 00:00:00','elisa.146.margarida@hotmail.com','972721036','Rua Martins Castro n.º697 3º Esq','Lisboa',1),(172,'Amélia Marta Cunha Simões','f','1952-11-04 00:00:00','amia.910.marta@microsoft.com','976975196','Avenida Jesus Sousa n.º525 5º Esq','Lisboa',1),(173,'Lourenço Nuno Lopes Jesus','m','1983-09-21 00:00:00','louren.104.nuno@gmail.com','903071821','Rua Magalhães Henriques n.º801 1º Drt','Faro',1),(174,'Helena Rita Gonçalves Raposo','f','1977-01-08 00:00:00','helena.812.rita@gmail.com','981145174','Praça Guerreiro Oliveira n.º321 4º Drt','Braga',1),(175,'Diana Eduarda Tavares Martins','f','1991-07-23 00:00:00','diana.336.eduarda@microsoft.com','905488761','Praça Simões Martins n.º599 2º Esq','Guarda',1),(176,'Alexandre Diogo Jesus Rocha','m','1951-10-08 00:00:00','alexandre.384.diogo@microsoft.com','932327516','Avenida Moreira Pires n.º454 6º Esq','Lisboa',1),(177,'David Luís Lima Machado','m','1968-10-03 00:00:00','david.431.lu@microsoft.com','990395390','Praça Simões Gomes n.º220 6º Esq','Viseu',1),(178,'Francisca Luciana Neves Simões','f','1995-12-12 00:00:00','francisca.68.luciana@microsoft.com','925400091','Rua Nunes Fernandes n.º23 6º Drt','Vila Real',1),(179,'Margarida Maria Rodrigues Gonçalves','f','1959-11-07 00:00:00','margarida.184.maria@hotmail.com','998652983','Rua Pinto Castro n.º762 6º Drt','Vila Real',1),(180,'Dinis Vasco Pereira Rocha','m','1985-09-23 00:00:00','dinis.115.vasco@hotmail.com','987216038','Rua Batista Rocha n.º539 4º Esq','Viseu',1),(181,'Júlia Adriana Batista Araújo','f','1983-03-05 00:00:00','jia.280.adriana@microsoft.com','948182004','Avenida Soares Alves n.º40 4º Drt','Faro',1),(182,'João José Araújo Pereira','m','1993-12-02 00:00:00','jo.588.jos@outlook.com','900756467','Rua Ribeiro Pereira n.º214 4º Esq','Amadora',1),(183,'Santiago Rodrigo Matos Carvalho','m','1984-06-09 00:00:00','santiago.159.rodrigo@gmail.com','962423227','Rua Rodrigues Rocha n.º826 6º Esq','Viana do Castelo',1),(184,'Carolina Luciana Vieira Gonçalves','f','1995-09-19 00:00:00','carolina.22.luciana@gmail.com','919376332','Rua Sousa Antunes n.º887 4º Drt','Setúbal',1),(185,'Sofia Juliana Tavares Magalhães','f','1990-10-16 00:00:00','sofia.590.juliana@hotmail.com','961446883','Rua Cardoso Pinheiro n.º904 3º Drt','Castelo Branco',1),(186,'Afonso Leandro Antunes Soares','m','1976-04-21 00:00:00','afonso.513.leandro@microsoft.com','950443675','Rua Costa Rodrigues n.º10 1º Drt','Coimbra',1),(187,'Raquel Ana Monteiro Azevedo','f','1966-08-10 00:00:00','raquel.530.ana@outlook.com','960355495','Avenida Machado Lima n.º141 6º Drt','Braga',1),(188,'Elisa Carolina Coelho Cunha','f','1992-07-18 00:00:00','elisa.617.carolina@outlook.com','928756974','Avenida Faria Rodrigues n.º799 2º Esq','Aveiro',1),(189,'Sofia Leonor Lima Gonçalves','f','1989-09-10 00:00:00','sofia.153.leonor@outlook.com','911614809','Rua Almeida Cunha n.º602 1º Esq','Covilhã',1),(190,'Diogo Bruno Cardoso Miranda','m','2003-03-23 00:00:00','diogo.445.bruno@outlook.com','901532641','Rua Cardoso marques n.º419 3º Drt','Chaves',0),(191,'Carolina Luísa Jesus Rocha','f','2004-06-19 00:00:00','carolina.615.lua@hotmail.com','900295158','Avenida Figueiredo Santos n.º285 2º Esq','Covilhã',1),(192,'José Daniel Vieira Cruz','m','1977-05-06 00:00:00','jos.195.daniel@hotmail.com','952902181','Avenida Sousa Neves n.º880 3º Esq','Coimbra',1),(193,'Sara Amélia Cardoso Silva','f','1966-09-24 00:00:00','sara.631.amia@gmail.com','952045452','Avenida Coelho Neves n.º41 5º Drt','Setúbal',1),(194,'Mafalda Luciana Magalhães Cardoso','f','1962-09-13 00:00:00','mafalda.567.luciana@gmail.com','996852717','Rua marques Silva n.º548 6º Drt','Chaves',1),(195,'Luís Mateus Magalhães Ribeiro','m','1997-04-07 00:00:00','lu.293.mateus@microsoft.com','957497850','Rua Mendes Ferreira n.º693 3º Drt','Coimbra',1),(196,'Hugo Alexandre Soares Faria','m','1968-04-23 00:00:00','hugo.357.alexandre@gmail.com','969248467','Rua Lourenço Barbosa n.º859 6º Drt','Viana do Castelo',1),(197,'Inês Sofia Mendes Henriques','f','1963-12-07 00:00:00','in.908.sofia@gmail.com','905506437','Avenida Pereira Monteiro n.º308 4º Drt','Viana do Castelo',1),(198,'Débora Eva Castro Costa','f','1993-10-04 00:00:00','dora.480.eva@gmail.com','909920867','Avenida Matos Barbosa n.º307 6º Drt','Braga',1),(199,'Gustavo Daniel Azevedo Lourenço','m','1995-03-25 00:00:00','gustavo.854.daniel@microsoft.com','942145180','Rua Pinto Cruz n.º473 6º Drt','Beja',1),(200,'Lourenço David Costa Simões','m','1983-05-25 00:00:00','louren.441.david@hotmail.com','981815739','Rua Pinto Araújo n.º185 3º Drt','Viana do Castelo',1);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `motorista`
--

DROP TABLE IF EXISTS `motorista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `motorista` (
  `motorista_id` int(11) NOT NULL AUTO_INCREMENT,
  `motorista_nome` varchar(50) DEFAULT NULL,
  `motorista_endereco` varchar(50) DEFAULT NULL,
  `motorista_telefone` int(9) DEFAULT NULL,
  `motorista_num_cartao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`motorista_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `motorista`
--

LOCK TABLES `motorista` WRITE;
/*!40000 ALTER TABLE `motorista` DISABLE KEYS */;
INSERT INTO `motorista` VALUES (1,'Kissilone Manuel','Lisboa',921537872,'033333333333333');
/*!40000 ALTER TABLE `motorista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pneus`
--

DROP TABLE IF EXISTS `pneus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pneus` (
  `pneus_id` int(11) NOT NULL AUTO_INCREMENT,
  `pneus_marca` varchar(50) DEFAULT NULL,
  `pneus_duracao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pneus_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pneus`
--

LOCK TABLES `pneus` WRITE;
/*!40000 ALTER TABLE `pneus` DISABLE KEYS */;
INSERT INTO `pneus` VALUES (1,'Pneu 1','40h'),(2,'Pneu 2','40H'),(3,'Pneu 03','30h');
/*!40000 ALTER TABLE `pneus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id_user` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `passwrd` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'cliente1','$2y$10$ZmEpt45zmp.e7qRcDX2jcO/zvH4ji4tjbGKvJpN2R0qMV17PGm/vu'),(2,'cliente2','$2y$10$hvMMLWWVHffxj9BHIxVMhum80Ecc.2gloxbq1j7zeQEnc.trgAyyC'),(3,'cliente3','$2y$10$g94zUNQOnUI6DwdePBui3OdlqDhBONd8TLrQhhGjtWHzwt98b2u8i');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viagem`
--

DROP TABLE IF EXISTS `viagem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `viagem` (
  `viagem_id` int(11) NOT NULL AUTO_INCREMENT,
  `caminhao_id` int(11) DEFAULT NULL,
  `motorista_id` int(11) DEFAULT NULL,
  `viagem_origem` varchar(50) DEFAULT NULL,
  `viagem_destino` varchar(50) DEFAULT NULL,
  `viagem_km` varchar(50) DEFAULT NULL,
  `viagem_data_inicio` date DEFAULT NULL,
  `viagem_data_fim` date DEFAULT NULL,
  PRIMARY KEY (`viagem_id`),
  KEY `fk_viagem_caminhao` (`caminhao_id`),
  KEY `fk_viagem_motorista` (`motorista_id`),
  CONSTRAINT `fk_viagem_caminhao` FOREIGN KEY (`caminhao_id`) REFERENCES `caminhao` (`caminhao_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_viagem_motorista` FOREIGN KEY (`motorista_id`) REFERENCES `motorista` (`motorista_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `viagem_ibfk_1` FOREIGN KEY (`caminhao_id`) REFERENCES `caminhao` (`caminhao_id`),
  CONSTRAINT `viagem_ibfk_2` FOREIGN KEY (`motorista_id`) REFERENCES `motorista` (`motorista_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viagem`
--

LOCK TABLES `viagem` WRITE;
/*!40000 ALTER TABLE `viagem` DISABLE KEYS */;
INSERT INTO `viagem` VALUES (1,1,1,'Luanda','Benguela','120km','2023-06-20','2023-06-25');
/*!40000 ALTER TABLE `viagem` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-03  1:13:10
