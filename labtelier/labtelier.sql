-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Client :  localhost:8889
-- Généré le :  Dim 28 Février 2016 à 17:32
-- Version du serveur :  5.5.42
-- Version de PHP :  5.5.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `labtelier`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contenu` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `article`
--

INSERT INTO `article` (`id`, `titre`, `contenu`) VALUES
(1, 'Article 1', 'Tantum autem cuique tribuendum, primum quantum ipse efficere possis, deinde etiam quantum ille quem diligas atque adiuves, sustinere. Non enim neque tu possis, quamvis excellas, omnes tuos ad honores amplissimos perducere, ut Scipio P. Rupilium potuit consulem efficere, fratrem eius L. non potuit. Quod si etiam possis quidvis deferre ad alterum, videndum est tamen, quid ille possit sustinere.\r\n\r\nEt quia Montius inter dilancinantium manus spiritum efflaturus Epigonum et Eusebium nec professionem nec dignitatem ostendens aliquotiens increpabat, qui sint hi magna quaerebatur industria, et nequid intepesceret, Epigonus e Lycia philosophus ducitur et Eusebius ab Emissa Pittacas cognomento, concitatus orator, cum quaestor non hos sed tribunos fabricarum insimulasset promittentes armorum si novas res agitari conperissent.'),
(2, 'Article 2', '<p style="text-align:justify"><span style="color:#006600"><img alt="laser" src="http://labtelier.esy.es/images/decoupeLaser.png" style="border-style:solid; border-width:0px; float:left; height:200px; margin-left:0px; margin-right:25px; width:200px" /><big><u><strong>Post hoc impie</strong></u></big></span> perpetratum quod in aliis quoque iam timebatur, tamquam licentia crudelitati indulta per suspicionum nebulas aestimati quidam noxii damnabantur. quorum pars necati, alii puniti bonorum multatione actique laribus suis extorres nullo sibi relicto praeter querelas et lacrimas, stipe conlaticia victitabant, et civili iustoque imperio ad voluntatem converso cruentam, claudebantur opulentae domus et clarae. Ego vero sic intellego, Patres conscripti, nos hoc tempore in provinciis decernendis perpetuae pacis habere oportere rationem. Nam quis hoc non sentit omnia alia esse nobis vacua ab omni periculo atque etiam suspicione belli? Et interdum acciderat, ut siquid in penetrali secreto nullo citerioris vitae ministro praesente paterfamilias uxori susurrasset in aurem, velut Amphiarao referente aut Marcio, quondam vatibus inclitis, postridie disceret imperator. ideoque etiam parietes arcanorum soli conscii timebantur. Ultima Syriarum est Palaestina per intervalla magna protenta, cultis abundans terris et nitidis et civitates habens quasdam egregias, nullam nulli cedentem sed sibi vicissim velut ad perpendiculum aemulas: Caesaream, quam ad honorem Octaviani principis exaedificavit Herodes, et Eleutheropolim et Neapolim itidemque Ascalonem Gazam aevo superiore exstructas. Horum adventum praedocti speculationibus fidis rectores militum tessera data sollemni armatos omnes celeri eduxere procursu et agiliter praeterito Calycadni fluminis ponte, cuius undarum magnitudo murorum adluit turres, in speciem locavere pugnandi. neque tamen exiluit quisquam nec permissus est congredi. formidabatur enim flagrans vesania manus et superior numero et ruitura sine respectu salutis in ferrum.</p>'),
(3, 'Article 3', 'Principium autem unde latius se funditabat, emersit ex negotio tali. Chilo ex vicario et coniux eius Maxima nomine, questi apud Olybrium ea tempestate urbi praefectum, vitamque suam venenis petitam adseverantes inpetrarunt ut hi, quos suspectati sunt, ilico rapti conpingerentur in vincula, organarius Sericus et Asbolius palaestrita et aruspex Campensis.\r\n\r\nIsdem diebus Apollinaris Domitiani gener, paulo ante agens palatii Caesaris curam, ad Mesopotamiam missus a socero per militares numeros immodice scrutabatur, an quaedam altiora meditantis iam Galli secreta susceperint scripta, qui conpertis Antiochiae gestis per minorem Armeniam lapsus Constantinopolim petit exindeque per protectores retractus artissime tenebatur.\r\n\r\nEt quia Montius inter dilancinantium manus spiritum efflaturus Epigonum et Eusebium nec professionem nec dignitatem ostendens aliquotiens increpabat, qui sint hi magna quaerebatur industria, et nequid intepesceret, Epigonus e Lycia philosophus ducitur et Eusebius ab Emissa Pittacas cognomento, concitatus orator, cum quaestor non hos sed tribunos fabricarum insimulasset promittentes armorum si novas res agitari conperissent.');

-- --------------------------------------------------------

--
-- Structure de la table `atelier`
--

CREATE TABLE `atelier` (
  `id` int(11) NOT NULL,
  `nomAtelier` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `atelier`
--

INSERT INTO `atelier` (`id`, `nomAtelier`) VALUES
(1, 'Bois'),
(2, 'Électronique'),
(3, 'Impression 3D'),
(4, 'Textile/Couture'),
(5, 'Découpe laser'),
(6, 'Co-working');

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id` int(11) NOT NULL,
  `nom` varchar(125) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `categorie`
--

INSERT INTO `categorie` (`id`, `nom`) VALUES
(1, 'Workshop'),
(2, 'Formation'),
(3, 'Postes');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `id` int(11) NOT NULL,
  `utilisateur_id` int(11) NOT NULL,
  `facture_id` int(11) NOT NULL,
  `dateCommande` datetime NOT NULL,
  `honoree` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `commandeproduit`
--

CREATE TABLE `commandeproduit` (
  `id` int(11) NOT NULL,
  `commande_id` int(11) NOT NULL,
  `produit_id` int(11) NOT NULL,
  `quantite` int(11) NOT NULL,
  `tarifArchive` double NOT NULL,
  `tvaArchive` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `facture`
--

CREATE TABLE `facture` (
  `id` int(11) NOT NULL,
  `dateFacture` datetime NOT NULL,
  `reglee` tinyint(1) NOT NULL,
  `numeroFacture` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `poste`
--

CREATE TABLE `poste` (
  `id` int(11) NOT NULL,
  `atelier_id` int(11) NOT NULL,
  `numeroPoste` int(11) NOT NULL,
  `calendrier` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)'
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `poste`
--

INSERT INTO `poste` (`id`, `atelier_id`, `numeroPoste`, `calendrier`) VALUES
(1, 1, 1, 'a:1:{i:2016;a:12:{s:2:"01";a:31:{s:2:"01";a:1:{i:5;s:1:"0";}s:2:"02";a:1:{i:6;s:1:"0";}s:2:"03";a:1:{i:7;s:1:"0";}s:2:"04";a:1:{i:1;s:1:"0";}s:2:"05";a:1:{i:2;s:1:"0";}s:2:"06";a:1:{i:3;s:1:"0";}s:2:"07";a:1:{i:4;s:1:"0";}s:2:"08";a:1:{i:5;s:1:"0";}s:2:"09";a:1:{i:6;s:1:"0";}i:10;a:1:{i:7;s:1:"0";}i:11;a:1:{i:1;s:1:"0";}i:12;a:1:{i:2;s:1:"0";}i:13;a:1:{i:3;s:1:"0";}i:14;a:1:{i:4;s:1:"0";}i:15;a:1:{i:5;s:1:"0";}i:16;a:1:{i:6;s:1:"0";}i:17;a:1:{i:7;s:1:"0";}i:18;a:1:{i:1;s:1:"0";}i:19;a:1:{i:2;s:1:"0";}i:20;a:1:{i:3;s:1:"0";}i:21;a:1:{i:4;s:1:"0";}i:22;a:1:{i:5;s:1:"0";}i:23;a:1:{i:6;s:1:"0";}i:24;a:1:{i:7;s:1:"0";}i:25;a:1:{i:1;s:1:"0";}i:26;a:1:{i:2;s:1:"0";}i:27;a:1:{i:3;s:1:"0";}i:28;a:1:{i:4;s:1:"0";}i:29;a:1:{i:5;s:1:"0";}i:30;a:1:{i:6;s:1:"0";}i:31;a:1:{i:7;s:1:"0";}}s:2:"02";a:29:{s:2:"01";a:1:{i:1;s:1:"0";}s:2:"02";a:1:{i:2;s:1:"0";}s:2:"03";a:1:{i:3;s:1:"0";}s:2:"04";a:1:{i:4;s:1:"0";}s:2:"05";a:1:{i:5;s:1:"0";}s:2:"06";a:1:{i:6;s:1:"0";}s:2:"07";a:1:{i:7;s:1:"0";}s:2:"08";a:1:{i:1;s:1:"0";}s:2:"09";a:1:{i:2;s:1:"0";}i:10;a:1:{i:3;s:1:"0";}i:11;a:1:{i:4;s:1:"0";}i:12;a:1:{i:5;s:1:"0";}i:13;a:1:{i:6;s:1:"0";}i:14;a:1:{i:7;s:1:"0";}i:15;a:1:{i:1;s:1:"0";}i:16;a:1:{i:2;s:1:"0";}i:17;a:1:{i:3;s:1:"0";}i:18;a:1:{i:4;s:1:"0";}i:19;a:1:{i:5;s:1:"0";}i:20;a:1:{i:6;s:1:"0";}i:21;a:1:{i:7;s:1:"0";}i:22;a:1:{i:1;s:1:"0";}i:23;a:1:{i:2;s:1:"0";}i:24;a:1:{i:3;s:1:"0";}i:25;a:1:{i:4;s:1:"0";}i:26;a:1:{i:5;s:1:"0";}i:27;a:1:{i:6;s:1:"0";}i:28;a:1:{i:7;s:1:"0";}i:29;a:1:{i:1;s:1:"0";}}s:2:"03";a:31:{s:2:"01";a:1:{i:2;s:1:"0";}s:2:"02";a:1:{i:3;s:1:"0";}s:2:"03";a:1:{i:4;s:1:"0";}s:2:"04";a:1:{i:5;s:1:"0";}s:2:"05";a:1:{i:6;s:1:"0";}s:2:"06";a:1:{i:7;s:1:"0";}s:2:"07";a:1:{i:1;s:1:"0";}s:2:"08";a:1:{i:2;s:1:"0";}s:2:"09";a:1:{i:3;s:1:"0";}i:10;a:1:{i:4;s:1:"0";}i:11;a:1:{i:5;s:1:"0";}i:12;a:1:{i:6;s:1:"0";}i:13;a:1:{i:7;s:1:"0";}i:14;a:1:{i:1;s:1:"0";}i:15;a:1:{i:2;s:1:"0";}i:16;a:1:{i:3;s:1:"0";}i:17;a:1:{i:4;s:1:"0";}i:18;a:1:{i:5;s:1:"0";}i:19;a:1:{i:6;s:1:"0";}i:20;a:1:{i:7;s:1:"0";}i:21;a:1:{i:1;s:1:"0";}i:22;a:1:{i:2;s:1:"0";}i:23;a:1:{i:3;s:1:"0";}i:24;a:1:{i:4;s:1:"0";}i:25;a:1:{i:5;s:1:"0";}i:26;a:1:{i:6;s:1:"0";}i:27;a:1:{i:7;s:1:"0";}i:28;a:1:{i:1;s:1:"0";}i:29;a:1:{i:2;s:1:"0";}i:30;a:1:{i:3;s:1:"0";}i:31;a:1:{i:4;s:1:"0";}}s:2:"04";a:30:{s:2:"01";a:1:{i:5;s:1:"0";}s:2:"02";a:1:{i:6;s:1:"0";}s:2:"03";a:1:{i:7;s:1:"0";}s:2:"04";a:1:{i:1;s:1:"0";}s:2:"05";a:1:{i:2;s:1:"0";}s:2:"06";a:1:{i:3;s:1:"0";}s:2:"07";a:1:{i:4;s:1:"0";}s:2:"08";a:1:{i:5;s:1:"0";}s:2:"09";a:1:{i:6;s:1:"0";}i:10;a:1:{i:7;s:1:"0";}i:11;a:1:{i:1;s:1:"0";}i:12;a:1:{i:2;s:1:"0";}i:13;a:1:{i:3;s:1:"0";}i:14;a:1:{i:4;s:1:"0";}i:15;a:1:{i:5;s:1:"0";}i:16;a:1:{i:6;s:1:"0";}i:17;a:1:{i:7;s:1:"0";}i:18;a:1:{i:1;s:1:"0";}i:19;a:1:{i:2;s:1:"0";}i:20;a:1:{i:3;s:1:"0";}i:21;a:1:{i:4;s:1:"0";}i:22;a:1:{i:5;s:1:"0";}i:23;a:1:{i:6;s:1:"0";}i:24;a:1:{i:7;s:1:"0";}i:25;a:1:{i:1;s:1:"0";}i:26;a:1:{i:2;s:1:"0";}i:27;a:1:{i:3;s:1:"0";}i:28;a:1:{i:4;s:1:"0";}i:29;a:1:{i:5;s:1:"0";}i:30;a:1:{i:6;s:1:"0";}}s:2:"05";a:31:{s:2:"01";a:1:{i:7;s:1:"0";}s:2:"02";a:1:{i:1;s:1:"0";}s:2:"03";a:1:{i:2;s:1:"0";}s:2:"04";a:1:{i:3;s:1:"0";}s:2:"05";a:1:{i:4;s:1:"0";}s:2:"06";a:1:{i:5;s:1:"0";}s:2:"07";a:1:{i:6;s:1:"0";}s:2:"08";a:1:{i:7;s:1:"0";}s:2:"09";a:1:{i:1;s:1:"0";}i:10;a:1:{i:2;s:1:"0";}i:11;a:1:{i:3;s:1:"0";}i:12;a:1:{i:4;s:1:"0";}i:13;a:1:{i:5;s:1:"0";}i:14;a:1:{i:6;s:1:"0";}i:15;a:1:{i:7;s:1:"0";}i:16;a:1:{i:1;s:1:"0";}i:17;a:1:{i:2;s:1:"0";}i:18;a:1:{i:3;s:1:"0";}i:19;a:1:{i:4;s:1:"0";}i:20;a:1:{i:5;s:1:"0";}i:21;a:1:{i:6;s:1:"0";}i:22;a:1:{i:7;s:1:"0";}i:23;a:1:{i:1;s:1:"0";}i:24;a:1:{i:2;s:1:"0";}i:25;a:1:{i:3;s:1:"0";}i:26;a:1:{i:4;s:1:"0";}i:27;a:1:{i:5;s:1:"0";}i:28;a:1:{i:6;s:1:"0";}i:29;a:1:{i:7;s:1:"0";}i:30;a:1:{i:1;s:1:"0";}i:31;a:1:{i:2;s:1:"0";}}s:2:"06";a:30:{s:2:"01";a:1:{i:3;s:1:"0";}s:2:"02";a:1:{i:4;s:1:"0";}s:2:"03";a:1:{i:5;s:1:"0";}s:2:"04";a:1:{i:6;s:1:"0";}s:2:"05";a:1:{i:7;s:1:"0";}s:2:"06";a:1:{i:1;s:1:"0";}s:2:"07";a:1:{i:2;s:1:"0";}s:2:"08";a:1:{i:3;s:1:"0";}s:2:"09";a:1:{i:4;s:1:"0";}i:10;a:1:{i:5;s:1:"0";}i:11;a:1:{i:6;s:1:"0";}i:12;a:1:{i:7;s:1:"0";}i:13;a:1:{i:1;s:1:"0";}i:14;a:1:{i:2;s:1:"0";}i:15;a:1:{i:3;s:1:"0";}i:16;a:1:{i:4;s:1:"0";}i:17;a:1:{i:5;s:1:"0";}i:18;a:1:{i:6;s:1:"0";}i:19;a:1:{i:7;s:1:"0";}i:20;a:1:{i:1;s:1:"0";}i:21;a:1:{i:2;s:1:"0";}i:22;a:1:{i:3;s:1:"0";}i:23;a:1:{i:4;s:1:"0";}i:24;a:1:{i:5;s:1:"0";}i:25;a:1:{i:6;s:1:"0";}i:26;a:1:{i:7;s:1:"0";}i:27;a:1:{i:1;s:1:"0";}i:28;a:1:{i:2;s:1:"0";}i:29;a:1:{i:3;s:1:"0";}i:30;a:1:{i:4;s:1:"0";}}s:2:"07";a:31:{s:2:"01";a:1:{i:5;s:1:"0";}s:2:"02";a:1:{i:6;s:1:"0";}s:2:"03";a:1:{i:7;s:1:"0";}s:2:"04";a:1:{i:1;s:1:"0";}s:2:"05";a:1:{i:2;s:1:"0";}s:2:"06";a:1:{i:3;s:1:"0";}s:2:"07";a:1:{i:4;s:1:"0";}s:2:"08";a:1:{i:5;s:1:"0";}s:2:"09";a:1:{i:6;s:1:"0";}i:10;a:1:{i:7;s:1:"0";}i:11;a:1:{i:1;s:1:"0";}i:12;a:1:{i:2;s:1:"0";}i:13;a:1:{i:3;s:1:"0";}i:14;a:1:{i:4;s:1:"0";}i:15;a:1:{i:5;s:1:"0";}i:16;a:1:{i:6;s:1:"0";}i:17;a:1:{i:7;s:1:"0";}i:18;a:1:{i:1;s:1:"0";}i:19;a:1:{i:2;s:1:"0";}i:20;a:1:{i:3;s:1:"0";}i:21;a:1:{i:4;s:1:"0";}i:22;a:1:{i:5;s:1:"0";}i:23;a:1:{i:6;s:1:"0";}i:24;a:1:{i:7;s:1:"0";}i:25;a:1:{i:1;s:1:"0";}i:26;a:1:{i:2;s:1:"0";}i:27;a:1:{i:3;s:1:"0";}i:28;a:1:{i:4;s:1:"0";}i:29;a:1:{i:5;s:1:"0";}i:30;a:1:{i:6;s:1:"0";}i:31;a:1:{i:7;s:1:"0";}}s:2:"08";a:31:{s:2:"01";a:1:{i:1;s:1:"0";}s:2:"02";a:1:{i:2;s:1:"0";}s:2:"03";a:1:{i:3;s:1:"0";}s:2:"04";a:1:{i:4;s:1:"0";}s:2:"05";a:1:{i:5;s:1:"0";}s:2:"06";a:1:{i:6;s:1:"0";}s:2:"07";a:1:{i:7;s:1:"0";}s:2:"08";a:1:{i:1;s:1:"0";}s:2:"09";a:1:{i:2;s:1:"0";}i:10;a:1:{i:3;s:1:"0";}i:11;a:1:{i:4;s:1:"0";}i:12;a:1:{i:5;s:1:"0";}i:13;a:1:{i:6;s:1:"0";}i:14;a:1:{i:7;s:1:"0";}i:15;a:1:{i:1;s:1:"0";}i:16;a:1:{i:2;s:1:"0";}i:17;a:1:{i:3;s:1:"0";}i:18;a:1:{i:4;s:1:"0";}i:19;a:1:{i:5;s:1:"0";}i:20;a:1:{i:6;s:1:"0";}i:21;a:1:{i:7;s:1:"0";}i:22;a:1:{i:1;s:1:"0";}i:23;a:1:{i:2;s:1:"0";}i:24;a:1:{i:3;s:1:"0";}i:25;a:1:{i:4;s:1:"0";}i:26;a:1:{i:5;s:1:"0";}i:27;a:1:{i:6;s:1:"0";}i:28;a:1:{i:7;s:1:"0";}i:29;a:1:{i:1;s:1:"0";}i:30;a:1:{i:2;s:1:"0";}i:31;a:1:{i:3;s:1:"0";}}s:2:"09";a:30:{s:2:"01";a:1:{i:4;s:1:"0";}s:2:"02";a:1:{i:5;s:1:"0";}s:2:"03";a:1:{i:6;s:1:"0";}s:2:"04";a:1:{i:7;s:1:"0";}s:2:"05";a:1:{i:1;s:1:"0";}s:2:"06";a:1:{i:2;s:1:"0";}s:2:"07";a:1:{i:3;s:1:"0";}s:2:"08";a:1:{i:4;s:1:"0";}s:2:"09";a:1:{i:5;s:1:"0";}i:10;a:1:{i:6;s:1:"0";}i:11;a:1:{i:7;s:1:"0";}i:12;a:1:{i:1;s:1:"0";}i:13;a:1:{i:2;s:1:"0";}i:14;a:1:{i:3;s:1:"0";}i:15;a:1:{i:4;s:1:"0";}i:16;a:1:{i:5;s:1:"0";}i:17;a:1:{i:6;s:1:"0";}i:18;a:1:{i:7;s:1:"0";}i:19;a:1:{i:1;s:1:"0";}i:20;a:1:{i:2;s:1:"0";}i:21;a:1:{i:3;s:1:"0";}i:22;a:1:{i:4;s:1:"0";}i:23;a:1:{i:5;s:1:"0";}i:24;a:1:{i:6;s:1:"0";}i:25;a:1:{i:7;s:1:"0";}i:26;a:1:{i:1;s:1:"0";}i:27;a:1:{i:2;s:1:"0";}i:28;a:1:{i:3;s:1:"0";}i:29;a:1:{i:4;s:1:"0";}i:30;a:1:{i:5;s:1:"0";}}i:10;a:31:{s:2:"01";a:1:{i:6;s:1:"0";}s:2:"02";a:1:{i:7;s:1:"0";}s:2:"03";a:1:{i:1;s:1:"0";}s:2:"04";a:1:{i:2;s:1:"0";}s:2:"05";a:1:{i:3;s:1:"0";}s:2:"06";a:1:{i:4;s:1:"0";}s:2:"07";a:1:{i:5;s:1:"0";}s:2:"08";a:1:{i:6;s:1:"0";}s:2:"09";a:1:{i:7;s:1:"0";}i:10;a:1:{i:1;s:1:"0";}i:11;a:1:{i:2;s:1:"0";}i:12;a:1:{i:3;s:1:"0";}i:13;a:1:{i:4;s:1:"0";}i:14;a:1:{i:5;s:1:"0";}i:15;a:1:{i:6;s:1:"0";}i:16;a:1:{i:7;s:1:"0";}i:17;a:1:{i:1;s:1:"0";}i:18;a:1:{i:2;s:1:"0";}i:19;a:1:{i:3;s:1:"0";}i:20;a:1:{i:4;s:1:"0";}i:21;a:1:{i:5;s:1:"0";}i:22;a:1:{i:6;s:1:"0";}i:23;a:1:{i:7;s:1:"0";}i:24;a:1:{i:1;s:1:"0";}i:25;a:1:{i:2;s:1:"0";}i:26;a:1:{i:3;s:1:"0";}i:27;a:1:{i:4;s:1:"0";}i:28;a:1:{i:5;s:1:"0";}i:29;a:1:{i:6;s:1:"0";}i:30;a:1:{i:7;s:1:"0";}i:31;a:1:{i:1;s:1:"0";}}i:11;a:30:{s:2:"01";a:1:{i:2;s:1:"0";}s:2:"02";a:1:{i:3;s:1:"0";}s:2:"03";a:1:{i:4;s:1:"0";}s:2:"04";a:1:{i:5;s:1:"0";}s:2:"05";a:1:{i:6;s:1:"0";}s:2:"06";a:1:{i:7;s:1:"0";}s:2:"07";a:1:{i:1;s:1:"0";}s:2:"08";a:1:{i:2;s:1:"0";}s:2:"09";a:1:{i:3;s:1:"0";}i:10;a:1:{i:4;s:1:"0";}i:11;a:1:{i:5;s:1:"0";}i:12;a:1:{i:6;s:1:"0";}i:13;a:1:{i:7;s:1:"0";}i:14;a:1:{i:1;s:1:"0";}i:15;a:1:{i:2;s:1:"0";}i:16;a:1:{i:3;s:1:"0";}i:17;a:1:{i:4;s:1:"0";}i:18;a:1:{i:5;s:1:"0";}i:19;a:1:{i:6;s:1:"0";}i:20;a:1:{i:7;s:1:"0";}i:21;a:1:{i:1;s:1:"0";}i:22;a:1:{i:2;s:1:"0";}i:23;a:1:{i:3;s:1:"0";}i:24;a:1:{i:4;s:1:"0";}i:25;a:1:{i:5;s:1:"0";}i:26;a:1:{i:6;s:1:"0";}i:27;a:1:{i:7;s:1:"0";}i:28;a:1:{i:1;s:1:"0";}i:29;a:1:{i:2;s:1:"0";}i:30;a:1:{i:3;s:1:"0";}}i:12;a:31:{s:2:"01";a:1:{i:4;s:1:"0";}s:2:"02";a:1:{i:5;s:1:"0";}s:2:"03";a:1:{i:6;s:1:"0";}s:2:"04";a:1:{i:7;s:1:"0";}s:2:"05";a:1:{i:1;s:1:"0";}s:2:"06";a:1:{i:2;s:1:"0";}s:2:"07";a:1:{i:3;s:1:"0";}s:2:"08";a:1:{i:4;s:1:"0";}s:2:"09";a:1:{i:5;s:1:"0";}i:10;a:1:{i:6;s:1:"0";}i:11;a:1:{i:7;s:1:"0";}i:12;a:1:{i:1;s:1:"0";}i:13;a:1:{i:2;s:1:"0";}i:14;a:1:{i:3;s:1:"0";}i:15;a:1:{i:4;s:1:"0";}i:16;a:1:{i:5;s:1:"0";}i:17;a:1:{i:6;s:1:"0";}i:18;a:1:{i:7;s:1:"0";}i:19;a:1:{i:1;s:1:"0";}i:20;a:1:{i:2;s:1:"0";}i:21;a:1:{i:3;s:1:"0";}i:22;a:1:{i:4;s:1:"0";}i:23;a:1:{i:5;s:1:"0";}i:24;a:1:{i:6;s:1:"0";}i:25;a:1:{i:7;s:1:"0";}i:26;a:1:{i:1;s:1:"0";}i:27;a:1:{i:2;s:1:"0";}i:28;a:1:{i:3;s:1:"0";}i:29;a:1:{i:4;s:1:"0";}i:30;a:1:{i:5;s:1:"0";}i:31;a:1:{i:6;s:1:"0";}}}}'),
(2, 1, 2, 'a:1:{i:2016;a:12:{s:2:"01";a:31:{s:2:"01";a:1:{i:5;s:1:"0";}s:2:"02";a:1:{i:6;s:1:"0";}s:2:"03";a:1:{i:7;s:1:"0";}s:2:"04";a:1:{i:1;s:1:"0";}s:2:"05";a:1:{i:2;s:1:"0";}s:2:"06";a:1:{i:3;s:1:"0";}s:2:"07";a:1:{i:4;s:1:"0";}s:2:"08";a:1:{i:5;s:1:"0";}s:2:"09";a:1:{i:6;s:1:"0";}i:10;a:1:{i:7;s:1:"0";}i:11;a:1:{i:1;s:1:"0";}i:12;a:1:{i:2;s:1:"0";}i:13;a:1:{i:3;s:1:"0";}i:14;a:1:{i:4;s:1:"0";}i:15;a:1:{i:5;s:1:"0";}i:16;a:1:{i:6;s:1:"0";}i:17;a:1:{i:7;s:1:"0";}i:18;a:1:{i:1;s:1:"0";}i:19;a:1:{i:2;s:1:"0";}i:20;a:1:{i:3;s:1:"0";}i:21;a:1:{i:4;s:1:"0";}i:22;a:1:{i:5;s:1:"0";}i:23;a:1:{i:6;s:1:"0";}i:24;a:1:{i:7;s:1:"0";}i:25;a:1:{i:1;s:1:"0";}i:26;a:1:{i:2;s:1:"0";}i:27;a:1:{i:3;s:1:"0";}i:28;a:1:{i:4;s:1:"0";}i:29;a:1:{i:5;s:1:"0";}i:30;a:1:{i:6;s:1:"0";}i:31;a:1:{i:7;s:1:"0";}}s:2:"02";a:29:{s:2:"01";a:1:{i:1;s:1:"0";}s:2:"02";a:1:{i:2;s:1:"0";}s:2:"03";a:1:{i:3;s:1:"0";}s:2:"04";a:1:{i:4;s:1:"0";}s:2:"05";a:1:{i:5;s:1:"0";}s:2:"06";a:1:{i:6;s:1:"0";}s:2:"07";a:1:{i:7;s:1:"0";}s:2:"08";a:1:{i:1;s:1:"0";}s:2:"09";a:1:{i:2;s:1:"0";}i:10;a:1:{i:3;s:1:"0";}i:11;a:1:{i:4;s:1:"0";}i:12;a:1:{i:5;s:1:"0";}i:13;a:1:{i:6;s:1:"0";}i:14;a:1:{i:7;s:1:"0";}i:15;a:1:{i:1;s:1:"0";}i:16;a:1:{i:2;s:1:"0";}i:17;a:1:{i:3;s:1:"0";}i:18;a:1:{i:4;s:1:"0";}i:19;a:1:{i:5;s:1:"0";}i:20;a:1:{i:6;s:1:"0";}i:21;a:1:{i:7;s:1:"0";}i:22;a:1:{i:1;s:1:"0";}i:23;a:1:{i:2;s:1:"0";}i:24;a:1:{i:3;s:1:"0";}i:25;a:1:{i:4;s:1:"0";}i:26;a:1:{i:5;s:1:"0";}i:27;a:1:{i:6;s:1:"0";}i:28;a:1:{i:7;s:1:"0";}i:29;a:1:{i:1;s:1:"0";}}s:2:"03";a:31:{s:2:"01";a:1:{i:2;s:1:"0";}s:2:"02";a:1:{i:3;s:1:"0";}s:2:"03";a:1:{i:4;s:1:"0";}s:2:"04";a:1:{i:5;s:1:"0";}s:2:"05";a:1:{i:6;s:1:"0";}s:2:"06";a:1:{i:7;s:1:"0";}s:2:"07";a:1:{i:1;s:1:"0";}s:2:"08";a:1:{i:2;s:1:"0";}s:2:"09";a:1:{i:3;s:1:"0";}i:10;a:1:{i:4;s:1:"0";}i:11;a:1:{i:5;s:1:"0";}i:12;a:1:{i:6;s:1:"0";}i:13;a:1:{i:7;s:1:"0";}i:14;a:1:{i:1;s:1:"0";}i:15;a:1:{i:2;s:1:"0";}i:16;a:1:{i:3;s:1:"0";}i:17;a:1:{i:4;s:1:"0";}i:18;a:1:{i:5;s:1:"0";}i:19;a:1:{i:6;s:1:"0";}i:20;a:1:{i:7;s:1:"0";}i:21;a:1:{i:1;s:1:"0";}i:22;a:1:{i:2;s:1:"0";}i:23;a:1:{i:3;s:1:"0";}i:24;a:1:{i:4;s:1:"0";}i:25;a:1:{i:5;s:1:"0";}i:26;a:1:{i:6;s:1:"0";}i:27;a:1:{i:7;s:1:"0";}i:28;a:1:{i:1;s:1:"0";}i:29;a:1:{i:2;s:1:"0";}i:30;a:1:{i:3;s:1:"0";}i:31;a:1:{i:4;s:1:"0";}}s:2:"04";a:30:{s:2:"01";a:1:{i:5;s:1:"0";}s:2:"02";a:1:{i:6;s:1:"0";}s:2:"03";a:1:{i:7;s:1:"0";}s:2:"04";a:1:{i:1;s:1:"0";}s:2:"05";a:1:{i:2;s:1:"0";}s:2:"06";a:1:{i:3;s:1:"0";}s:2:"07";a:1:{i:4;s:1:"0";}s:2:"08";a:1:{i:5;s:1:"0";}s:2:"09";a:1:{i:6;s:1:"0";}i:10;a:1:{i:7;s:1:"0";}i:11;a:1:{i:1;s:1:"0";}i:12;a:1:{i:2;s:1:"0";}i:13;a:1:{i:3;s:1:"0";}i:14;a:1:{i:4;s:1:"0";}i:15;a:1:{i:5;s:1:"0";}i:16;a:1:{i:6;s:1:"0";}i:17;a:1:{i:7;s:1:"0";}i:18;a:1:{i:1;s:1:"0";}i:19;a:1:{i:2;s:1:"0";}i:20;a:1:{i:3;s:1:"0";}i:21;a:1:{i:4;s:1:"0";}i:22;a:1:{i:5;s:1:"0";}i:23;a:1:{i:6;s:1:"0";}i:24;a:1:{i:7;s:1:"0";}i:25;a:1:{i:1;s:1:"0";}i:26;a:1:{i:2;s:1:"0";}i:27;a:1:{i:3;s:1:"0";}i:28;a:1:{i:4;s:1:"0";}i:29;a:1:{i:5;s:1:"0";}i:30;a:1:{i:6;s:1:"0";}}s:2:"05";a:31:{s:2:"01";a:1:{i:7;s:1:"0";}s:2:"02";a:1:{i:1;s:1:"0";}s:2:"03";a:1:{i:2;s:1:"0";}s:2:"04";a:1:{i:3;s:1:"0";}s:2:"05";a:1:{i:4;s:1:"0";}s:2:"06";a:1:{i:5;s:1:"0";}s:2:"07";a:1:{i:6;s:1:"0";}s:2:"08";a:1:{i:7;s:1:"0";}s:2:"09";a:1:{i:1;s:1:"0";}i:10;a:1:{i:2;s:1:"0";}i:11;a:1:{i:3;s:1:"0";}i:12;a:1:{i:4;s:1:"0";}i:13;a:1:{i:5;s:1:"0";}i:14;a:1:{i:6;s:1:"0";}i:15;a:1:{i:7;s:1:"0";}i:16;a:1:{i:1;s:1:"0";}i:17;a:1:{i:2;s:1:"0";}i:18;a:1:{i:3;s:1:"0";}i:19;a:1:{i:4;s:1:"0";}i:20;a:1:{i:5;s:1:"0";}i:21;a:1:{i:6;s:1:"0";}i:22;a:1:{i:7;s:1:"0";}i:23;a:1:{i:1;s:1:"0";}i:24;a:1:{i:2;s:1:"0";}i:25;a:1:{i:3;s:1:"0";}i:26;a:1:{i:4;s:1:"0";}i:27;a:1:{i:5;s:1:"0";}i:28;a:1:{i:6;s:1:"0";}i:29;a:1:{i:7;s:1:"0";}i:30;a:1:{i:1;s:1:"0";}i:31;a:1:{i:2;s:1:"0";}}s:2:"06";a:30:{s:2:"01";a:1:{i:3;s:1:"0";}s:2:"02";a:1:{i:4;s:1:"0";}s:2:"03";a:1:{i:5;s:1:"0";}s:2:"04";a:1:{i:6;s:1:"0";}s:2:"05";a:1:{i:7;s:1:"0";}s:2:"06";a:1:{i:1;s:1:"0";}s:2:"07";a:1:{i:2;s:1:"0";}s:2:"08";a:1:{i:3;s:1:"0";}s:2:"09";a:1:{i:4;s:1:"0";}i:10;a:1:{i:5;s:1:"0";}i:11;a:1:{i:6;s:1:"0";}i:12;a:1:{i:7;s:1:"0";}i:13;a:1:{i:1;s:1:"0";}i:14;a:1:{i:2;s:1:"0";}i:15;a:1:{i:3;s:1:"0";}i:16;a:1:{i:4;s:1:"0";}i:17;a:1:{i:5;s:1:"0";}i:18;a:1:{i:6;s:1:"0";}i:19;a:1:{i:7;s:1:"0";}i:20;a:1:{i:1;s:1:"0";}i:21;a:1:{i:2;s:1:"0";}i:22;a:1:{i:3;s:1:"0";}i:23;a:1:{i:4;s:1:"0";}i:24;a:1:{i:5;s:1:"0";}i:25;a:1:{i:6;s:1:"0";}i:26;a:1:{i:7;s:1:"0";}i:27;a:1:{i:1;s:1:"0";}i:28;a:1:{i:2;s:1:"0";}i:29;a:1:{i:3;s:1:"0";}i:30;a:1:{i:4;s:1:"0";}}s:2:"07";a:31:{s:2:"01";a:1:{i:5;s:1:"0";}s:2:"02";a:1:{i:6;s:1:"0";}s:2:"03";a:1:{i:7;s:1:"0";}s:2:"04";a:1:{i:1;s:1:"0";}s:2:"05";a:1:{i:2;s:1:"0";}s:2:"06";a:1:{i:3;s:1:"0";}s:2:"07";a:1:{i:4;s:1:"0";}s:2:"08";a:1:{i:5;s:1:"0";}s:2:"09";a:1:{i:6;s:1:"0";}i:10;a:1:{i:7;s:1:"0";}i:11;a:1:{i:1;s:1:"0";}i:12;a:1:{i:2;s:1:"0";}i:13;a:1:{i:3;s:1:"0";}i:14;a:1:{i:4;s:1:"0";}i:15;a:1:{i:5;s:1:"0";}i:16;a:1:{i:6;s:1:"0";}i:17;a:1:{i:7;s:1:"0";}i:18;a:1:{i:1;s:1:"0";}i:19;a:1:{i:2;s:1:"0";}i:20;a:1:{i:3;s:1:"0";}i:21;a:1:{i:4;s:1:"0";}i:22;a:1:{i:5;s:1:"0";}i:23;a:1:{i:6;s:1:"0";}i:24;a:1:{i:7;s:1:"0";}i:25;a:1:{i:1;s:1:"0";}i:26;a:1:{i:2;s:1:"0";}i:27;a:1:{i:3;s:1:"0";}i:28;a:1:{i:4;s:1:"0";}i:29;a:1:{i:5;s:1:"0";}i:30;a:1:{i:6;s:1:"0";}i:31;a:1:{i:7;s:1:"0";}}s:2:"08";a:31:{s:2:"01";a:1:{i:1;s:1:"0";}s:2:"02";a:1:{i:2;s:1:"0";}s:2:"03";a:1:{i:3;s:1:"0";}s:2:"04";a:1:{i:4;s:1:"0";}s:2:"05";a:1:{i:5;s:1:"0";}s:2:"06";a:1:{i:6;s:1:"0";}s:2:"07";a:1:{i:7;s:1:"0";}s:2:"08";a:1:{i:1;s:1:"0";}s:2:"09";a:1:{i:2;s:1:"0";}i:10;a:1:{i:3;s:1:"0";}i:11;a:1:{i:4;s:1:"0";}i:12;a:1:{i:5;s:1:"0";}i:13;a:1:{i:6;s:1:"0";}i:14;a:1:{i:7;s:1:"0";}i:15;a:1:{i:1;s:1:"0";}i:16;a:1:{i:2;s:1:"0";}i:17;a:1:{i:3;s:1:"0";}i:18;a:1:{i:4;s:1:"0";}i:19;a:1:{i:5;s:1:"0";}i:20;a:1:{i:6;s:1:"0";}i:21;a:1:{i:7;s:1:"0";}i:22;a:1:{i:1;s:1:"0";}i:23;a:1:{i:2;s:1:"0";}i:24;a:1:{i:3;s:1:"0";}i:25;a:1:{i:4;s:1:"0";}i:26;a:1:{i:5;s:1:"0";}i:27;a:1:{i:6;s:1:"0";}i:28;a:1:{i:7;s:1:"0";}i:29;a:1:{i:1;s:1:"0";}i:30;a:1:{i:2;s:1:"0";}i:31;a:1:{i:3;s:1:"0";}}s:2:"09";a:30:{s:2:"01";a:1:{i:4;s:1:"0";}s:2:"02";a:1:{i:5;s:1:"0";}s:2:"03";a:1:{i:6;s:1:"0";}s:2:"04";a:1:{i:7;s:1:"0";}s:2:"05";a:1:{i:1;s:1:"0";}s:2:"06";a:1:{i:2;s:1:"0";}s:2:"07";a:1:{i:3;s:1:"0";}s:2:"08";a:1:{i:4;s:1:"0";}s:2:"09";a:1:{i:5;s:1:"0";}i:10;a:1:{i:6;s:1:"0";}i:11;a:1:{i:7;s:1:"0";}i:12;a:1:{i:1;s:1:"0";}i:13;a:1:{i:2;s:1:"0";}i:14;a:1:{i:3;s:1:"0";}i:15;a:1:{i:4;s:1:"0";}i:16;a:1:{i:5;s:1:"0";}i:17;a:1:{i:6;s:1:"0";}i:18;a:1:{i:7;s:1:"0";}i:19;a:1:{i:1;s:1:"0";}i:20;a:1:{i:2;s:1:"0";}i:21;a:1:{i:3;s:1:"0";}i:22;a:1:{i:4;s:1:"0";}i:23;a:1:{i:5;s:1:"0";}i:24;a:1:{i:6;s:1:"0";}i:25;a:1:{i:7;s:1:"0";}i:26;a:1:{i:1;s:1:"0";}i:27;a:1:{i:2;s:1:"0";}i:28;a:1:{i:3;s:1:"0";}i:29;a:1:{i:4;s:1:"0";}i:30;a:1:{i:5;s:1:"0";}}i:10;a:31:{s:2:"01";a:1:{i:6;s:1:"0";}s:2:"02";a:1:{i:7;s:1:"0";}s:2:"03";a:1:{i:1;s:1:"0";}s:2:"04";a:1:{i:2;s:1:"0";}s:2:"05";a:1:{i:3;s:1:"0";}s:2:"06";a:1:{i:4;s:1:"0";}s:2:"07";a:1:{i:5;s:1:"0";}s:2:"08";a:1:{i:6;s:1:"0";}s:2:"09";a:1:{i:7;s:1:"0";}i:10;a:1:{i:1;s:1:"0";}i:11;a:1:{i:2;s:1:"0";}i:12;a:1:{i:3;s:1:"0";}i:13;a:1:{i:4;s:1:"0";}i:14;a:1:{i:5;s:1:"0";}i:15;a:1:{i:6;s:1:"0";}i:16;a:1:{i:7;s:1:"0";}i:17;a:1:{i:1;s:1:"0";}i:18;a:1:{i:2;s:1:"0";}i:19;a:1:{i:3;s:1:"0";}i:20;a:1:{i:4;s:1:"0";}i:21;a:1:{i:5;s:1:"0";}i:22;a:1:{i:6;s:1:"0";}i:23;a:1:{i:7;s:1:"0";}i:24;a:1:{i:1;s:1:"0";}i:25;a:1:{i:2;s:1:"0";}i:26;a:1:{i:3;s:1:"0";}i:27;a:1:{i:4;s:1:"0";}i:28;a:1:{i:5;s:1:"0";}i:29;a:1:{i:6;s:1:"0";}i:30;a:1:{i:7;s:1:"0";}i:31;a:1:{i:1;s:1:"0";}}i:11;a:30:{s:2:"01";a:1:{i:2;s:1:"0";}s:2:"02";a:1:{i:3;s:1:"0";}s:2:"03";a:1:{i:4;s:1:"0";}s:2:"04";a:1:{i:5;s:1:"0";}s:2:"05";a:1:{i:6;s:1:"0";}s:2:"06";a:1:{i:7;s:1:"0";}s:2:"07";a:1:{i:1;s:1:"0";}s:2:"08";a:1:{i:2;s:1:"0";}s:2:"09";a:1:{i:3;s:1:"0";}i:10;a:1:{i:4;s:1:"0";}i:11;a:1:{i:5;s:1:"0";}i:12;a:1:{i:6;s:1:"0";}i:13;a:1:{i:7;s:1:"0";}i:14;a:1:{i:1;s:1:"0";}i:15;a:1:{i:2;s:1:"0";}i:16;a:1:{i:3;s:1:"0";}i:17;a:1:{i:4;s:1:"0";}i:18;a:1:{i:5;s:1:"0";}i:19;a:1:{i:6;s:1:"0";}i:20;a:1:{i:7;s:1:"0";}i:21;a:1:{i:1;s:1:"0";}i:22;a:1:{i:2;s:1:"0";}i:23;a:1:{i:3;s:1:"0";}i:24;a:1:{i:4;s:1:"0";}i:25;a:1:{i:5;s:1:"0";}i:26;a:1:{i:6;s:1:"0";}i:27;a:1:{i:7;s:1:"0";}i:28;a:1:{i:1;s:1:"0";}i:29;a:1:{i:2;s:1:"0";}i:30;a:1:{i:3;s:1:"0";}}i:12;a:31:{s:2:"01";a:1:{i:4;s:1:"0";}s:2:"02";a:1:{i:5;s:1:"0";}s:2:"03";a:1:{i:6;s:1:"0";}s:2:"04";a:1:{i:7;s:1:"0";}s:2:"05";a:1:{i:1;s:1:"0";}s:2:"06";a:1:{i:2;s:1:"0";}s:2:"07";a:1:{i:3;s:1:"0";}s:2:"08";a:1:{i:4;s:1:"0";}s:2:"09";a:1:{i:5;s:1:"0";}i:10;a:1:{i:6;s:1:"0";}i:11;a:1:{i:7;s:1:"0";}i:12;a:1:{i:1;s:1:"0";}i:13;a:1:{i:2;s:1:"0";}i:14;a:1:{i:3;s:1:"0";}i:15;a:1:{i:4;s:1:"0";}i:16;a:1:{i:5;s:1:"0";}i:17;a:1:{i:6;s:1:"0";}i:18;a:1:{i:7;s:1:"0";}i:19;a:1:{i:1;s:1:"0";}i:20;a:1:{i:2;s:1:"0";}i:21;a:1:{i:3;s:1:"0";}i:22;a:1:{i:4;s:1:"0";}i:23;a:1:{i:5;s:1:"0";}i:24;a:1:{i:6;s:1:"0";}i:25;a:1:{i:7;s:1:"0";}i:26;a:1:{i:1;s:1:"0";}i:27;a:1:{i:2;s:1:"0";}i:28;a:1:{i:3;s:1:"0";}i:29;a:1:{i:4;s:1:"0";}i:30;a:1:{i:5;s:1:"0";}i:31;a:1:{i:6;s:1:"0";}}}}'),
(3, 1, 3, 'a:1:{i:2016;a:12:{s:2:"01";a:31:{s:2:"01";a:1:{i:5;s:1:"0";}s:2:"02";a:1:{i:6;s:1:"0";}s:2:"03";a:1:{i:7;s:1:"0";}s:2:"04";a:1:{i:1;s:1:"0";}s:2:"05";a:1:{i:2;s:1:"0";}s:2:"06";a:1:{i:3;s:1:"0";}s:2:"07";a:1:{i:4;s:1:"0";}s:2:"08";a:1:{i:5;s:1:"0";}s:2:"09";a:1:{i:6;s:1:"0";}i:10;a:1:{i:7;s:1:"0";}i:11;a:1:{i:1;s:1:"0";}i:12;a:1:{i:2;s:1:"0";}i:13;a:1:{i:3;s:1:"0";}i:14;a:1:{i:4;s:1:"0";}i:15;a:1:{i:5;s:1:"0";}i:16;a:1:{i:6;s:1:"0";}i:17;a:1:{i:7;s:1:"0";}i:18;a:1:{i:1;s:1:"0";}i:19;a:1:{i:2;s:1:"0";}i:20;a:1:{i:3;s:1:"0";}i:21;a:1:{i:4;s:1:"0";}i:22;a:1:{i:5;s:1:"0";}i:23;a:1:{i:6;s:1:"0";}i:24;a:1:{i:7;s:1:"0";}i:25;a:1:{i:1;s:1:"0";}i:26;a:1:{i:2;s:1:"0";}i:27;a:1:{i:3;s:1:"0";}i:28;a:1:{i:4;s:1:"0";}i:29;a:1:{i:5;s:1:"0";}i:30;a:1:{i:6;s:1:"0";}i:31;a:1:{i:7;s:1:"0";}}s:2:"02";a:29:{s:2:"01";a:1:{i:1;s:1:"0";}s:2:"02";a:1:{i:2;s:1:"0";}s:2:"03";a:1:{i:3;s:1:"0";}s:2:"04";a:1:{i:4;s:1:"0";}s:2:"05";a:1:{i:5;s:1:"0";}s:2:"06";a:1:{i:6;s:1:"0";}s:2:"07";a:1:{i:7;s:1:"0";}s:2:"08";a:1:{i:1;s:1:"0";}s:2:"09";a:1:{i:2;s:1:"0";}i:10;a:1:{i:3;s:1:"0";}i:11;a:1:{i:4;s:1:"0";}i:12;a:1:{i:5;s:1:"0";}i:13;a:1:{i:6;s:1:"0";}i:14;a:1:{i:7;s:1:"0";}i:15;a:1:{i:1;s:1:"0";}i:16;a:1:{i:2;s:1:"0";}i:17;a:1:{i:3;s:1:"0";}i:18;a:1:{i:4;s:1:"0";}i:19;a:1:{i:5;s:1:"0";}i:20;a:1:{i:6;s:1:"0";}i:21;a:1:{i:7;s:1:"0";}i:22;a:1:{i:1;s:1:"0";}i:23;a:1:{i:2;s:1:"0";}i:24;a:1:{i:3;s:1:"0";}i:25;a:1:{i:4;s:1:"0";}i:26;a:1:{i:5;s:1:"0";}i:27;a:1:{i:6;s:1:"0";}i:28;a:1:{i:7;s:1:"0";}i:29;a:1:{i:1;s:1:"0";}}s:2:"03";a:31:{s:2:"01";a:1:{i:2;s:1:"0";}s:2:"02";a:1:{i:3;s:1:"0";}s:2:"03";a:1:{i:4;s:1:"0";}s:2:"04";a:1:{i:5;s:1:"0";}s:2:"05";a:1:{i:6;s:1:"0";}s:2:"06";a:1:{i:7;s:1:"0";}s:2:"07";a:1:{i:1;s:1:"0";}s:2:"08";a:1:{i:2;s:1:"0";}s:2:"09";a:1:{i:3;s:1:"0";}i:10;a:1:{i:4;s:1:"0";}i:11;a:1:{i:5;s:1:"0";}i:12;a:1:{i:6;s:1:"0";}i:13;a:1:{i:7;s:1:"0";}i:14;a:1:{i:1;s:1:"0";}i:15;a:1:{i:2;s:1:"0";}i:16;a:1:{i:3;s:1:"0";}i:17;a:1:{i:4;s:1:"0";}i:18;a:1:{i:5;s:1:"0";}i:19;a:1:{i:6;s:1:"0";}i:20;a:1:{i:7;s:1:"0";}i:21;a:1:{i:1;s:1:"0";}i:22;a:1:{i:2;s:1:"0";}i:23;a:1:{i:3;s:1:"0";}i:24;a:1:{i:4;s:1:"0";}i:25;a:1:{i:5;s:1:"0";}i:26;a:1:{i:6;s:1:"0";}i:27;a:1:{i:7;s:1:"0";}i:28;a:1:{i:1;s:1:"0";}i:29;a:1:{i:2;s:1:"0";}i:30;a:1:{i:3;s:1:"0";}i:31;a:1:{i:4;s:1:"0";}}s:2:"04";a:30:{s:2:"01";a:1:{i:5;s:1:"0";}s:2:"02";a:1:{i:6;s:1:"0";}s:2:"03";a:1:{i:7;s:1:"0";}s:2:"04";a:1:{i:1;s:1:"0";}s:2:"05";a:1:{i:2;s:1:"0";}s:2:"06";a:1:{i:3;s:1:"0";}s:2:"07";a:1:{i:4;s:1:"0";}s:2:"08";a:1:{i:5;s:1:"0";}s:2:"09";a:1:{i:6;s:1:"0";}i:10;a:1:{i:7;s:1:"0";}i:11;a:1:{i:1;s:1:"0";}i:12;a:1:{i:2;s:1:"0";}i:13;a:1:{i:3;s:1:"0";}i:14;a:1:{i:4;s:1:"0";}i:15;a:1:{i:5;s:1:"0";}i:16;a:1:{i:6;s:1:"0";}i:17;a:1:{i:7;s:1:"0";}i:18;a:1:{i:1;s:1:"0";}i:19;a:1:{i:2;s:1:"0";}i:20;a:1:{i:3;s:1:"0";}i:21;a:1:{i:4;s:1:"0";}i:22;a:1:{i:5;s:1:"0";}i:23;a:1:{i:6;s:1:"0";}i:24;a:1:{i:7;s:1:"0";}i:25;a:1:{i:1;s:1:"0";}i:26;a:1:{i:2;s:1:"0";}i:27;a:1:{i:3;s:1:"0";}i:28;a:1:{i:4;s:1:"0";}i:29;a:1:{i:5;s:1:"0";}i:30;a:1:{i:6;s:1:"0";}}s:2:"05";a:31:{s:2:"01";a:1:{i:7;s:1:"0";}s:2:"02";a:1:{i:1;s:1:"0";}s:2:"03";a:1:{i:2;s:1:"0";}s:2:"04";a:1:{i:3;s:1:"0";}s:2:"05";a:1:{i:4;s:1:"0";}s:2:"06";a:1:{i:5;s:1:"0";}s:2:"07";a:1:{i:6;s:1:"0";}s:2:"08";a:1:{i:7;s:1:"0";}s:2:"09";a:1:{i:1;s:1:"0";}i:10;a:1:{i:2;s:1:"0";}i:11;a:1:{i:3;s:1:"0";}i:12;a:1:{i:4;s:1:"0";}i:13;a:1:{i:5;s:1:"0";}i:14;a:1:{i:6;s:1:"0";}i:15;a:1:{i:7;s:1:"0";}i:16;a:1:{i:1;s:1:"0";}i:17;a:1:{i:2;s:1:"0";}i:18;a:1:{i:3;s:1:"0";}i:19;a:1:{i:4;s:1:"0";}i:20;a:1:{i:5;s:1:"0";}i:21;a:1:{i:6;s:1:"0";}i:22;a:1:{i:7;s:1:"0";}i:23;a:1:{i:1;s:1:"0";}i:24;a:1:{i:2;s:1:"0";}i:25;a:1:{i:3;s:1:"0";}i:26;a:1:{i:4;s:1:"0";}i:27;a:1:{i:5;s:1:"0";}i:28;a:1:{i:6;s:1:"0";}i:29;a:1:{i:7;s:1:"0";}i:30;a:1:{i:1;s:1:"0";}i:31;a:1:{i:2;s:1:"0";}}s:2:"06";a:30:{s:2:"01";a:1:{i:3;s:1:"0";}s:2:"02";a:1:{i:4;s:1:"0";}s:2:"03";a:1:{i:5;s:1:"0";}s:2:"04";a:1:{i:6;s:1:"0";}s:2:"05";a:1:{i:7;s:1:"0";}s:2:"06";a:1:{i:1;s:1:"0";}s:2:"07";a:1:{i:2;s:1:"0";}s:2:"08";a:1:{i:3;s:1:"0";}s:2:"09";a:1:{i:4;s:1:"0";}i:10;a:1:{i:5;s:1:"0";}i:11;a:1:{i:6;s:1:"0";}i:12;a:1:{i:7;s:1:"0";}i:13;a:1:{i:1;s:1:"0";}i:14;a:1:{i:2;s:1:"0";}i:15;a:1:{i:3;s:1:"0";}i:16;a:1:{i:4;s:1:"0";}i:17;a:1:{i:5;s:1:"0";}i:18;a:1:{i:6;s:1:"0";}i:19;a:1:{i:7;s:1:"0";}i:20;a:1:{i:1;s:1:"0";}i:21;a:1:{i:2;s:1:"0";}i:22;a:1:{i:3;s:1:"0";}i:23;a:1:{i:4;s:1:"0";}i:24;a:1:{i:5;s:1:"0";}i:25;a:1:{i:6;s:1:"0";}i:26;a:1:{i:7;s:1:"0";}i:27;a:1:{i:1;s:1:"0";}i:28;a:1:{i:2;s:1:"0";}i:29;a:1:{i:3;s:1:"0";}i:30;a:1:{i:4;s:1:"0";}}s:2:"07";a:31:{s:2:"01";a:1:{i:5;s:1:"0";}s:2:"02";a:1:{i:6;s:1:"0";}s:2:"03";a:1:{i:7;s:1:"0";}s:2:"04";a:1:{i:1;s:1:"0";}s:2:"05";a:1:{i:2;s:1:"0";}s:2:"06";a:1:{i:3;s:1:"0";}s:2:"07";a:1:{i:4;s:1:"0";}s:2:"08";a:1:{i:5;s:1:"0";}s:2:"09";a:1:{i:6;s:1:"0";}i:10;a:1:{i:7;s:1:"0";}i:11;a:1:{i:1;s:1:"0";}i:12;a:1:{i:2;s:1:"0";}i:13;a:1:{i:3;s:1:"0";}i:14;a:1:{i:4;s:1:"0";}i:15;a:1:{i:5;s:1:"0";}i:16;a:1:{i:6;s:1:"0";}i:17;a:1:{i:7;s:1:"0";}i:18;a:1:{i:1;s:1:"0";}i:19;a:1:{i:2;s:1:"0";}i:20;a:1:{i:3;s:1:"0";}i:21;a:1:{i:4;s:1:"0";}i:22;a:1:{i:5;s:1:"0";}i:23;a:1:{i:6;s:1:"0";}i:24;a:1:{i:7;s:1:"0";}i:25;a:1:{i:1;s:1:"0";}i:26;a:1:{i:2;s:1:"0";}i:27;a:1:{i:3;s:1:"0";}i:28;a:1:{i:4;s:1:"0";}i:29;a:1:{i:5;s:1:"0";}i:30;a:1:{i:6;s:1:"0";}i:31;a:1:{i:7;s:1:"0";}}s:2:"08";a:31:{s:2:"01";a:1:{i:1;s:1:"0";}s:2:"02";a:1:{i:2;s:1:"0";}s:2:"03";a:1:{i:3;s:1:"0";}s:2:"04";a:1:{i:4;s:1:"0";}s:2:"05";a:1:{i:5;s:1:"0";}s:2:"06";a:1:{i:6;s:1:"0";}s:2:"07";a:1:{i:7;s:1:"0";}s:2:"08";a:1:{i:1;s:1:"0";}s:2:"09";a:1:{i:2;s:1:"0";}i:10;a:1:{i:3;s:1:"0";}i:11;a:1:{i:4;s:1:"0";}i:12;a:1:{i:5;s:1:"0";}i:13;a:1:{i:6;s:1:"0";}i:14;a:1:{i:7;s:1:"0";}i:15;a:1:{i:1;s:1:"0";}i:16;a:1:{i:2;s:1:"0";}i:17;a:1:{i:3;s:1:"0";}i:18;a:1:{i:4;s:1:"0";}i:19;a:1:{i:5;s:1:"0";}i:20;a:1:{i:6;s:1:"0";}i:21;a:1:{i:7;s:1:"0";}i:22;a:1:{i:1;s:1:"0";}i:23;a:1:{i:2;s:1:"0";}i:24;a:1:{i:3;s:1:"0";}i:25;a:1:{i:4;s:1:"0";}i:26;a:1:{i:5;s:1:"0";}i:27;a:1:{i:6;s:1:"0";}i:28;a:1:{i:7;s:1:"0";}i:29;a:1:{i:1;s:1:"0";}i:30;a:1:{i:2;s:1:"0";}i:31;a:1:{i:3;s:1:"0";}}s:2:"09";a:30:{s:2:"01";a:1:{i:4;s:1:"0";}s:2:"02";a:1:{i:5;s:1:"0";}s:2:"03";a:1:{i:6;s:1:"0";}s:2:"04";a:1:{i:7;s:1:"0";}s:2:"05";a:1:{i:1;s:1:"0";}s:2:"06";a:1:{i:2;s:1:"0";}s:2:"07";a:1:{i:3;s:1:"0";}s:2:"08";a:1:{i:4;s:1:"0";}s:2:"09";a:1:{i:5;s:1:"0";}i:10;a:1:{i:6;s:1:"0";}i:11;a:1:{i:7;s:1:"0";}i:12;a:1:{i:1;s:1:"0";}i:13;a:1:{i:2;s:1:"0";}i:14;a:1:{i:3;s:1:"0";}i:15;a:1:{i:4;s:1:"0";}i:16;a:1:{i:5;s:1:"0";}i:17;a:1:{i:6;s:1:"0";}i:18;a:1:{i:7;s:1:"0";}i:19;a:1:{i:1;s:1:"0";}i:20;a:1:{i:2;s:1:"0";}i:21;a:1:{i:3;s:1:"0";}i:22;a:1:{i:4;s:1:"0";}i:23;a:1:{i:5;s:1:"0";}i:24;a:1:{i:6;s:1:"0";}i:25;a:1:{i:7;s:1:"0";}i:26;a:1:{i:1;s:1:"0";}i:27;a:1:{i:2;s:1:"0";}i:28;a:1:{i:3;s:1:"0";}i:29;a:1:{i:4;s:1:"0";}i:30;a:1:{i:5;s:1:"0";}}i:10;a:31:{s:2:"01";a:1:{i:6;s:1:"0";}s:2:"02";a:1:{i:7;s:1:"0";}s:2:"03";a:1:{i:1;s:1:"0";}s:2:"04";a:1:{i:2;s:1:"0";}s:2:"05";a:1:{i:3;s:1:"0";}s:2:"06";a:1:{i:4;s:1:"0";}s:2:"07";a:1:{i:5;s:1:"0";}s:2:"08";a:1:{i:6;s:1:"0";}s:2:"09";a:1:{i:7;s:1:"0";}i:10;a:1:{i:1;s:1:"0";}i:11;a:1:{i:2;s:1:"0";}i:12;a:1:{i:3;s:1:"0";}i:13;a:1:{i:4;s:1:"0";}i:14;a:1:{i:5;s:1:"0";}i:15;a:1:{i:6;s:1:"0";}i:16;a:1:{i:7;s:1:"0";}i:17;a:1:{i:1;s:1:"0";}i:18;a:1:{i:2;s:1:"0";}i:19;a:1:{i:3;s:1:"0";}i:20;a:1:{i:4;s:1:"0";}i:21;a:1:{i:5;s:1:"0";}i:22;a:1:{i:6;s:1:"0";}i:23;a:1:{i:7;s:1:"0";}i:24;a:1:{i:1;s:1:"0";}i:25;a:1:{i:2;s:1:"0";}i:26;a:1:{i:3;s:1:"0";}i:27;a:1:{i:4;s:1:"0";}i:28;a:1:{i:5;s:1:"0";}i:29;a:1:{i:6;s:1:"0";}i:30;a:1:{i:7;s:1:"0";}i:31;a:1:{i:1;s:1:"0";}}i:11;a:30:{s:2:"01";a:1:{i:2;s:1:"0";}s:2:"02";a:1:{i:3;s:1:"0";}s:2:"03";a:1:{i:4;s:1:"0";}s:2:"04";a:1:{i:5;s:1:"0";}s:2:"05";a:1:{i:6;s:1:"0";}s:2:"06";a:1:{i:7;s:1:"0";}s:2:"07";a:1:{i:1;s:1:"0";}s:2:"08";a:1:{i:2;s:1:"0";}s:2:"09";a:1:{i:3;s:1:"0";}i:10;a:1:{i:4;s:1:"0";}i:11;a:1:{i:5;s:1:"0";}i:12;a:1:{i:6;s:1:"0";}i:13;a:1:{i:7;s:1:"0";}i:14;a:1:{i:1;s:1:"0";}i:15;a:1:{i:2;s:1:"0";}i:16;a:1:{i:3;s:1:"0";}i:17;a:1:{i:4;s:1:"0";}i:18;a:1:{i:5;s:1:"0";}i:19;a:1:{i:6;s:1:"0";}i:20;a:1:{i:7;s:1:"0";}i:21;a:1:{i:1;s:1:"0";}i:22;a:1:{i:2;s:1:"0";}i:23;a:1:{i:3;s:1:"0";}i:24;a:1:{i:4;s:1:"0";}i:25;a:1:{i:5;s:1:"0";}i:26;a:1:{i:6;s:1:"0";}i:27;a:1:{i:7;s:1:"0";}i:28;a:1:{i:1;s:1:"0";}i:29;a:1:{i:2;s:1:"0";}i:30;a:1:{i:3;s:1:"0";}}i:12;a:31:{s:2:"01";a:1:{i:4;s:1:"0";}s:2:"02";a:1:{i:5;s:1:"0";}s:2:"03";a:1:{i:6;s:1:"0";}s:2:"04";a:1:{i:7;s:1:"0";}s:2:"05";a:1:{i:1;s:1:"0";}s:2:"06";a:1:{i:2;s:1:"0";}s:2:"07";a:1:{i:3;s:1:"0";}s:2:"08";a:1:{i:4;s:1:"0";}s:2:"09";a:1:{i:5;s:1:"0";}i:10;a:1:{i:6;s:1:"0";}i:11;a:1:{i:7;s:1:"0";}i:12;a:1:{i:1;s:1:"0";}i:13;a:1:{i:2;s:1:"0";}i:14;a:1:{i:3;s:1:"0";}i:15;a:1:{i:4;s:1:"0";}i:16;a:1:{i:5;s:1:"0";}i:17;a:1:{i:6;s:1:"0";}i:18;a:1:{i:7;s:1:"0";}i:19;a:1:{i:1;s:1:"0";}i:20;a:1:{i:2;s:1:"0";}i:21;a:1:{i:3;s:1:"0";}i:22;a:1:{i:4;s:1:"0";}i:23;a:1:{i:5;s:1:"0";}i:24;a:1:{i:6;s:1:"0";}i:25;a:1:{i:7;s:1:"0";}i:26;a:1:{i:1;s:1:"0";}i:27;a:1:{i:2;s:1:"0";}i:28;a:1:{i:3;s:1:"0";}i:29;a:1:{i:4;s:1:"0";}i:30;a:1:{i:5;s:1:"0";}i:31;a:1:{i:6;s:1:"0";}}}}'),
(4, 1, 4, 'N;'),
(5, 1, 5, 'N;'),
(6, 1, 6, 'N;'),
(7, 2, 1, 'N;'),
(8, 2, 2, 'N;'),
(9, 3, 1, 'N;'),
(10, 3, 2, 'N;'),
(11, 4, 1, 'N;'),
(12, 4, 2, 'N;'),
(13, 4, 3, 'N;'),
(14, 5, 1, 'N;'),
(15, 6, 1, 'N;');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id` int(11) NOT NULL,
  `tva_id` int(11) NOT NULL,
  `categorie_id` int(11) NOT NULL,
  `titre` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `article` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tarif` double NOT NULL,
  `confirme` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `produit`
--

INSERT INTO `produit` (`id`, `tva_id`, `categorie_id`, `titre`, `article`, `image`, `tarif`, `confirme`) VALUES
(1, 1, 2, 'Découpe du bois', 'Réaliser des pièces complexes et précises, pour des assemblages parfaits.', 'decoupeBois.png', 95, 1),
(2, 1, 1, 'Réaliser un skate board', 'Toutes les étapes, pour construire dans les règles de l''art, un skate de compétition.', 'skate.png', 120, 0),
(3, 1, 2, 'Travaux de couture', 'Apprenez à maîtriser une machine à coudre professionnelle. (Possibilité travail du cuir)', 'couture.png', 75, 1),
(4, 1, 1, 'Votre premier modèle 3D', 'Initiation à la modélisation 3D. Vous concevrez des couverts personnalisés, et vous repartirez avec un service complet de votre propre design.', 'impression3D.png', 200, 1),
(5, 1, 3, 'Atelier Bois Poste n°1', 'Réserver ce poste en fonction des plages disponibles en consultant le calendrier en ligne. La validation ajoutera vos choix dans le panier.', 'atelierBois.png', 45, 1);

-- --------------------------------------------------------

--
-- Structure de la table `tva`
--

CREATE TABLE `tva` (
  `id` int(11) NOT NULL,
  `valeur` double NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `tva`
--

INSERT INTO `tva` (`id`, `valeur`) VALUES
(1, 20),
(2, 10),
(3, 5.5),
(4, 2.1);

-- --------------------------------------------------------

--
-- Structure de la table `Utilisateurs`
--

CREATE TABLE `Utilisateurs` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `credentials_expired` tinyint(1) NOT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `nom` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `codePostal` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ville` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `pays` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `telephone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `valide` tinyint(1) NOT NULL,
  `civilite` varchar(5) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `Utilisateurs`
--

INSERT INTO `Utilisateurs` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `locked`, `expired`, `expires_at`, `confirmation_token`, `password_requested_at`, `roles`, `credentials_expired`, `credentials_expire_at`, `nom`, `prenom`, `adresse`, `codePostal`, `ville`, `pays`, `telephone`, `valide`, `civilite`) VALUES
(16, 'lucas', 'lucas', 'lucas.grossot@gmail.com', 'lucas.grossot@gmail.com', 1, 'pvbjy37vr1cgo84kgkcgo080kcwk0g0', '$2y$13$pvbjy37vr1cgo84kgkcgouhhap39nJCWnvp6o1fRaTQBPvM8PLA/6', '2016-02-05 10:35:07', 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, 'Grossot', 'Lucas', '54, rue alexandre boutin', '69100', 'villeurbanne', 'FR', '999999999', 1, '0'),
(17, 'bajard', 'bajard', 'jonathan.bajard@gmail.com', 'jonathan.bajard@gmail.com', 1, 'of7uu7sjvu8swg4oksk08wcgcwkcs4k', '$2y$13$of7uu7sjvu8swg4oksk08uqh32tid9SLs4S1d7Ya3kuHMmdDncUye', '2016-02-05 12:04:27', 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, 'bajard', 'jonathan', 'fhj', 'jskdf', 'LYON', 'FR', '0637367695', 1, '0'),
(20, 'monsieur', 'monsieur', 'labtelier@gmail.com', 'labtelier@gmail.com', 1, 'hlottx28u00ksw4g40ko0owsooo8g44', '$2y$13$hlottx28u00ksw4g40ko0epUwkusZs9cqmcEIIpQ/2aaVBAEb8EZe', '2016-02-28 16:53:58', 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:10:"ROLE_ADMIN";}', 0, NULL, 'TELIER', 'Lab', 'rue Libre', '12345', 'LYON', 'FR', '0666600666', 1, '0');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `atelier`
--
ALTER TABLE `atelier`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_6EEAA67DFB88E14F` (`utilisateur_id`),
  ADD KEY `IDX_6EEAA67D7F2DEE08` (`facture_id`);

--
-- Index pour la table `commandeproduit`
--
ALTER TABLE `commandeproduit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D2C2F07182EA2E54` (`commande_id`),
  ADD KEY `IDX_D2C2F071F347EFB` (`produit_id`);

--
-- Index pour la table `facture`
--
ALTER TABLE `facture`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `poste`
--
ALTER TABLE `poste`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7C890FAB82E2CF35` (`atelier_id`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_29A5EC274D79775F` (`tva_id`),
  ADD KEY `IDX_29A5EC27BCF5E72D` (`categorie_id`);

--
-- Index pour la table `tva`
--
ALTER TABLE `tva`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Utilisateurs`
--
ALTER TABLE `Utilisateurs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_514AEAA692FC23A8` (`username_canonical`),
  ADD UNIQUE KEY `UNIQ_514AEAA6A0D96FBF` (`email_canonical`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `atelier`
--
ALTER TABLE `atelier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `commandeproduit`
--
ALTER TABLE `commandeproduit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `facture`
--
ALTER TABLE `facture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `poste`
--
ALTER TABLE `poste`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `tva`
--
ALTER TABLE `tva`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `Utilisateurs`
--
ALTER TABLE `Utilisateurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `FK_6EEAA67D7F2DEE08` FOREIGN KEY (`facture_id`) REFERENCES `facture` (`id`),
  ADD CONSTRAINT `FK_6EEAA67DFB88E14F` FOREIGN KEY (`utilisateur_id`) REFERENCES `Utilisateurs` (`id`);

--
-- Contraintes pour la table `commandeproduit`
--
ALTER TABLE `commandeproduit`
  ADD CONSTRAINT `FK_D2C2F07182EA2E54` FOREIGN KEY (`commande_id`) REFERENCES `commande` (`id`),
  ADD CONSTRAINT `FK_D2C2F071F347EFB` FOREIGN KEY (`produit_id`) REFERENCES `produit` (`id`);

--
-- Contraintes pour la table `poste`
--
ALTER TABLE `poste`
  ADD CONSTRAINT `FK_7C890FAB82E2CF35` FOREIGN KEY (`atelier_id`) REFERENCES `atelier` (`id`);

--
-- Contraintes pour la table `produit`
--
ALTER TABLE `produit`
  ADD CONSTRAINT `FK_29A5EC274D79775F` FOREIGN KEY (`tva_id`) REFERENCES `tva` (`id`),
  ADD CONSTRAINT `FK_29A5EC27BCF5E72D` FOREIGN KEY (`categorie_id`) REFERENCES `categorie` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
