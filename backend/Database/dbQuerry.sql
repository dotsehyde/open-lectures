-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2022 at 12:57 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test2`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategorije`
--

CREATE TABLE `kategorije` (
  `idKategorije` int(11) NOT NULL,
  `naziv_kategorije` varchar(50) DEFAULT NULL,
  `slika_kategorije` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategorije`
--

INSERT INTO `kategorije` (`idKategorije`, `naziv_kategorije`, `slika_kategorije`) VALUES
(1, 'Biologija', 'biologija.jpg'),
(2, 'Kemija', 'kemija.jpg'),
(3, 'Fizika', 'fizika.jpg'),
(5, 'Matematika', 'matematika.jpg'),
(6, 'Povijest', 'povijest.jpg'),
(7, 'Psihologija', 'psihologija.jpg'),
(8, 'Računarstvo', 'racunarstvo.jpg'),
(9, 'Ekonomija', 'ekonomija.jpg'),
(10, 'Elektrotehnika', 'elektrotehnika.jpg'),
(11, 'Filozofija', 'filozofija.jpg'),
(12, 'Pedagogija', 'pedagogija.jpg'),
(13, 'Politologija', 'politologija.jpg'),
(14, 'Računarstvo', 'racunarstvo.jpg'),
(15, 'Bez kategorije', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lekcije`
--

CREATE TABLE `lekcije` (
  `idLekcije` int(11) NOT NULL,
  `predavac` int(11) NOT NULL,
  `predavanja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lekcije`
--

INSERT INTO `lekcije` (`idLekcije`, `predavac`, `predavanja`) VALUES
(1, 1, 1),
(2, 7, 2),
(3, 8, 3),
(4, 9, 4),
(5, 13, 5),
(6, 14, 6),
(7, 15, 7),
(8, 16, 8),
(9, 17, 8),
(10, 18, 9),
(11, 18, 10),
(12, 19, 11),
(13, 20, 12),
(14, 21, 13),
(15, 22, 14),
(16, 23, 15),
(17, 24, 16),
(18, 25, 17),
(19, 26, 18),
(20, 27, 19),
(21, 28, 20),
(22, 29, 21),
(23, 30, 22),
(24, 31, 23),
(25, 8, 24),
(26, 32, 25),
(27, 33, 26),
(28, 34, 27),
(29, 35, 28),
(30, 36, 29),
(31, 36, 30),
(32, 37, 31),
(33, 37, 32),
(34, 38, 33),
(35, 39, 34),
(36, 40, 35);

-- --------------------------------------------------------

--
-- Table structure for table `predavaci`
--

CREATE TABLE `predavaci` (
  `idPredavac` int(11) NOT NULL,
  `ime` varchar(50) DEFAULT NULL,
  `prezime` varchar(50) DEFAULT NULL,
  `slika_predavaca` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `predavaci`
--

INSERT INTO `predavaci` (`idPredavac`, `ime`, `prezime`, `slika_predavaca`) VALUES
(1, 'Robert', 'Sapolsky', 'rsapolsky.jpg'),
(7, 'Eric', 'Lander', 'elander.jpg'),
(8, 'Vincent', 'Racaniello', 'vracaniello.jpg'),
(9, 'Jonathan', 'Gruber', 'jgruber.jpg'),
(10, 'Anant', 'Agarwal', 'aagarwal.jpg'),
(11, 'Walter', 'Lewin', 'wlewin.jpg'),
(12, 'Dennis', 'Freeman', 'dfreeman.jpg'),
(13, 'Bruce', 'Land', NULL),
(14, 'Shelly', 'Kagan', NULL),
(15, 'Richard', 'A. Muller', NULL),
(16, 'Catherine', 'Drennan', NULL),
(17, 'Elizabeth', 'Vogel Taylor', NULL),
(18, 'Richard', 'Delaware', NULL),
(19, 'Sanjoy', 'Mahajan', NULL),
(20, 'Kathleen', 'Bawn', NULL),
(21, 'Donald', 'Kagan', NULL),
(22, 'John', 'Gabrieli', NULL),
(23, 'David', 'J. Malan', NULL),
(24, 'Amir', 'H. Ashouri', NULL),
(25, 'Alexander', 'Amini', NULL),
(26, 'David', 'Churchill', NULL),
(27, 'Onur', 'Mutlu', NULL),
(28, 'Robert', 'Wyman', NULL),
(29, 'Rachel', 'Glennerster', NULL),
(30, 'Jeffrey', 'Hoffman', NULL),
(31, 'Barbara', 'Imperiali', NULL),
(32, 'Stephen', 'C. Stearns', NULL),
(33, 'Mark', 'Saltzman', NULL),
(34, 'Denis', 'Auroux', NULL),
(35, 'Arthur', 'Mattuck', NULL),
(36, 'Gilbert', 'Strang', NULL),
(37, 'Klaus-Jürgen', 'Bathe', NULL),
(38, 'Michael', 'C. Cranston', NULL),
(39, 'Elizabeth', 'Baue', NULL),
(40, 'Brad', 'Osgood', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `predavanja`
--

CREATE TABLE `predavanja` (
  `idPredavanja` int(11) NOT NULL,
  `naziv_predavanja` varchar(60) DEFAULT NULL,
  `jezik` varchar(50) DEFAULT NULL,
  `godina` varchar(50) DEFAULT NULL,
  `broj_predavanja` int(11) DEFAULT NULL,
  `ukupno_trajanje` int(11) DEFAULT NULL,
  `oznaka` varchar(50) DEFAULT NULL,
  `opis_kolegija` text DEFAULT NULL,
  `link_1` varchar(200) DEFAULT NULL,
  `link_2` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `predavanja`
--

INSERT INTO `predavanja` (`idPredavanja`, `naziv_predavanja`, `jezik`, `godina`, `broj_predavanja`, `ukupno_trajanje`, `oznaka`, `opis_kolegija`, `link_1`, `link_2`, `image`) VALUES
(1, 'Human Behavirol Biology', 'Engleski', '2010.', 25, 36, 'BIO150', 'This course focuses on how to approach complex normal and abnormal behaviors through biology and how to integrate disciplines including sociobiology, ethology, neuroscience, and endocrinology to examine behaviors such as aggression, sexual behavior, language use, and mental illness.', 'https://www.youtube.com/playlist?list=PL848F2368C90DDC3D', 'http://www.infocobuild.com/education/audio-video-c', 'https://img.youtube.com/vi/Y0Oa4Lp5fLE/0.jpg'),
(2, 'Fundamentals of Biology', 'Engleski', '2011.', 39, 12, 'MIT7.01SC', 'Fundamentals of Biology focuses on the basic principles of biochemistry, molecular biology, genetics, and recombinant DNA. These principles are necessary to understanding the basic mechanisms of life and anchor the biological knowledge that is required to understand many of the challenges in everyday life, from human health and disease to loss of biodiversity and environmental quality.', 'https://www.youtube.com/playlist?list=PLF83B8D8C87426E44', 'https://ocw.mit.edu/courses/biology/7-01sc-fundame', 'https://img.youtube.com/vi/1eGsdK1fPLM/0.jpg'),
(3, 'Virology', 'Engleski', '2021.', 25, 29, 'Biology4310', 'The course will emphasize the common reactions that must be completed by all viruses for successful reproduction within a host cell and survival and spread within a host population. The molecular basis of alternative reproductive cycles, the interactions of viruses with host organisms, and how these lead to disease are presented with examples drawn from a set of representative animal and human viruses, although selected bacterial viruses will be discussed.', 'https://www.youtube.com/playlist?list=PLGhmZX2NKiNm0vqVhoYB_xZP6E6tGT6rU', 'https://www.virology.ws/course/', 'https://img.youtube.com/vi/jX3MhWWi6n4/0.jpg'),
(4, 'Principles of Microeconomics', 'Engleski', '2018.', 26, 21, 'MIT14.01', 'This introductory undergraduate course covers the fundamentals of microeconomics. Topics include supply and demand, market equilibrium, consumer theory, production and the behavior of firms, monopoly, oligopoly, welfare economics, public goods, and externalities.', 'https://www.youtube.com/playlist?list=PLUl4u3cNGP62oJSoqb4Rf-vZMGUBe59G-', 'https://ocw.mit.edu/courses/economics/14-01-princi', 'https://img.youtube.com/vi/BNy84DCRxzo/0.jpg'),
(5, 'AVR microcontroller lectures', 'Engleski', '2012.', 34, 29, 'ECE 4760', '	MIcrocontroller design course. ECE 4760 deals with microcontrollers as components in electronic design and embedded control.', 'https://www.youtube.com/playlist?list=PLD7F7ED1F3505D8D5', 'http://people.ece.cornell.edu/land/courses/ece4760/', 'https://img.youtube.com/vi/uEAQCBJhhHI/0.jpg'),
(6, 'Death', 'Engleski', '2007.', 26, 21, 'PHIL 176', 'There is one thing I can be sure of: I am going to die. But what am I to make of that fact? This course will examine a number of issues that arise once we begin to reflect on our mortality. The possibility that death may not actually be the end is considered. Are we, in some sense, immortal? Would immortality be desirable? Also a clearer notion of what it is to die is examined. What does it mean to say that a person has died? What kind of fact is that? And, finally, different attitudes to death are evaluated. Is death an evil? How? Why? Is suicide morally permissible? Is it rational? How should the knowledge that I am going to die affect the way I live my life?', 'https://www.youtube.com/playlist?list=PLEA18FAF1AD9047B0', 'https://oyc.yale.edu/death/phil-176', 'https://img.youtube.com/vi/p2J7wSuFRl8/0.jpg'),
(7, 'Physics for Future Presidents', 'Engleski', '2006.', 26, 29, 'PHYS 10', 'Yes, the title of the colloquium is serious. Energy, global warming, terrorism and counter-terrorism, nukes, internet, satellites, remote sensing, ICBMs and ABMs, DVDs and HDTVs -- economic and political issues increasingly have a strong high tech content. Misjudge the science, make a wrong decision. Yet many of our leaders never studied physics, and do not understand science and technology. Physics is the liberal arts of high tech. Is science too hard for world leaders to learn? No. Think of an analogous example: Charlemagne was only half literate. He could read but not write. Writing was a skill considered too tough even for world leaders, just as physics is today. And yet now most of the world is literate.', 'https://www.youtube.com/playlist?list=PLaLOVNqqD-2Ep5N9os9jWMSkxK_TLki9h', 'https://physics.berkeley.edu/physics-for-future-presidents', 'https://img.youtube.com/vi/PCdDFplPfMQ/0.jpg'),
(8, 'Principles of Chemical Science', 'Engleski', '2008.', 36, 27, 'MIT 5.111', 'This course provides an introduction to the chemistry of biological, inorganic, and organic molecules. The emphasis is on basic principles of atomic and molecular electronic structure, thermodynamics, acid-base and redox equilibria, chemical kinetics, and catalysis.', 'https://www.youtube.com/playlist?list=PL2902385153144A26', 'https://ocw.mit.edu/courses/chemistry/5-111-principles-of-chemical-science-fall-2008/', 'https://img.youtube.com/vi/l-BNoAPe6qo/0.jpg'),
(9, 'College Algebra', 'Engleski', '1998.', 40, 43, 'Math 110', '	College Algebra Lectures with UMKC\'s Professor Richard Delaware, in association with UMKC\'s Video Based Supplemental Instruction Program.', 'https://www.youtube.com/playlist?list=PLDE28CF08BD313B2A', 'http://d.web.umkc.edu/delawarer/VSI/RDvsi.htm', 'https://img.youtube.com/vi/SQI97IAUqo8/0.jpg'),
(10, 'Calculus I', 'Engleski', '2005.', 36, 30, '	Math 210', 'Calculus 1/ Calc 1 with UMKC\'s Professor Richard Delaware, in association with UMKC\'s Video Based Supplemental Instruction Program', 'https://www.youtube.com/playlist?list=PLF5E22224459D23D9', 'http://d.web.umkc.edu/delawarer/VSI/RDvsiCalc.htm', 'https://img.youtube.com/vi/CtRAHmeWSC0/0.jpg'),
(11, 'Teaching College-Level Science and Engineering', 'Engleski', '2009.', 11, 15, 'MIT 5.95J', 'This participatory seminar focuses on the knowledge and skills necessary for teaching science and engineering in higher education. This course is designed for graduate students interested in an academic career, and anyone else interested in teaching. Readings and discussions include: teaching equations for understanding, designing exam and homework questions, incorporating histories of science, creating absorbing lectures, teaching for transfer, the evils of PowerPoint, and planning a course. The subject is appropriate for both novices and those with teaching experience.', 'https://www.youtube.com/playlist?list=PLB1304385546D6F86', 'https://ocw.mit.edu/courses/chemistry/5-95j-teaching-college-level-science-and-engineering-spring-2009/', 'https://img.youtube.com/vi/wy-LqFDwMuM/0.jpg'),
(12, 'Political Science 30: Politics and Strategy', 'Engleski', '2008.', 19, 21, 'POL SCI 30', 'Taught by UCLA\'s Professor Kathleen Bawn, this courses is an introduction to study of strategic interaction in political applications. Use of game theory and other formal modeling strategies to understand politics are also studied in order to gain a better understanding of politics at large.', 'https://www.youtube.com/playlist?list=PLF420ADB3E328425A', NULL, 'https://img.youtube.com/vi/eoHSEacM7Fo/0.jpg'),
(13, 'Introduction to Ancient Greek History', 'Engleski', '2007.', 24, 28, 'CLCV 205', 'This is an introductory course in Greek history tracing the development of Greek civilization as manifested in political, intellectual, and creative achievements from the Bronze Age to the end of the classical period. Students read original sources in translation as well as the works of modern scholars.', 'https://www.youtube.com/playlist?list=PL023BCE5134243987', 'https://oyc.yale.edu/classics/clcv-205', 'https://img.youtube.com/vi/BB-i7hZadLc/0.jpg'),
(14, 'Introduction to Psychology', 'Engleski', '2011.', 24, 23, 'MIT 9.00SC', 'Introduction to Psychology is a survey of the scientific study of human nature, including how the mind works, and how the brain supports the mind. Topics include the mental and neural bases of perception, emotion, learning, memory, cognition, child development, personality, psychopathology, and social interaction.', 'https://www.youtube.com/playlist?list=PL44ABC9278E2EE706', NULL, 'https://img.youtube.com/vi/2fbrl6WoIyo/0.jpg'),
(15, 'Introduction to Computer Science I', 'Engleski', '2020.', 13, 27, 'CS50', 'CS50 is Harvard University\'s introduction to the intellectual enterprises of computer science and the art of programming.', 'https://www.youtube.com/playlist?list=PLhQjrBD2T382_R182iC2gNZI9HzWFMC_8', 'https://cs50.harvard.edu/', 'https://img.youtube.com/vi/zYierUhIFNQ/0.jpg'),
(16, 'Introduction to Machine Learning', 'Engleski', '2019.', 38, 28, 'ECE421/ECE1513', 'An Introduction to the basic theory, the fundamental algorithms, and the computational toolboxes of machine learning.', 'https://www.youtube.com/playlist?list=PL-Mfq5QS-s8iS9XqKuApPE1TSlnZblFHF', 'https://engineering.calendar.utoronto.ca/course/ece421h1', 'https://img.youtube.com/vi/FvAibtlARQ8/0.jpg'),
(17, 'Introduction to Deep Learning', 'Engleski', '2021.', 43, 29, '6.S191', 'MIT\'s introductory course on deep learning methods with applications to computer vision, natural language processing, biology, and more! Students will gain foundational knowledge of deep learning algorithms and get practical experience in building neural networks in TensorFlow. Course concludes with a project proposal competition with feedback from staff and panel of industry sponsors. Prerequisites assume calculus (i.e. taking derivatives) and linear algebra (i.e. matrix multiplication), we\'ll try to explain everything else along the way! Experience in Python is helpful but not necessary. This class is taught during MIT\'s IAP term by current MIT PhD researchers.', 'https://www.youtube.com/playlist?list=PLtBw6njQRU-rwp5__7C0oIVt26ZgjG9NI', 'http://introtodeeplearning.com/', 'https://img.youtube.com/vi/uapdILWYTzE/0.jpg'),
(18, 'Intro to Game Programming', 'Engleski', '2021.', 22, 27, '	COMP 4300', '	This is an introductory course for students interested in learning the fundamentals of game programming. Topics include vector math for games, fundamentals of rendering, introduction to animation and artificial intelligence, collision detection, game physics and user-interfaces.', 'https://www.youtube.com/playlist?list=PL_xRyXins848jkwC9Coy7B4N5XTOnQZzz', 'http://www.cs.mun.ca/~dchurchill/teaching.shtml', 'https://img.youtube.com/vi/LpEdZbUdDe4/0.jpg'),
(19, 'Digital Design and Computer Architecture', 'Engleski', '2020.', 38, 44, NULL, '	The class provides a first introduction to the design of digital circuits and computer architecture. It covers technical foundations of how a computing platform is designed from the bottom up. It introduces various execution paradigms, hardware description languages, and principles in digital design and computer architecture. The focus is on fundamental techniques employed in the design of modern microprocessors and their hardware/software interface.', 'https://www.youtube.com/playlist?list=PL5PHm2jkkXmhs4EACiFKvTPAQkdYMZKGu', 'https://safari.ethz.ch/digitaltechnik/spring2020/doku.php?id=schedule', 'https://img.youtube.com/vi/AJBmIaUneB0/0.jpg'),
(20, 'Global Problems of Population Growth', 'Engleski', '2009.', 24, 27, '	MCDB 150', 'This survey course introduces students to the important and basic material on human fertility, population growth, the demographic transition and population policy. Topics include: the human and environmental dimensions of population pressure, demographic history, economic and cultural causes of demographic change, environmental carrying capacity and sustainability. Political, religious and ethical issues surrounding fertility are also addressed. The lectures and readings attempt to balance theoretical and demographic scale analyzes with studies of individual humans and communities. The perspective is global with both developed and developing countries included.', 'https://www.youtube.com/playlist?list=PLE60A08636F41C128', 'https://oyc.yale.edu/molecular-cellular-and-developmental-biology/mcdb-150', 'https://img.youtube.com/vi/mzdqyXtPbbE/0.jpg'),
(21, 'Evaluating Social Programs', 'Engleski', '2009.', 8, 12, 'RES.14-001', 'This five-day program on evaluating social programs will provide a thorough understanding of randomized evaluations and pragmatic step-by-step training for conducting one\'s own evaluation. While the course focuses on randomized evaluations, many of the topics, such as measuring outcomes and dealing with threats to the validity of an evaluation, are relevant for other methodologies.', 'https://www.youtube.com/playlist?list=PLFDDC7E64FF1EE996', 'https://ocw.mit.edu/resources/res-14-001-abdul-latif-jameel-poverty-action-lab-executive-training-evaluating-social-programs-2009-spring-2009/', 'https://img.youtube.com/vi/Hz1S82W8F04/0.jpg'),
(22, 'Aircraft Systems Engineering (study of Space Shuttle)', 'Engleski', '2005.', 23, 40, '16.885J / ESD.35J', '16.885J offers a holistic view of the aircraft as a system, covering: basic systems engineering; cost and weight estimation; basic aircraft performance; safety and reliability; lifecycle topics; aircraft subsystems; risk analysis and management; and system realization. Small student teams retrospectively analyze an existing aircraft covering: key design drivers and decisions; aircraft attributes and subsystems; and operational experience. Oral and written versions of the case study are delivered. For the Fall 2005 term, the class focuses on a systems engineering analysis of the Space Shuttle. It offers study of both design and operations of the shuttle, with frequent lectures by outside experts. Students choose specific shuttle systems for detailed analysis and develop new subsystem designs using state of the art technology.', 'https://www.youtube.com/playlist?list=PL35721A60B7B57386', 'https://ocw.mit.edu/courses/aeronautics-and-astronautics/16-885j-aircraft-systems-engineering-fall-2005/', 'https://img.youtube.com/vi/iiYhQtGpRhc/0.jpg'),
(23, 'Introductory Biology', 'Engleski', '2018.', 35, 28, 'MIT 7.016', 'Introductory Biology provides an introduction to fundamental principles of biochemistry, molecular biology and genetics for understanding the functions of living systems. Taught for the first time in Fall 2013, this course covers examples of the use of chemical biology and twenty-first-century molecular genetics in understanding human health and therapeutic intervention.', 'https://www.youtube.com/playlist?list=PLUl4u3cNGP63LmSVIVzy584-ZbjbJ-Y63', 'https://ocw.mit.edu/courses/biology/7-016-introductory-biology-fall-2018/', 'https://img.youtube.com/vi/KlVHqq38KJU/0.jpg'),
(24, 'Virology', 'Engleski', '2011.', 26, 30, 'Biology W3310', 'The course will emphasize the common reactions that must be completed by all viruses for successful reproduction within a host cell and survival and spread within a host population. The molecular basis of alternative reproductive cycles, the interactions of viruses with host organisms, and how these lead to disease are presented with examples drawn from a set of representative animal and human viruses, although selected bacterial viruses will be discussed.', 'https://www.youtube.com/playlist?list=PLF03C29905EF9A6CA', NULL, 'https://img.youtube.com/vi/E0rpsjyo3C0/0.jpg'),
(25, 'Principles of Evolution, Ecology and Behavior', 'Engleski', '2009.', 36, 27, 'EEB 122', 'This course presents the principles of evolution, ecology, and behavior for students beginning their study of biology and of the environment. It discusses major ideas and results in a manner accessible to all Yale College undergraduates. Recent advances have energized these fields with results that have implications well beyond their boundaries: ideas, mechanisms, and processes that should form part of the toolkit of all biologists and educated citizens.', 'https://www.youtube.com/playlist?list=PL6299F3195349CCDA', 'http://oyc.yale.edu/ecology-and-evolutionary-biology/eeb-122', 'https://img.youtube.com/vi/WJayMGhZxO0/0.jpg'),
(26, 'Frontiers of Biomedical Engineering', 'Engleski', '2008.', 25, 20, 'BENG 100', 'The course covers basic concepts of biomedical engineering and their connection with the spectrum of human activity. It serves as an introduction to the fundamental science and engineering on which biomedical engineering is based. Case studies of drugs and medical products illustrate the product development-product testing cycle, patent protection, and FDA approval. It is designed for science and non-science majors.', 'https://www.youtube.com/playlist?list=PL27E877E8206F196B', 'http://oyc.yale.edu/biomedical-engineering/beng-100', 'https://img.youtube.com/vi/Sn0bOX5Hau4/0.jpg'),
(27, 'Multivariable Calculus', 'Engleski', '2007.', 35, 28, '18.02', '	This course covers vector and multi-variable calculus. It is the second semester in the freshman calculus sequence. Topics include vectors and matrices, partial derivatives, double and triple integrals, and vector calculus in 2 and 3-space.', 'https://www.youtube.com/playlist?list=PL4C4C8A7D06566F38', 'https://ocw.mit.edu/courses/mathematics/18-02-multivariable-calculus-fall-2007/', 'https://img.youtube.com/vi/PxCxlsl_YwY/0.jpg'),
(28, 'Differential Equations', 'Engleski', '2011.', 32, 31, '18.03SC', 'Differential equations are the language in which the laws of nature are expressed. Understanding properties of solutions of differential equations is fundamental to much of contemporary science and engineering. Ordinary differential equations (ODE\'s) deal with functions of one variable, which can often be thought of as time.', 'https://www.youtube.com/playlist?list=PL64BDFBDA2AF24F7E', 'https://ocw.mit.edu/courses/mathematics/18-03sc-differential-equations-fall-2011/', 'https://img.youtube.com/vi/jOBBwI4CYjM/0.jpg'),
(29, 'Mathematical Methods for Engineers I / Computational Science', 'Engleski', '2008.', 50, 42, '18.085', 'This course provides a review of linear algebra, including applications to networks, structures, and estimation, Lagrange multipliers. Also covered are: differential equations of equilibrium; Laplace\'s equation and potential flow; boundary-value problems; minimum principles and calculus of variations; Fourier series; discrete Fourier transform; convolution; and applications.\r\nNote: This course was previously called \"Mathematical Methods for Engineers I.', 'https://www.youtube.com/playlist?list=PLF706B428FB7BD52C', 'https://ocw.mit.edu/courses/mathematics/18-085-computational-science-and-engineering-i-fall-2008/', 'https://img.youtube.com/vi/0BAMQmT-tf0/0.jpg'),
(30, 'Mathematical Methods for Engineers II', 'Engleski', '2006.', 29, 25, '18.086', 'This graduate-level course is a continuation of Mathematical Methods for Engineers I (18.085). Topics include numerical methods; initial-value problems; network flows; and optimization.', 'https://www.youtube.com/playlist?list=PL3A13781649466805', 'https://ocw.mit.edu/courses/mathematics/18-086-mathematical-methods-for-engineers-ii-spring-2006/', 'https://img.youtube.com/vi/zha1744fTRs/0.jpg'),
(31, 'Linear Finite Element Analysis', 'Engleski', '1982.', 12, 11, 'RES.2-002', 'This video series is a comprehensive course of study that presents effective finite element procedures for the linear analysis of solids and structures. The finite element method is the ideal tool for solving static and dynamic problems in engineering and the sciences. Linear analysis assumes linear elastic behavior and infinitesimally small displacements and strains. To establish appropriate models for analysis, it is necessary to become familiar with the finite element methods available.', 'https://www.youtube.com/playlist?list=PLD4017FC423EC3EB5', 'https://ocw.mit.edu/resources/res-2-002-finite-element-procedures-for-solids-and-structures-spring-2010/', 'https://img.youtube.com/vi/oNqSzzycRhw/0.jpg'),
(32, 'Nonlinear Finite Element Analysis', 'Engleski', '1986.', 22, 19, 'RES.2-002', 'In these videos, Professor K. J. Bathe, a researcher of world renown in the field of finite element analysis, builds upon the concepts developed in his previous video course on Linear Analysis. General nonlinear analysis techniques are presented by emphasizing physical concepts. The mathematical foundation of nonlinear finite element techniques is given in light of these physical requirements. A wide range of questions in engineering and the sciences can be addressed with these methods. Upon completion of the course, participants will be able to simulate and analyze problems such as: Large displacement collapse or buckling of structures, Progressive damage of structural components under high-temperature conditions, Stresses and strains of structures under severe earthquake loads, Accident conditions due to sudden overloads, Construction and repair of structures, Stability of underground openings', 'https://www.youtube.com/playlist?list=PL75C727EA9F6A0E8B', 'https://ocw.mit.edu/resources/res-2-002-finite-element-procedures-for-solids-and-structures-spring-2010/nonlinear/', 'https://img.youtube.com/vi/iOilZsS_cnM/0.jpg'),
(33, 'Introduction to Probability and Statistics', 'Engleski', '2013.', 16, 25, '131A', '	Introductory course covering basic principles of probability and statistical inference. Axiomatic definition of probability, random variables, probability distributions, expectation.', 'https://www.youtube.com/playlist?list=PLqOZ6FD_RQ7l-ML8sMNFHx0CY7jyudZq2', 'https://ocw.uci.edu/courses/math_131a_introduction_to_probability_and_statistics.html', 'https://img.youtube.com/vi/BV7xnuJNkSQ/0.jpg'),
(34, 'Statistics for the Behavioral Sciences', 'Engleski', NULL, 23, 24, 'PSYCH-UA 10', 'This applied math course provides students with the basic tools for evaluating data from studies in the behavioral sciences, particularly psychology. Students will gain familiarity with data description, variance and variability, significance tests, confident intervals, correlation and linear regression, analysis of variance, and other related topics. The goal is to learn the application of statistical reasoning to decision making. Current events are often used to illustrate these issues.', 'https://www.youtube.com/playlist?list=PL65EEC7C0F625F8DF', 'https://as.nyu.edu/content/nyu-as/as/departments/psychology/courses/statistics-for-the-behavioral-sciences.html', 'https://img.youtube.com/vi/CE1s5uydSiI/0.jpg'),
(35, 'The Fourier Transforms and Its Applications', 'Engleski', '2007.', 30, 26, 'EE 261', 'The Fourier transform is a tool for solving physical problems. In this course the emphasis is on relating the theoretical principles to solving practical engineering and science problems.', 'https://www.youtube.com/playlist?list=PLB24BC7956EE040CD', 'https://see.stanford.edu/course/ee261', 'https://img.youtube.com/vi/zKEh9CxFpsM/0.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pripadnost_kategoriji`
--

CREATE TABLE `pripadnost_kategoriji` (
  `idPripadnost_kategoriji` int(11) NOT NULL,
  `predavanje` int(11) NOT NULL,
  `kategorije` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pripadnost_kategoriji`
--

INSERT INTO `pripadnost_kategoriji` (`idPripadnost_kategoriji`, `predavanje`, `kategorije`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 9),
(5, 5, 10),
(6, 6, 11),
(7, 7, 3),
(8, 8, 2),
(9, 9, 5),
(10, 10, 5),
(11, 11, 12),
(12, 12, 13),
(13, 13, 6),
(14, 14, 7),
(15, 15, 8),
(16, 16, 8),
(17, 17, 8),
(18, 18, 8),
(19, 19, 8),
(20, 20, 15),
(21, 21, 15),
(22, 22, 15),
(23, 23, 1),
(24, 24, 1),
(25, 25, 1),
(26, 26, 1),
(27, 27, 5),
(28, 28, 5),
(29, 29, 5),
(30, 30, 5),
(31, 31, 5),
(32, 32, 5),
(33, 33, 5),
(34, 34, 5),
(35, 34, 7),
(36, 35, 5);

-- --------------------------------------------------------

--
-- Table structure for table `ustanove`
--

CREATE TABLE `ustanove` (
  `idUstanove` int(11) NOT NULL,
  `naziv_ustanove` varchar(50) DEFAULT NULL,
  `drzava` varchar(50) DEFAULT NULL,
  `mjesto` varchar(50) DEFAULT NULL,
  `slika_ustanove` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ustanove`
--

INSERT INTO `ustanove` (`idUstanove`, `naziv_ustanove`, `drzava`, `mjesto`, `slika_ustanove`) VALUES
(1, 'Columbia University', 'USA', 'New York City', 'cu.jpg'),
(2, 'Stanford University', 'USA', 'Palo Alto', 'su.jpg'),
(3, 'Massachusetts Institute of Technology', 'USA', 'Cambridge', 'mit.jpg'),
(4, 'Cornell University', 'USA', 'New York City', NULL),
(5, 'Yale University', 'USA', 'New Haven', NULL),
(6, 'University of California, Berkeley', 'USA', 'Berkeley ', NULL),
(7, '	University of Missouri–Kansas City', 'USA', 'Kansas City', NULL),
(8, 'University of California, Los Angeles', 'USA', 'Los Angeles', NULL),
(9, 'Harvard University', 'USA', 'Cambridge', NULL),
(10, 'University of Toronto', 'Canada', 'Toronto', NULL),
(11, 'Memorial University of Newfoundland', 'Canada', 'St. John\'s', NULL),
(12, 'ETH Zürich', 'Switzerland', 'Zürich', NULL),
(13, 'University of California, Irvine', 'USA', 'Irvine', NULL),
(14, 'New York University', 'USA', 'New York City', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `zaposlenje`
--

CREATE TABLE `zaposlenje` (
  `idZaposlenje` int(11) NOT NULL,
  `ustanova` int(11) NOT NULL,
  `predavac` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `zaposlenje`
--

INSERT INTO `zaposlenje` (`idZaposlenje`, `ustanova`, `predavac`) VALUES
(1, 2, 1),
(2, 3, 7),
(3, 1, 8),
(4, 3, 9),
(5, 3, 10),
(6, 3, 11),
(7, 3, 12),
(8, 4, 13),
(9, 5, 14),
(10, 6, 15),
(11, 3, 16),
(12, 3, 17),
(13, 7, 18),
(14, 3, 19),
(15, 8, 20),
(16, 5, 21),
(17, 3, 22),
(18, 9, 23),
(19, 10, 24),
(20, 3, 25),
(21, 11, 26),
(22, 12, 27),
(23, 5, 28),
(24, 3, 29),
(25, 3, 30),
(26, 3, 31),
(27, 5, 32),
(28, 5, 33),
(29, 3, 34),
(30, 3, 35),
(31, 3, 36),
(32, 3, 37),
(33, 13, 38),
(34, 14, 39),
(35, 2, 40);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategorije`
--
ALTER TABLE `kategorije`
  ADD PRIMARY KEY (`idKategorije`);

--
-- Indexes for table `lekcije`
--
ALTER TABLE `lekcije`
  ADD PRIMARY KEY (`idLekcije`);

--
-- Indexes for table `predavaci`
--
ALTER TABLE `predavaci`
  ADD PRIMARY KEY (`idPredavac`);

--
-- Indexes for table `predavanja`
--
ALTER TABLE `predavanja`
  ADD PRIMARY KEY (`idPredavanja`);

--
-- Indexes for table `pripadnost_kategoriji`
--
ALTER TABLE `pripadnost_kategoriji`
  ADD PRIMARY KEY (`idPripadnost_kategoriji`);

--
-- Indexes for table `ustanove`
--
ALTER TABLE `ustanove`
  ADD PRIMARY KEY (`idUstanove`);

--
-- Indexes for table `zaposlenje`
--
ALTER TABLE `zaposlenje`
  ADD PRIMARY KEY (`idZaposlenje`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategorije`
--
ALTER TABLE `kategorije`
  MODIFY `idKategorije` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `lekcije`
--
ALTER TABLE `lekcije`
  MODIFY `idLekcije` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `predavaci`
--
ALTER TABLE `predavaci`
  MODIFY `idPredavac` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `predavanja`
--
ALTER TABLE `predavanja`
  MODIFY `idPredavanja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `pripadnost_kategoriji`
--
ALTER TABLE `pripadnost_kategoriji`
  MODIFY `idPripadnost_kategoriji` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `ustanove`
--
ALTER TABLE `ustanove`
  MODIFY `idUstanove` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `zaposlenje`
--
ALTER TABLE `zaposlenje`
  MODIFY `idZaposlenje` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
