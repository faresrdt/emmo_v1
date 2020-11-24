-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Hôte : db115703.sql-pro.online.net
-- Généré le : Dim 28 juin 2020 à 17:15
-- Version du serveur :  5.7.19-0ubuntu0.16.04.1
-- Version de PHP : 7.0.32-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Base de données : `db348787_emmo`
--
CREATE DATABASE IF NOT EXISTS `db348787_emmo` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `db348787_emmo`;

-- --------------------------------------------------------

--
-- Structure de la table `bien`
--

CREATE TABLE `bien` (
  `id` int(11) NOT NULL,
  `transac` varchar(50) NOT NULL,
  `titre` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `ville` varchar(50) NOT NULL,
  `departement` varchar(50) NOT NULL,
  `region` varchar(50) NOT NULL,
  `surface_int` int(11) NOT NULL,
  `surface_ext` int(11) NOT NULL,
  `nbr_pieces` int(11) NOT NULL,
  `nbr_sdb` int(11) NOT NULL,
  `balcon` varchar(5) NOT NULL,
  `terrasse` varchar(5) NOT NULL,
  `garage` varchar(5) NOT NULL,
  `cave` varchar(50) NOT NULL,
  `chauffage` varchar(50) NOT NULL,
  `annee_const` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `photo1` varchar(250) NOT NULL,
  `photo2` varchar(250) NOT NULL,
  `photo3` varchar(250) NOT NULL,
  `prix` int(50) NOT NULL,
  `date_crea` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `bien`
--

INSERT INTO `bien` (`id`, `transac`, `titre`, `type`, `ville`, `departement`, `region`, `surface_int`, `surface_ext`, `nbr_pieces`, `nbr_sdb`, `balcon`, `terrasse`, `garage`, `cave`, `chauffage`, `annee_const`, `description`, `photo1`, `photo2`, `photo3`, `prix`, `date_crea`) VALUES
(1, 'Achat', 'Maison T4', 'Maison', 'Cergy', '95', '8', 80, 300, 4, 2, 'non', 'non', 'non', 'Non', 'Gaz', 1942, 'Dans une impasse, petite maison en bon état comprenant bel espace de vie avec sa petite cuisine accès jardin , COMBLES AMENAGEABLES, cave et GARAGE. DPE: nc\r\nHonoraires d\'agence à la charge du vendeur.', 'Maison T420200413111940(1).jpg', 'Maison T4(2).jpg', 'maisonT4_3.jpg', 230000, '2020-01-06 14:25:45'),
(2, 'Achat', 'Appartement T2', 'Appartement', 'Pontoise', '95', '8', 55, 0, 2, 1, 'Oui', 'Non', 'Oui', '', 'Électricité', 2012, 'Super appartement bien placé et BG', 'appartT2_1.jpg', 'appartT2_2.jpg', 'appartT2_3.jpg', 170000, '2020-01-05 23:00:00'),
(3, 'Achat', 'Appartement F4 à Argenteuil', 'Appartement', 'Argenteuil', '95', '8', 75, 0, 4, 1, 'Oui', 'Non', 'Oui', '', 'Gaz', 2001, 'APPARTEMENT F4 de 75m² En plein coeur du centre ville d\'ARGENTEUIL, idéalement situé à 8 minutes de la gare ! Bel appartement lumineux avec des fenêtres double vitrages et des volets électriques. L\'appartement dispose d\'une cave et d\'une place de parking dans la résidence (bien entretenue et sécurisé). Aucun travaux n\'est à prévoir. A côté des commerces, des crèches et écoles ainsi que des installations sportives. N\'hésitez pas à me contacter pour plus d\'informations Copropriété de 147 lots (Pas de procédure en cours). Charges annuelles: 3080.00 euros.', 'appartArgentF4_1.jpg', 'appartArgentF4_2.jpg', 'appartArgentF4_3.jpg', 186000, '2020-02-20 11:46:19'),
(4, 'Achat', 'Appartement T2 Paris 14', 'Appartement', 'Paris', '75', '8', 39, 0, 2, 1, 'Non', 'Non', 'Non', '', 'Gaz', 1880, 'PERNETY VILLAGE - APPARTEMENT 2 PIÈCES 39m² AU DERNIER ÉTAGE AVEC ASCENSEUR - TRAVERSANT - Situé au 6e et dernier étage avec ascenseur d\'un immeuble en pierre de taille de standing. Cet appartement dispose : une entrée, un séjour, une chambre, cuisine indépendante, salle de bains avec W.C. L\'appartement bénéficie d\'un plan en étoile, traversant, une fenêtre dans chaque pièce, calme et lumineux. Cave. Proche commerces et transports Métro ligne 13, Bus 62,58,69\r\nHonoraires d\'agence à la charge de l\'acquéreur inclus :  5,00 % soit 22 000 € d\'honoraires.\r\nPrix hors honoraires : 440 000 €.', 'appart_Paris_T2_1.jpg', 'appart_Paris_T2_2.jpg', 'appart_Paris_T2_3.jpg', 462000, '2020-02-20 12:04:16'),
(5, 'Achat', 'Appartement T3 Paris 09', 'Appartement', 'Paris', '75', '8', 50, 0, 3, 1, 'Non', 'Non', 'Oui', '', 'Gaz', 1970, 'En Exclusivité, E-mmobilier vous propose un appartement 3 pièces de 50m²; il est situé Rue de Rochechouart, au 4ème étage d\'un bel immeuble ancien avec parties communes rénovées. Vous trouverez l\'entrée, le séjour avec parquet point de Hongrie, une belle chambre, un grand bureau, la cuisine indépendante pouvant s\'ouvrir sur le séjour, la salle de bains et les toilettes indépendantes. Ce 3 pièces est calme et lumineux, il est exposé plein Ouest sur cour ouverte. Chauffage individuel au gaz et vendu avec une cave. Contactez Olivier au 0673486281\r\nHonoraires d\'agence à la charge de l\'acquéreur inclus :  3,31 % soit 20 000 € d\'honoraires.\r\nPrix hors honoraires : 605 000 €.', 'Appart_T3_Paris_09_1.jpg', 'Appart_T3_Paris_09_2.jpg', 'Appart_T3_Paris_09_3.jpg', 625000, '2020-02-20 12:09:25'),
(6, 'Achat', 'Appartement T4 Bordeaux', 'Appartement', 'Bordeaux', '33', '10', 75, 0, 4, 1, 'Non', 'Oui', 'Oui', 'Oui', 'Électricité', 1998, 'BORDEAUX -CHARTRONS- Dans résidence récente, T4 en duplex situé au dernier étage comprenant au 1er niveau : entrée, séjour, cuisine us équipée, salon ou chambre supplémentaire, salle d\'eau, cellier, WC. A l\'étage : deux chambres, salle de bains, WC. L\'appartement dispose d\'une terrasse panoramique de plus de 60 m² et d\'un parking couvert. Parfait état !\r\nHonoraires d\'agence à la charge du vendeur.', 'appart_T4_Bordeaux_1.jpg', 'appart_T4_Bordeaux_2.jpg', 'appart_T4_Bordeaux_3.jpg', 359500, '2020-02-20 12:29:28'),
(7, 'Achat', 'Appartement T3 LYON', 'Appartement', 'Lyon', '69', '1', 80, 0, 3, 1, 'Oui', 'Non', 'Oui', 'Oui', 'Gaz', 1970, 'E-mmobilier Lyon 6 vous invite a découvrir en exclusivité Triangle d\'Or, dans une petite copropriété au calme et de bon standing, un lumineux T3 de 80 m2 environ, offrant de très belles prestations. Il se compose d\'une spacieuse pièce à vivre avec cuisine ouverte donnant sur un balcon de 11m2, d\'un espace nuit avec deux chambres au calme, donnant sur cour et une salle de bains comprenant douche à l\'italienne et un espace hammam. Ce bien est vendu avec une cave, possibilité de parking en sous-sol à la location.\r\nHonoraires d\'agence à la charge du vendeur.', 'Appartement_T3_LYON_1.jpg', 'Appartement_T3_LYON_2.jpg', '', 550000, '2020-02-20 12:36:04'),
(8, 'Achat', 'Appartement T3 Marseille', 'Appartement', 'Marseille', '13', '13', 75, 0, 3, 1, 'Non', 'Non', 'Non', 'Non', 'Électricité', 1870, 'Marseille 7 ème - Quartier Saint Victor - Au 120, bd de la Corderie, dans un immeuble ancien, cet appartement de 3 pièces est exposé plein sud. Au 3 ème étage sans ascenseur, sa cuisine est ouverte sur le séjour totalisant plus de 35m². La chambre principale (16.10m²), toujours plein Sud a ce privilège que beaucoup de gens vont vous envier : un véritable dressing de 6.86 m². Une seconde chambre et une salle de bains séparés de son WC. \r\nHonoraires d\'agence à la charge du vendeur.', 'appart_T3_Marseille_1.jpg', 'appart_T3_Marseille_2.jpg', 'appart_T3_Marseille_3.jpg', 289000, '2020-02-20 12:41:38'),
(9, 'Achat', 'Maison T12 Marseille 08', 'Maison', 'Marseille', '13', '13', 150, 0, 12, 3, 'Non', 'Oui', 'Oui', 'Oui', 'Gaz', 1970, 'E-mmobilier HUITIÈME vous propose en exclusivité cet immeuble / maison au calme dans un quartier très recherché et baignée de soleil . Maison agencé de la manière suivante: -Au rez-de -chaussée un spacieux garage 90m², -Au 1er étage un appartement de type 3 de 65m², -Au deuxième un T3 de 65m² avec sa terrasse de 20m² -Et au dernière étage un T2 sous charpente de 20m² carrez. Points forts : -GARAGE, Belles Prestations, Volets Roulants, double vitrage, EMPLACEMENT DE RÊVES.\r\nHonoraires d\'agence à la charge du vendeur.', 'maison_T12_Marseille_08_1.jpg', 'maison_T12_Marseille_08_2.jpg', 'maison_T12_Marseille_08_3.jpg', 825000, '2020-02-20 12:47:19'),
(10, 'Achat', 'Maison T9 Bordeaux', 'Maison', 'Bordeaux', '33', '10', 180, 50, 9, 2, 'Non', 'Oui', 'Oui', 'Oui', 'Gaz', 1920, 'BORDEAUX -SAINT SEURIN - RARE !!! A proximité de la Basilique St Seurin, Très belle maison bourgeoise en bon état, elle méritera toutefois un rafraîchissement voire une réorganisation des espaces. Avec ses 180 m² habitables et sa sa grande cave, nul doute qu\'une famille trouvera une parfaite maison pour asseoir son projet. Un jardin de plus de 50 m² vous offrira un bel espace de verdure au calme et sans vis-à vis ou un espace pour garer vos véhicules.\r\nHonoraires d\'agence à la charge du vendeur.', 'maison_T9_Bordeaux_1.jpg', 'maison_T9_Bordeaux_2.jpg', 'maison_T9_Bordeaux_3.jpg', 890000, '2020-02-20 12:50:46'),
(11, 'Achat', 'Maison T3 Marseille 12', 'Maison', 'Marseille', '13', '13', 57, 80, 3, 1, 'Oui', 'Oui', 'Oui', 'Non', 'Gaz', 1953, 'A deux pas de ST BARNABE, maison élevée d\'un étage, avec petit jardin, en copropriété. Au rez-de-chaussée, un séjour-cuisine ouvrant sur une terrasse et le jardin, un cellier. Au premier étage, deux chambres, une salle-de-bains et toilettes séparées. Double-vitrage et chauffage individuel au gaz. Un garage et une place de parking complètent le tout. Possibilité de créer une véranda de 14 m². Le métro est à moins d\'un quart d\'heure à pied.\r\nHonoraires d\'agence à la charge du vendeur.', 'maison_T3_Marseille_12_1.jpg', 'maison_T3_Marseille_12_2.jpg', 'maison_T3_Marseille_12_3.jpg', 283000, '2020-02-20 12:54:39'),
(12, 'Achat', 'Maison T8 Bordeaux', 'Maison', 'Bordeaux', '33', '10', 141, 61, 8, 2, 'Non', 'Oui', 'Oui', 'Non', 'Gaz', 1890, 'Dans un quartier recherché, venez découvrir cette maison entièrement rénovée, aux prestations anciennes conservées. En rez-de-chaussée, ce bien comprend une entrée, un salon avec cheminée, un séjour ouvert avec cuisine , 4 chambres dont une suite parentale avec salle d\'eau et une salle d\'eau indépendante. Les combles ont été aménagés, offrant ainsi une chambre supplémentaire et un bureau. Une cave, un jardin sans vis à vis et un garage attenant sur la parcelle complètent ce bien.\r\nHonoraires d\'agence à la charge de l\'acquéreur inclus :  5,00 % soit 42 500 € d\'honoraires.\r\nPrix hors honoraires : 850 000 €.', 'maison_T8_Bordeaux_1.jpg', 'maison_T8_Bordeaux_2.jpg', 'maison_T8_Bordeaux_3.jpg', 850000, '2020-02-20 13:00:50'),
(13, 'Achat', 'Maison T6 Lyon 03', 'Maison', 'Lyon', '69', '1', 157, 288, 6, 3, 'Non', 'Oui', 'Oui', 'Oui', 'Gaz', 1940, 'Grange Blanche, dans une petite rue calme à 5 min du métro D et du tram T2. Rare, 2 maisons (114m² et 43m²) sur le même terrain, une grande cave voûtée et un garage. La maison principale se compose d\'un séjour avec cheminée, une buanderie et une cuisine donnant accès au jardin. A l\'étage, 2 belles chambres en parquet avec placards et une SDB avec WC, au dernier niveau, une chambre mansardée avec SDE et WC. La maison secondaire propose un beau séjour cathédrale avec cuisine US, une chambre avec rangements et une SDE avec WC. Bien disponible fin Mai 2020.\r\nHonoraires d\'agence à la charge du vendeur.', 'maison_T6_Lyon_03_1.jpg', 'maison_T6_Lyon_03_2.jpg', 'maison_T6_Lyon_03_3.jpg', 860000, '2020-02-20 13:07:01'),
(14, 'Achat', 'Maison T4 Lille', 'Maison', 'Lille', '59', '7', 80, 60, 4, 1, 'Non', 'Oui', 'Oui', 'Oui', 'Gaz', 1984, 'Maison d\'environ 80 m² à rénover à 5 minutes à pied du métro Bois-Blancs. Proximité des transports, commerces... Elle comprend au rez-de-chaussée un salon/salle à manger, une cuisine et une salle de bains, au 1er étages, 2 chambres et au 2ème étage, une chambre et un grenier aménageable. Une cave et un jardin complètent ce bien.\r\nHonoraires d\'agence à la charge de l\'acquéreur inclus :  5,88 % soit 10 000 € d\'honoraires.\r\nPrix hors honoraires : 170 000 €.', 'maison_T4_Lille_1.jpg', 'maison_T4_Lille_2.jpg', 'maison_T4_Lille_3.jpg', 180000, '2020-02-20 13:19:50'),
(15, 'Location', 'Maison T5 Lille', 'Maison', 'Lille', '59', '7', 100, 0, 5, 1, 'Non', 'Non', 'Non', 'Non', 'Gaz', 1994, 'Lille Rue du Buisson Proche TRAM ST MAUR Maison de T5 comprenant entrée , séjour avec cheminée de feu de bois, cuisine simple donnant sur jardinet de ville , 2 wcs, 1sdb ( meuble lavabo et baignoire +wc), 3 chambres + bureau possibilité chambre. Possible colocation ETUDIANTE. Libre AU 1er MARS 2020\r\nDépôt de garantie :  1 200 € TTC\r\n\r\nHonoraires TTC charge locataire : 1 200 € TTC**, dont 200 € au titre de la réalisation de l\'état des lieux', 'maison_T5_Lille_1.jpg', 'maison_T5_Lille_2.jpg', 'maison_T5_Lille_3.jpg', 1200, '2020-02-20 13:30:16'),
(16, 'Location', 'Maison T5 près de CERGY', 'Maison', 'Cergy', '95', '8', 83, 79, 5, 1, 'Non', 'Oui', 'Non', 'Non', 'Gaz', 1970, 'Maison meublée et lumineuse (pour colocation) située sur la Préfecture à proximité des écoles (ESSEC/ENSEA/EISTI) et de l\'université comprenant au RDC : une entrée, un séjour (canapé/TV), une cuisine aménagée et équipée (four/micro-onde/plaque vitrocéramique/réfrigérateur), un cellier (lave linge/séchoir), un W.C et une chambre équipée : bureau/chaise de bureau/placard de rangement/lit. A l\'étage : 3 chambres équipées : bureau/chaise de bureau/placard de rangement/lit, une salle d\'eau avec W.C. Petit jardin. Montant du loyer par chambre: 471.50 € Provision de charges par chambre: 78.50 € Honoraires locataires : 830.60 €\r\nLoyer hors charges 1 886 € par mois, provision charges 314 € par mois, loyer charges comprises 2 200 € par mois\r\n\r\nDépôt de garantie :  3 772 € TTC\r\n\r\nHonoraires TTC charge locataire : 1 079,78 € TTC**, dont 249,18 € au titre de la réalisation de l\'état des lieux', 'maison_T5_CERGY_1.jpg', 'maison_T5_CERGY_2.jpg', 'maison_T5_CERGY_3.jpg', 2200, '2020-02-20 13:34:18'),
(17, 'Location', 'Maison T13 Lille', 'Maison', 'Lille', '59', '7', 208, 0, 12, 12, 'Non', 'Non', 'Non', 'Non', 'Électricité', 2001, 'VIEUX LILLE , rue du Béguinage au calme et secteur très recherché Magnifique maison bourgeoise rénovée à neuf offrant : 11 chambres de 10 à 14m² habitables en individuel + environ 85m² en parties communes . En individuel : chambre 10m² à 14 m². avec salle de bains (douche, lavabo, toilettes) literie 2 places haute de gamme, dressing, un modem avec wifi personnel 100 méga; En commun : un séjour avec télévision-salle à manger, une cuisine équipée avec 4 fours - 2 plaques de 4 foyers à induction - 4 frigidaires - salle de sport, buanderie 3 machines à laver, cave etc . Très bien situé, proche de toute commodité. A 2 minutes de l\'IAE, boulevard du peuple belge , à 5 minutes Grand place, métro, tramway . Public uniquement étudiant, avec parents se portant garants. A saisir, rapidement !\r\nLoyer hors charges 550 € par mois, provision charges 50 € par mois, loyer charges comprises 600 € par mois', 'maison_T13_Lille_1.jpg', 'maison_T13_Lille_2.jpg', 'maison_T13_Lille_3.jpg', 600, '2020-02-20 13:38:17'),
(18, 'Location', 'Appartement T1 Paris 10', 'Appartement', 'Paris', '75', '8', 28, 0, 1, 1, 'Oui', 'Non', 'Non', 'Non', 'Gaz', 1972, 'Dans un immeuble récent, et sécurisé, au 2e étage avec ascenseur, un studio meublé de 28 m² se composant d\'une petite entrée avec rangements, une pièce à vivre avec cuisine ouverte donnant sur un petit balcon et une salle d\'eau avec WC. Eau chaude et chauffage collectif (compris dans les charges). Proche toutes commodités (transports, commerces...) Libre de suite. Honoraires à la charge du locataire de 420 euros pour un bail en résidence principale (Loi 89) ou de 1028 euros pour un bail Code civil (hors résidence principale)\r\nLoyer hors charges 848 € par mois, provision charges 132 € par mois, loyer charges comprises 980 € par mois\r\n\r\nDépôt de garantie :  896 € TTC\r\n\r\nHonoraires TTC charge locataire : 420 € TTC**, dont 84 € au titre de la réalisation de l\'état des lieux', 'appart_T1_Paris_10_1.jpg', 'appart_T1_Paris_10_2.jpg', 'appart_T1_Paris_10_3.jpg', 420, '2020-02-20 14:13:22'),
(19, 'Location', 'Appartement T2 Paris 14', 'Appartement', 'Paris', '75', '8', 31, 0, 2, 1, 'Non', 'Non', 'Non', 'Oui', 'Électricité', 1850, 'ALESIA / RUE DE L\'AUDE Beau deux pièces MEUBLE en parfait état au 2ème étage avec ascenseur comprenant une entrée, un séjour, une cuisine séparée, une chambre et une salle de douche avec wc. Chauffage et eau individuel électrique.\r\nLoyer hors charges 1 007 € par mois, provision charges 60 € par mois, loyer charges comprises 1 067 € par mois\r\n\r\nDépôt de garantie :  2 014 € TTC\r\n\r\nHonoraires TTC charge locataire : 467,7 € TTC**, dont 93,54 € au titre de la réalisation de l\'état des lieux', 'appart_T2_Paris_14_1.jpg', 'appart_T2_Paris_14_2.jpg', 'appart_T2_Paris_14_3.jpg', 1067, '2020-02-20 14:18:32'),
(20, 'Location', 'Appartement T1 Cergy', 'Appartement', 'Cergy', '95', '8', 27, 0, 1, 1, 'Oui', 'Non', 'Non', 'Non', 'Électricité', 1990, 'Au dernière étage d\'une copropriété idéalement placée au pied du RER A et des commerces, studio comprenant : une entrée, une belle pièce à vivre lumineuse, une cuisine fermée aménagée, salle d\'eau/W.C. Cet appartement propose également une belle terrasse de 10m2 et un parking en sous-sol.\r\nLoyer hors charges 570 € par mois, provision charges 80 € par mois, loyer charges comprises 650 € par mois\r\n\r\nDépôt de garantie :  570 € TTC\r\n\r\nHonoraires TTC charge locataire : 80,4 € TTC**, dont 80,4 € au titre de la réalisation de l\'état des lieux', 'appart_T1_Cergy_1.jpg', 'appart_T1_Cergy_2.jpg', 'appart_T1_Cergy_3.jpg', 650, '2020-02-20 14:22:29'),
(21, 'Location', 'Appartement T1 Lyon 06', 'Appartement', 'Lyon', '69', '1', 24, 0, 1, 1, 'Non', 'Non', 'Non', 'Non', 'Électricité', 1970, 'QUAI DU RHONE - Lyon 6 - Au 1er étage d\'un immeuble ancien très bien situé, appartement meublé de 1 pièce d\'environ 23m², composé d\'une entrée avec placard, un séjour avec cuisine ouverte équipée, une chambre en mezzanine et une salle de bains avec WC - Libre le 13/02/2020 - Loyer mensuel 650 euros - Charges 10 euros : entretien des parties communes et eau froide compris (soumises à régularisation) - Honoraires 307.97 euros à la charge du locataire, dont 71.07 euros d\'état des lieux d\'entrée.\r\nLoyer hors charges 650 € par mois, provision charges 10 € par mois, loyer charges comprises 660 € par mois\r\n\r\nDépôt de garantie :  650 € TTC\r\n\r\nHonoraires TTC charge locataire : 307,97 € TTC**, dont 71,07 € au titre de la réalisation de l\'état des lieux', 'appart_T1_Lyon_06_1.jpg', 'appart_T1_Lyon_06_2.jpg', 'appart_T1_Lyon_06_3.jpg', 650, '2020-02-20 14:26:15'),
(22, 'Location', 'Appartement T2 près de MARSEILLE', 'Appartement', 'Marseille', '13', '13', 56, 0, 2, 1, 'Oui', 'Non', 'Non', 'Non', 'Gaz', 1997, 'BAS DE MONTOLIVET Laforêt Cinq Avenues vous propose ce T3 transformé en T2. L\'appartement se compose d\'un grand séjour climatisé donnant sur balcon, d\'une cuisine séparée donnant sur loggia tout comme la chambre, un couloir avec placard, d\'une salle d\'eau et de wc séparés. L\'appartement est loué avec un garage fermé en sous-sol. Copropriété propre, rue très peu passante. Proche transports, commerces, écoles.\r\nLoyer hors charges 640 € par mois, provision charges 110 € par mois, loyer charges comprises 750 € par mois\r\n\r\nDépôt de garantie :  640 € TTC\r\n\r\nHonoraires TTC charge locataire : 728 € TTC**, dont 168 € au titre de la réalisation de l\'état des lieux', 'appart_T2_MARSEILLE_1.jpg', 'appart_T2_MARSEILLE_2.jpg', 'appart_T2_MARSEILLE_3.jpg', 750, '2020-02-20 14:29:17'),
(41, 'Location', 'Testi', 'Maison', 'Taverny', 'Departement', '1', 2, 2, 3, 4, 'non', 'non', 'non', 'Non', 'Électricité', 5, 'ascdezvefv', 'Testi20200507193739(1).jpg', 'Testi20200507193739(2).jpg', 'Testi20200507193739(3).png', 500, '2020-05-07 17:37:39');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `pseudo`, `mail`, `password`) VALUES
(1, 'adminOne', 'fares.alib@gmail.com', '$2y$10$rIq8Gk.VpFFttcvF1BEfyOnPpk0DhSQIZbh0J63QQ2VOqbgoe4O9a'),
(12, 'jdjdjdjd', 'dscd@gmdz.fr', 'dscefvrvfe');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `bien`
--
ALTER TABLE `bien`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `bien`
--
ALTER TABLE `bien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;
