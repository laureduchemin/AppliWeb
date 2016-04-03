-- phpMyAdmin SQL Dump
-- version 4.4.13.1deb1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Dim 03 Avril 2016 à 18:52
-- Version du serveur :  5.6.28-0ubuntu0.15.10.1
-- Version de PHP :  5.6.11-1ubuntu3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `appliWeb`
--

-- --------------------------------------------------------

--
-- Structure de la table `Astuces`
--

CREATE TABLE IF NOT EXISTS `Astuces` (
  `nomChat` varchar(25) DEFAULT NULL,
  `pseudoJoueur` varchar(25) DEFAULT NULL,
  `astuce` varchar(125) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Chat`
--

CREATE TABLE IF NOT EXISTS `Chat` (
  `nomAnglais` varchar(25) DEFAULT NULL,
  `nomJaponais` varchar(25) DEFAULT NULL,
  `personnalite` varchar(25) DEFAULT NULL,
  `niveau` varchar(25) DEFAULT NULL,
  `caracteristiques` varchar(100) DEFAULT NULL,
  `tresor` varchar(25) DEFAULT NULL,
  `tresorDescription` varchar(100) DEFAULT NULL,
  `photo` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Chat`
--

INSERT INTO `Chat` (`nomAnglais`, `nomJaponais`, `personnalite`, `niveau`, `caracteristiques`, `tresor`, `tresorDescription`, `photo`) VALUES
('Snowball ', 'しろねこさん', 'Mellow', '63', 'Solid white', 'Flowered collar', 'A small collar made with a flower print pattern', NULL),
('Smokey ', 'くろねこさん', 'Hot and cold', '140', 'Solid black', 'Soft brush', 'A soft brush for fur', NULL),
('Spots ', 'しろくろさん', 'Joker', '75', 'Spots', 'Glow bracelet', 'Something to wear at evening events', NULL),
('Shadow ', 'はいいろさん', 'Peculiar', '50', 'Solid grey', 'Cicada skin', 'The cast-off skin from a moulting cicade', NULL),
('Sunny ', 'とびみけさん', 'Mischievous', '120', 'Turkish calico', 'Shiny acorn', 'An acorn with a shiny shell', NULL),
('Fred ', 'ちゃとらさん', 'Lady-killer', '150', 'Orange tabby', 'Seashell earring', 'A lovely drop earring with a small seashell', NULL),
('Pumpkin ', 'しろちゃとらさん', 'Spacey', '90', 'Orange and white tabby', 'Aluminium pins', 'They make rattling noises when you shake them', NULL),
('Callie ', 'みけさん', 'Carefree', '50', 'Calico', 'Damp matchbox', 'The matches are too damp to light', NULL),
('Tabitha ', 'しまみけさん', 'Leisurely', '40', 'Calico tabby', 'Random seeds', 'Random seeds', NULL),
('Bandit ', 'さびがらさん', 'Wild at heart', '180', 'Tortoiseshell', 'Teaser toy tip', 'A trophy from a hard-fought battle? ', NULL),
('Gabriel ', 'はちわれさん', 'Diligent', '150', 'Tuxedo', 'Raffle ticket', 'A ticket for a store raffle', NULL),
('Marshmallow ', 'ぽいんとさん', 'Aloof', '170', 'Pointed', 'Flower bookmark', 'A bookmark made from a purple pressed flower', NULL),
('Socks ', 'くつしたさん', 'Adventurous', '70', 'Black with white mitts', 'Small mittens', 'Small, handmade mittens', NULL),
('Lexy ', 'はいしろさん', 'Expensive tastes', '100', 'Grey and white', 'Dirty toy animal', 'A gently used small stuffed penguin', NULL),
('Bolt ', 'きじとらさん', 'Insatiable', '140', 'Brown tabby', 'Fish-stick board', 'A small, pungent board that once held fish sticks', NULL),
('Breezy ', 'しろきじさん', 'Laid back', '30', 'Brown and white tabby', 'Hourglass', 'An hourglass filled with blue sand', NULL),
('Misty ', 'さばとらさん', 'Lazy', '160', 'Mackerel tabby', 'Used hand warmer', 'A disposable hand warmer that''s already been used', NULL),
('Pickles ', 'しろさばさん', 'Faint-hearted', '0', 'Grey and white tabby', 'Silent bell', 'A small bell that does not ring', NULL),
('Pepper ', 'おっどさん', 'Shy', '165', 'Black with odd eyes', 'Toy mirror', 'A small, sturdy mirror', NULL),
('Patches ', 'ぶちさん', 'Jealous', '80', 'Orange patches', 'Coloured candles', 'A colourful assortment of candles', NULL),
('Gozer ', 'とーびーさん', 'Sore loser', '155', 'Tortoiseshell tabby', 'Scuffed dime', 'A coin with grooves around the edge', NULL),
('Cocoa ', 'ちゃはちさん', 'Indecisive', '45', 'Brown tuxedo', 'Six sided die', 'A normal six-sided die, good for curing indecision', NULL),
('Princess ', 'むぎわらさん', 'Ditzy', '125', 'Striped torbie', 'Bird feather', 'A beautiful osprey feather', NULL),
('Ginger ', 'あかげさん', 'Bashful', '60', 'Red with white mitts', 'Clean handkerchief', 'A freshly laundered handkerchief', NULL),
('Peaches ', 'くリーむさん', 'Capricious', '45', 'Tan and orange', 'Bendy straw', 'A plastic straw bent into a silly shape', NULL),
('Spud ', 'あかさびさん', 'Cautious', '80', 'Red tortoiseshell', 'Eyeglass lens', 'A lens from a pair of soda-bottle glasses', NULL),
('Mack ', 'しろとらさん', 'Determined', '130', 'White mackerel', 'Child''s wristband', 'A fabric wristband from an amusement park', NULL),
('Speckles ', 'くろぶちさん', 'Lonely', '40', 'Black patches', 'Damaged spoon', 'The tip is so chipped it looks more like a spork', NULL),
('Willie ', 'くろとらさん', 'Crafty', '75', 'Black tabby', 'Worn postcard', 'Whatever was written is too smudged to read now', NULL),
('Rascal ', 'はいはちさん', 'Selfish', '140', 'Grey tuxedo', 'Warped container', 'A plastic container covered with bite marks', NULL),
('Dottie ', 'しろみけさん', 'Friendly', '195', 'White calico', 'Bottle cap', 'A bottle cap with a thin piece of cork inside', NULL),
('Spooky ', 'はいさびさん', 'Reserved', '35', 'Grey tortoiseshell', 'Gift wrap ribbon', 'A slightly tangled ribbon once used to wrap presents', NULL),
('Joe DiMeowgio ', 'たてじまさん', 'Team player', '28', 'Baseball jersey', 'Signed baseball', 'A baseball with someone''s autograph', NULL),
('Senor Don Gato ', 'ながぐつさん', 'Scheming', '30', 'Mustachioed', 'Feathered hat', 'An attractive hat decorated with feathers', NULL),
('Xerxes IX ', 'ぷりんすさん', 'Regal', '70', 'Persian', 'Pretty stones', 'Beautiful, clear stones of unknown value', NULL),
('Chairman Meow ', 'なべねこさん', 'Boorish', '111', 'Camouflage', 'Dog tag', 'A silver tag with writing embossed on it', NULL),
('Saint Purrtrick ', 'ねこまたさん', 'Awe-inspiring', '222', 'Ethereal', 'Mysterious stone', 'A uniquely shaped polished stone that radiates power', NULL),
('Ms Fortune ', 'こいこいさん', 'Charismatic', '20', 'Gold', 'Gold coin', 'A shiny gold coin', NULL),
('Bob the Cat ', 'やまねこさん', 'Outdoorsy', '40', 'Adventurer', 'Antique compass', 'A continually spinning compass', NULL),
('Conductor Whisker ', 'えきちょうさん', 'Vigilant', '50', 'Railway uniform', 'Hand-drawn ticket', 'A ticket drawn by a child but too smudged to read', NULL),
('Tubbs ', 'まんぞくさん', 'Finicky Feaster', '130', 'Fluffy', 'Fish jerky', 'Piece of dried fish covered in claw marks', NULL),
('Mr Meowgi ', 'おさむらいさん', 'Mentoring', '250', 'Ronin', 'Odd wooden charm', 'A wood tag used for border crossings in ancient times', NULL),
('Lady Meow-Meow ', 'あめしょさん', 'Diva', '100', 'American shorthair', 'Novelty sunglasses', 'Oversized sunglasses used to avoid more than UV light', NULL),
('Guy Furry ', 'びすとろさん', 'Artisan', '30', 'Apron', 'Custom rolling pin', 'A rolling pin custom made to fit cat-sized paws', NULL),
('Kathmandu ', 'まろまゆさん', 'Refined', '150', 'Hunting coat', 'Elegant paint brush', 'A new paint brush with a fine point', NULL),
('Ramses the Great ', 'すふいんさん', 'Riddler', '230', 'Sphinx', 'Elegant staff', 'A staff with a complex design', NULL),
('Sassy Fran ', 'かふぇさん', 'Enthusiastic', '180', 'Waitress', 'Coffee cup', 'A dainty coffee cup with cute designs', NULL),
('Billy the Kitten ', 'きっどさん', 'Nihilistic', '250', 'Western wear', 'Western hat', 'A western hat worn by cowboys', NULL),
('Frosty', 'ゆきねこさん', 'Sensitive', '5', 'Straw coat', 'Thaw-proof snowman', 'This melt-resistant snowman is forever cold to the touch', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `Utilisateur`
--

CREATE TABLE IF NOT EXISTS `Utilisateur` (
  `pseudo` varchar(25) DEFAULT NULL,
  `mdp` varchar(25) DEFAULT NULL,
  `type_utilisateur` varchar(20) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `banni` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Utilisateur`
--

INSERT INTO `Utilisateur` (`pseudo`, `mdp`, `type_utilisateur`, `email`, `banni`) VALUES
('moi', 'moi', 'admin', 'machin@gmail.com', 0);

-- --------------------------------------------------------

--
-- Structure de la table `Vote`
--

CREATE TABLE IF NOT EXISTS `Vote` (
  `pseudo` varchar(25) DEFAULT NULL,
  `astuce` varchar(125) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
