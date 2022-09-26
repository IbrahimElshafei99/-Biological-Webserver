-- phpMyAdmin SQL Dump
-- version 4.0.4.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 12, 2021 at 03:09 AM
-- Server version: 5.6.13
-- PHP Version: 5.4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bioserverdb`
--
CREATE DATABASE IF NOT EXISTS `bioserverdb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bioserverdb`;

-- --------------------------------------------------------

--
-- Table structure for table `bio_functions`
--

CREATE TABLE IF NOT EXISTS `bio_functions` (
  `ComplementSeq` varchar(10000) NOT NULL,
  `GC_content` varchar(10000) NOT NULL,
  `Kmers` varchar(10000) NOT NULL,
  `Transcription` varchar(10000) NOT NULL,
  `RevComp` varchar(10000) NOT NULL,
  `geneID` int(11) NOT NULL,
  PRIMARY KEY (`geneID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bio_functions`
--

INSERT INTO `bio_functions` (`ComplementSeq`, `GC_content`, `Kmers`, `Transcription`, `RevComp`, `geneID`) VALUES
('CCCTCTTTTTTTCTCTTCCCTTCTTTCCTCTTTCCCTTTTCTTCTCTCCTCCCCCTCCCTTTTCTTTCCC\r\nTCTCTCTTTTCCTTCCTCCTTCTTCCTTCTTCCTCTCCTCCCTTCTCTTCTTCTCCTCCTCTTCTTTCCT\r\nCTTTTCTTCTCCCTCTTTCTCCCCTTCTCCCTCCTTCCTTTCCTCCTCCCTCTTTCTCTTCTCCTCTTCT\r\nCCTTCTTTCTCTCTCCCCTTCCTCCTTTTCTCTTTCCCCCTCTTTTCCTCCCTCTCTTCTTTTTTCTCTC\r\nCTCTCTTTCTTCTTTCTTTTCTCCTCTTCCCCTCCCCTCTTTCCTCCCCTCCTCTCCCCCCCCTTCTTTT\r\nCCCCTCTCCCTTTCCCTCTCTTCCTCCTTTTTTCCTCCCCCTTTTCCCTTCTTCTCCCTTTCTCTTCTTT', '24.148837209302', 'CCAG', 'GGGTCTATAATACACAAGGCTTCTTTCCTGATTGGCAAAACTACACACCAGGGCCAGGGATTAGATTCCC\r\nACTGTGTTTTGGATGGTGCTTCAAGCTAGTACCAGTGGACCCAAGAGAAGTAGAGGAGGACAACAAAGGA\r\nGAAAACAACTGCCTGTTACACCCCATGAGCCAGCATGGAATGGAGGACGGAGAAAGAGAAGTGCTGATGT\r\nGGAAGTTTGACAGTGCCCTAGCACGAAAACACATAGCCCGAGAAATGCACCCAGAGTACTATAAAGACTG\r\nCTGACAAAGAAGTTTCTAAAGAGGACTTCCGCTGGGGACTTTCCAGGGGAGGTGTGGCCGGGGAAGAATT\r\nGGGGAGTGGCTTACCCTCAGATGCTGCATAAAAGCAGCCGCTTTTCGCTTGTACTGGGTTTCTCTTGTTA', ' ATTGTTCTCTTTGGGTCATGTTCGCTTTTCGCCGACGAAAATACGTCGTAGACTCCCATTCGGTGAGGGG\n\rTTAAGAAGGGGCCGGTGTGGAGGGGACCTTTCAGGGGTCGCCTTCAGGAGAAATCTTTGAAGAAACAGTC\n\rGTCAGAAATATCATGAGACCCACGTAAAGAGCCCGATACACAAAAGCACGATCCCGTGACAGTTTGAAGG\n\rTGTAGTCGTGAAGAGAAAGAGGCAGGAGGTAAGGTACGACCGAGTACCCCACATTGTCCGTCAACAAAAG\n\rAGGAAACAACAGGAGGAGATGAAGAGAACCCAGGTGACCATGATCGAACTTCGTGGTAGGTTTTGTGTCA\n\rCCCTTAGATTAGGGACCGGGACCACACATCAAAACGGTTAGTCCTTTCTTCGGAACACATAATATCTGGG', 1),
('CTCTCCCCCCTCTCCTCTCTTCCCCTTTTTTTCTCTTCCCCTCCCTTCTTCCTCTCTCTTCCCTCCCTTT\r\nCCCTCTCTTTTTTCTCCCCCTTTTTTTCTTCCTTCCCTTTTTTTTCCCTTTCCCCCTCCCCCTTCCTTTT\r\nTTTTTCTTCTCTTTCTTTTTCTTTCCCCTTCCTCTCTCTTCCTTTCTTTCCCTCTTTTCCCTCCCCTTTT\r\nTCTTTCTCCTCTTCCTTCTCTTCTTTTTTTTCTTCTCTTTCTCTCTTCTCTCTTCTCTCCTTCTCTTCTT\r\nCTTTCTTCTTTTTTTTTTTCTTTTCTTTCCCTCTCCTCCCTCCTCCTTTCCTTTCTCCTTTTTCTCTCCT\r\nTCCTTCCTTTTCTTTTTTTTCTCCTTCTTCTTTTTTTCTCCCTCCTTTTCTCTCTTCTCCCTCCTCCTCC', '17.606976744186', 'AGA', 'GAGAGCGGCGACTGGTGAGTACGCCAAATTTTGACTAGCGGAGGCTAGAAGGAGAGAGATGGGTGCGAAA\r\nGCGTCAGTATTAAGTGGGGGAAAATTAGATGCATGGGAAAAAATTCGGTTACGGCCAGGGGGAAGGAAAA\r\nAATATCATCTGAAACATATAGTATGGGCAAGCAGAGAGTTGGAAAGATTCGCACTTAACCCTGGCCTTTT\r\nAGAAACAGCAGAAGGATGTCAACAATTAATAGAACAGTTACAGTCAACTCTCAAGACAGGATCAGAAGAA\r\nCTTAGATCATTATTTAATACAATAGTAACCCTCTGGTGCGTGCACCAAAGGATAGAGGTAAAAGACACCA\r\nAGGAAGCTTTAGATAAAATAGAGGAAGTACAAAATAAGAGCCAGCAAAAGACACAACAGGCAGCAGCTGG', ' GGTCGACGACGGACAACACAGAAAACGACCGAGAATAAAACATGAAGGAGATAAAATAGATTTCGAAGGA\n\rACCACAGAAAATGGAGATAGGAAACCACGTGCGTGGTCTCCCAATGATAACATAATTTATTACTAGATTC\n\rAAGAAGACTAGGACAGAACTCTCAACTGACATTGACAAGATAATTAACAACTGTAGGAAGACGACAAAGA\n\rTTTTCCGGTCCCAATTCACGCTTAGAAAGGTTGAGAGACGAACGGGTATGATATACAAAGTCTACTATAA\n\rAAAAGGAAGGGGGACCGGCATTGGCTTAAAAAAGGGTACGTAGATTAAAAGGGGGTGAATTATGACTGCG\n\rAAAGCGTGGGTAGAGAGAGGAAGATCGGAGGCGATCAGTTTTAAACCGCATGAGTGGTCAGCGGCGAGAG', 2),
('CTCTCCTTCCTCCTCCTCTCTCTCCCTCTTTTTCCCTTTTCTCCTTTTTCCTCTTCCCCTTTTCCTTCTT\r\nCTCCCTTTTTCTCCTTCTTCTTTCTTTCCTTCCCTCTTTCTTTTTCTTCTTTTCCCTTTTTCCCCTCTTC\r\nTTTTTCCCTTCTTCTCTCCTTTTTCTCTCCCTCCCTCCCCTCTTCTTTTTTTTTTCTTCCTTTTTTTTCT\r\nCCCCCCTCTCCTCCCTCCTTTCCTTTTCTTTTTTCTTTCCTTCTTTCTCCTTCCTCCTCTTTCCCTTTCC', '12.727272727273', 'AATG', 'CACAGGAAGCAGCAGCACAGTCAGCCACAATTACCCTATAGTGCAAAATGCACAAGGGCAAATGGTACAT\r\nCAGCCTATATCACCTAGAACTTTGAATGCATGGGTGAAAGTAATAGAAGAAAAGGGTTTTAGCCCAGAAG\r\nTAATACCCATGTTCTCAGCATTATCAGAGGGAGCCACCCCACAAGATTTAAATATGATGCTAAATATAGT\r\nGGGGGGACACCAGGCAGCAATGCAAATGTTAAAAGAAACCATCAATGAGGAACCTGCAGAATGGGATAGG', ' GGATAGGGTAAGACGTCCAAGGAGTAACTACCAAAGAAAATTGTAAACGTAACGACGGACCACAGGGGGG\n\rTGATATAAATCGTAGTATAAATTTAGAACACCCCACCGAGGGAGACTATTACGACTCTTGTACCCATAAT\n\rGAAGACCCGATTTTGGGAAAAGAAGATAATGAAAGTGGGTACGTAAGTTTCAAGATCCACTATATCCGAC\n\rTACATGGTAAACGGGAACACGTAAAACGTGATATCCCATTAACACCGACTGACACGACGACGAAGGACAC', 3),
('TCTCTCCCTTTTTTTTCCCCCTCTTTTCTTTTTTCTCCTTCTTCTCTCCCTTTCTTCCTCTCCTTCCCTC\r\nTTTTTCCTCCCCCCTTTCTTTTTTCCCTTCTTCCTTTTCTCCCTTCCTTCCTCTTCTTTTCTTTCTCTCC\r\nTCTCTCTCTCTCCCTTTTTTTTTTCCCTTTTTTTCCCCTTCCTTCTTCCCTTCCCCCCCTTTTTTTCCTC\r\nTCTCCTCTCCTCTCCCTTCTCCCCCTCCTCCTCTCTTCTCCCCCTTCCCCCTTCTCTCTTCCTCCTCCCT\r\nCTTTCTCCTCCTCTTTCTCTTCCTTCCCCCTCCTCCTTTTTTTTCCCTCTTTTCTCTCTTTCCCTTCCTC\r\nCCCTTCTCTCTCTTTTTTTTCCTCCTCTCCTCTTTCTTCCTCTTTTTCTTTCTCCTCCTCTTCTTTCTCT', '22.255813953488', 'AGA', 'AGAGAGGCAATTTTAAGGGCCAGAAAAGAATTAAGTGCTTCAACTGTGGCAAAGAAGGACACCTAGCCAG\r\nAAATTGCAGGGCCCTTAGAAAAAAGGGTTGTTGGAAATGTGGGAAGGAAGGACATCAAATGAAAGACTGC\r\nACTGAGAGACAGGCTAATTTTTTAGGGAAAATTTGGCCTTCCAACAAGGGAAGGCCGGGAAATTTTCCTC\r\nAGAGCAGACCAGAGCCAACAGCCCCACCAGCAGAGAACTGGGGGATGGGGGAAGAGACAACCTCCTCGCT\r\nGAAACAGGAGCAGAAAGACAAGGAACCCCCTCCTCCTTTAATTTCCCTCAAATCACTCTTTGGCAACGAC\r\nCCCTTGTCACAGTAAAAATAGGAGGAGAGCTGAAAGAAGCTCTATTAGATACAGGAGCAGATGATACAGT', ' TGACATAGTAGACGAGGACATAGATTATCTCGAAGAAAGTCGAGAGGAGGATAAAAATGACACTGTTCCC\n\rCAGCAACGGTTTCTCACTAAACTCCCTTTAATTTCCTCCTCCCCCAAGGAACAGAAAGACGAGGACAAAG\n\rTCGCTCCTCCAACAGAGAAGGGGGTAGGGGGTCAAGAGACGACCACCCCGACAACCGAGACCAGACGAGA\n\rCTCCTTTTAAAGGGCCGGAAGGGAACAACCTTCCGGTTTAAAAGGGATTTTTTAATCGGACAGAGAGTCA\n\rCGTCAGAAAGTAAACTACAGGAAGGAAGGGTGTAAAGGTTGTTGGGAAAAAAGATTCCCGGGACGTTAAA\n\rGACCGATCCACAGGAAGAAACGGTGTCAACTTCGTGAATTAAGAAAAGACCGGGAATTTTAACGGAGAGA', 4);

-- --------------------------------------------------------

--
-- Table structure for table `gene`
--

CREATE TABLE IF NOT EXISTS `gene` (
  `geneID` int(15) NOT NULL AUTO_INCREMENT,
  `geneName` varchar(100) NOT NULL,
  `geneSeq` varchar(10000) NOT NULL,
  `GeneType` varchar(10000) NOT NULL,
  PRIMARY KEY (`geneID`),
  UNIQUE KEY `geneID` (`geneID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `gene`
--

INSERT INTO `gene` (`geneID`, `geneName`, `geneSeq`, `GeneType`) VALUES
(1, 'Human immunodeficiency virus', 'GGGTCTATAATACACAAGGCTTCTTTCCTGATTGGCAAAACTACACACCAGGGCCAGGGATTAGATTCCC\r\nACTGTGTTTTGGATGGTGCTTCAAGCTAGTACCAGTGGACCCAAGAGAAGTAGAGGAGGACAACAAAGGA\r\nGAAAACAACTGCCTGTTACACCCCATGAGCCAGCATGGAATGGAGGACGGAGAAAGAGAAGTGCTGATGT\r\nGGAAGTTTGACAGTGCCCTAGCACGAAAACACATAGCCCGAGAAATGCACCCAGAGTACTATAAAGACTG\r\nCTGACAAAGAAGTTTCTAAAGAGGACTTCCGCTGGGGACTTTCCAGGGGAGGTGTGGCCGGGGAAGAATT\r\nGGGGAGTGGCTTACCCTCAGATGCTGCATAAAAGCAGCCGCTTTTCGCTTGTACTGGGTTTCTCTTGTTA', 'DNA'),
(2, 'Human immunodeficiency virus 1', 'GAGAGCGGCGACTGGTGAGTACGCCAAATTTTGACTAGCGGAGGCTAGAAGGAGAGAGATGGGTGCGAAA\r\nGCGTCAGTATTAAGTGGGGGAAAATTAGATGCATGGGAAAAAATTCGGTTACGGCCAGGGGGAAGGAAAA\r\nAATATCATCTGAAACATATAGTATGGGCAAGCAGAGAGTTGGAAAGATTCGCACTTAACCCTGGCCTTTT\r\nAGAAACAGCAGAAGGATGTCAACAATTAATAGAACAGTTACAGTCAACTCTCAAGACAGGATCAGAAGAA\r\nCTTAGATCATTATTTAATACAATAGTAACCCTCTGGTGCGTGCACCAAAGGATAGAGGTAAAAGACACCA\r\nAGGAAGCTTTAGATAAAATAGAGGAAGTACAAAATAAGAGCCAGCAAAAGACACAACAGGCAGCAGCTGG', 'DNA'),
(3, 'Human immunodeficiency virus 2', 'CACAGGAAGCAGCAGCACAGTCAGCCACAATTACCCTATAGTGCAAAATGCACAAGGGCAAATGGTACAT\r\nCAGCCTATATCACCTAGAACTTTGAATGCATGGGTGAAAGTAATAGAAGAAAAGGGTTTTAGCCCAGAAG\r\nTAATACCCATGTTCTCAGCATTATCAGAGGGAGCCACCCCACAAGATTTAAATATGATGCTAAATATAGT\r\nGGGGGGACACCAGGCAGCAATGCAAATGTTAAAAGAAACCATCAATGAGGAACCTGCAGAATGGGATAGG', 'DNA'),
(4, 'Human immunodeficiency virus 3', 'AGAGAGGCAATTTTAAGGGCCAGAAAAGAATTAAGTGCTTCAACTGTGGCAAAGAAGGACACCTAGCCAG\r\nAAATTGCAGGGCCCTTAGAAAAAAGGGTTGTTGGAAATGTGGGAAGGAAGGACATCAAATGAAAGACTGC\r\nACTGAGAGACAGGCTAATTTTTTAGGGAAAATTTGGCCTTCCAACAAGGGAAGGCCGGGAAATTTTCCTC\r\nAGAGCAGACCAGAGCCAACAGCCCCACCAGCAGAGAACTGGGGGATGGGGGAAGAGACAACCTCCTCGCT\r\nGAAACAGGAGCAGAAAGACAAGGAACCCCCTCCTCCTTTAATTTCCCTCAAATCACTCTTTGGCAACGAC\r\nCCCTTGTCACAGTAAAAATAGGAGGAGAGCTGAAAGAAGCTCTATTAGATACAGGAGCAGATGATACAGT', 'DNA');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;