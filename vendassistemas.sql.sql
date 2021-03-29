-- MySQL dump 10.13  Distrib 5.7.23-23, for Linux (x86_64)
--
-- Host: localhost    Database: cinero41_vendassistemas
-- ------------------------------------------------------
-- Server version	5.7.23-23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*!50717 SELECT COUNT(*) INTO @rocksdb_has_p_s_session_variables FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'performance_schema' AND TABLE_NAME = 'session_variables' */;
/*!50717 SET @rocksdb_get_is_supported = IF (@rocksdb_has_p_s_session_variables, 'SELECT COUNT(*) INTO @rocksdb_is_supported FROM performance_schema.session_variables WHERE VARIABLE_NAME=\'rocksdb_bulk_load\'', 'SELECT 0') */;
/*!50717 PREPARE s FROM @rocksdb_get_is_supported */;
/*!50717 EXECUTE s */;
/*!50717 DEALLOCATE PREPARE s */;
/*!50717 SET @rocksdb_enable_bulk_load = IF (@rocksdb_is_supported, 'SET SESSION rocksdb_bulk_load = 1', 'SET @rocksdb_dummy_bulk_load = 0') */;
/*!50717 PREPARE s FROM @rocksdb_enable_bulk_load */;
/*!50717 EXECUTE s */;
/*!50717 DEALLOCATE PREPARE s */;

--
-- Current Database: `cinero41_vendassistemas`
--


--
-- Table structure for table `alertas`
--

DROP TABLE IF EXISTS `alertas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alertas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo_alerta` varchar(20) NOT NULL,
  `titulo_mensagem` varchar(100) NOT NULL,
  `mensagem` varchar(1000) NOT NULL,
  `link` varchar(100) DEFAULT NULL,
  `imagem` varchar(100) DEFAULT NULL,
  `data` date NOT NULL,
  `ativo` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alertas`
--

LOCK TABLES `alertas` WRITE;
/*!40000 ALTER TABLE `alertas` DISABLE KEYS */;
INSERT INTO `alertas` (`id`, `titulo_alerta`, `titulo_mensagem`, `mensagem`, `link`, `imagem`, `data`, `ativo`) VALUES (4,'Video-Ecommerce','Sistema Ecommerce','Vendo todo o código font completo com banco de dado.','https://www.youtube.com/embed/2ndJuBW9S-Y','e-comerce01.jpg','2021-01-30','Não');
/*!40000 ALTER TABLE `alertas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `avaliacoes`
--

DROP TABLE IF EXISTS `avaliacoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `avaliacoes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `texto` varchar(500) NOT NULL,
  `nota` int(11) NOT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avaliacoes`
--

LOCK TABLES `avaliacoes` WRITE;
/*!40000 ALTER TABLE `avaliacoes` DISABLE KEYS */;
INSERT INTO `avaliacoes` (`id`, `id_produto`, `id_usuario`, `texto`, `nota`, `data`) VALUES (3,1,8,'Muito bom, gostei muito.',5,'2020-09-17'),(4,25,8,'Muito bom, excelente Produto!!',5,'2020-09-17'),(5,25,6,'Fiquei impressionado com a qualidade do produto, superou todas as minhas expectativas, realmente muito bom e num preço totalmente acessível, super indico!',5,'2020-09-17'),(6,34,29,'Excelente Produto, totalmente Satisfeito!',5,'2021-01-09');
/*!40000 ALTER TABLE `avaliacoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(200) NOT NULL,
  `descricao_1` varchar(1000) NOT NULL,
  `descricao_2` varchar(1000) NOT NULL,
  `imagem` varchar(150) NOT NULL,
  `data` date NOT NULL,
  `palavras` varchar(150) DEFAULT NULL,
  `nome_url` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog`
--

LOCK TABLES `blog` WRITE;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
INSERT INTO `blog` (`id`, `titulo`, `descricao_1`, `descricao_2`, `imagem`, `data`, `palavras`, `nome_url`) VALUES (1,'Titulo da Postagem do Blog','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscingLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing','curso-de-bootstrap-5.jpeg','2020-09-21','curso de bootstrap 5, novidades bootstrap 5, aulas de bootstrap 5, treinamento com bootstrap, aulas bootstrap','titulo-da-postagem-do-blog');
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carac`
--

DROP TABLE IF EXISTS `carac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carac` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carac`
--

LOCK TABLES `carac` WRITE;
/*!40000 ALTER TABLE `carac` DISABLE KEYS */;
INSERT INTO `carac` (`id`, `nome`) VALUES (1,'Tamanho'),(2,'Cor'),(3,'Numeração'),(4,'Voltagem'),(6,'Linguagem'),(7,'Mensal');
/*!40000 ALTER TABLE `carac` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carac_itens`
--

DROP TABLE IF EXISTS `carac_itens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carac_itens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_carac_prod` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `valor_item` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carac_itens`
--

LOCK TABLES `carac_itens` WRITE;
/*!40000 ALTER TABLE `carac_itens` DISABLE KEYS */;
INSERT INTO `carac_itens` (`id`, `id_carac_prod`, `nome`, `valor_item`) VALUES (1,11,'Azul','#80acf2'),(2,3,'Azul','#80acf2'),(3,3,'Vermelho','#cf4023'),(4,10,'P',''),(5,10,'M',''),(6,10,'G',''),(7,10,'GG',''),(8,3,'Amarelo',''),(9,3,'Verde',''),(12,11,'Vermelho',''),(13,15,'30 e 31',''),(14,15,'32 e 33',''),(15,16,'Marron',''),(16,16,'Preto',''),(17,17,'34/35',''),(18,17,'36/37',''),(19,18,'Azul',''),(20,20,'P',''),(22,21,'Preta','#000'),(23,21,'Azul','#939ced'),(24,22,'P',''),(25,22,'M',''),(26,22,'G',''),(27,22,'GG',''),(29,21,'Verde Escuro','#073817'),(30,21,'Verde Claro','#6fd691'),(31,21,'Laranja','#b5631b'),(32,19,'Azul','#2640bf'),(33,19,'Preta','#000'),(34,20,'M',''),(35,23,'Preto','#000'),(36,24,'P',''),(37,24,'M',''),(38,24,'G',''),(39,25,'31 e 32',''),(40,25,'33 e 34',''),(41,26,'P',''),(42,26,'M',''),(43,28,'Azul','#191970'),(44,29,'Cinza','#D3D3D3'),(45,30,'PHP7','#191970'),(46,31,'PHP7LARAVEL8','');
/*!40000 ALTER TABLE `carac_itens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carac_itens_car`
--

DROP TABLE IF EXISTS `carac_itens_car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carac_itens_car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_carrinho` int(11) NOT NULL,
  `id_carac` int(11) NOT NULL,
  `nome` varchar(35) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carac_itens_car`
--

LOCK TABLES `carac_itens_car` WRITE;
/*!40000 ALTER TABLE `carac_itens_car` DISABLE KEYS */;
INSERT INTO `carac_itens_car` (`id`, `id_carrinho`, `id_carac`, `nome`) VALUES (32,104,2,'Azul'),(33,104,1,'G'),(34,220,1,'M'),(36,223,1,'M'),(37,223,2,'Verde Escuro'),(38,220,2,'Preto'),(39,220,3,'31 e 32'),(41,315,2,'Preta'),(42,222,2,'Preto'),(43,318,2,'Azul'),(44,320,2,'Verde Escuro'),(45,321,2,'Verde Claro'),(46,322,2,'Verde Claro'),(47,323,2,'Azul'),(48,324,2,'Laranja'),(49,325,2,'Preta'),(50,326,2,'Azul'),(51,327,2,'Verde Escuro'),(52,328,2,'Laranja'),(53,329,2,'Azul'),(54,330,0,''),(55,331,2,'Verde Escuro'),(56,332,2,'Azul'),(57,333,2,'Azul'),(58,334,2,'Verde Escuro'),(59,335,2,'Verde Escuro'),(60,336,2,'Preta'),(61,337,2,'Azul'),(62,337,1,'M'),(63,338,0,''),(64,338,1,'G'),(65,339,2,'Azul'),(66,339,1,'G'),(67,340,2,'Preto'),(68,340,1,'M'),(69,340,3,'31 e 32'),(78,441,2,'Azul'),(79,441,1,'P'),(80,455,2,'Azul'),(81,455,1,'M'),(82,457,2,'Azul'),(83,457,1,'P'),(84,458,2,'Azul'),(85,458,1,'G'),(86,459,2,'Preta'),(87,459,1,'M'),(88,465,2,'Azul'),(89,465,1,'M'),(90,467,2,'Preta'),(91,467,1,'M'),(92,469,2,'Azul'),(93,469,1,'GG'),(100,473,2,'Verde Escuro'),(101,473,1,'G'),(105,492,2,'Preta'),(106,492,1,'M'),(109,497,2,'Verde Escuro'),(110,497,1,'G'),(111,498,1,'P'),(112,498,2,'Verde Escuro'),(113,499,2,'Preta'),(114,499,1,'M'),(117,504,2,'Preta'),(118,504,1,'G'),(119,505,2,'Azul'),(120,505,1,'M'),(121,509,2,'Azul'),(122,509,1,'G'),(123,510,2,'Azul'),(124,510,1,'G'),(125,512,2,'Azul'),(126,512,1,'M'),(131,543,2,'Preta'),(132,543,1,'M'),(133,545,1,'M'),(155,650,2,'Azul'),(156,650,1,'P'),(161,663,2,'Azul'),(162,663,1,'P'),(179,726,2,'Azul'),(185,740,2,'Azul'),(190,756,2,'Azul'),(191,757,2,'Verde Escuro'),(192,757,1,'GG'),(200,761,2,'Preta'),(201,761,1,'M'),(239,850,6,'PHP7'),(240,851,6,'PHP7'),(241,853,6,'PHP7'),(242,854,6,'PHP7'),(244,856,6,'PHP7'),(245,857,6,'PHP7'),(247,859,6,'PHP7'),(249,861,6,'PHP7'),(250,872,6,'PHP7'),(251,873,6,'PHP7'),(252,874,6,'PHP7LARAVEL8');
/*!40000 ALTER TABLE `carac_itens_car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carac_prod`
--

DROP TABLE IF EXISTS `carac_prod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carac_prod` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_carac` int(11) NOT NULL,
  `id_prod` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carac_prod`
--

LOCK TABLES `carac_prod` WRITE;
/*!40000 ALTER TABLE `carac_prod` DISABLE KEYS */;
INSERT INTO `carac_prod` (`id`, `id_carac`, `id_prod`) VALUES (3,2,1),(10,1,1),(11,2,3),(12,3,3),(13,1,3),(14,4,3),(15,3,1),(16,2,23),(17,3,23),(18,2,31),(19,2,30),(20,1,30),(21,2,25),(22,1,25),(23,2,22),(24,1,22),(25,3,22),(26,1,18),(27,2,15),(28,2,10),(29,2,33),(30,6,34),(31,6,35);
/*!40000 ALTER TABLE `carac_prod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carrinho`
--

DROP TABLE IF EXISTS `carrinho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carrinho` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `id_venda` int(11) NOT NULL,
  `data` date NOT NULL,
  `combo` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=888 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrinho`
--

LOCK TABLES `carrinho` WRITE;
/*!40000 ALTER TABLE `carrinho` DISABLE KEYS */;
/*!40000 ALTER TABLE `carrinho` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `nome_url` varchar(50) NOT NULL,
  `imagem` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` (`id`, `nome`, `nome_url`, `imagem`) VALUES (13,'Código font PHP7','codigo-font-php7','php1.png'),(14,'Lista-IPTV','lista-iptv','iptv1.jpg');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `rua` varchar(80) DEFAULT NULL,
  `numero` varchar(20) DEFAULT NULL,
  `complemento` varchar(50) DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `estado` varchar(5) DEFAULT NULL,
  `cep` varchar(20) DEFAULT NULL,
  `cartoes` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` (`id`, `nome`, `cpf`, `email`, `telefone`, `rua`, `numero`, `complemento`, `bairro`, `cidade`, `estado`, `cep`, `cartoes`) VALUES (25,'FABIANA S OLIVEIRA','268.901.928-00','odouglasrocha@gmail.com','(11) 94478-4343','Rua Santa Luzia','20','','Vila São Francisco','Mauá','SP','09310-690',1),(26,'WILL SILVA','061.306.422-45','wydemairomsilva@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `combos`
--

DROP TABLE IF EXISTS `combos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `combos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `nome_url` varchar(50) NOT NULL,
  `descricao` varchar(1000) NOT NULL,
  `descricao_longa` text NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `imagem` varchar(100) NOT NULL,
  `tipo_envio` int(1) NOT NULL,
  `palavras` varchar(250) NOT NULL,
  `ativo` varchar(5) NOT NULL,
  `peso` double(8,2) NOT NULL,
  `largura` double(8,2) NOT NULL,
  `altura` double(8,2) NOT NULL,
  `comprimento` double(8,2) NOT NULL,
  `valor_frete` decimal(10,2) DEFAULT NULL,
  `vendas` int(11) DEFAULT NULL,
  `link` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `combos`
--

LOCK TABLES `combos` WRITE;
/*!40000 ALTER TABLE `combos` DISABLE KEYS */;
INSERT INTO `combos` (`id`, `nome`, `nome_url`, `descricao`, `descricao_longa`, `valor`, `imagem`, `tipo_envio`, `palavras`, `ativo`, `peso`, `largura`, `altura`, `comprimento`, `valor_frete`, `vendas`, `link`) VALUES (5,'Ativar 3 Aparelhos Plano-Mensal','ativar-3-aparelhos-plano-mensal','Essa pormoção é valida para 3 conexão de sua escolha. Podendo escolher entre Tv, Smartphone, Computadores ou 3 Tvs.',' +1400Mil em conteúdos (Canais, Filmes e Séries)\r\n3 Conexões Simultâneas\r\n4k Qualidade 4K| HDR| H265| FHD|HD|SD\r\n Canais Adultos (Opcional)\r\n 50+ Rádios Online /\r\n Aplicativo para Android\r\n Aplicativo para Computador\r\n Player para Navegador\r\n Guia de Programação (EPG)/\r\n Compatível no Smartphone/\r\n Compatível no Tablet/\r\n Compatível no Computador/\r\n Compatível na Smart TV/',76.50,'iptv-combo.jpg',8,'iptv','Sim',0.02,0.50,0.20,0.00,0.00,NULL,'');
/*!40000 ALTER TABLE `combos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coment_blog`
--

DROP TABLE IF EXISTS `coment_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coment_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_blog` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `comentario` varchar(500) NOT NULL,
  `data` date NOT NULL,
  `hora` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coment_blog`
--

LOCK TABLES `coment_blog` WRITE;
/*!40000 ALTER TABLE `coment_blog` DISABLE KEYS */;
INSERT INTO `coment_blog` (`id`, `id_blog`, `id_usuario`, `comentario`, `data`, `hora`) VALUES (1,3,6,'Sempre tive dúvidas quanto a isso, muitas das vezes não conseguia diferenciar bem, sua postagem me ajudou muito, vou prestar mais atenção, grato.','2020-09-21','13:21:49'),(5,3,8,'cccccccccc','2020-09-21','13:47:45');
/*!40000 ALTER TABLE `coment_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cupons`
--

DROP TABLE IF EXISTS `cupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cupons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(35) NOT NULL,
  `desconto` decimal(8,2) NOT NULL,
  `codigo` varchar(35) NOT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cupons`
--

LOCK TABLES `cupons` WRITE;
/*!40000 ALTER TABLE `cupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `cupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails`
--

DROP TABLE IF EXISTS `emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `ativo` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails`
--

LOCK TABLES `emails` WRITE;
/*!40000 ALTER TABLE `emails` DISABLE KEYS */;
INSERT INTO `emails` (`id`, `nome`, `email`, `ativo`) VALUES (1,'Orlando Rocha','contato@cinerocha.com.br','Sim'),(25,'FABIANA S OLIVEIRA','odouglasrocha@gmail.com','Sim'),(27,'CORPARE','contato@corpare.com.br','sim'),(29,'Buona Pelle','contato@centrodeesteticabuonapelle','sim'),(33,'ESTETI','comercial@esteti.com.br','sim'),(34,'Clinica Dona','contato@clinicadona.com.br',''),(35,'ESTETI','comercial@esteti.com.br','sim'),(36,'Clinica Dona','contato@clinicadona.com.br','');
/*!40000 ALTER TABLE `emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `envios_email`
--

DROP TABLE IF EXISTS `envios_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `envios_email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` datetime NOT NULL,
  `final` int(11) NOT NULL,
  `assunto` varchar(100) NOT NULL,
  `mensagem` varchar(1000) NOT NULL,
  `link` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `envios_email`
--

LOCK TABLES `envios_email` WRITE;
/*!40000 ALTER TABLE `envios_email` DISABLE KEYS */;
INSERT INTO `envios_email` (`id`, `data`, `final`, `assunto`, `mensagem`, `link`) VALUES (4,'2021-01-12 00:00:00',0,'','','');
/*!40000 ALTER TABLE `envios_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imagens`
--

DROP TABLE IF EXISTS `imagens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imagens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `imagem` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagens`
--

LOCK TABLES `imagens` WRITE;
/*!40000 ALTER TABLE `imagens` DISABLE KEYS */;
INSERT INTO `imagens` (`id`, `id_produto`, `imagem`) VALUES (11,1,'cat-4.jpg'),(13,3,'cat-2.jpg'),(14,3,'cat-4.jpg'),(15,3,'cat-7.jpg'),(16,1,'cat-6.jpg'),(19,31,'cat-4.jpg'),(21,25,'ca misa social.jpg'),(22,25,'Blusa-azul.jpg'),(23,25,'Blusa Ver.jpg'),(24,25,'Polo Marinho.jpg'),(25,25,'Blue.jpg');
/*!40000 ALTER TABLE `imagens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mensagem`
--

DROP TABLE IF EXISTS `mensagem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mensagem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_venda` int(11) NOT NULL,
  `texto` varchar(1000) NOT NULL,
  `usuario` varchar(25) NOT NULL,
  `data` date NOT NULL,
  `hora` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensagem`
--

LOCK TABLES `mensagem` WRITE;
/*!40000 ALTER TABLE `mensagem` DISABLE KEYS */;
INSERT INTO `mensagem` (`id`, `id_venda`, `texto`, `usuario`, `data`, `hora`) VALUES (7,43,'Mensagem Teste','Cliente','2020-09-15','00:00:00'),(9,43,'Pergunta do Admin','Admin','2020-09-15','00:00:00'),(15,43,'Cliente Respondeu','Admin','2020-09-15','13:37:59'),(16,42,'Pergunta do cliente sobre...','Cliente','2020-09-15','14:01:25'),(17,42,'Resposta do Admin','Admin','2020-09-15','14:26:59'),(18,42,'Mudança de status no pedido, pedido Disponivel','Admin','2020-09-15','15:19:45'),(19,42,'Mudança de status no pedido, pedido Entregue','Admin','2020-09-15','15:20:34'),(20,42,'Mudança de status no pedido, pedido Entregue','Admin','2020-09-15','15:27:39'),(21,42,'Obrigado','Cliente','2020-09-15','15:32:48'),(22,40,'Seu pedido foi Enviado, o código de rastreio é JR065666652','Admin','2020-09-15','15:38:18'),(23,44,'Parab?ns, voc? ganhou um novo cupom de desconto, poder? usar at? o dia 22/09/2020 o seu c?digo para uso do cupom ? 214.569.999-99','Admin','2020-09-15','17:32:02'),(24,45,'Parabéns, você ganhou um novo cupom de desconto no valor de 20 reais, poderá usar até o dia 22/09/2020 o seu código para uso do cupom é 214.569.999-99','Admin','2020-09-15','17:40:39'),(25,46,'Parabéns, você ganhou um novo cupom de desconto no valor de 20 reais, poderá usar até o dia 22/09/2020 o seu código para uso do cupom é 214.569.999-99','Admin','2020-09-15','18:19:56'),(26,43,'Mudança de status no pedido, pedido Não Enviado','Admin','2020-09-15','18:53:38'),(27,47,'Seu pedido foi Enviado, o código de rastreio é JR065666652','Admin','2020-09-15','19:10:46'),(28,43,'Parabéns, você ganhou um novo cupom de desconto no valor de 20 reais, poderá usar até o dia 22/09/2020 o seu código para uso do cupom é 214.569.999-99','Admin','2020-09-15','19:13:33'),(29,64,'Seu pedido foi Enviado, o código de rastreio é JR065666652','Admin','2020-09-21','18:01:57'),(30,88,'teste','Cliente','2020-12-30','14:37:03'),(31,89,'Seu pedido foi Enviado, o código de rastreio é 352GTYHHHJUUIKKOOPPPIIIYY66YTTT5TR','Admin','2020-12-31','15:34:47'),(32,0,'Mudança de status no pedido, pedido ','Admin','2021-01-01','23:13:33'),(33,106,'https://drive.google.com/drive/folders/1djzP78fTrRToYwFqDJ775IBzl7yzU0kP?usp=sharing','Admin','2021-01-09','15:33:10');
/*!40000 ALTER TABLE `mensagem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prod_combos`
--

DROP TABLE IF EXISTS `prod_combos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prod_combos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `id_combo` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prod_combos`
--

LOCK TABLES `prod_combos` WRITE;
/*!40000 ALTER TABLE `prod_combos` DISABLE KEYS */;
INSERT INTO `prod_combos` (`id`, `id_produto`, `id_combo`) VALUES (9,24,1),(10,25,1),(13,30,1),(14,23,1),(15,30,3),(18,24,3),(19,22,3),(20,32,4);
/*!40000 ALTER TABLE `prod_combos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produtos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` int(11) NOT NULL,
  `sub_categoria` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `nome_url` varchar(100) NOT NULL,
  `descricao` varchar(1000) NOT NULL,
  `descricao_longa` text NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `imagem` varchar(100) NOT NULL,
  `estoque` int(11) NOT NULL,
  `tipo_envio` int(11) NOT NULL,
  `palavras` varchar(250) NOT NULL,
  `ativo` varchar(5) NOT NULL,
  `peso` double(8,2) DEFAULT NULL,
  `largura` int(11) DEFAULT NULL,
  `altura` int(11) DEFAULT NULL,
  `comprimento` int(11) DEFAULT NULL,
  `modelo` varchar(100) DEFAULT NULL,
  `valor_frete` decimal(8,2) DEFAULT NULL,
  `promocao` varchar(5) NOT NULL,
  `vendas` int(11) DEFAULT NULL,
  `link` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` (`id`, `categoria`, `sub_categoria`, `nome`, `nome_url`, `descricao`, `descricao_longa`, `valor`, `imagem`, `estoque`, `tipo_envio`, `palavras`, `ativo`, `peso`, `largura`, `altura`, `comprimento`, `modelo`, `valor_frete`, `promocao`, `vendas`, `link`) VALUES (34,13,16,'E-commerce PDO Loja Virtual','e-commerce-pdo-loja-virtual','Técnologias Usadas (PDO, AJax, PHP7, HTML5, Javascript, Jquery, Mysql, Bootstrap 4)',' <iframe class=\"row\" width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/2ndJuBW9S-Y\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>',45.00,'e-comerce01.jpg',100,12,'Ecommerce','Sim',0.90,1,0,2,'PHP701',0.00,'Não',2,'https://www.youtube.com/embed/2ndJuBW9S-Y'),(35,13,16,'Sistema para Auto Escola','sistema-para-auto-escola','Técnologias Usadas (PHP 7.3, Bootstrap4, CSS3, Jquery, Laravel 8 e Banco de Dados Mysql)','<iframe clesse=\"row\" width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ImZ92oCcTDg\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>',30.00,'autoescola2.png',100,12,'auto escola','Sim',0.02,1,0,0,'PHP702LARAVEL',0.00,'Não',NULL,''),(36,13,16,'Sistema para Portal de Cursos EAD','sistema-para-portal-de-cursos-ead','Técnologias Usadas (Sistemas com PHP7, Banco de Dados Mysql, Html5, CSS3, Javascript)','<iframe classe=\"row\" width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/vJUS4aXbTfc\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>',35.00,'portal-de-curso1.png',100,12,'Portal de cursos','Sim',0.02,1,0,0,'PHP703',0.00,'Não',NULL,''),(37,14,17,'Lista-iptv Plano Mensal','lista-iptv-plano-mensal','Canal Combate ,  Canais HBO   Canais Telecine,   Canais Premiere,   Canais ESPN ,  Canais Abertos,   Filmes e Séries (Vods),   Canais 24 Horas,   Canais SD ,  Canais HD,   Canais FullHD,   Canais 4K.',' Mais de 1400 Canais,\r\n Filmes e Séries OnDemand,\r\n Canais FullHD,\r\n Canais 24 horas,\r\n Canais 4K,\r\n Canais Internacionais,\r\n Canais Adultos,',30.00,'itv2.jpg',100,8,'iptv','Sim',0.90,1,0,0,'IPTV01',0.00,'Não',NULL,''),(38,13,16,'Sistema Hospitalar PDO - PHP7 e Mysql','sistema-hospitalar-pdo-php7-e-mysql','Técnologias, Usadas (PHP7 com PDO Estruturado, Sistemas de Agendamento de Consultas, Sistema para Hospitais, Ajax, Javascript, Jquery)','<iframe class=\"row\" width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/sKp93SGDVk4\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>',45.00,'sistema.jpg',100,12,'sistema hospitalar','Sim',0.02,1,0,0,'PHP704',0.00,'Não',NULL,''),(39,13,16,'Sistema pra Delivery ','sistema-pra-delivery','Técnologias Usadas (PDO, AJax, PHP7, HTML5, Javascript, Jquery, Mysql, Bootstrap 4)','<iframe classe=\"row\" width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/7r_zlQPanN0\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>\r\n\r\n',40.00,'delivery-0.jpg',100,8,'Delivery','Sim',0.02,1,0,0,'PHP705',0.00,'Não',NULL,'');
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promocao_banner`
--

DROP TABLE IF EXISTS `promocao_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promocao_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) NOT NULL,
  `link` varchar(100) NOT NULL,
  `imagem` varchar(100) NOT NULL,
  `ativo` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promocao_banner`
--

LOCK TABLES `promocao_banner` WRITE;
/*!40000 ALTER TABLE `promocao_banner` DISABLE KEYS */;
INSERT INTO `promocao_banner` (`id`, `titulo`, `link`, `imagem`, `ativo`) VALUES (5,'Sistema','http://www.vendassistemas.com.br/produto-e-commerce-pdo-loja-virtual','ecomerce2.jpg','Não'),(6,'Promoçâo 3 conexão pra 3 aparelhos','https://www.vendassistemas.com.br/combos.php','bannertv1.jpg','Sim'),(7,'Sistema - Completo','https://www.vendassistemas.com.br/produto-sistema-hospitalar-pdo-php7-e-mysql','banner.jpg','Sim');
/*!40000 ALTER TABLE `promocao_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promocoes`
--

DROP TABLE IF EXISTS `promocoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promocoes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `data_inicio` date NOT NULL,
  `data_final` date NOT NULL,
  `ativo` varchar(5) NOT NULL,
  `desconto` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promocoes`
--

LOCK TABLES `promocoes` WRITE;
/*!40000 ALTER TABLE `promocoes` DISABLE KEYS */;
INSERT INTO `promocoes` (`id`, `id_produto`, `valor`, `data_inicio`, `data_final`, `ativo`, `desconto`) VALUES (2,31,30.00,'2020-08-30','2020-09-01','Sim',''),(3,30,104.99,'2020-08-31','2020-09-30','Sim','25'),(4,29,35.00,'2020-08-24','2020-09-02','Não',''),(5,28,50.00,'2020-08-31','2020-09-08','Sim',''),(6,25,45.00,'2020-09-02','2020-09-25','Sim','10'),(7,24,0.40,'2020-09-02','2020-09-30','Sim','0'),(8,22,89.91,'2020-09-02','2020-09-04','Sim','10'),(9,18,170.99,'2020-09-02','2020-09-02','Sim','10'),(10,23,75.00,'2020-09-09','2020-09-30','Sim','50');
/*!40000 ALTER TABLE `promocoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_categorias`
--

DROP TABLE IF EXISTS `sub_categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sub_categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `nome_url` varchar(50) NOT NULL,
  `imagem` varchar(100) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_categorias`
--

LOCK TABLES `sub_categorias` WRITE;
/*!40000 ALTER TABLE `sub_categorias` DISABLE KEYS */;
INSERT INTO `sub_categorias` (`id`, `nome`, `nome_url`, `imagem`, `id_categoria`) VALUES (16,'Sistemas WEB','sistemas-web','sistemasweb1.png',13),(17,'Plano Mensal','plano-mensal','iptv4.png',14);
/*!40000 ALTER TABLE `sub_categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_envios`
--

DROP TABLE IF EXISTS `tipo_envios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_envios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_envios`
--

LOCK TABLES `tipo_envios` WRITE;
/*!40000 ALTER TABLE `tipo_envios` DISABLE KEYS */;
INSERT INTO `tipo_envios` (`id`, `nome`) VALUES (6,'Correios'),(7,'Valor Fixo'),(8,'Sem Frete'),(10,'Digital'),(11,'jadlog'),(12,'Anexo-email');
/*!40000 ALTER TABLE `tipo_envios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(35) NOT NULL,
  `senha_crip` varchar(150) NOT NULL,
  `nivel` varchar(20) NOT NULL,
  `imagem` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `email`, `senha`, `senha_crip`, `nivel`, `imagem`) VALUES (1,'Orlando Douglas Rocha','26890192800','contato@vendassistemas.com.br','Or280577fa##','d4558e50809c9ca944d7de6ac04c840a','Admin','imagem_perfil.jpg'),(29,'FABIANA S OLIVEIRA','268.901.928-00','odouglasrocha@gmail.com','Or250912fa##','e925ea928b5874ab845cb8aa7d92dbf6','Cliente',NULL),(30,'WILL SILVA','061.306.422-45','wydemairomsilva@gmail.com','3llcb233','4e128e897f20b543f7cf1a8e7df95d59','Cliente',NULL);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendas`
--

DROP TABLE IF EXISTS `vendas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_total` decimal(10,2) NOT NULL,
  `frete` decimal(8,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `pago` varchar(5) NOT NULL,
  `data` date NOT NULL,
  `status` varchar(35) NOT NULL,
  `rastreio` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendas`
--

LOCK TABLES `vendas` WRITE;
/*!40000 ALTER TABLE `vendas` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'cinero41_vendassistemas'
--

--
-- Dumping routines for database 'cinero41_vendassistemas'
--
/*!50112 SET @disable_bulk_load = IF (@is_rocksdb_supported, 'SET SESSION rocksdb_bulk_load = @old_rocksdb_bulk_load', 'SET @dummy_rocksdb_bulk_load = 0') */;
/*!50112 PREPARE s FROM @disable_bulk_load */;
/*!50112 EXECUTE s */;
/*!50112 DEALLOCATE PREPARE s */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-12 12:56:43
