-- MySQL dump 10.13  Distrib 8.0.21, for Linux (x86_64)
--
-- Host: localhost    Database: odm
-- ------------------------------------------------------
-- Server version	8.0.21-0ubuntu0.20.04.4

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `acc`
--

DROP TABLE IF EXISTS `acc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acc` (
  `t_id` int NOT NULL AUTO_INCREMENT,
  `a_key` varchar(10) DEFAULT NULL,
  `lbl` varchar(150) NOT NULL,
  `alt` varchar(350) DEFAULT NULL,
  `at_id` int DEFAULT NULL,
  `a_pc` varchar(1) NOT NULL DEFAULT 'n',
  `a_kind` varchar(1) NOT NULL DEFAULT 'n',
  `a_form` int DEFAULT NULL,
  `org_id` int DEFAULT NULL,
  `par_id` int DEFAULT NULL,
  `is_grp` varchar(1) DEFAULT 'n',
  `ref_c` int DEFAULT '0',
  `p_t_id` int DEFAULT NULL,
  `n_t_id` int DEFAULT NULL,
  `ver` int DEFAULT '0',
  `s_date` date NOT NULL,
  `e_date` date DEFAULT NULL,
  `v_last` varchar(1) DEFAULT 'y',
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`t_id`,`own_i`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc`
--

LOCK TABLES `acc` WRITE;
/*!40000 ALTER TABLE `acc` DISABLE KEYS */;
/*!40000 ALTER TABLE `acc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acc_bal`
--

DROP TABLE IF EXISTS `acc_bal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acc_bal` (
  `acc_id` int NOT NULL,
  `y_mon` int NOT NULL,
  `dt_t` decimal(19,2) DEFAULT '0.00',
  `ct_t` decimal(19,2) DEFAULT '0.00',
  `dt_bal` decimal(19,2) DEFAULT '0.00',
  `ct_bal` decimal(19,2) DEFAULT '0.00',
  `org_id` int DEFAULT NULL,
  `dep_id` int DEFAULT NULL,
  `sch_id` int DEFAULT NULL,
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`acc_id`,`own_i`,`y_mon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_bal`
--

LOCK TABLES `acc_bal` WRITE;
/*!40000 ALTER TABLE `acc_bal` DISABLE KEYS */;
/*!40000 ALTER TABLE `acc_bal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acc_c`
--

DROP TABLE IF EXISTS `acc_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acc_c` (
  `acc_id` int NOT NULL,
  `acc_b` decimal(19,2) DEFAULT '0.00',
  `acc_r` decimal(19,2) DEFAULT '0.00',
  `acc_rep` decimal(19,2) DEFAULT '0.00',
  `org_id` int DEFAULT NULL,
  `dep_id` int DEFAULT NULL,
  `sch_id` int DEFAULT NULL,
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`acc_id`,`own_i`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_c`
--

LOCK TABLES `acc_c` WRITE;
/*!40000 ALTER TABLE `acc_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `acc_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acc_corr_a`
--

DROP TABLE IF EXISTS `acc_corr_a`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acc_corr_a` (
  `ca_id` int NOT NULL,
  `dt_aid` int NOT NULL,
  `ct_aid` int NOT NULL,
  `lbl` varchar(150) NOT NULL,
  `alt` varchar(350) DEFAULT NULL,
  `org_id` int DEFAULT NULL,
  `dep_id` int DEFAULT NULL,
  `sch_id` int DEFAULT NULL,
  `ver` int DEFAULT '0',
  `s_date` date NOT NULL,
  `e_date` date DEFAULT NULL,
  `v_last` varchar(1) DEFAULT 'y',
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`ca_id`,`own_i`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_corr_a`
--

LOCK TABLES `acc_corr_a` WRITE;
/*!40000 ALTER TABLE `acc_corr_a` DISABLE KEYS */;
/*!40000 ALTER TABLE `acc_corr_a` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acc_corr_al`
--

DROP TABLE IF EXISTS `acc_corr_al`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acc_corr_al` (
  `ca_id` int NOT NULL,
  `lang` int NOT NULL,
  `lbl` varchar(150) NOT NULL,
  `alt` varchar(350) DEFAULT NULL,
  `ver` int DEFAULT '0',
  `s_date` date NOT NULL,
  `e_date` date DEFAULT NULL,
  `v_last` varchar(1) DEFAULT 'y',
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`ca_id`,`own_i`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_corr_al`
--

LOCK TABLES `acc_corr_al` WRITE;
/*!40000 ALTER TABLE `acc_corr_al` DISABLE KEYS */;
/*!40000 ALTER TABLE `acc_corr_al` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acc_ex_rate`
--

DROP TABLE IF EXISTS `acc_ex_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acc_ex_rate` (
  `currency_id` int NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `er_date` date NOT NULL,
  `er_country` int NOT NULL,
  `ex_rate` decimal(10,2) NOT NULL,
  `s_date` date NOT NULL,
  `e_date` date DEFAULT NULL,
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`currency_id`,`own_i`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_ex_rate`
--

LOCK TABLES `acc_ex_rate` WRITE;
/*!40000 ALTER TABLE `acc_ex_rate` DISABLE KEYS */;
/*!40000 ALTER TABLE `acc_ex_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acc_journal`
--

DROP TABLE IF EXISTS `acc_journal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acc_journal` (
  `j_id` int NOT NULL,
  `j_date` date NOT NULL,
  `j_type` int NOT NULL,
  `p_j_id` int DEFAULT NULL,
  `n_j_id` int DEFAULT NULL,
  `org_id` int NOT NULL,
  `sch_id` int DEFAULT NULL,
  `dep_id` int DEFAULT NULL,
  `j_sum` decimal(19,2) DEFAULT NULL,
  `ass_id` int DEFAULT NULL,
  `created_time` timestamp NOT NULL,
  `j_seq` timestamp NOT NULL,
  `entry_count` int DEFAULT NULL,
  `ver` int DEFAULT '0',
  `s_date` date NOT NULL,
  `e_date` date DEFAULT NULL,
  `v_last` varchar(1) DEFAULT 'y',
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`j_id`,`own_i`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_journal`
--

LOCK TABLES `acc_journal` WRITE;
/*!40000 ALTER TABLE `acc_journal` DISABLE KEYS */;
/*!40000 ALTER TABLE `acc_journal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acc_journal_entry`
--

DROP TABLE IF EXISTS `acc_journal_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acc_journal_entry` (
  `j_id` int NOT NULL,
  `e_id` int NOT NULL,
  `p_e_id` int DEFAULT NULL,
  `n_e_id` int DEFAULT NULL,
  `e_cur` varchar(3) NOT NULL,
  `e_csum` decimal(19,2) NOT NULL,
  `e_erb` decimal(10,2) DEFAULT NULL,
  `e_dt` int DEFAULT NULL,
  `e_ct` int DEFAULT NULL,
  `e_dtq` decimal(15,5) DEFAULT NULL,
  `e_ctq` decimal(15,5) DEFAULT NULL,
  `e_measure` int DEFAULT NULL,
  `ass_id` int DEFAULT NULL,
  `e_created` timestamp NULL DEFAULT NULL,
  `e_df` int DEFAULT NULL,
  `e_detail` json DEFAULT NULL,
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`j_id`,`own_i`,`e_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_journal_entry`
--

LOCK TABLES `acc_journal_entry` WRITE;
/*!40000 ALTER TABLE `acc_journal_entry` DISABLE KEYS */;
/*!40000 ALTER TABLE `acc_journal_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acc_l`
--

DROP TABLE IF EXISTS `acc_l`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acc_l` (
  `t_id` int NOT NULL,
  `lang` int NOT NULL DEFAULT '0',
  `lbl` varchar(150) NOT NULL,
  `alt` varchar(350) DEFAULT NULL,
  `ver` int DEFAULT '0',
  `s_date` date NOT NULL,
  `e_date` date DEFAULT NULL,
  `v_last` varchar(1) DEFAULT 'y',
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`t_id`,`own_i`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_l`
--

LOCK TABLES `acc_l` WRITE;
/*!40000 ALTER TABLE `acc_l` DISABLE KEYS */;
/*!40000 ALTER TABLE `acc_l` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acc_type`
--

DROP TABLE IF EXISTS `acc_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acc_type` (
  `at_id` int NOT NULL AUTO_INCREMENT,
  `lang` int NOT NULL,
  `lbl` varchar(150) NOT NULL,
  `alt` varchar(350) DEFAULT NULL,
  `ver` int DEFAULT '0',
  `s_date` date NOT NULL,
  `e_date` date DEFAULT NULL,
  `v_last` varchar(1) DEFAULT 'y',
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`at_id`,`own_i`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_type`
--

LOCK TABLES `acc_type` WRITE;
/*!40000 ALTER TABLE `acc_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `acc_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bps`
--

DROP TABLE IF EXISTS `bps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bps` (
  `bps_id` int NOT NULL,
  `bp_id` int NOT NULL,
  `sn` int NOT NULL,
  `me` int DEFAULT '0',
  `py` int DEFAULT NULL,
  `pi` int DEFAULT NULL,
  `pbp` int DEFAULT NULL,
  `psn` int DEFAULT NULL,
  `usr_id` int DEFAULT NULL,
  `org_id` int DEFAULT NULL,
  `sch_id` int DEFAULT NULL,
  `dep_id` int DEFAULT NULL,
  `ass_id` int DEFAULT NULL,
  `evt` varchar(32) NOT NULL,
  `ei` int DEFAULT NULL,
  `ff` varchar(1) NOT NULL,
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `s_time` timestamp NOT NULL,
  `e_time` timestamp NULL DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`bps_id`,`own_i`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bps`
--

LOCK TABLES `bps` WRITE;
/*!40000 ALTER TABLE `bps` DISABLE KEYS */;
/*!40000 ALTER TABLE `bps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bps_c`
--

DROP TABLE IF EXISTS `bps_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bps_c` (
  `bpss_id` int NOT NULL,
  `ass_id` int NOT NULL,
  `org_id` int DEFAULT NULL,
  `dep_id` int DEFAULT NULL,
  `sch_id` int DEFAULT NULL,
  `bps_id` int DEFAULT NULL,
  `per_id` int DEFAULT NULL,
  `s_comment` text,
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`bpss_id`,`own_i`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bps_c`
--

LOCK TABLES `bps_c` WRITE;
/*!40000 ALTER TABLE `bps_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `bps_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bps_f`
--

DROP TABLE IF EXISTS `bps_f`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bps_f` (
  `bpss_id` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `ass_id` int NOT NULL,
  `fid` bigint NOT NULL,
  `fn` varchar(1000) DEFAULT NULL,
  `fh` varchar(1000) DEFAULT NULL,
  `fs` int DEFAULT NULL,
  `fmt` varchar(150) DEFAULT NULL,
  `fmd` timestamp NULL DEFAULT NULL,
  `fext` varchar(50) DEFAULT NULL,
  `fp` varchar(1000) DEFAULT NULL,
  `fdel` varchar(1) DEFAULT NULL,
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`bpss_id`,`own_i`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bps_f`
--

LOCK TABLES `bps_f` WRITE;
/*!40000 ALTER TABLE `bps_f` DISABLE KEYS */;
/*!40000 ALTER TABLE `bps_f` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bps_s`
--

DROP TABLE IF EXISTS `bps_s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bps_s` (
  `bps_id` int NOT NULL,
  `step_i` int NOT NULL,
  `bps_y` int NOT NULL,
  `bp_id` int NOT NULL,
  `step_n` int NOT NULL,
  `tc` int DEFAULT '0',
  `thc` int DEFAULT '0',
  `ff` varchar(1) DEFAULT 'n',
  `p_sy` int DEFAULT NULL,
  `p_oi` int DEFAULT NULL,
  `p_bi` int DEFAULT NULL,
  `p_si` int DEFAULT NULL,
  `p_bpi` int DEFAULT NULL,
  `p_sn` int DEFAULT NULL,
  `me` int DEFAULT NULL,
  `m_deg` int DEFAULT NULL,
  `s_deg` int DEFAULT NULL,
  `org_id` int NOT NULL,
  `dep_id` int DEFAULT NULL,
  `sch_id` int DEFAULT NULL,
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `s_time` timestamp NOT NULL,
  `e_time` timestamp NULL DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`bps_id`,`own_i`,`step_i`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bps_s`
--

LOCK TABLES `bps_s` WRITE;
/*!40000 ALTER TABLE `bps_s` DISABLE KEYS */;
/*!40000 ALTER TABLE `bps_s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bps_s_to`
--

DROP TABLE IF EXISTS `bps_s_to`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bps_s_to` (
  `bpss_id` int NOT NULL,
  `purpose` varchar(32) NOT NULL,
  `s_time` timestamp NULL DEFAULT NULL,
  `i_time` int DEFAULT NULL,
  `org_id` int NOT NULL,
  `usr_id` int NOT NULL,
  `ass_id` int NOT NULL,
  `fr_org_id` int DEFAULT NULL,
  `fr_ass_id` int DEFAULT NULL,
  `fr_per_id` int DEFAULT NULL,
  `t_desc` varchar(250) DEFAULT NULL,
  `status` int NOT NULL,
  `c_year` int NOT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`bpss_id`,`own_i`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bps_s_to`
--

LOCK TABLES `bps_s_to` WRITE;
/*!40000 ALTER TABLE `bps_s_to` DISABLE KEYS */;
/*!40000 ALTER TABLE `bps_s_to` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bps_t`
--

DROP TABLE IF EXISTS `bps_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bps_t` (
  `bps_id` int NOT NULL,
  `bp_id` int NOT NULL,
  `step_n` int NOT NULL,
  `step_i` int NOT NULL,
  `ass_id` int NOT NULL,
  `usr_id` int DEFAULT NULL,
  `sch_id` int DEFAULT NULL,
  `tp` varchar(32) DEFAULT NULL,
  `start_t` timestamp NOT NULL,
  `end_t` timestamp NULL DEFAULT NULL,
  `ud` int DEFAULT NULL,
  `ud_t` timestamp NULL DEFAULT NULL,
  `f_oi` int DEFAULT NULL,
  `f_bi` int DEFAULT NULL,
  `f_bpi` int DEFAULT NULL,
  `f_sn` int DEFAULT NULL,
  `f_si` int DEFAULT NULL,
  `f_ass` int DEFAULT NULL,
  `f_usr` int DEFAULT NULL,
  `f_sch` int DEFAULT NULL,
  `ff` varchar(1) NOT NULL,
  `td` varchar(250) DEFAULT NULL,
  `me` int DEFAULT NULL,
  `m_deg` int DEFAULT NULL,
  `s_deg` int DEFAULT NULL,
  `t_typ` varchar(1) DEFAULT NULL,
  `t_id` int DEFAULT NULL,
  `t_fc` varchar(32) DEFAULT NULL,
  `t_post` int DEFAULT NULL,
  `org_id` int NOT NULL,
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`bps_id`,`own_i`,`step_i`,`ass_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bps_t`
--

LOCK TABLES `bps_t` WRITE;
/*!40000 ALTER TABLE `bps_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `bps_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bps_td`
--

DROP TABLE IF EXISTS `bps_td`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bps_td` (
  `bps_id` int NOT NULL,
  `step_i` int NOT NULL,
  `bp_id` int DEFAULT NULL,
  `step_n` int DEFAULT NULL,
  `ass_id` int NOT NULL,
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `di` blob,
  `own_i` int NOT NULL,
  PRIMARY KEY (`bps_id`,`own_i`,`step_i`,`ass_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bps_td`
--

LOCK TABLES `bps_td` WRITE;
/*!40000 ALTER TABLE `bps_td` DISABLE KEYS */;
/*!40000 ALTER TABLE `bps_td` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `d_contract`
--

DROP TABLE IF EXISTS `d_contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `d_contract` (
  `c_id` int NOT NULL,
  `c_num` varchar(30) NOT NULL,
  `c_kind` int NOT NULL,
  `c_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `c_start` date NOT NULL,
  `c_end` date DEFAULT NULL,
  `c_sum` decimal(19,2) DEFAULT NULL,
  `c_ins` int DEFAULT NULL,
  `is_agr` varchar(1) DEFAULT 'n',
  `cp_c` int DEFAULT '0',
  `lbl` varchar(150) NOT NULL,
  `alt` varchar(350) DEFAULT NULL,
  `ver` int DEFAULT '0',
  `s_date` date NOT NULL,
  `e_date` date DEFAULT NULL,
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`c_id`,`own_i`,`c_year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
/*!50100 PARTITION BY HASH (`c_year`)
PARTITIONS 5 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `d_contract`
--

LOCK TABLES `d_contract` WRITE;
/*!40000 ALTER TABLE `d_contract` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_contract` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `d_contract_p`
--

DROP TABLE IF EXISTS `d_contract_p`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `d_contract_p` (
  `c_id` int NOT NULL,
  `cp_id` int NOT NULL,
  `p_kind` int NOT NULL,
  `per_id` int NOT NULL,
  `sch_id` int DEFAULT NULL,
  `pos_id` int DEFAULT NULL,
  `ass_id` int DEFAULT NULL,
  `org_id` int DEFAULT NULL,
  `ver` int DEFAULT '0',
  `s_date` date NOT NULL,
  `e_date` date DEFAULT NULL,
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`c_id`,`own_i`,`cp_id`,`c_year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
/*!50100 PARTITION BY HASH (`c_year`)
PARTITIONS 5 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `d_contract_p`
--

LOCK TABLES `d_contract_p` WRITE;
/*!40000 ALTER TABLE `d_contract_p` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_contract_p` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `d_order`
--

DROP TABLE IF EXISTS `d_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `d_order` (
  `ord_id` int NOT NULL AUTO_INCREMENT,
  `ord_n` varchar(20) NOT NULL,
  `ord_date` date NOT NULL,
  `eff_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `created_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `org_id` int DEFAULT NULL,
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`ord_id`,`own_i`,`c_year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
/*!50100 PARTITION BY HASH (`c_year`)
PARTITIONS 5 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `d_order`
--

LOCK TABLES `d_order` WRITE;
/*!40000 ALTER TABLE `d_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `d_order_d`
--

DROP TABLE IF EXISTS `d_order_d`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `d_order_d` (
  `ord_id` int NOT NULL,
  `lang` int NOT NULL,
  `ord_detail` text,
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`ord_id`,`own_i`,`lang`,`c_year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
/*!50100 PARTITION BY HASH (`c_year`)
PARTITIONS 5 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `d_order_d`
--

LOCK TABLES `d_order_d` WRITE;
/*!40000 ALTER TABLE `d_order_d` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_order_d` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `d_order_p`
--

DROP TABLE IF EXISTS `d_order_p`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `d_order_p` (
  `ord_id` int NOT NULL,
  `per_id` int NOT NULL,
  `emp_id` int DEFAULT NULL,
  `p_type` varchar(1) NOT NULL,
  `p_per_id` int DEFAULT NULL,
  `n_per_id` int DEFAULT NULL,
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`ord_id`,`own_i`,`per_id`,`c_year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
/*!50100 PARTITION BY HASH (`c_year`)
PARTITIONS 5 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `d_order_p`
--

LOCK TABLES `d_order_p` WRITE;
/*!40000 ALTER TABLE `d_order_p` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_order_p` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dic_nace`
--

DROP TABLE IF EXISTS `dic_nace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dic_nace` (
  `nace_code` varchar(10) NOT NULL,
  `nace_desc` varchar(500) NOT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`nace_code`,`own_i`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dic_nace`
--

LOCK TABLES `dic_nace` WRITE;
/*!40000 ALTER TABLE `dic_nace` DISABLE KEYS */;
/*!40000 ALTER TABLE `dic_nace` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dic_okpo`
--

DROP TABLE IF EXISTS `dic_okpo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dic_okpo` (
  `okpo_code` varchar(10) NOT NULL,
  `okpo_desc` varchar(500) NOT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`okpo_code`,`own_i`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dic_okpo`
--

LOCK TABLES `dic_okpo` WRITE;
/*!40000 ALTER TABLE `dic_okpo` DISABLE KEYS */;
/*!40000 ALTER TABLE `dic_okpo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `emp_i` int NOT NULL AUTO_INCREMENT,
  `emp_n` varchar(20) NOT NULL,
  `person_i` int NOT NULL,
  `org_i` int DEFAULT NULL,
  `ver` int DEFAULT '0',
  `s_date` date NOT NULL,
  `e_date` date DEFAULT NULL,
  `v_last` varchar(1) DEFAULT 'y',
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_i` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `task_i` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`emp_i`,`own_i`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_a`
--

DROP TABLE IF EXISTS `employee_a`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_a` (
  `assign_i` int NOT NULL AUTO_INCREMENT,
  `org_i` int NOT NULL,
  `dep_i` int NOT NULL,
  `sch_i` int DEFAULT NULL,
  `emp_i` int NOT NULL,
  `pos_i` int NOT NULL,
  `person_i` int NOT NULL,
  `ord_i` int DEFAULT NULL,
  `ord_date` date DEFAULT NULL,
  `ord_n` varchar(20) DEFAULT NULL,
  `assign_t` int DEFAULT '1',
  `eff_date` date NOT NULL,
  `term_date` date DEFAULT NULL,
  `term_ord_id` int DEFAULT NULL,
  `term_ord_date` date DEFAULT NULL,
  `term_reason` varchar(500) DEFAULT NULL,
  `term_ord_n` varchar(20) DEFAULT NULL,
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_i` int DEFAULT NULL,
  `bpss_i` int DEFAULT NULL,
  `task_i` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`assign_i`,`own_i`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_a`
--

LOCK TABLES `employee_a` WRITE;
/*!40000 ALTER TABLE `employee_a` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_a` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_bt`
--

DROP TABLE IF EXISTS `employee_bt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_bt` (
  `bt_id` int NOT NULL,
  `assign_i` int DEFAULT NULL,
  `ord_id` int NOT NULL,
  `dep_id` int DEFAULT NULL,
  `bt_start` date DEFAULT NULL,
  `bt_end` date DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `dir_c` int DEFAULT '0',
  `dir_m` varchar(1000) DEFAULT NULL,
  `dir_type` varchar(1) DEFAULT 'l',
  `bt_reason` varchar(1000) DEFAULT NULL,
  `created_t` timestamp NOT NULL,
  `ver` int NOT NULL,
  `s_date` date NOT NULL,
  `e_date` date DEFAULT NULL,
  `v_last` varchar(1) NOT NULL,
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_i` int DEFAULT NULL,
  `bpss_i` int DEFAULT NULL,
  `task_i` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`bt_id`,`own_i`,`c_year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
/*!50100 PARTITION BY HASH (`c_year`)
PARTITIONS 5 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_bt`
--

LOCK TABLES `employee_bt` WRITE;
/*!40000 ALTER TABLE `employee_bt` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_bt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_btd`
--

DROP TABLE IF EXISTS `employee_btd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_btd` (
  `bt_id` int NOT NULL,
  `d_id` int NOT NULL,
  `d_departure` varchar(300) DEFAULT NULL,
  `d_dep_t` timestamp NULL DEFAULT NULL,
  `d_arrival` varchar(300) DEFAULT NULL,
  `d_arr_t` timestamp NULL DEFAULT NULL,
  `by_trans_i` int DEFAULT NULL,
  `has_ticket` varchar(1) DEFAULT NULL,
  `dep_confirm_d` varchar(500) DEFAULT NULL,
  `arr_confirm_d` varchar(500) DEFAULT NULL,
  `ver` int NOT NULL,
  `s_date` date NOT NULL,
  `e_date` date DEFAULT NULL,
  `v_last` varchar(1) NOT NULL,
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_i` int DEFAULT NULL,
  `bpss_i` int DEFAULT NULL,
  `task_i` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`bt_id`,`own_i`,`d_id`,`c_year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
/*!50100 PARTITION BY HASH (`c_year`)
PARTITIONS 5 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_btd`
--

LOCK TABLES `employee_btd` WRITE;
/*!40000 ALTER TABLE `employee_btd` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_btd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_r`
--

DROP TABLE IF EXISTS `employee_r`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_r` (
  `r_id` int NOT NULL AUTO_INCREMENT,
  `org_i` int NOT NULL,
  `assign_i` int NOT NULL,
  `lbl` varchar(150) NOT NULL,
  `alt` varchar(350) DEFAULT NULL,
  `ver` int DEFAULT '0',
  `s_date` date NOT NULL,
  `e_date` date DEFAULT NULL,
  `v_last` varchar(1) DEFAULT 'y',
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_i` int DEFAULT NULL,
  `bpss_i` int DEFAULT NULL,
  `task_i` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`r_id`,`own_i`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_r`
--

LOCK TABLES `employee_r` WRITE;
/*!40000 ALTER TABLE `employee_r` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_r` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_rd`
--

DROP TABLE IF EXISTS `employee_rd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_rd` (
  `r_id` int NOT NULL,
  `role_id` int NOT NULL,
  `p_role_id` int DEFAULT '0',
  `n_role_id` int DEFAULT '0',
  `cmnt` varchar(300) DEFAULT NULL,
  `ord_id` int DEFAULT NULL,
  `ver` int DEFAULT '0',
  `s_date` date NOT NULL,
  `e_date` date DEFAULT NULL,
  `v_last` varchar(1) DEFAULT 'y',
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_i` int DEFAULT NULL,
  `bpss_i` int DEFAULT NULL,
  `task_i` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`r_id`,`own_i`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_rd`
--

LOCK TABLES `employee_rd` WRITE;
/*!40000 ALTER TABLE `employee_rd` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_rd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_rem`
--

DROP TABLE IF EXISTS `employee_rem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_rem` (
  `r_id` int NOT NULL,
  `role_id` int NOT NULL,
  `mnu_id` int NOT NULL,
  `cmnt` varchar(300) DEFAULT NULL,
  `ord_id` int DEFAULT NULL,
  `ver` int DEFAULT '0',
  `s_date` date NOT NULL,
  `e_date` date DEFAULT NULL,
  `v_last` varchar(1) DEFAULT 'y',
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_i` int DEFAULT NULL,
  `bpss_i` int DEFAULT NULL,
  `task_i` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`r_id`,`own_i`,`role_id`,`mnu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_rem`
--

LOCK TABLES `employee_rem` WRITE;
/*!40000 ALTER TABLE `employee_rem` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_rem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_rl`
--

DROP TABLE IF EXISTS `employee_rl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_rl` (
  `r_id` int NOT NULL,
  `lang` int NOT NULL,
  `lbl` varchar(150) NOT NULL,
  `alt` varchar(350) DEFAULT NULL,
  `ver` int DEFAULT '0',
  `s_date` date NOT NULL,
  `e_date` date DEFAULT NULL,
  `v_last` varchar(1) DEFAULT 'y',
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_i` int DEFAULT NULL,
  `bpss_i` int DEFAULT NULL,
  `task_i` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`r_id`,`own_i`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_rl`
--

LOCK TABLES `employee_rl` WRITE;
/*!40000 ALTER TABLE `employee_rl` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_rl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fw_ctx`
--

DROP TABLE IF EXISTS `fw_ctx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fw_ctx` (
  `ctx_id` int NOT NULL AUTO_INCREMENT,
  `lbl` varchar(150) NOT NULL,
  `alt` varchar(350) DEFAULT NULL,
  `mnu_c` int DEFAULT '0',
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`ctx_id`,`own_i`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fw_ctx`
--

LOCK TABLES `fw_ctx` WRITE;
/*!40000 ALTER TABLE `fw_ctx` DISABLE KEYS */;
/*!40000 ALTER TABLE `fw_ctx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fw_ctx_l`
--

DROP TABLE IF EXISTS `fw_ctx_l`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fw_ctx_l` (
  `ctx_id` int NOT NULL,
  `lang` int NOT NULL,
  `lbl` varchar(150) NOT NULL,
  `alt` varchar(350) DEFAULT NULL,
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`ctx_id`,`own_i`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fw_ctx_l`
--

LOCK TABLES `fw_ctx_l` WRITE;
/*!40000 ALTER TABLE `fw_ctx_l` DISABLE KEYS */;
/*!40000 ALTER TABLE `fw_ctx_l` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fw_files`
--

DROP TABLE IF EXISTS `fw_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fw_files` (
  `fh` varchar(800) NOT NULL,
  `fs` int DEFAULT NULL,
  `ft` varchar(150) DEFAULT NULL,
  `fpath` text,
  `own_i` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fw_files`
--

LOCK TABLES `fw_files` WRITE;
/*!40000 ALTER TABLE `fw_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `fw_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fw_list`
--

DROP TABLE IF EXISTS `fw_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fw_list` (
  `lst_id` int NOT NULL AUTO_INCREMENT,
  `lst_t` varchar(1) DEFAULT NULL,
  `itm_c` int DEFAULT '0',
  `lbl` varchar(150) NOT NULL,
  `alt` varchar(350) DEFAULT NULL,
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`lst_id`,`own_i`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fw_list`
--

LOCK TABLES `fw_list` WRITE;
/*!40000 ALTER TABLE `fw_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `fw_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fw_list_i`
--

DROP TABLE IF EXISTS `fw_list_i`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fw_list_i` (
  `lst_id` int NOT NULL,
  `lst_own_i` int NOT NULL,
  `i_id` int NOT NULL,
  `i_code` varchar(32) DEFAULT NULL,
  `i_ico` varchar(32) DEFAULT NULL,
  `lbl` varchar(150) NOT NULL,
  `alt` varchar(350) DEFAULT NULL,
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`lst_id`,`own_i`,`i_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fw_list_i`
--

LOCK TABLES `fw_list_i` WRITE;
/*!40000 ALTER TABLE `fw_list_i` DISABLE KEYS */;
/*!40000 ALTER TABLE `fw_list_i` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fw_list_il`
--

DROP TABLE IF EXISTS `fw_list_il`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fw_list_il` (
  `lst_id` int NOT NULL,
  `lang` int NOT NULL,
  `i_id` int NOT NULL,
  `lbl` varchar(150) NOT NULL,
  `alt` varchar(350) DEFAULT NULL,
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`lst_id`,`own_i`,`i_id`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fw_list_il`
--

LOCK TABLES `fw_list_il` WRITE;
/*!40000 ALTER TABLE `fw_list_il` DISABLE KEYS */;
/*!40000 ALTER TABLE `fw_list_il` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fw_list_l`
--

DROP TABLE IF EXISTS `fw_list_l`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fw_list_l` (
  `lst_id` int NOT NULL,
  `lang` int NOT NULL,
  `lbl` varchar(150) NOT NULL,
  `alt` varchar(350) DEFAULT NULL,
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`lst_id`,`own_i`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fw_list_l`
--

LOCK TABLES `fw_list_l` WRITE;
/*!40000 ALTER TABLE `fw_list_l` DISABLE KEYS */;
/*!40000 ALTER TABLE `fw_list_l` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fw_menu`
--

DROP TABLE IF EXISTS `fw_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fw_menu` (
  `t_id` int NOT NULL AUTO_INCREMENT,
  `par_id` int DEFAULT NULL,
  `par_own_i` int DEFAULT NULL,
  `is_grp` varchar(1) DEFAULT 'n',
  `ref_c` int DEFAULT '0',
  `p_t_id` int DEFAULT NULL,
  `p_own_i` int DEFAULT NULL,
  `n_t_id` int DEFAULT NULL,
  `n_own_i` int DEFAULT NULL,
  `lbl` varchar(150) NOT NULL,
  `alt` varchar(350) DEFAULT NULL,
  `app_id` int DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  `bp_id` int DEFAULT NULL,
  `m_ico` varchar(150) DEFAULT NULL,
  `ver` int NOT NULL DEFAULT '0',
  `s_date` date NOT NULL,
  `e_date` date DEFAULT NULL,
  `v_last` varchar(1) DEFAULT 'y',
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`t_id`,`own_i`,`ver`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fw_menu`
--

LOCK TABLES `fw_menu` WRITE;
/*!40000 ALTER TABLE `fw_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `fw_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fw_menu_l`
--

DROP TABLE IF EXISTS `fw_menu_l`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fw_menu_l` (
  `t_id` int NOT NULL,
  `lang` int NOT NULL,
  `ver` int DEFAULT '0',
  `s_date` date NOT NULL,
  `e_date` date DEFAULT NULL,
  `v_last` varchar(1) DEFAULT 'y',
  `lbl` varchar(150) NOT NULL,
  `alt` varchar(350) DEFAULT NULL,
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`t_id`,`own_i`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fw_menu_l`
--

LOCK TABLES `fw_menu_l` WRITE;
/*!40000 ALTER TABLE `fw_menu_l` DISABLE KEYS */;
/*!40000 ALTER TABLE `fw_menu_l` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fw_msg`
--

DROP TABLE IF EXISTS `fw_msg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fw_msg` (
  `m_key` varchar(32) NOT NULL,
  `lbl` varchar(150) NOT NULL,
  `alt` varchar(350) DEFAULT NULL,
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`m_key`,`own_i`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fw_msg`
--

LOCK TABLES `fw_msg` WRITE;
/*!40000 ALTER TABLE `fw_msg` DISABLE KEYS */;
/*!40000 ALTER TABLE `fw_msg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fw_msg_l`
--

DROP TABLE IF EXISTS `fw_msg_l`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fw_msg_l` (
  `m_key` varchar(32) NOT NULL,
  `lang` int NOT NULL,
  `lbl` varchar(150) NOT NULL,
  `alt` varchar(350) DEFAULT NULL,
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`m_key`,`own_i`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fw_msg_l`
--

LOCK TABLES `fw_msg_l` WRITE;
/*!40000 ALTER TABLE `fw_msg_l` DISABLE KEYS */;
/*!40000 ALTER TABLE `fw_msg_l` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `g_address`
--

DROP TABLE IF EXISTS `g_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `g_address` (
  `address_id` int NOT NULL AUTO_INCREMENT,
  `country_id` int DEFAULT NULL,
  `region_id` int DEFAULT NULL,
  `city_id` int DEFAULT NULL,
  `village_id` int DEFAULT NULL,
  `a_street` varchar(200) NOT NULL,
  `a_house` varchar(10) NOT NULL,
  `a_post` varchar(20) DEFAULT NULL,
  `a_note` varchar(150) DEFAULT NULL,
  `a_long` double DEFAULT NULL,
  `a_lat` double DEFAULT NULL,
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`address_id`,`own_i`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `g_address`
--

LOCK TABLES `g_address` WRITE;
/*!40000 ALTER TABLE `g_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `g_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `g_city`
--

DROP TABLE IF EXISTS `g_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `g_city` (
  `city_id` int NOT NULL AUTO_INCREMENT,
  `c_name` varchar(150) NOT NULL,
  `c_ename` varchar(150) DEFAULT NULL,
  `c_long` double DEFAULT NULL,
  `c_lat` double DEFAULT NULL,
  `region_id` int DEFAULT NULL,
  `country_id` int DEFAULT NULL,
  `p_city_id` int DEFAULT NULL,
  `n_city_id` int DEFAULT NULL,
  `ver` int DEFAULT '0',
  `s_date` date NOT NULL,
  `e_date` date DEFAULT NULL,
  `v_last` varchar(1) DEFAULT 'y',
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`city_id`,`own_i`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `g_city`
--

LOCK TABLES `g_city` WRITE;
/*!40000 ALTER TABLE `g_city` DISABLE KEYS */;
/*!40000 ALTER TABLE `g_city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `g_country`
--

DROP TABLE IF EXISTS `g_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `g_country` (
  `country_id` int NOT NULL AUTO_INCREMENT,
  `c_code` varchar(3) DEFAULT NULL,
  `c_name` varchar(150) NOT NULL,
  `c_ename` varchar(150) DEFAULT NULL,
  `c_note` varchar(300) DEFAULT NULL,
  `c_tld` varchar(6) DEFAULT NULL,
  `ver` int DEFAULT '0',
  `s_date` date NOT NULL,
  `e_date` date DEFAULT NULL,
  `v_last` varchar(1) DEFAULT 'y',
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`country_id`,`own_i`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `g_country`
--

LOCK TABLES `g_country` WRITE;
/*!40000 ALTER TABLE `g_country` DISABLE KEYS */;
/*!40000 ALTER TABLE `g_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `g_nationality`
--

DROP TABLE IF EXISTS `g_nationality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `g_nationality` (
  `n_id` int NOT NULL AUTO_INCREMENT,
  `lang` int NOT NULL,
  `n_name` varchar(150) NOT NULL,
  `n_country` varchar(150) DEFAULT NULL,
  `country_id` int DEFAULT NULL,
  `s_date` date NOT NULL,
  `e_date` date DEFAULT NULL,
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`n_id`,`own_i`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `g_nationality`
--

LOCK TABLES `g_nationality` WRITE;
/*!40000 ALTER TABLE `g_nationality` DISABLE KEYS */;
/*!40000 ALTER TABLE `g_nationality` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `g_region`
--

DROP TABLE IF EXISTS `g_region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `g_region` (
  `region_id` int NOT NULL AUTO_INCREMENT,
  `r_name` varchar(150) NOT NULL,
  `r_ename` varchar(150) DEFAULT NULL,
  `r_code` varchar(10) DEFAULT NULL,
  `r_note` varchar(100) DEFAULT NULL,
  `country_id` int DEFAULT NULL,
  `p_region_id` int DEFAULT NULL,
  `n_region_id` int DEFAULT NULL,
  `ver` int DEFAULT '0',
  `s_date` date NOT NULL,
  `e_date` date DEFAULT NULL,
  `v_last` varchar(1) DEFAULT 'y',
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`region_id`,`own_i`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `g_region`
--

LOCK TABLES `g_region` WRITE;
/*!40000 ALTER TABLE `g_region` DISABLE KEYS */;
/*!40000 ALTER TABLE `g_region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `g_village`
--

DROP TABLE IF EXISTS `g_village`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `g_village` (
  `village_id` int NOT NULL AUTO_INCREMENT,
  `v_name` varchar(150) NOT NULL,
  `v_ename` varchar(150) DEFAULT NULL,
  `v_note` varchar(150) DEFAULT NULL,
  `region_id` int DEFAULT NULL,
  `country_id` int NOT NULL,
  `v_long` double DEFAULT NULL,
  `v_lat` double DEFAULT NULL,
  `p_village_id` int DEFAULT NULL,
  `n_village_id` int DEFAULT NULL,
  `ver` int DEFAULT '0',
  `s_date` date NOT NULL,
  `e_date` date DEFAULT NULL,
  `v_last` varchar(1) DEFAULT 'y',
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`village_id`,`own_i`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `g_village`
--

LOCK TABLES `g_village` WRITE;
/*!40000 ALTER TABLE `g_village` DISABLE KEYS */;
/*!40000 ALTER TABLE `g_village` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hr_calendar`
--

DROP TABLE IF EXISTS `hr_calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hr_calendar` (
  `c_time` timestamp NOT NULL,
  `c_note` text,
  `d_type` varchar(1) NOT NULL,
  `ver` int NOT NULL,
  `s_date` date NOT NULL,
  `e_date` date DEFAULT NULL,
  `v_last` varchar(1) NOT NULL,
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `status` int DEFAULT '-1',
  `own_i` int NOT NULL,
  PRIMARY KEY (`c_time`,`own_i`,`c_year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
/*!50100 PARTITION BY HASH (`c_year`)
PARTITIONS 5 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hr_calendar`
--

LOCK TABLES `hr_calendar` WRITE;
/*!40000 ALTER TABLE `hr_calendar` DISABLE KEYS */;
/*!40000 ALTER TABLE `hr_calendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hr_pos`
--

DROP TABLE IF EXISTS `hr_pos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hr_pos` (
  `pos_i` int NOT NULL AUTO_INCREMENT,
  `lang` int NOT NULL,
  `pos_n` text NOT NULL,
  `org_id` int NOT NULL,
  `ver` int DEFAULT '0',
  `s_date` date NOT NULL,
  `e_date` date DEFAULT NULL,
  `v_last` varchar(1) DEFAULT 'y',
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`pos_i`,`own_i`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hr_pos`
--

LOCK TABLES `hr_pos` WRITE;
/*!40000 ALTER TABLE `hr_pos` DISABLE KEYS */;
/*!40000 ALTER TABLE `hr_pos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hr_role`
--

DROP TABLE IF EXISTS `hr_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hr_role` (
  `role_i` int NOT NULL AUTO_INCREMENT,
  `lbl` varchar(150) NOT NULL,
  `alt` varchar(350) DEFAULT NULL,
  `s_date` date NOT NULL,
  `e_date` date DEFAULT NULL,
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`role_i`,`own_i`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hr_role`
--

LOCK TABLES `hr_role` WRITE;
/*!40000 ALTER TABLE `hr_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `hr_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hr_role_l`
--

DROP TABLE IF EXISTS `hr_role_l`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hr_role_l` (
  `role_i` int NOT NULL,
  `lang` int NOT NULL,
  `lbl` varchar(150) NOT NULL,
  `alt` varchar(350) DEFAULT NULL,
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`role_i`,`own_i`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hr_role_l`
--

LOCK TABLES `hr_role_l` WRITE;
/*!40000 ALTER TABLE `hr_role_l` DISABLE KEYS */;
/*!40000 ALTER TABLE `hr_role_l` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hr_sch`
--

DROP TABLE IF EXISTS `hr_sch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hr_sch` (
  `sch_i` int NOT NULL AUTO_INCREMENT,
  `lbl` varchar(150) NOT NULL,
  `alt` varchar(350) DEFAULT NULL,
  `org_id` int NOT NULL,
  `eff_date` date NOT NULL,
  `term_date` date DEFAULT NULL,
  `spos_c` int DEFAULT '0',
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`sch_i`,`own_i`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hr_sch`
--

LOCK TABLES `hr_sch` WRITE;
/*!40000 ALTER TABLE `hr_sch` DISABLE KEYS */;
/*!40000 ALTER TABLE `hr_sch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hr_sch_d`
--

DROP TABLE IF EXISTS `hr_sch_d`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hr_sch_d` (
  `t_id` int NOT NULL,
  `par_id` int DEFAULT NULL,
  `is_grp` varchar(1) DEFAULT 'n',
  `ref_c` int DEFAULT '0',
  `p_t_id` int DEFAULT NULL,
  `n_t_id` int DEFAULT NULL,
  `sch_i` int NOT NULL,
  `dep_id` int DEFAULT NULL,
  `pos_i` int DEFAULT NULL,
  `pos_c` int DEFAULT '1',
  `pos_s` decimal(15,2) DEFAULT NULL,
  `ver` int DEFAULT '0',
  `s_date` date NOT NULL,
  `e_date` date DEFAULT NULL,
  `v_last` varchar(1) DEFAULT 'y',
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`t_id`,`own_i`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hr_sch_d`
--

LOCK TABLES `hr_sch_d` WRITE;
/*!40000 ALTER TABLE `hr_sch_d` DISABLE KEYS */;
/*!40000 ALTER TABLE `hr_sch_d` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hr_sch_l`
--

DROP TABLE IF EXISTS `hr_sch_l`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hr_sch_l` (
  `sch_i` int NOT NULL,
  `lang` int NOT NULL,
  `lbl` varchar(150) NOT NULL,
  `alt` varchar(350) DEFAULT NULL,
  `ver` int DEFAULT '0',
  `s_date` date NOT NULL,
  `e_date` date DEFAULT NULL,
  `v_last` varchar(1) DEFAULT 'y',
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`sch_i`,`own_i`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hr_sch_l`
--

LOCK TABLES `hr_sch_l` WRITE;
/*!40000 ALTER TABLE `hr_sch_l` DISABLE KEYS */;
/*!40000 ALTER TABLE `hr_sch_l` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `item_id` int NOT NULL AUTO_INCREMENT,
  `item_status` int NOT NULL DEFAULT '0',
  `creation_ts` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ext_code` varchar(64) DEFAULT NULL,
  `vend_code` varchar(32) DEFAULT NULL,
  `lbl` varchar(150) NOT NULL,
  `alt` varchar(350) DEFAULT NULL,
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`item_id`,`own_i`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
/*!50100 PARTITION BY HASH (`item_id`)
PARTITIONS 3 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_batch`
--

DROP TABLE IF EXISTS `item_batch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_batch` (
  `batch_id` int NOT NULL AUTO_INCREMENT,
  `batch_status` int NOT NULL DEFAULT '0',
  `currency` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `n_doc` varchar(32) DEFAULT NULL,
  `d_doc` date DEFAULT NULL,
  `d_received` date DEFAULT NULL,
  `a_id` int DEFAULT NULL,
  `supplier_i` int DEFAULT NULL,
  `supplier_per_i` varchar(240) DEFAULT NULL,
  `ext_code` varchar(64) DEFAULT NULL,
  `creation_ts` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `cont_id` int DEFAULT NULL,
  `org_id` int NOT NULL,
  `dep_id` int DEFAULT NULL,
  `sch_id` int DEFAULT NULL,
  `lbl` varchar(150) NOT NULL,
  `alt` varchar(350) DEFAULT NULL,
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`batch_id`,`org_id`),
  UNIQUE KEY `item_b_uk1` (`own_i`,`org_id`,`batch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
/*!50100 PARTITION BY HASH (`batch_id`)
PARTITIONS 3 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_batch`
--

LOCK TABLES `item_batch` WRITE;
/*!40000 ALTER TABLE `item_batch` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_batch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_group`
--

DROP TABLE IF EXISTS `item_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_group` (
  `t_id` int NOT NULL AUTO_INCREMENT,
  `par_id` int DEFAULT NULL,
  `par_own_i` int DEFAULT NULL,
  `is_grp` varchar(1) DEFAULT 'y',
  `ref_c` int NOT NULL DEFAULT '0',
  `p_t_id` int DEFAULT NULL,
  `p_own_i` int DEFAULT NULL,
  `n_t_id` int DEFAULT NULL,
  `n_own_i` int DEFAULT NULL,
  `s_date` date NOT NULL,
  `e_date` date DEFAULT NULL,
  `gt_id` int DEFAULT NULL,
  `gt_own_i` int DEFAULT NULL,
  `lbl` varchar(150) NOT NULL,
  `alt` varchar(350) DEFAULT NULL,
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`t_id`,`own_i`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
/*!50100 PARTITION BY HASH (`t_id`)
PARTITIONS 3 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_group`
--

LOCK TABLES `item_group` WRITE;
/*!40000 ALTER TABLE `item_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_group_l`
--

DROP TABLE IF EXISTS `item_group_l`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_group_l` (
  `t_id` int NOT NULL,
  `lang` int NOT NULL,
  `ver` int NOT NULL DEFAULT '0',
  `s_date` date NOT NULL,
  `e_date` date DEFAULT NULL,
  `v_last` varchar(1) DEFAULT 'y',
  `lbl` varchar(150) NOT NULL,
  `alt` varchar(350) DEFAULT NULL,
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`t_id`,`own_i`,`lang`,`ver`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_group_l`
--

LOCK TABLES `item_group_l` WRITE;
/*!40000 ALTER TABLE `item_group_l` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_group_l` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_group_rel`
--

DROP TABLE IF EXISTS `item_group_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_group_rel` (
  `rel_id` int NOT NULL AUTO_INCREMENT,
  `item_id` int NOT NULL,
  `group_id` int NOT NULL,
  `group_own_i` int NOT NULL,
  `struct_id` int NOT NULL DEFAULT '0',
  `g_desc` varchar(350) DEFAULT NULL,
  `s_date` date NOT NULL,
  `e_date` date DEFAULT NULL,
  `creation_ts` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`rel_id`,`own_i`),
  UNIQUE KEY `item_group_rel_uk1` (`item_id`,`own_i`,`group_id`,`group_own_i`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_group_rel`
--

LOCK TABLES `item_group_rel` WRITE;
/*!40000 ALTER TABLE `item_group_rel` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_group_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_group_t`
--

DROP TABLE IF EXISTS `item_group_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_group_t` (
  `gt_id` int NOT NULL AUTO_INCREMENT,
  `creation_dt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ext_code` varchar(64) DEFAULT NULL,
  `ver` int NOT NULL DEFAULT '0',
  `s_date` date NOT NULL,
  `e_date` date DEFAULT NULL,
  `v_last` varchar(1) DEFAULT 'y',
  `lbl` varchar(150) NOT NULL,
  `alt` varchar(350) DEFAULT NULL,
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`gt_id`,`own_i`,`ver`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_group_t`
--

LOCK TABLES `item_group_t` WRITE;
/*!40000 ALTER TABLE `item_group_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_group_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_group_tl`
--

DROP TABLE IF EXISTS `item_group_tl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_group_tl` (
  `gt_id` int NOT NULL,
  `lang` int NOT NULL,
  `creation_dt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ver` int NOT NULL DEFAULT '0',
  `s_date` date NOT NULL,
  `e_date` date DEFAULT NULL,
  `v_last` varchar(1) DEFAULT 'y',
  `lbl` varchar(150) NOT NULL,
  `alt` varchar(350) DEFAULT NULL,
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`gt_id`,`own_i`,`lang`,`ver`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_group_tl`
--

LOCK TABLES `item_group_tl` WRITE;
/*!40000 ALTER TABLE `item_group_tl` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_group_tl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_spec`
--

DROP TABLE IF EXISTS `item_spec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_spec` (
  `t_id` int NOT NULL AUTO_INCREMENT,
  `par_id` int DEFAULT NULL,
  `par_own_i` int DEFAULT NULL,
  `is_grp` varchar(1) DEFAULT 'y',
  `ref_c` int NOT NULL DEFAULT '0',
  `p_t_id` int DEFAULT NULL,
  `p_own_i` int DEFAULT NULL,
  `n_t_id` int DEFAULT NULL,
  `n_own_i` int DEFAULT NULL,
  `is_cat` varchar(1) DEFAULT 'n',
  `cat_own_i` int DEFAULT NULL,
  `cat_t_id` int DEFAULT NULL,
  `is_name_p` varchar(1) DEFAULT NULL,
  `um_id` int DEFAULT NULL,
  `um_sym` varchar(32) DEFAULT NULL,
  `um_abbr` varchar(32) DEFAULT NULL,
  `val_t` int DEFAULT NULL,
  `val` varchar(150) DEFAULT NULL,
  `term_id` int DEFAULT NULL,
  `creation_dt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `s_date` date NOT NULL,
  `e_date` date DEFAULT NULL,
  `lbl` varchar(150) NOT NULL,
  `alt` varchar(350) DEFAULT NULL,
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`t_id`,`own_i`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_spec`
--

LOCK TABLES `item_spec` WRITE;
/*!40000 ALTER TABLE `item_spec` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_spec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_storage_c`
--

DROP TABLE IF EXISTS `item_storage_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_storage_c` (
  `item_id` int NOT NULL,
  `cond_id` int NOT NULL,
  `cond_kind` int NOT NULL,
  `group_id` int NOT NULL,
  `creation_time` timestamp NOT NULL,
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`item_id`,`own_i`,`cond_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_storage_c`
--

LOCK TABLES `item_storage_c` WRITE;
/*!40000 ALTER TABLE `item_storage_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_storage_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_struct`
--

DROP TABLE IF EXISTS `item_struct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_struct` (
  `t_id` int NOT NULL,
  `par_id` int NOT NULL,
  `is_grp` varchar(1) NOT NULL,
  `ref_c` int NOT NULL,
  `p_t_id` int NOT NULL,
  `n_t_id` int NOT NULL,
  `item_id` int NOT NULL,
  `um_id` int NOT NULL,
  `value_t` varchar(1) NOT NULL,
  `int_v` int NOT NULL,
  `float_v` double NOT NULL,
  `char_v` varchar(150) NOT NULL,
  `term_id` int NOT NULL,
  `lbl` varchar(150) NOT NULL,
  `alt` varchar(350) DEFAULT NULL,
  `creation_time` timestamp NOT NULL,
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`t_id`,`own_i`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_struct`
--

LOCK TABLES `item_struct` WRITE;
/*!40000 ALTER TABLE `item_struct` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_struct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_um`
--

DROP TABLE IF EXISTS `item_um`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_um` (
  `um_id` int NOT NULL AUTO_INCREMENT,
  `um_sym` varchar(32) DEFAULT NULL,
  `um_grp` int DEFAULT NULL,
  `creation_dt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ext_code` varchar(64) DEFAULT NULL,
  `conv_c` int DEFAULT '0',
  `s_date` date NOT NULL,
  `e_date` date DEFAULT NULL,
  `lbl` varchar(150) NOT NULL,
  `alt` varchar(350) DEFAULT NULL,
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`um_id`,`own_i`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_um`
--

LOCK TABLES `item_um` WRITE;
/*!40000 ALTER TABLE `item_um` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_um` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_umc`
--

DROP TABLE IF EXISTS `item_umc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_umc` (
  `um_id` int NOT NULL,
  `to_um` int NOT NULL,
  `to_own_i` int NOT NULL,
  `um_f` decimal(15,6) NOT NULL,
  `p_to_um` int DEFAULT NULL,
  `n_to_um` int DEFAULT NULL,
  `creation_dt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ext_code` varchar(64) DEFAULT NULL,
  `s_date` date NOT NULL,
  `e_date` date DEFAULT NULL,
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`um_id`,`own_i`,`to_um`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_umc`
--

LOCK TABLES `item_umc` WRITE;
/*!40000 ALTER TABLE `item_umc` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_umc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_uml`
--

DROP TABLE IF EXISTS `item_uml`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_uml` (
  `um_id` int NOT NULL,
  `lang` int NOT NULL,
  `s_date` date NOT NULL,
  `e_date` date DEFAULT NULL,
  `lbl` varchar(150) NOT NULL,
  `alt` varchar(350) DEFAULT NULL,
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`um_id`,`own_i`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_uml`
--

LOCK TABLES `item_uml` WRITE;
/*!40000 ALTER TABLE `item_uml` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_uml` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_graphic`
--

DROP TABLE IF EXISTS `mp_graphic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_graphic` (
  `item_id` int NOT NULL,
  `group_id` int NOT NULL,
  `graph_time` timestamp NOT NULL,
  `um_id` int NOT NULL,
  `value_t` varchar(1) DEFAULT NULL,
  `int_v` int DEFAULT NULL,
  `float_v` double DEFAULT NULL,
  `char_v` varchar(150) DEFAULT NULL,
  `a_id` int NOT NULL,
  `org_id` int NOT NULL,
  `dep_id` int NOT NULL,
  `creation_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`item_id`,`own_i`,`graph_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_graphic`
--

LOCK TABLES `mp_graphic` WRITE;
/*!40000 ALTER TABLE `mp_graphic` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_graphic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_group`
--

DROP TABLE IF EXISTS `mp_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_group` (
  `t_id` int NOT NULL AUTO_INCREMENT,
  `par_id` int NOT NULL,
  `is_grp` varchar(1) NOT NULL DEFAULT 'y',
  `ref_c` int NOT NULL DEFAULT '0',
  `p_t_id` int NOT NULL DEFAULT '0',
  `n_t_id` int NOT NULL DEFAULT '0',
  `lbl` varchar(150) NOT NULL,
  `alt` varchar(350) DEFAULT NULL,
  `ver` int DEFAULT '0',
  `s_time` timestamp NOT NULL,
  `e_time` timestamp NULL DEFAULT NULL,
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`t_id`,`own_i`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_group`
--

LOCK TABLES `mp_group` WRITE;
/*!40000 ALTER TABLE `mp_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_participant`
--

DROP TABLE IF EXISTS `mp_participant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_participant` (
  `pt_id` int NOT NULL,
  `s_time` timestamp NOT NULL,
  `e_time` timestamp NULL DEFAULT NULL,
  `item_id` int NOT NULL,
  `a_id` int NOT NULL,
  `shift_id` int NOT NULL,
  `per_id` int NOT NULL,
  `org_id` int NOT NULL,
  `dep_id` int NOT NULL,
  `role_id` int NOT NULL,
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`pt_id`,`own_i`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_participant`
--

LOCK TABLES `mp_participant` WRITE;
/*!40000 ALTER TABLE `mp_participant` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_participant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_process`
--

DROP TABLE IF EXISTS `mp_process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_process` (
  `p_id` int NOT NULL AUTO_INCREMENT,
  `s_time` timestamp NOT NULL,
  `e_time` timestamp NOT NULL,
  `step_id` int NOT NULL,
  `action_id` int NOT NULL,
  `term_id` int NOT NULL,
  `item_id` int NOT NULL,
  `um_id` int NOT NULL,
  `measure_t` varchar(1) NOT NULL,
  `quantity_i` int NOT NULL,
  `quantity_f` double NOT NULL,
  `quantity_ch` varchar(150) NOT NULL,
  `creation_time` timestamp NOT NULL,
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`p_id`,`own_i`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_process`
--

LOCK TABLES `mp_process` WRITE;
/*!40000 ALTER TABLE `mp_process` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_process` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_process_tr`
--

DROP TABLE IF EXISTS `mp_process_tr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_process_tr` (
  `pt_id` int NOT NULL,
  `s_time` timestamp NOT NULL,
  `e_time` timestamp NOT NULL,
  `own_i` int NOT NULL,
  `p_id` int DEFAULT NULL,
  `um_id` int NOT NULL,
  `measure_t` varchar(1) NOT NULL,
  `quantity_i` int NOT NULL,
  `quantity_f` double NOT NULL,
  `quantity_ch` varchar(150) NOT NULL,
  `location_i` int NOT NULL,
  `currency_i` int DEFAULT NULL,
  `amount` decimal(19,2) DEFAULT '0.00',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_id` int NOT NULL,
  PRIMARY KEY (`pt_id`,`own_i`,`c_year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
/*!50100 PARTITION BY HASH (`c_year`)
PARTITIONS 5 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_process_tr`
--

LOCK TABLES `mp_process_tr` WRITE;
/*!40000 ALTER TABLE `mp_process_tr` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_process_tr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org`
--

DROP TABLE IF EXISTS `org`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `org` (
  `org_i` int NOT NULL AUTO_INCREMENT,
  `org_code` varchar(20) NOT NULL,
  `mbpe` int DEFAULT '0',
  `org_type` int DEFAULT NULL,
  `dep_c` int DEFAULT '0',
  `rel_c` int DEFAULT '0',
  `addr_c` int DEFAULT '0',
  `contact_c` int DEFAULT '0',
  `lbl` varchar(150) NOT NULL,
  `alt` varchar(350) DEFAULT NULL,
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`org_i`,`own_i`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org`
--

LOCK TABLES `org` WRITE;
/*!40000 ALTER TABLE `org` DISABLE KEYS */;
INSERT INTO `org` VALUES (1,'1233',0,NULL,0,0,0,0,'Средняя Школа 123',NULL,-1,1999,NULL,NULL,NULL,123);
/*!40000 ALTER TABLE `org` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_addr`
--

DROP TABLE IF EXISTS `org_addr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `org_addr` (
  `org_i` int NOT NULL,
  `addr_id` int NOT NULL,
  `addr_type` int NOT NULL,
  `addr_note` varchar(350) DEFAULT NULL,
  `address_id` int NOT NULL,
  `p_addr_id` int DEFAULT NULL,
  `n_addr_id` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`org_i`,`own_i`,`addr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_addr`
--

LOCK TABLES `org_addr` WRITE;
/*!40000 ALTER TABLE `org_addr` DISABLE KEYS */;
/*!40000 ALTER TABLE `org_addr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_att`
--

DROP TABLE IF EXISTS `org_att`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `org_att` (
  `org_i` int NOT NULL,
  `reg_num` varchar(20) DEFAULT NULL,
  `reg_date` date DEFAULT NULL,
  `o_rnn` varchar(12) DEFAULT NULL,
  `oked` varchar(10) DEFAULT NULL,
  `okpo` varchar(12) DEFAULT NULL,
  `kbe` int DEFAULT NULL,
  `pre` varchar(5) DEFAULT NULL,
  `i_form` int DEFAULT NULL,
  `i_form_own_i` int DEFAULT NULL,
  `i_type` int DEFAULT NULL,
  `i_type_own_i` int DEFAULT NULL,
  `tax_form` int DEFAULT NULL,
  `tax_form_own_i` int DEFAULT NULL,
  `vat_s` varchar(20) DEFAULT NULL,
  `vat_n` varchar(20) DEFAULT NULL,
  `vat_d` date DEFAULT NULL,
  `o_tz` varchar(3) DEFAULT NULL,
  `o_logo` varchar(300) DEFAULT NULL,
  `ver` int DEFAULT '0',
  `s_date` date NOT NULL,
  `e_date` date DEFAULT NULL,
  `v_last` varchar(1) DEFAULT 'y',
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`org_i`,`own_i`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_att`
--

LOCK TABLES `org_att` WRITE;
/*!40000 ALTER TABLE `org_att` DISABLE KEYS */;
/*!40000 ALTER TABLE `org_att` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_c`
--

DROP TABLE IF EXISTS `org_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `org_c` (
  `org_i` int NOT NULL,
  `contact_id` int NOT NULL,
  `c_type` int NOT NULL,
  `c_key` varchar(64) NOT NULL,
  `c_status` varchar(10) DEFAULT NULL,
  `per_id` int DEFAULT NULL,
  `c_role` varchar(150) DEFAULT NULL,
  `c_note` varchar(350) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`org_i`,`own_i`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_c`
--

LOCK TABLES `org_c` WRITE;
/*!40000 ALTER TABLE `org_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `org_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_d`
--

DROP TABLE IF EXISTS `org_d`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `org_d` (
  `dep_i` int NOT NULL AUTO_INCREMENT,
  `org_i` int NOT NULL,
  `p_dep_i` int DEFAULT '0',
  `n_dep_i` int DEFAULT '0',
  `lbl` varchar(150) NOT NULL,
  `alt` varchar(350) DEFAULT NULL,
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`dep_i`,`org_i`,`own_i`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_d`
--

LOCK TABLES `org_d` WRITE;
/*!40000 ALTER TABLE `org_d` DISABLE KEYS */;
/*!40000 ALTER TABLE `org_d` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_dl`
--

DROP TABLE IF EXISTS `org_dl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `org_dl` (
  `dep_i` int NOT NULL,
  `org_i` int NOT NULL,
  `lang` int NOT NULL,
  `p_lang` int DEFAULT '0',
  `n_lang` int DEFAULT '0',
  `lbl` varchar(150) NOT NULL,
  `alt` varchar(350) DEFAULT NULL,
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`dep_i`,`own_i`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_dl`
--

LOCK TABLES `org_dl` WRITE;
/*!40000 ALTER TABLE `org_dl` DISABLE KEYS */;
/*!40000 ALTER TABLE `org_dl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_l`
--

DROP TABLE IF EXISTS `org_l`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `org_l` (
  `org_i` int NOT NULL,
  `lang` int NOT NULL,
  `lbl` varchar(150) NOT NULL,
  `alt` varchar(350) DEFAULT NULL,
  `ver` int DEFAULT '0',
  `s_date` date NOT NULL,
  `e_date` date DEFAULT NULL,
  `v_last` varchar(1) DEFAULT 'y',
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`org_i`,`own_i`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_l`
--

LOCK TABLES `org_l` WRITE;
/*!40000 ALTER TABLE `org_l` DISABLE KEYS */;
/*!40000 ALTER TABLE `org_l` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_rel`
--

DROP TABLE IF EXISTS `org_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `org_rel` (
  `org_i` int NOT NULL,
  `rel_id` int NOT NULL,
  `r_org_i` int NOT NULL,
  `rel_type` int NOT NULL,
  `rel_code` varchar(30) DEFAULT NULL,
  `rel_note` varchar(350) DEFAULT NULL,
  `p_rel_id` int DEFAULT NULL,
  `n_rel_id` int DEFAULT NULL,
  `s_date` date NOT NULL,
  `e_date` date DEFAULT NULL,
  `t_zone` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`org_i`,`own_i`,`rel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_rel`
--

LOCK TABLES `org_rel` WRITE;
/*!40000 ALTER TABLE `org_rel` DISABLE KEYS */;
/*!40000 ALTER TABLE `org_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person` (
  `person_i` int NOT NULL AUTO_INCREMENT,
  `lang` int NOT NULL,
  `first_name` varchar(80) NOT NULL,
  `last_name` varchar(80) DEFAULT NULL,
  `middle_name` varchar(80) DEFAULT NULL,
  `full_name` varchar(240) DEFAULT NULL,
  `p_lang` int DEFAULT NULL,
  `n_lang` int DEFAULT NULL,
  `ver` int DEFAULT '0',
  `s_date` date NOT NULL,
  `e_date` date DEFAULT NULL,
  `v_last` varchar(1) DEFAULT 'y',
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`person_i`,`own_i`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1,123,'Руслан','Мырзагельдиев',NULL,NULL,NULL,NULL,NULL,'2020-10-05',NULL,NULL,NULL,2020,NULL,NULL,NULL,123),(2,123,'Айжан','Нурманова',NULL,NULL,NULL,NULL,NULL,'2020-10-05',NULL,NULL,NULL,2020,NULL,NULL,NULL,123),(3,123,'Асыхан','Абиляшева',NULL,NULL,NULL,NULL,NULL,'2020-10-05',NULL,NULL,NULL,2020,NULL,NULL,NULL,123),(4,123,'Айгүл','Әбуова',NULL,NULL,NULL,NULL,NULL,'2020-10-05',NULL,NULL,NULL,2020,NULL,NULL,NULL,123),(5,123,'Болат','Аргумбаев',NULL,NULL,NULL,NULL,NULL,'2020-10-05',NULL,NULL,NULL,2020,NULL,NULL,NULL,123),(6,123,'Альбина','Аргумбаева',NULL,NULL,NULL,NULL,NULL,'2020-10-05',NULL,NULL,NULL,2020,NULL,NULL,NULL,123),(7,123,'Бакытжан','Ахетов',NULL,NULL,NULL,NULL,NULL,'2020-10-05',NULL,NULL,NULL,2020,NULL,NULL,NULL,123),(8,123,'Анара','Бозанова',NULL,NULL,NULL,NULL,NULL,'2020-10-05',NULL,NULL,NULL,2020,NULL,NULL,NULL,123),(9,123,'Ернар','Абдулла',NULL,NULL,NULL,NULL,NULL,'2020-10-05',NULL,NULL,NULL,2020,NULL,NULL,NULL,123),(10,123,'Алина','Абиляшева',NULL,NULL,NULL,NULL,NULL,'2020-10-05',NULL,NULL,NULL,2020,NULL,NULL,NULL,123),(11,123,'Гауһар','Аргумбаева',NULL,NULL,NULL,NULL,NULL,'2020-10-05',NULL,NULL,NULL,2020,NULL,NULL,NULL,123),(12,123,'Нұрбиназ','Ахет',NULL,NULL,NULL,NULL,NULL,'2020-10-05',NULL,NULL,NULL,2020,NULL,NULL,NULL,123),(13,123,'Сакен','Есенбеков',NULL,NULL,NULL,NULL,NULL,'2020-10-06',NULL,NULL,NULL,2020,NULL,NULL,NULL,123),(14,123,'Айнұр','Есенбекова',NULL,NULL,NULL,NULL,NULL,'2020-10-06',NULL,NULL,NULL,2020,NULL,NULL,NULL,123),(15,123,'Саян','Сәрсенбай',NULL,NULL,NULL,NULL,NULL,'2020-10-06',NULL,NULL,NULL,2020,NULL,NULL,NULL,123),(16,123,'Сұлтан','Сәрсенбай',NULL,NULL,NULL,NULL,NULL,'2020-10-06',NULL,NULL,NULL,2020,NULL,NULL,NULL,123),(17,1,'Магрипа','Хрипулаевна',NULL,NULL,NULL,NULL,0,'2020-10-20',NULL,'y',-1,2020,NULL,NULL,NULL,123),(18,1,'Наруто','Узумаки',NULL,NULL,NULL,NULL,0,'2020-10-20',NULL,'y',-1,2020,NULL,NULL,NULL,123),(19,123,'Сакура','Харуна',NULL,NULL,NULL,NULL,0,'2020-10-20',NULL,'y',-1,2020,NULL,NULL,NULL,123);
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person_addr`
--

DROP TABLE IF EXISTS `person_addr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person_addr` (
  `person_i` int NOT NULL,
  `addr_id` int NOT NULL,
  `addr_type` int NOT NULL,
  `address_id` int NOT NULL,
  `addr_note` varchar(350) DEFAULT NULL,
  `p_addr_id` int DEFAULT NULL,
  `n_addr_id` int DEFAULT NULL,
  `s_date` int DEFAULT NULL,
  `e_date` int DEFAULT NULL,
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`person_i`,`own_i`,`addr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person_addr`
--

LOCK TABLES `person_addr` WRITE;
/*!40000 ALTER TABLE `person_addr` DISABLE KEYS */;
/*!40000 ALTER TABLE `person_addr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person_att`
--

DROP TABLE IF EXISTS `person_att`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person_att` (
  `person_i` int NOT NULL,
  `per_code` varchar(20) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `nationality` int DEFAULT NULL,
  `education` int DEFAULT NULL,
  `marital_status` varchar(1) DEFAULT NULL,
  `doc_c` int DEFAULT '0',
  `card_c` int DEFAULT '0',
  `qual_c` int DEFAULT '0',
  `ver` int DEFAULT '0',
  `s_date` date NOT NULL,
  `e_date` date DEFAULT NULL,
  `v_last` varchar(1) DEFAULT 'y',
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`person_i`,`own_i`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person_att`
--

LOCK TABLES `person_att` WRITE;
/*!40000 ALTER TABLE `person_att` DISABLE KEYS */;
/*!40000 ALTER TABLE `person_att` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person_c`
--

DROP TABLE IF EXISTS `person_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person_c` (
  `person_i` int NOT NULL,
  `contact_id` int NOT NULL,
  `c_type` int NOT NULL,
  `c_name` varchar(64) NOT NULL,
  `c_note` varchar(350) DEFAULT NULL,
  `c_person_i` int NOT NULL,
  `p_contact_id` int DEFAULT NULL,
  `n_contact_id` int DEFAULT NULL,
  `s_date` date NOT NULL,
  `e_date` date DEFAULT NULL,
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`person_i`,`own_i`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person_c`
--

LOCK TABLES `person_c` WRITE;
/*!40000 ALTER TABLE `person_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `person_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person_card`
--

DROP TABLE IF EXISTS `person_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person_card` (
  `person_i` int NOT NULL,
  `card_id` int NOT NULL,
  `card_num` varchar(16) DEFAULT NULL,
  `card_acc` varchar(30) NOT NULL,
  `bank` int NOT NULL,
  `valid_thru` date NOT NULL,
  `p_card_id` int DEFAULT NULL,
  `n_card_id` int DEFAULT NULL,
  `s_date` date NOT NULL,
  `e_date` date DEFAULT NULL,
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`person_i`,`own_i`,`card_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person_card`
--

LOCK TABLES `person_card` WRITE;
/*!40000 ALTER TABLE `person_card` DISABLE KEYS */;
/*!40000 ALTER TABLE `person_card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person_d`
--

DROP TABLE IF EXISTS `person_d`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person_d` (
  `person_i` int NOT NULL,
  `doc_id` int NOT NULL,
  `doc_kind` int NOT NULL,
  `doc_serial` varchar(10) DEFAULT NULL,
  `doc_number` varchar(30) DEFAULT NULL,
  `iss_date` date DEFAULT NULL,
  `issued_by` int DEFAULT NULL,
  `valid_until` date DEFAULT NULL,
  `doc_desc` varchar(300) DEFAULT NULL,
  `other_att` json DEFAULT NULL,
  `p_doc_id` int DEFAULT NULL,
  `n_doc_id` int DEFAULT NULL,
  `ver` int DEFAULT '0',
  `s_date` date NOT NULL,
  `e_date` date DEFAULT NULL,
  `v_last` varchar(1) DEFAULT 'y',
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`person_i`,`own_i`,`doc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person_d`
--

LOCK TABLES `person_d` WRITE;
/*!40000 ALTER TABLE `person_d` DISABLE KEYS */;
/*!40000 ALTER TABLE `person_d` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person_knl`
--

DROP TABLE IF EXISTS `person_knl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person_knl` (
  `person_i` int NOT NULL,
  `lang` int NOT NULL,
  `k_deg` int DEFAULT '1',
  `p_lang` int DEFAULT NULL,
  `n_lang` int DEFAULT NULL,
  `ver` int DEFAULT '0',
  `s_date` date NOT NULL,
  `e_date` date DEFAULT NULL,
  `v_last` varchar(1) DEFAULT 'y',
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`person_i`,`own_i`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person_knl`
--

LOCK TABLES `person_knl` WRITE;
/*!40000 ALTER TABLE `person_knl` DISABLE KEYS */;
/*!40000 ALTER TABLE `person_knl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person_l`
--

DROP TABLE IF EXISTS `person_l`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person_l` (
  `person_i` int NOT NULL,
  `lang` int NOT NULL,
  `first_name` varchar(80) NOT NULL,
  `last_name` varchar(80) DEFAULT NULL,
  `middle_name` varchar(80) DEFAULT NULL,
  `full_name` varchar(240) DEFAULT NULL,
  `p_lang` int DEFAULT NULL,
  `n_lang` int DEFAULT NULL,
  `ver` int DEFAULT '0',
  `s_date` date NOT NULL,
  `e_date` date DEFAULT NULL,
  `v_last` varchar(1) DEFAULT 'y',
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`person_i`,`own_i`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person_l`
--

LOCK TABLES `person_l` WRITE;
/*!40000 ALTER TABLE `person_l` DISABLE KEYS */;
/*!40000 ALTER TABLE `person_l` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person_qr`
--

DROP TABLE IF EXISTS `person_qr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person_qr` (
  `person_i` int NOT NULL,
  `qr_id` int NOT NULL,
  `qr_kind` int NOT NULL,
  `qr_desc` varchar(350) DEFAULT NULL,
  `qr_rating` varchar(20) DEFAULT NULL,
  `qr_resp` varchar(250) DEFAULT NULL,
  `org_i` int DEFAULT NULL,
  `p_qr_id` int DEFAULT NULL,
  `n_qr_id` int DEFAULT NULL,
  `ver` int DEFAULT '0',
  `s_date` date NOT NULL,
  `e_date` date DEFAULT NULL,
  `v_last` varchar(1) DEFAULT 'y',
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`person_i`,`own_i`,`qr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person_qr`
--

LOCK TABLES `person_qr` WRITE;
/*!40000 ALTER TABLE `person_qr` DISABLE KEYS */;
/*!40000 ALTER TABLE `person_qr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_counter`
--

DROP TABLE IF EXISTS `r_counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `r_counter` (
  `counter_id` int NOT NULL AUTO_INCREMENT,
  `period_t` int DEFAULT '0',
  `tn` varchar(32) NOT NULL,
  `cn` varchar(32) NOT NULL,
  `lbl` varchar(150) NOT NULL,
  `alt` varchar(350) DEFAULT NULL,
  `org_id` int NOT NULL,
  `dep_id` int DEFAULT NULL,
  `sch_id` int DEFAULT NULL,
  `status` smallint DEFAULT '-1',
  `c_year` int DEFAULT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`counter_id`,`own_i`),
  UNIQUE KEY `bpc_uk2` (`tn`,`cn`),
  UNIQUE KEY `bpc_uk1` (`org_id`,`dep_id`,`sch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_counter`
--

LOCK TABLES `r_counter` WRITE;
/*!40000 ALTER TABLE `r_counter` DISABLE KEYS */;
/*!40000 ALTER TABLE `r_counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_counter_val`
--

DROP TABLE IF EXISTS `r_counter_val`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `r_counter_val` (
  `counter_id` int NOT NULL,
  `period` int NOT NULL DEFAULT '0',
  `counter_value` bigint DEFAULT '0',
  `own_i` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`counter_id`,`own_i`,`period`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_counter_val`
--

LOCK TABLES `r_counter_val` WRITE;
/*!40000 ALTER TABLE `r_counter_val` DISABLE KEYS */;
/*!40000 ALTER TABLE `r_counter_val` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_class`
--

DROP TABLE IF EXISTS `school_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school_class` (
  `class_id` int NOT NULL AUTO_INCREMENT,
  `teacher_per_id` int NOT NULL,
  `lbl` varchar(150) NOT NULL,
  `alt` varchar(350) DEFAULT NULL,
  `ver` int NOT NULL,
  `s_date` date NOT NULL,
  `e_date` date DEFAULT NULL,
  `v_last` varchar(1) NOT NULL,
  `status` int NOT NULL,
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`class_id`,`own_i`,`ver`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_class`
--

LOCK TABLES `school_class` WRITE;
/*!40000 ALTER TABLE `school_class` DISABLE KEYS */;
INSERT INTO `school_class` VALUES (1,1,'6А',NULL,0,'2020-10-06',NULL,'y',0,2020,NULL,NULL,NULL,0),(2,19,'5Б',NULL,1,'2020-10-10',NULL,'y',0,2020,NULL,NULL,NULL,0),(3,19,'5В',NULL,1,'2020-10-10',NULL,'y',0,2020,NULL,NULL,NULL,0),(4,19,'5Д',NULL,1,'2020-10-10',NULL,'y',0,2020,NULL,NULL,NULL,0),(6,19,'6Б',NULL,1,'2020-10-10',NULL,'y',0,2020,NULL,NULL,NULL,0),(7,19,'6В',NULL,1,'2020-10-10',NULL,'y',0,2020,NULL,NULL,NULL,0),(8,19,'6Д',NULL,1,'2020-10-10',NULL,'y',0,2020,NULL,NULL,NULL,0),(9,18,'9D',NULL,1,'2020-10-10',NULL,'y',0,2020,NULL,NULL,NULL,0),(10,18,'9B',NULL,1,'2020-10-10',NULL,'y',0,2020,NULL,NULL,NULL,0),(11,18,'9C',NULL,1,'2020-10-10',NULL,'y',0,2020,NULL,NULL,NULL,0),(12,18,'9A',NULL,1,'2020-10-10',NULL,'y',0,2020,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `school_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_final`
--

DROP TABLE IF EXISTS `school_final`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school_final` (
  `student_i` int NOT NULL,
  `subject_i` int NOT NULL,
  `c_year` int DEFAULT NULL,
  `first_frth` int DEFAULT NULL,
  `secnd_frth` int DEFAULT NULL,
  `thrd_frth` int DEFAULT NULL,
  `frth_frth` int DEFAULT NULL,
  `annual` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`student_i`,`subject_i`,`own_i`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_final`
--

LOCK TABLES `school_final` WRITE;
/*!40000 ALTER TABLE `school_final` DISABLE KEYS */;
/*!40000 ALTER TABLE `school_final` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_journal`
--

DROP TABLE IF EXISTS `school_journal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school_journal` (
  `j_i` int NOT NULL AUTO_INCREMENT,
  `sch_i` int DEFAULT NULL,
  `student_i` int DEFAULT NULL,
  `dt` timestamp NULL DEFAULT NULL,
  `c_year` int DEFAULT NULL,
  `vst` varchar(1) DEFAULT NULL,
  `pnt` int DEFAULT NULL,
  `lbl` varchar(150) DEFAULT NULL,
  `alt` varchar(350) DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`j_i`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_journal`
--

LOCK TABLES `school_journal` WRITE;
/*!40000 ALTER TABLE `school_journal` DISABLE KEYS */;
INSERT INTO `school_journal` VALUES (1,1,15,'2020-09-21 08:50:00',2020,'y',10,'Опоздал на урок',NULL,0),(2,1,15,'2020-09-21 11:50:00',2020,'y',4,'Забыл домашнюю работу',NULL,0),(3,1,16,'2020-09-21 09:50:00',2020,'n',NULL,NULL,NULL,0),(4,1,16,'2020-09-21 10:24:00',2020,'n',NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `school_journal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_log`
--

DROP TABLE IF EXISTS `school_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school_log` (
  `e_i` int NOT NULL AUTO_INCREMENT,
  `student_i` varchar(12) DEFAULT NULL,
  `e_typ` varchar(80) DEFAULT NULL,
  `e_time` timestamp NULL DEFAULT NULL,
  `c_year` int DEFAULT NULL,
  `e_detail` varchar(500) DEFAULT NULL,
  `own_i` int DEFAULT NULL,
  PRIMARY KEY (`e_i`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_log`
--

LOCK TABLES `school_log` WRITE;
/*!40000 ALTER TABLE `school_log` DISABLE KEYS */;
INSERT INTO `school_log` VALUES (1,'9','Посещение','2020-09-21 08:05:47',NULL,'Зашел(а) в школу',NULL),(2,'9','Посещение','2020-09-21 12:00:21',NULL,'Вышел(а) из школы',NULL),(3,'9','Терминал','2020-09-21 10:00:00',NULL,'Покупка на 900 тенге: \'Лапша по-домашнему\', самса с курицей, компот',NULL),(4,'9','Успеваемость','2020-09-21 11:30:00',NULL,'Получил(а) оценку по предмету \'Математика\'',NULL),(5,'9','Успеваемость','2020-09-21 08:30:00',NULL,'Получил(а) оценку по предмету \'Естествознание\'',NULL),(6,'10','Посещение','2020-09-21 08:05:47',NULL,'Зашел(а) в школу',NULL),(7,'10','Посещение','2020-09-21 12:00:21',NULL,'Вышел(а) из школы',NULL),(8,'10','Терминал','2020-09-21 10:00:00',NULL,'Покупка на 900 тенге: \'Лапша по-домашнему\', самса с курицей, компот',NULL),(9,'10','Успеваемость','2020-09-21 11:30:00',NULL,'Получил(а) оценку по предмету \'Математика\'',NULL),(10,'10','Успеваемость','2020-09-21 08:30:00',NULL,'Получил(а) оценку по предмету \'Естествознание\'',NULL),(11,'11','Посещение','2020-09-21 08:05:47',NULL,'Зашел(а) в школу',NULL),(12,'11','Посещение','2020-09-21 12:00:21',NULL,'Вышел(а) из школы',NULL),(13,'11','Терминал','2020-09-21 10:00:00',NULL,'Покупка на 900 тенге: \'Лагман\', пирожки, сок',NULL),(14,'11','Успеваемость','2020-09-21 11:30:00',NULL,'Получил(а) оценку по предмету \'Литература\'',NULL),(15,'11','Успеваемость','2020-09-21 08:30:00',NULL,'Получил(а) оценку по предмету \'Казахский язык\'',NULL),(16,'12','Посещение','2020-09-21 08:05:47',NULL,'Зашел(а) в школу',NULL),(17,'12','Посещение','2020-09-21 12:00:21',NULL,'Вышел(а) из школы',NULL),(18,'12','Терминал','2020-09-21 10:00:00',NULL,'Покупка на 900 тенге: \'Плов\', пирожки, кисель',NULL),(19,'12','Успеваемость','2020-09-21 11:30:00',NULL,'Получил(а) оценку по предмету \'Русская речь\'',NULL),(20,'12','Успеваемость','2020-09-21 08:30:00',NULL,'Получил(а) оценку по предмету \'Физика\'',NULL),(21,'9','Посещение','2020-09-22 08:05:47',NULL,'Зашел(а) в школу',NULL),(22,'9','Посещение','2020-09-22 12:00:21',NULL,'Вышел(а) из школы',NULL),(23,'9','Терминал','2020-09-22 10:00:00',NULL,'Покупка на 900 тенге: \'Лапша\', пирог, сок',NULL),(24,'9','Успеваемость','2020-09-22 11:30:00',NULL,'Получил(а) оценку по предмету \'Математика\'',NULL),(25,'9','Успеваемость','2020-09-22 08:30:00',NULL,'Получил(а) оценку по предмету \'Химия\'',NULL),(26,'10','Посещение','2020-09-22 08:05:47',NULL,'Зашел(а) в школу',NULL),(27,'10','Посещение','2020-09-22 12:00:21',NULL,'Вышел(а) из школы',NULL),(28,'10','Терминал','2020-09-22 10:00:00',NULL,'Покупка на 900 тенге: \'Борщ\', сырники, кефир',NULL),(29,'10','Успеваемость','2020-09-22 11:30:00',NULL,'Получил(а) оценку по предмету \'Биология\'',NULL),(30,'10','Успеваемость','2020-09-22 08:30:00',NULL,'Получил(а) оценку по предмету \'Математика\'',NULL),(31,'11','Посещение','2020-09-22 08:05:47',NULL,'Зашел(а) в школу',NULL),(32,'11','Посещение','2020-09-22 12:00:21',NULL,'Вышел(а) из школы',NULL),(33,'11','Терминал','2020-09-22 10:00:00',NULL,'Покупка на 900 тенге: \'Борщ\', пирог, кефир',NULL),(34,'11','Успеваемость','2020-09-22 11:30:00',NULL,'Получил(а) оценку по предмету \'Биология\'',NULL),(35,'11','Успеваемость','2020-09-22 08:30:00',NULL,'Получил(а) оценку по предмету \'Естествознание\'',NULL),(36,'12','Посещение','2020-09-22 08:05:47',NULL,'Зашел(а) в школу',NULL),(37,'12','Посещение','2020-09-22 12:00:21',NULL,'Вышел(а) из школы',NULL),(38,'12','Терминал','2020-09-22 10:00:00',NULL,'Покупка на 900 тенге: \'Плов\', пирожки, сок',NULL),(39,'12','Успеваемость','2020-09-22 11:30:00',NULL,'Получил(а) оценку по предмету \'История\'',NULL),(40,'12','Успеваемость','2020-09-22 08:30:00',NULL,'Получил(а) оценку по предмету \'Самопознание\'',NULL),(41,'15','Посещение','2020-09-21 08:05:47',NULL,'Зашел(а) в школу',NULL),(42,'15','Посещение','2020-09-21 12:00:21',NULL,'Вышел(а) из школы',NULL),(43,'15','Терминал','2020-09-21 10:00:00',NULL,'Покупка на 900 тенге: \'Манты\', шоколадный батончик, сок',NULL),(44,'15','Успеваемость','2020-09-21 11:30:00',NULL,'Получил(а) оценку по предмету \'Математика\'',NULL),(45,'15','Успеваемость','2020-09-21 08:30:00',NULL,'Получил(а) оценку по предмету \'Физика\'',NULL),(46,'15','Посещение','2020-09-22 08:05:47',NULL,'Зашел(а) в школу',NULL),(47,'15','Посещение','2020-09-22 12:00:21',NULL,'Вышел(а) из школы',NULL),(48,'15','Терминал','2020-09-22 10:00:00',NULL,'Покупка на 900 тенге: \'Суп\', пирожки, компот',NULL),(49,'15','Успеваемость','2020-09-22 11:30:00',NULL,'Получил(а) оценку по предмету \'Математика\'',NULL),(50,'15','Успеваемость','2020-09-22 08:30:00',NULL,'Получил(а) оценку по предмету \'Биология\'',NULL),(51,'16','Посещение','2020-09-21 08:05:47',NULL,'Зашел(а) в школу',NULL),(52,'16','Посещение','2020-09-21 12:00:21',NULL,'Вышел(а) из школы',NULL),(53,'16','Терминал','2020-09-21 10:00:00',NULL,'Покупка на 900 тенге: \'Рис с курицей\', пирог, компот',NULL),(54,'16','Успеваемость','2020-09-21 11:30:00',NULL,'Получил(а) оценку по предмету \'Литература\'',NULL),(55,'16','Успеваемость','2020-09-21 08:30:00',NULL,'Получил(а) оценку по предмету \'Английский язык\'',NULL);
/*!40000 ALTER TABLE `school_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_parent`
--

DROP TABLE IF EXISTS `school_parent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school_parent` (
  `parent_per_id` int NOT NULL,
  `uid` int DEFAULT NULL,
  `student_per_id` int NOT NULL,
  `ver` int NOT NULL,
  `s_date` date NOT NULL,
  `e_date` date DEFAULT NULL,
  `v_last` varchar(1) NOT NULL,
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`parent_per_id`,`student_per_id`,`own_i`,`ver`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_parent`
--

LOCK TABLES `school_parent` WRITE;
/*!40000 ALTER TABLE `school_parent` DISABLE KEYS */;
INSERT INTO `school_parent` VALUES (1,NULL,9,0,'2020-10-05',NULL,'y',NULL,2020,NULL,NULL,NULL,0),(2,NULL,9,0,'2020-10-05',NULL,'y',NULL,2020,NULL,NULL,NULL,0),(3,NULL,10,0,'2020-10-05',NULL,'y',NULL,2020,NULL,NULL,NULL,0),(4,NULL,10,0,'2020-10-05',NULL,'y',NULL,2020,NULL,NULL,NULL,0),(5,NULL,11,0,'2020-10-05',NULL,'y',NULL,2020,NULL,NULL,NULL,0),(6,NULL,11,0,'2020-10-05',NULL,'y',NULL,2020,NULL,NULL,NULL,0),(7,NULL,12,0,'2020-10-05',NULL,'y',NULL,2020,NULL,NULL,NULL,0),(8,NULL,12,0,'2020-10-05',NULL,'y',NULL,2020,NULL,NULL,NULL,0),(13,777,15,0,'2020-10-06',NULL,'y',NULL,2020,NULL,NULL,NULL,0),(13,777,16,0,'2020-10-06',NULL,'y',NULL,2020,NULL,NULL,NULL,0),(14,NULL,15,0,'2020-10-06',NULL,'y',NULL,2020,NULL,NULL,NULL,0),(14,NULL,16,0,'2020-10-06',NULL,'y',NULL,2020,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `school_parent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_schedule`
--

DROP TABLE IF EXISTS `school_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school_schedule` (
  `sch_i` int NOT NULL AUTO_INCREMENT,
  `time` varchar(8) DEFAULT NULL,
  `week` varchar(9) DEFAULT NULL,
  `subject_i` int DEFAULT NULL,
  `teacher_i` int DEFAULT NULL,
  `class_i` int DEFAULT NULL,
  `c_year` int DEFAULT NULL,
  `own_i` int DEFAULT NULL,
  PRIMARY KEY (`sch_i`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_schedule`
--

LOCK TABLES `school_schedule` WRITE;
/*!40000 ALTER TABLE `school_schedule` DISABLE KEYS */;
INSERT INTO `school_schedule` VALUES (1,'MON',NULL,1,19,2,NULL,NULL),(2,'TUE',NULL,1,19,2,NULL,NULL),(3,'MON',NULL,1,19,2,NULL,NULL),(4,'MON',NULL,2,19,2,NULL,NULL);
/*!40000 ALTER TABLE `school_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_student`
--

DROP TABLE IF EXISTS `school_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school_student` (
  `student_per_id` int NOT NULL,
  `class_id` int NOT NULL,
  `cash_card_id` varchar(150) DEFAULT NULL,
  `balance_act` decimal(15,2) DEFAULT '0.00',
  `balance_res` decimal(15,2) DEFAULT '0.00',
  `social_status` int DEFAULT '-1',
  `path_to_photo` text,
  `ver` int NOT NULL,
  `s_date` date NOT NULL,
  `e_date` date DEFAULT NULL,
  `v_last` varchar(1) NOT NULL,
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`student_per_id`,`own_i`,`ver`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_student`
--

LOCK TABLES `school_student` WRITE;
/*!40000 ALTER TABLE `school_student` DISABLE KEYS */;
INSERT INTO `school_student` VALUES (9,1,'04674292AA5E80',NULL,1500.00,NULL,NULL,0,'2020-10-08',NULL,'y',NULL,2020,NULL,NULL,NULL,0),(10,1,NULL,NULL,NULL,NULL,NULL,0,'2020-10-08',NULL,'y',NULL,2020,NULL,NULL,NULL,0),(11,1,NULL,NULL,NULL,NULL,NULL,0,'2020-10-08',NULL,'y',NULL,2020,NULL,NULL,NULL,0),(12,1,NULL,NULL,NULL,NULL,NULL,0,'2020-10-08',NULL,'y',NULL,2020,NULL,NULL,NULL,0),(15,1,NULL,NULL,NULL,NULL,NULL,0,'2020-10-08',NULL,'y',NULL,2020,NULL,NULL,NULL,0),(16,1,NULL,NULL,NULL,NULL,NULL,0,'2020-10-08',NULL,'y',NULL,2020,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `school_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_student_allergy`
--

DROP TABLE IF EXISTS `school_student_allergy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school_student_allergy` (
  `student_per_id` int NOT NULL,
  `allergy` int NOT NULL,
  `allergy_own_i` int NOT NULL,
  `ver` int NOT NULL,
  `s_date` date NOT NULL,
  `e_date` date DEFAULT NULL,
  `v_last` varchar(1) NOT NULL,
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`student_per_id`,`own_i`,`allergy`,`allergy_own_i`,`ver`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_student_allergy`
--

LOCK TABLES `school_student_allergy` WRITE;
/*!40000 ALTER TABLE `school_student_allergy` DISABLE KEYS */;
/*!40000 ALTER TABLE `school_student_allergy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_subject`
--

DROP TABLE IF EXISTS `school_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school_subject` (
  `subject_i` int NOT NULL AUTO_INCREMENT,
  `lbl` varchar(150) DEFAULT NULL,
  `alt` varchar(350) DEFAULT NULL,
  `c_year` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`subject_i`,`own_i`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_subject`
--

LOCK TABLES `school_subject` WRITE;
/*!40000 ALTER TABLE `school_subject` DISABLE KEYS */;
INSERT INTO `school_subject` VALUES (1,'Алгебра',NULL,NULL,123),(2,'Геометрия',NULL,NULL,123),(3,'Физика',NULL,NULL,123),(4,'Физ-культура',NULL,NULL,123),(5,'Информатика',NULL,NULL,123),(6,'Математика',NULL,NULL,123),(7,'Химия',NULL,NULL,123),(8,'Русский язык',NULL,NULL,123),(9,'Казахский язык',NULL,NULL,123),(10,'Английский язык',NULL,NULL,123),(11,'Технология',NULL,NULL,123),(12,'Классный Урок',NULL,NULL,123);
/*!40000 ALTER TABLE `school_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_task`
--

DROP TABLE IF EXISTS `school_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school_task` (
  `t_i` int NOT NULL AUTO_INCREMENT,
  `sch_i` int DEFAULT NULL,
  `dt` date DEFAULT NULL,
  `c_dt` timestamp NULL DEFAULT NULL,
  `c_year` int DEFAULT NULL,
  `lbl` varchar(150) DEFAULT NULL,
  `alt` varchar(350) DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`t_i`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_task`
--

LOCK TABLES `school_task` WRITE;
/*!40000 ALTER TABLE `school_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `school_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_teacher`
--

DROP TABLE IF EXISTS `school_teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school_teacher` (
  `teacher_per_id` int NOT NULL,
  `ver` int NOT NULL,
  `uuid` int DEFAULT NULL,
  `s_date` date NOT NULL,
  `e_date` date DEFAULT NULL,
  `v_last` varchar(1) NOT NULL,
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`teacher_per_id`,`own_i`,`ver`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_teacher`
--

LOCK TABLES `school_teacher` WRITE;
/*!40000 ALTER TABLE `school_teacher` DISABLE KEYS */;
INSERT INTO `school_teacher` VALUES (18,0,NULL,'2020-10-10',NULL,'v',-1,2,NULL,NULL,NULL,123),(19,0,NULL,'2020-10-10',NULL,'v',-1,2,NULL,NULL,NULL,123);
/*!40000 ALTER TABLE `school_teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_trans`
--

DROP TABLE IF EXISTS `school_trans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school_trans` (
  `tr_id` int NOT NULL,
  `tr_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `tr_type` varchar(1) NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `cash_card_id` varchar(150) DEFAULT NULL,
  `tr_dt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `device_id` varchar(150) NOT NULL,
  `org_id` int DEFAULT NULL,
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`c_year`,`tr_id`,`own_i`),
  UNIQUE KEY `s_trans_uk1` (`org_id`,`c_year`,`tr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
/*!50100 PARTITION BY HASH (`c_year`)
PARTITIONS 5 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_trans`
--

LOCK TABLES `school_trans` WRITE;
/*!40000 ALTER TABLE `school_trans` DISABLE KEYS */;
/*!40000 ALTER TABLE `school_trans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_trans_d`
--

DROP TABLE IF EXISTS `school_trans_d`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school_trans_d` (
  `tr_id` int NOT NULL,
  `item_id` int NOT NULL,
  `item_own_i` int NOT NULL,
  `item_amount` int DEFAULT '1',
  `price` decimal(15,2) NOT NULL,
  `cash_card_id` varchar(150) DEFAULT NULL,
  `trans_dt` timestamp NOT NULL,
  `org_id` int DEFAULT NULL,
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`c_year`,`tr_id`,`own_i`,`item_id`,`item_own_i`),
  UNIQUE KEY `s_trans_d_uk1` (`org_id`,`c_year`,`tr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
/*!50100 PARTITION BY HASH (`c_year`)
PARTITIONS 5 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_trans_d`
--

LOCK TABLES `school_trans_d` WRITE;
/*!40000 ALTER TABLE `school_trans_d` DISABLE KEYS */;
/*!40000 ALTER TABLE `school_trans_d` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `u_info`
--

DROP TABLE IF EXISTS `u_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `u_info` (
  `u_id` int NOT NULL,
  `un` varchar(150) NOT NULL,
  `uln` varchar(150) NOT NULL,
  `uem` varchar(150) NOT NULL,
  `utel` varchar(20) DEFAULT NULL,
  `ust` varchar(150) DEFAULT NULL,
  `upw` varchar(256) DEFAULT NULL,
  `ul` int DEFAULT NULL,
  `s_date` date NOT NULL,
  `e_date` date DEFAULT NULL,
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`u_id`,`own_i`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `u_info`
--

LOCK TABLES `u_info` WRITE;
/*!40000 ALTER TABLE `u_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `u_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `u_resp`
--

DROP TABLE IF EXISTS `u_resp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `u_resp` (
  `u_id` int NOT NULL,
  `r_id` int NOT NULL,
  `org_id` int NOT NULL,
  `ver` int DEFAULT '0',
  `s_date` date NOT NULL,
  `e_date` date DEFAULT NULL,
  `v_last` varchar(1) DEFAULT 'y',
  `status` int DEFAULT '-1',
  `c_year` int NOT NULL,
  `bps_id` int DEFAULT NULL,
  `bpss_id` int DEFAULT NULL,
  `tid` int DEFAULT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`u_id`,`r_id`,`own_i`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `u_resp`
--

LOCK TABLES `u_resp` WRITE;
/*!40000 ALTER TABLE `u_resp` DISABLE KEYS */;
/*!40000 ALTER TABLE `u_resp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `u_session`
--

DROP TABLE IF EXISTS `u_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `u_session` (
  `s_num` int NOT NULL AUTO_INCREMENT,
  `s_ut` int NOT NULL,
  `u_id` int NOT NULL,
  `s_lang` int NOT NULL,
  `org_id` int DEFAULT NULL,
  `r_id` int DEFAULT NULL,
  `s_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `e_time` timestamp NULL DEFAULT NULL,
  `status` int DEFAULT '1',
  `c_year` int NOT NULL,
  `own_i` int NOT NULL,
  PRIMARY KEY (`s_num`,`s_ut`,`own_i`,`c_year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
/*!50100 PARTITION BY HASH (`c_year`)
PARTITIONS 5 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `u_session`
--

LOCK TABLES `u_session` WRITE;
/*!40000 ALTER TABLE `u_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `u_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `u_state`
--

DROP TABLE IF EXISTS `u_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `u_state` (
  `s_id` int NOT NULL,
  `a_id` int DEFAULT NULL,
  `sj` json DEFAULT NULL,
  `own_i` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `u_state`
--

LOCK TABLES `u_state` WRITE;
/*!40000 ALTER TABLE `u_state` DISABLE KEYS */;
/*!40000 ALTER TABLE `u_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `u_token`
--

DROP TABLE IF EXISTS `u_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `u_token` (
  `s_id` bigint NOT NULL,
  `tk` varchar(64) NOT NULL,
  `own_i` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `u_token`
--

LOCK TABLES `u_token` WRITE;
/*!40000 ALTER TABLE `u_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `u_token` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-13 16:42:42
