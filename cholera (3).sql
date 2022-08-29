-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 10, 2022 at 01:45 PM
-- Server version: 5.7.31
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cholera`
--

-- --------------------------------------------------------

--
-- Table structure for table `ll`
--

DROP TABLE IF EXISTS `ll`;
CREATE TABLE IF NOT EXISTS `ll` (
  `#` varchar(11) NOT NULL,
  `Epiweek` varchar(11) NOT NULL,
  `Names and Surnames` varchar(255) NOT NULL,
  `Phone number` varchar(20) NOT NULL,
  `Age (year)` varchar(11) NOT NULL,
  `Sex` varchar(3) NOT NULL,
  `Profession` varchar(255) NOT NULL,
  `Village/Quarter` varchar(255) NOT NULL,
  `Health area of origin` varchar(255) NOT NULL,
  `Health district of origin` varchar(255) NOT NULL,
  `Health area notifying` varchar(255) NOT NULL,
  `Health district notifying` varchar(255) NOT NULL,
  `Diarrhoea (Yes/No)` varchar(255) NOT NULL,
  `Vomitting (Yes/No)` varchar(255) NOT NULL,
  `State of Dehydratation (1:Mild, 2:Moderate, 3:Severe)` varchar(255) NOT NULL,
  `Date of onset of symptoms` varchar(255) NOT NULL,
  `Date of consultation` varchar(20) NOT NULL,
  `Date of notification` varchar(20) NOT NULL,
  `Hospitalisation (Yes/No)` varchar(20) NOT NULL,
  `Date of hospitalisation` varchar(20) NOT NULL,
  `Site of case management` varchar(255) NOT NULL,
  `Treatment ORS (Yes/No)` varchar(255) NOT NULL,
  `Treatment Antibiotic (Yes/No)` varchar(255) NOT NULL,
  `Treatment IV liquid (Yes/No)` varchar(255) NOT NULL,
  `Treatment Zinc (Yes/No)` varchar(255) NOT NULL,
  `Date of sample collection` varchar(20) NOT NULL,
  `Result of RDT` varchar(60) NOT NULL,
  `Culture (Yes/No)` varchar(5) NOT NULL,
  `Result of culture` varchar(255) NOT NULL,
  `Date of discharge` varchar(20) NOT NULL,
  `Outcome (2=Healed, 3=Dead)` varchar(11) NOT NULL,
  `Observations (Facteur de risque : 1=eau; 2=assainissement; 3= hy` varchar(255) NOT NULL,
  `REG` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ll_cholera_cmr`
--

DROP TABLE IF EXISTS `ll_cholera_cmr`;
CREATE TABLE IF NOT EXISTS `ll_cholera_cmr` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_Patient` varchar(100) DEFAULT NULL,
  `Epiweek` varchar(11) NOT NULL,
  `Phone_number` varchar(15) DEFAULT NULL,
  `Age_year` varchar(11) DEFAULT NULL,
  `Sex` varchar(3) DEFAULT NULL,
  `Profession` varchar(100) DEFAULT NULL,
  `Village_Quarter` varchar(100) DEFAULT NULL,
  `Health_area_of_origin` varchar(100) DEFAULT NULL,
  `Health_district_of_origin` varchar(100) DEFAULT NULL,
  `Health_area_notifying` varchar(100) DEFAULT NULL,
  `Health_district_notifying` varchar(100) DEFAULT NULL,
  `Diarrhea_Yes_No` varchar(5) DEFAULT NULL,
  `Vomitting_Yes_No` varchar(5) NOT NULL,
  `State_of_Dehydratation` varchar(11) NOT NULL,
  `Date_of_onset_of_symptoms` varchar(60) NOT NULL,
  `Date_of_consultation` varchar(60) NOT NULL,
  `Date_of_notification` varchar(60) NOT NULL,
  `Hospitalisation_Yes_No` varchar(5) NOT NULL,
  `Date_of_hospitalisation` varchar(60) NOT NULL,
  `Site_of_case_management` varchar(100) NOT NULL,
  `Treatment_ORS_Yes_No` varchar(5) NOT NULL,
  `Treatment_Antibiotic_Yes_No` varchar(5) NOT NULL,
  `Treatment_IV_liquid_Yes_No` varchar(5) NOT NULL,
  `Treatment_Zinc_Yes_No` varchar(5) NOT NULL,
  `Date_of_sample_collection` varchar(60) NOT NULL,
  `Result_of_RDT` varchar(20) NOT NULL,
  `Culture_Yes_No` varchar(6) NOT NULL,
  `Result_of_culture` varchar(20) NOT NULL,
  `Date_of_discharge` varchar(60) DEFAULT NULL,
  `Outcome` varchar(11) NOT NULL,
  `Observations` varchar(255) NOT NULL,
  `Region` varchar(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=51287 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `enrolled` varchar(128) NOT NULL,
  `progress` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `enrolled`, `progress`) VALUES
(1, 'CMRCHOCE0051', 'Non', 8),
(2, 'CMRCHOCE0052', 'Ouui', 9),
(3, 'CMRCHOCE0053', 'Non', 9),
(4, 'CMRCHOCE0054', 'Ouui', 9),
(5, 'CMRCHOCE0056', 'Non', 9),
(6, 'CMRCHOCE0058', 'Ouui', 10),
(7, 'CMRCHOCE00510', 'Non', 11),
(8, 'CMRCHOCE00511', 'Ouui', 10),
(9, 'CMRCHOCE00513', 'Non', 11),
(10, 'CMRCHOCE00512', 'Ouui', 11),
(11, 'CMRCHOEN-0065', 'Non', 11),
(12, 'CMRCHOEN-0064', 'Ouui', 11),
(13, 'CMRCHOEN-0063', 'Non', 11);

-- --------------------------------------------------------

--
-- Table structure for table `t_sitrep`
--

DROP TABLE IF EXISTS `t_sitrep`;
CREATE TABLE IF NOT EXISTS `t_sitrep` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `num_sitrep` varchar(255) NOT NULL,
  `periode` varchar(255) NOT NULL,
  `region_active` varchar(255) NOT NULL,
  `districts_touches` varchar(255) NOT NULL,
  `districts_actifs` varchar(255) NOT NULL,
  `cas_notifies` varchar(255) NOT NULL,
  `letalite` varchar(255) NOT NULL,
  `age_median` varchar(255) NOT NULL,
  `sexe_ratio` varchar(255) NOT NULL,
  `fs_date_confirme` varchar(255) NOT NULL,
  `fs_nouveaux_cas` varchar(255) NOT NULL,
  `fs_region_sudouest` varchar(255) NOT NULL,
  `fs_region_littoral` varchar(255) NOT NULL,
  `fs_region_sud` varchar(255) NOT NULL,
  `fs_nouveau_deces` varchar(255) NOT NULL,
  `fs_alert_suspect` varchar(255) NOT NULL,
  `img_carte` varchar(255) NOT NULL,
  `img_carte_description` varchar(255) NOT NULL,
  `img_histogramme` varchar(255) NOT NULL,
  `img_histo_description` varchar(255) NOT NULL,
  `etat` int(11) NOT NULL DEFAULT '1',
  `date_pub` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_edit` datetime DEFAULT NULL,
  `ressources` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_sitrep`
--

INSERT INTO `t_sitrep` (`ID`, `num_sitrep`, `periode`, `region_active`, `districts_touches`, `districts_actifs`, `cas_notifies`, `letalite`, `age_median`, `sexe_ratio`, `fs_date_confirme`, `fs_nouveaux_cas`, `fs_region_sudouest`, `fs_region_littoral`, `fs_region_sud`, `fs_nouveau_deces`, `fs_alert_suspect`, `img_carte`, `img_carte_description`, `img_histogramme`, `img_histo_description`, `etat`, `date_pub`, `date_edit`, `ressources`) VALUES
(13, '07', '31/01 au 06/02/2022', '04 ', '18 ', '14 ', '1245 ', '2,9 ', '25 ans (0,2-89 ans)', 'H/F 2 :1', '01/02/22 : confirmation de 02 cas dans le DS de Melong dans la Region du Littoral', '143 ', '89 ', '41 ', '13 ', '03 ', 'Alerte de cas suspect au DS de TIKO RÃ©gion du Sud-Ouest', 'NA', 'NA', 'NA', 'NA', 1, '2022-06-16 13:42:38', NULL, 'admin/uploads/CMR CHOLERA SITREP_08_V0.pdf'),
(14, '08', '31/01 au 06/02/2022', '04 ', '18 ', '14 ', '1245 ', '2,9', '25 ans (0,2-89 ans)', 'H/F 2 :1', '01/02/22 : confirmation de 02 cas dans le DS de Melong dans la Region du Littoral', '143 ', '89 ', '41 ', '13 ', '', '03 ', 'admin/uploads/img/CMR CHOLERA SITREP_08_V0_.pdf', 'Cartographie des Districts de SantÃ© touchÃ©s dans les rÃ©gions affectÃ©es au 30 Janvier 20221', 'admin/uploads/img/.pdf', 'Evolution des cas confirmÃ©s par semaine Ã©pidÃ©miologique, 29 0ctobre 2020 au 06 fÃ©vrier 2022', 1, '2022-06-17 15:11:05', NULL, 'admin/uploads/CMR CHOLERA SITREP_08_V0_.pdf'),
(15, '09', '31/02 au 06/03/2022', '05', '18', '14 ', '1245 ', '2,9 ', '25 ans (0,2-89 ans)', 'H/F 2 :1', '01/02/22 : confirmation de 02 cas dans le DS de Melong dans la Region du Littoral', '143 ', '89 ', '41 ', '13 ', '143 dont 03 dÃ©cÃ¨s ', 'Alerte de cas suspect au DS de TIKO RÃ©gion du Sud-Ouest', '', 'Cartographie des Districts de SantÃ© touchÃ©s dans les rÃ©gions affectÃ©es au 30 Janvier 20221', '', 'Evolution des cas confirmÃ©s par semaine Ã©pidÃ©miologique, 29 0ctobre 2020 au 06 fÃ©vrier 2022', 1, '2022-06-25 17:06:43', NULL, 'admin/uploads/CMR CHOLERA SITREP_08_V0_.pdf'),
(16, '9', '03 au 09/02/2022', '04 ', '18 ', '14 ', '1245 ', '2,9 ', '25 ans (0,2-89 ans)', 'H/F 2 :1', '01/02/22 : confirmation de 02 cas dans le DS de Melong dans la Region du Littoral', '143 ', '89 ', '41 ', '13 ', '143 dont 03 dÃ©cÃ¨s ', 'Alerte de cas suspect au DS de TIKO RÃ©gion du Sud-Ouest', '', ' Cartographie des Districts de SantÃ© touchÃ©s dans les rÃ©gions  affectÃ©es au 30 Janvier 20221', '', 'Evolution des cas confirmÃ©s par semaine Ã©pidÃ©miologique, 29 0ctobre 2020 au 06 fÃ©vrier 2022', 1, '2022-08-10 14:14:39', NULL, 'admin/uploads/CMR CHOLERA SITREP_08_V0.pdf');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
