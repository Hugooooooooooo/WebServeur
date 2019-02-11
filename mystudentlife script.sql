-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  lun. 11 fév. 2019 à 22:15
-- Version du serveur :  5.6.11
-- Version de PHP :  7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `mystudentlife`
--

-- --------------------------------------------------------

--
-- Structure de la table `classes`
--

DROP TABLE IF EXISTS `classes`;
CREATE TABLE IF NOT EXISTS `classes` (
  `idClasse` int(11) NOT NULL AUTO_INCREMENT,
  `NomClasse` varchar(45) NOT NULL,
  `DepartementID` int(11) NOT NULL,
  PRIMARY KEY (`idClasse`),
  UNIQUE KEY `NomClasse_UNIQUE` (`NomClasse`),
  KEY `DepartementId_FK_idx` (`DepartementID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `classes`
--

INSERT INTO `classes` (`idClasse`, `NomClasse`, `DepartementID`) VALUES
(1, '101', 1),
(2, '102', 1),
(3, '103', 1),
(4, '104', 1),
(5, '105', 1),
(6, '106', 1),
(7, '107', 1),
(8, '108', 1),
(9, '109', 1),
(10, '110', 1),
(11, '111', 1),
(12, '112', 1),
(13, '201', 1),
(14, '202', 1),
(15, '203', 1),
(16, '204', 1),
(17, 'DUT SPE', 1),
(18, '2APP', 1);

-- --------------------------------------------------------

--
-- Structure de la table `departement`
--

DROP TABLE IF EXISTS `departement`;
CREATE TABLE IF NOT EXISTS `departement` (
  `DepartementID` int(11) NOT NULL,
  `NomDepartement` varchar(30) NOT NULL,
  `DepartementTelephone` varchar(30) NOT NULL,
  PRIMARY KEY (`DepartementID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `departement`
--

INSERT INTO `departement` (`DepartementID`, `NomDepartement`, `DepartementTelephone`) VALUES
(1, 'Informatique', '202-555-0128'),
(2, 'GEA', '202-555-0134'),
(3, 'Info-Com', '202-555-0159'),
(4, 'AES', '202-555-0159'),
(5, 'Stats', '202-555-0129');

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

DROP TABLE IF EXISTS `personne`;
CREATE TABLE IF NOT EXISTS `personne` (
  `PersonneID` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(30) NOT NULL,
  `Prenom` varchar(30) NOT NULL,
  `email` varchar(255) NOT NULL,
  `DepartementID` int(11) NOT NULL,
  `TypeID` int(11) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `date_inscription` date NOT NULL,
  `IdClasse` int(11) NOT NULL,
  PRIMARY KEY (`PersonneID`),
  KEY `FK_IdClasse_idx` (`IdClasse`),
  KEY `FK_DeptId` (`DepartementID`),
  KEY `FK_TYPE` (`TypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `personne`
--

INSERT INTO `personne` (`PersonneID`, `Nom`, `Prenom`, `email`, `DepartementID`, `TypeID`, `pass`, `date_inscription`, `IdClasse`) VALUES
(1, 'Elliott', 'Shaeleigh', 'id.risus@feugiat.net', 1, 2, 'NZK23CEO5DS', '2019-01-28', 1),
(2, 'Diaz', 'Erin', 'Nullam@augue.net', 1, 3, 'CZZ87HVJ2WN', '2018-08-31', 2),
(3, 'Chandler', 'Halla', 'fames.ac@temporarcu.co.uk', 1, 1, 'OWR24JRQ1RH', '2018-05-15', 7),
(4, 'Hoover', 'Caldwell', 'In@dolornonummyac.co.uk', 1, 3, 'IME83UWN2NI', '2018-05-24', 7),
(5, 'Mcclure', 'Tatiana', 'Cum@Nunc.co.uk', 1, 1, 'KEF72SXY9MA', '2018-04-15', 9),
(6, 'Haley', 'Jada', 'Aliquam@semperNam.ca', 1, 2, 'IVJ34BAR3IC', '2019-04-12', 2),
(7, 'Davis', 'Tallulah', 'quis.pede.Praesent@ullamcorpereueuismod.ca', 1, 1, 'ZUT09GRD7ML', '2020-01-16', 15),
(8, 'Joseph', 'Ian', 'pharetra.nibh.Aliquam@liberoMorbiaccumsan.co.uk', 1, 2, 'QFC36HQB6HS', '2019-12-22', 11),
(9, 'Ashley', 'Oleg', 'dictum.ultricies.ligula@imperdietornare.com', 1, 3, 'KXQ02SIA7XA', '2018-09-09', 17),
(10, 'Bradshaw', 'Zelda', 'neque.non@dolortempusnon.co.uk', 1, 1, 'SKA09UEK1VM', '2018-02-01', 2),
(11, 'Cortez', 'Caldwell', 'gravida.Aliquam@sodales.org', 1, 1, 'WRD23EGR3CX', '2018-03-12', 16),
(12, 'Cunningham', 'Tarik', 'feugiat.Sed@tellus.ca', 1, 2, 'IQA62EYA3VL', '2019-11-01', 1),
(13, 'Howell', 'Yasir', 'senectus@ligula.ca', 1, 1, 'ETE27DYV6HS', '2019-09-10', 18),
(14, 'Holland', 'Steel', 'vulputate@Fuscediamnunc.net', 1, 2, 'ORG22HZB1CH', '2019-08-08', 9),
(15, 'Huber', 'Gabriel', 'turpis.egestas.Fusce@magnis.com', 1, 3, 'LBH11GBQ9QV', '2019-10-16', 2),
(16, 'Clark', 'Mechelle', 'mauris.blandit.mattis@habitant.com', 1, 1, 'FSN38ROZ7QY', '2019-08-05', 8),
(17, 'Mullen', 'Donovan', 'tempor.diam@aclibero.com', 1, 3, 'ARL50RME4XP', '2019-12-02', 14),
(18, 'Rowe', 'Nora', 'libero@imperdietullamcorper.com', 1, 3, 'GNJ19JWT9QD', '2019-10-14', 3),
(19, 'Hurley', 'Signe', 'cubilia@Sedcongueelit.co.uk', 1, 2, 'LPC97POT5BS', '2018-11-11', 12),
(20, 'Glenn', 'Uriah', 'ut.sem@massanon.edu', 1, 3, 'BTK48ETR3LV', '2018-08-03', 16),
(21, 'Stark', 'Imani', 'luctus.felis@aliquetProinvelit.org', 1, 1, 'YZD60CZZ4MP', '2019-12-21', 11),
(22, 'Wilkinson', 'Regan', 'elementum@metus.net', 1, 2, 'CTG54IFN0BB', '2019-11-10', 3),
(23, 'Fulton', 'Eric', 'sapien.cursus@estNunclaoreet.ca', 1, 2, 'UCG64BPC8PZ', '2019-05-22', 6),
(24, 'Chen', 'Blythe', 'viverra.Donec@eratEtiamvestibulum.com', 1, 3, 'EYO22CIO9BM', '2019-01-11', 12),
(25, 'Cummings', 'Sage', 'at.arcu@nislNulla.co.uk', 1, 2, 'CGO93HMD7RD', '2019-03-01', 12),
(26, 'Cooke', 'Len', 'molestie.arcu.Sed@lacusvarius.ca', 1, 1, 'ESD46CEQ0ZP', '2019-08-14', 10),
(27, 'Jennings', 'Pamela', 'ligula.Aenean.gravida@utnisia.edu', 1, 2, 'TUH46NGA4GC', '2019-04-06', 6),
(28, 'Collins', 'Honorato', 'bibendum@amet.net', 1, 1, 'UCX42YAN6PQ', '2018-02-28', 17),
(29, 'Juarez', 'Gregory', 'lectus@dapibus.com', 1, 1, 'GRN26XFG6CP', '2019-11-12', 12),
(30, 'Clark', 'Haley', 'consectetuer.cursus@nullamagnamalesuada.co.uk', 1, 2, 'UPN53KHF8BD', '2018-04-02', 7),
(31, 'Carlson', 'Logan', 'condimentum@tincidunt.co.uk', 1, 2, 'RPZ78HQP0HO', '2019-12-16', 4),
(32, 'Whitley', 'Travis', 'Quisque.ac@acmattis.net', 1, 2, 'PXG66KXS0PK', '2018-05-28', 16),
(33, 'Maxwell', 'Cade', 'sagittis.Nullam.vitae@pede.com', 1, 3, 'BNC41QSG8FF', '2019-12-05', 2),
(34, 'Barrett', 'Jonas', 'purus@eu.co.uk', 1, 1, 'ZNO52AIQ6YB', '2019-04-13', 16),
(35, 'Ratliff', 'Samuel', 'dui.Fusce@elit.ca', 1, 3, 'WLB92RMM4JV', '2018-01-24', 7),
(36, 'Lester', 'Branden', 'enim.consequat@mattis.org', 1, 1, 'CHB56ATI9OA', '2019-09-23', 10),
(37, 'Carrillo', 'Risa', 'augue.eu.tellus@luctus.co.uk', 1, 3, 'XWJ63WOL5WF', '2018-07-09', 13),
(38, 'Hart', 'Nola', 'pellentesque@dolor.net', 1, 1, 'NNI99TMP9QN', '2019-06-04', 12),
(39, 'Parrish', 'Lydia', 'nec.eleifend@faucibusorci.com', 1, 2, 'JEU14VYP6DQ', '2018-04-04', 17),
(40, 'Harrell', 'Zeph', 'ut@vulputaterisusa.edu', 1, 2, 'CZV61PLF7BI', '2018-08-06', 11),
(41, 'Gilliam', 'Aristotle', 'habitant.morbi@ornareegestasligula.co.uk', 1, 3, 'KPD22JMB5VR', '2018-08-27', 10),
(42, 'Waters', 'Callum', 'nunc@Morbi.org', 1, 1, 'ROJ26FKT8OV', '2019-09-30', 1),
(43, 'Sutton', 'Charles', 'Curabitur@orcilobortis.com', 1, 1, 'QJI30CCD6GQ', '2018-02-06', 12),
(44, 'Reyes', 'Chase', 'vulputate.mauris@vehiculaetrutrum.co.uk', 1, 2, 'EWM45UEQ3WD', '2018-03-24', 4),
(45, 'Palmer', 'Nerea', 'mauris.elit.dictum@Cumsociis.edu', 1, 3, 'QRN24PEL0RG', '2018-07-17', 6),
(46, 'Herrera', 'Leonard', 'tempor@auctor.net', 1, 1, 'BVX62XME7RA', '2019-10-26', 1),
(47, 'Fisher', 'Len', 'urna@montes.ca', 1, 2, 'WXZ89HLR5XR', '2019-01-18', 16),
(48, 'Schroeder', 'Kyla', 'aliquet.diam@laoreetlectus.com', 1, 3, 'LRK94OWM0FA', '2018-08-23', 14),
(49, 'Black', 'Rhiannon', 'ipsum.sodales@viverraDonec.net', 1, 1, 'GGE05SPQ4DR', '2018-04-22', 5),
(50, 'Cook', 'Mari', 'ac.tellus@ullamcorpervelit.edu', 1, 3, 'HEW54YCF6AS', '2019-07-07', 2),
(51, 'Keller', 'Eric', 'egestas.urna@sollicitudinadipiscingligula.com', 1, 3, 'NOB37DQZ7BR', '2019-08-13', 8),
(52, 'Frye', 'Neve', 'tincidunt.nunc@orciquislectus.edu', 1, 2, 'GYI94WRK7QK', '2019-05-28', 16),
(53, 'Lindsay', 'Lane', 'Quisque@hendreritid.ca', 1, 3, 'XWN61LVO9TD', '2018-09-26', 11),
(54, 'Cline', 'Marshall', 'gravida.Praesent@urna.com', 1, 1, 'RCX69GVI3TC', '2019-12-22', 16),
(55, 'Phelps', 'Simone', 'torquent@sempertellusid.com', 1, 1, 'ILN34KBP1QJ', '2019-08-15', 7),
(56, 'Drake', 'Steven', 'volutpat.Nulla.facilisis@erosnon.edu', 1, 3, 'GVU15FCN9PN', '2018-02-07', 15),
(57, 'Acevedo', 'Russell', 'urna.et.arcu@Morbisit.ca', 1, 2, 'KXS64XSK7EW', '2019-03-22', 10),
(58, 'Hodges', 'Vernon', 'dictum@nonjustoProin.co.uk', 1, 1, 'IJF11BZV9TZ', '2018-03-12', 11),
(59, 'Evans', 'Constance', 'a.malesuada@lobortis.com', 1, 1, 'SUM84INU0HB', '2019-02-15', 7),
(60, 'Blankenship', 'Warren', 'dis.parturient.montes@dolortempus.edu', 1, 1, 'FNI01NUJ8MK', '2019-09-04', 3),
(61, 'Langley', 'Fulton', 'dignissim.tempor@metusAliquamerat.org', 1, 1, 'VIS62DUT7JX', '2018-07-25', 13),
(62, 'Lowe', 'Brenna', 'cursus.et.eros@vitaeerat.co.uk', 1, 1, 'XVH82NSM0DR', '2018-08-02', 8),
(63, 'Moses', 'Arsenio', 'rhoncus@arcuAliquamultrices.net', 1, 1, 'ZHR40AGJ8AP', '2018-12-22', 13),
(64, 'Tyler', 'Inga', 'lorem.tristique.aliquet@lacuspedesagittis.net', 1, 1, 'ZVH15TIC9QK', '2018-10-24', 15),
(65, 'Morrow', 'Tatum', 'augue.id@aceleifend.org', 1, 3, 'HXR19GUI7HZ', '2018-11-21', 11),
(66, 'Salas', 'Hope', 'semper@Aeneanegetmetus.edu', 1, 3, 'XHV06ANP3AB', '2018-04-20', 15),
(67, 'Sullivan', 'Ivan', 'Pellentesque.habitant@feugiatLoremipsum.edu', 1, 2, 'VKB94QPO4AN', '2018-03-09', 5),
(68, 'Woods', 'Unity', 'amet@magnaPhasellusdolor.co.uk', 1, 2, 'XBM00ITW9NB', '2018-05-23', 2),
(69, 'Fernandez', 'Jarrod', 'nonummy@magnaatortor.net', 1, 1, 'NBK99TWJ1NW', '2018-09-17', 5),
(70, 'Vaughan', 'Kevyn', 'eu@Sed.com', 1, 1, 'RDZ13XVX6GG', '2019-02-16', 9),
(71, 'Bradford', 'Abraham', 'sed.consequat.auctor@sem.net', 1, 2, 'UTF28ARN4WW', '2019-08-31', 9),
(72, 'Gates', 'Brett', 'nunc.interdum.feugiat@montes.edu', 1, 3, 'IYL94LJE5VH', '2020-01-02', 13),
(73, 'Osborne', 'Xenos', 'eget@amet.co.uk', 1, 1, 'KJH79POR0HY', '2018-08-11', 10),
(74, 'Bennett', 'Raphael', 'dui.nec.tempus@sem.org', 1, 3, 'QCB56IBT4BD', '2018-03-09', 1),
(75, 'Nguyen', 'Brady', 'Sed@Curabituregestasnunc.ca', 1, 3, 'JLE43EMI9EO', '2020-01-14', 9),
(76, 'Stokes', 'Selma', 'leo@enimSuspendissealiquet.edu', 1, 3, 'IEK66ZGJ6JY', '2019-06-25', 2),
(77, 'Bauer', 'Scarlett', 'Maecenas.ornare.egestas@euismodurna.net', 1, 3, 'VQK12ZTQ7WA', '2018-08-03', 5),
(78, 'Sears', 'Clayton', 'massa.rutrum.magna@acipsumPhasellus.edu', 1, 3, 'UFY22UIJ0ER', '2019-08-08', 13),
(79, 'Fry', 'Abel', 'in.tempus@erosnec.org', 1, 1, 'WYL89HBF8VW', '2018-10-22', 16),
(80, 'Hensley', 'Kevyn', 'vestibulum.massa.rutrum@neque.com', 1, 1, 'QMB65VSW9HA', '2018-12-08', 13),
(81, 'Fletcher', 'Teegan', 'Suspendisse.sagittis.Nullam@Donec.edu', 1, 3, 'ZFW05IMV1UG', '2018-03-03', 10),
(82, 'Cohen', 'Rosalyn', 'Nulla@disparturient.edu', 1, 3, 'FJH94PGB3EJ', '2019-04-15', 14),
(83, 'Hughes', 'Aurelia', 'rutrum@cursusinhendrerit.ca', 1, 3, 'MZO77UFL0YW', '2018-11-22', 10),
(84, 'Golden', 'Samson', 'dapibus@feugiat.net', 1, 3, 'XET85CNN6RH', '2019-04-26', 14),
(85, 'Lang', 'Shay', 'per@eros.co.uk', 1, 2, 'YAW11HWE1YK', '2019-09-13', 15),
(86, 'Fisher', 'Hamish', 'felis.eget@In.edu', 1, 2, 'XML61MWD9DM', '2018-12-22', 5),
(87, 'Dickson', 'Melvin', 'mollis.Duis@velconvallisin.com', 1, 2, 'PHN11FFX7PL', '2018-09-27', 18),
(88, 'Mayer', 'Quentin', 'diam@nasceturridiculus.org', 1, 1, 'OAN34VQT4AK', '2018-04-08', 9),
(89, 'Alvarado', 'Merritt', 'a@Etiamgravidamolestie.edu', 1, 3, 'DBN85RLR3AE', '2019-08-29', 3),
(90, 'Mcpherson', 'Vladimir', 'Nunc@natoquepenatibuset.edu', 1, 3, 'GHK19ROX6UV', '2018-03-01', 8),
(91, 'Bailey', 'Nerea', 'sapien.cursus.in@viverraDonec.ca', 1, 2, 'XPU36GNI2DN', '2019-04-06', 13),
(92, 'Walters', 'Jescie', 'lacinia@est.net', 1, 2, 'WWC93YTV9EA', '2018-11-18', 16),
(93, 'Reyes', 'Xaviera', 'quam.Curabitur@sed.net', 1, 2, 'HQG59VPW5TC', '2018-10-10', 14),
(94, 'Harper', 'Herman', 'sit@quisturpis.co.uk', 1, 2, 'RCG60VFL1XU', '2019-04-02', 17),
(95, 'Kinney', 'Yuli', 'urna@pellentesqueafacilisis.org', 1, 1, 'FSZ24FRS7WJ', '2020-01-07', 17),
(96, 'Flores', 'Hasad', 'odio@commodoauctor.co.uk', 1, 3, 'UVD22ZMT6TM', '2019-08-05', 10),
(97, 'Byers', 'Phoebe', 'sem.semper.erat@elitdictumeu.ca', 1, 2, 'HYV11ABL5AX', '2018-08-05', 8),
(98, 'Merrill', 'Stacey', 'Aliquam@magnaCras.org', 1, 1, 'NUZ99HGI3EK', '2018-06-21', 1),
(99, 'Summers', 'Elton', 'semper.cursus@gravida.ca', 1, 2, 'XHF86HEI5DM', '2018-01-23', 1),
(100, 'Campos', 'Portia', 'Nulla@mipedenonummy.org', 1, 2, 'ECC47HOS4MC', '2019-09-16', 5),
(101, 'Campos', 'Claudomir', 'Claudomir.campos@digitim.fr', 1, 2, '123', '2019-09-16', 3);

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
CREATE TABLE IF NOT EXISTS `reservation` (
  `IdReservation` int(11) NOT NULL AUTO_INCREMENT,
  `SalleID` int(11) NOT NULL,
  `Date_Res` date NOT NULL,
  `HeureDebut` time NOT NULL,
  `PersonneID` int(11) NOT NULL,
  PRIMARY KEY (`IdReservation`),
  UNIQUE KEY `UC_Reservation` (`SalleID`,`Date_Res`,`HeureDebut`),
  KEY `FK_PersonneID_idx` (`PersonneID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `reservation`
--

INSERT INTO `reservation` (`IdReservation`, `SalleID`, `Date_Res`, `HeureDebut`, `PersonneID`) VALUES
(1, 3, '2019-01-24', '09:00:00', 4),
(2, 1, '2019-02-13', '17:00:00', 101),
(3, 1, '2019-02-07', '19:00:00', 101),
(4, 6, '2019-02-16', '19:00:00', 101);

-- --------------------------------------------------------

--
-- Structure de la table `salles`
--

DROP TABLE IF EXISTS `salles`;
CREATE TABLE IF NOT EXISTS `salles` (
  `SalleID` int(11) NOT NULL DEFAULT '0',
  `NomSalle` varchar(30) NOT NULL,
  PRIMARY KEY (`SalleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `salles`
--

INSERT INTO `salles` (`SalleID`, `NomSalle`) VALUES
(1, 'B01'),
(2, 'B02'),
(3, 'B03'),
(4, 'B04'),
(5, 'B05'),
(6, 'B06'),
(7, 'B07'),
(8, 'B08'),
(9, 'B09'),
(10, 'B10'),
(11, 'B11'),
(12, 'B12'),
(13, 'B13');

-- --------------------------------------------------------

--
-- Structure de la table `type`
--

DROP TABLE IF EXISTS `type`;
CREATE TABLE IF NOT EXISTS `type` (
  `TypeID` int(11) NOT NULL DEFAULT '0',
  `Role` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`TypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `type`
--

INSERT INTO `type` (`TypeID`, `Role`) VALUES
(1, 'Etudiant'),
(2, 'Professeur'),
(3, 'Administration');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `classes`
--
ALTER TABLE `classes`
  ADD CONSTRAINT `DepartementId_FK` FOREIGN KEY (`DepartementID`) REFERENCES `departement` (`DepartementID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `personne`
--
ALTER TABLE `personne`
  ADD CONSTRAINT `FK_DeptId` FOREIGN KEY (`DepartementID`) REFERENCES `departement` (`DepartementID`),
  ADD CONSTRAINT `FK_IdClasse` FOREIGN KEY (`IdClasse`) REFERENCES `classes` (`idClasse`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_TYPE` FOREIGN KEY (`TypeID`) REFERENCES `type` (`TypeID`);

--
-- Contraintes pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `FK_PersonneID` FOREIGN KEY (`PersonneID`) REFERENCES `personne` (`PersonneID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_Reservation_Salle` FOREIGN KEY (`SalleID`) REFERENCES `salles` (`SalleID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
