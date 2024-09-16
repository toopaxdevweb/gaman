-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 16, 2024 at 10:15 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `articles_mangas`
--
CREATE DATABASE IF NOT EXISTS `articles_mangas` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `articles_mangas`;

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int NOT NULL,
  `title` varchar(80) NOT NULL,
  `content` varchar(1500) NOT NULL,
  `image` varchar(200) NOT NULL,
  `Auteur` varchar(80) NOT NULL,
  `created_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `content`, `image`, `Auteur`, `created_at`) VALUES
(1, 'Astro Boy', 'Synopsis : Dans un futur où les robots coexistent avec les humains, Astro Boy, un robot doté de super-pouvoirs, est créé par le Dr. Tenma pour remplacer son fils décédé. Astro Boy lutte pour la justice tout en cherchant à comprendre son identité et sa place dans le monde', 'https://www.bing.com/th?id=OSK.9513e5b69a20290a76c164d5f92cde49&pid=cdx&w=107&h=128&c=7', 'Osamu Tezuka', '2024-09-13 08:49:32'),
(2, 'Dragon Ball', 'Synopsis : Suivez les aventures de Son Goku, un jeune garçon doté d’une force surhumaine, qui part à la recherche des sept boules de cristal légendaires, les Dragon Balls. Ces boules permettent d’invoquer un dragon qui exauce les vœux. Goku rencontre de nombreux amis et ennemis au cours de son périple', 'https://www.bing.com/th?id=OSK.a595316e872d318c0383e1bd0e9b91dc&pid=cdx&w=200&h=57&c=7', ' Akira Toriyama', '2024-09-13 09:59:13'),
(3, 'Your Name', 'Synopsis : Mitsuha, une lycéenne vivant dans une petite ville, et Taki, un lycéen de Tokyo, commencent à échanger leurs corps de manière inexplicable. À travers ces échanges, ils développent une connexion profonde et tentent de se retrouver malgré les obstacles temporels et spatiaux', 'https://www.bing.com/th?id=OSK.e2dbcd6920bcf8fc25c479f363ab8539&pid=cdx&w=85&h=128&c=7', 'Makoto Shinkai', '2024-09-13 10:01:17'),
(4, 'One Piece', 'Synopsis : Monkey D. Luffy, un jeune pirate au corps élastique grâce à un fruit du démon, part à la recherche du One Piece, le trésor légendaire laissé par le Roi des Pirates. Avec son équipage, il navigue sur les mers, affrontant divers adversaires et découvrant des mystères pour réaliser son rêve de devenir le Roi des Pirates', 'https://www.bing.com/th?id=OSK.35e1ed56778699f827ba5740f6c3354f&pid=cdx&w=200&h=80&c=7', 'Eiichiro Oda\r\n', '2024-09-13 10:02:26'),
(5, 'fullmetal Alchemist', 'Synopsis : Les frères Edward et Alphonse Elric utilisent l’alchimie pour tenter de ressusciter leur mère, mais l’expérience tourne mal. Edward perd un bras et une jambe, tandis qu’Alphonse perd tout son corps, son âme étant scellée dans une armure. Ensemble, ils cherchent la Pierre Philosophale pour restaurer leurs corps', 'https://www.bing.com/th?id=OSK.d75ed9c3b5956a4162d63f35eeeda9bd&pid=cdx&w=200&h=87&c=7', 'Hiromu Arakawa', '2024-09-13 10:06:02'),
(6, 'Death Note', 'Synopsis : Light Yagami, un lycéen brillant, découvre un carnet surnaturel qui permet de tuer toute personne dont le nom est écrit dedans. Il décide de l’utiliser pour éliminer les criminels et devenir le “dieu” d’un nouveau monde, mais il est rapidement traqué par le détective L', 'https://www.bing.com/th?id=OSK.ebf10df0ff775d88722b253bd02ad82b&pid=cdx&w=200&h=128&c=7&rs=1', 'Tsugumi Ohba et Takeshi Obata', '2024-09-13 10:07:04'),
(7, 'Berserk', 'Synopsis : Guts, un mercenaire solitaire, lutte pour sa survie dans un monde médiéval sombre et brutal. Il cherche à se venger de Griffith, son ancien ami et leader des Band of the Hawk, qui l’a trahi de manière impitoyable', 'https://www.bing.com/th?id=OSK.8bbbcbdfc2cf1b7f5a1995a3b2bf91d9&pid=cdx&w=75&h=128&c=7', 'Kentaro Miura', '2024-09-13 10:08:38'),
(8, 'Vinland Saga', 'Dans un monde médiéval inspiré de l\'Europe du Nord, Thorfinn, un jeune garçon islandais, rêve de vengeance après avoir assisté au massacre de sa famille par le mercenaire Askeladd. Il se joint à l\'équipage d\'Askeladd et se lance dans une quête sanglante pour affronter son ennemi juré. Au fil de ses aventures, Thorfinn va découvrir la cruauté de la guerre et remettre en question ses propres valeurs.', 'ssss', 'Makoto Yukimura', '2024-09-13 10:35:13'),
(9, 'Vagabond', 'Inspiré de la vie de Miyamoto Musashi, l\'un des plus grands épéistes de l\'histoire du Japon, Vagabond raconte l\'ascension d\'un jeune homme violent et impulsif qui va devenir un maître de l\'art du combat. Musashi va devoir surmonter de nombreux obstacles et affronter de redoutables adversaires pour atteindre son but', 'sss', 'Takehiko Inoue', '2024-09-13 10:39:07'),
(10, 'Oyasumi Punpun', 'Punpun Onodera est un jeune garçon qui traverse une adolescence difficile. Il doit faire face à la violence de son père, à la solitude et à l\'amour impossible. À travers le regard de Punpun, nous découvrons un monde cruel et absurde, où les adultes sont souvent aussi perdus que les enfants.', 'sss', 'Inio Asano', '2024-09-13 10:41:44'),
(11, 'A Silent Voice', 'Shoya Ishida, un jeune homme rongé par le remords, tente de renouer avec Shoko Nishimiya, une ancienne camarade de classe sourde qu\'il a harcelée dans son enfance. Shoya va devoir affronter les conséquences de ses actes et apprendre à vivre avec les autres.', 'sss', 'Yoshitoki Ōima', '2024-09-13 10:42:47'),
(12, '20th Century Boys', 'Un groupe d\'amis d\'enfance se retrouve confronté à une mystérieuse organisation qui menace de détruire le monde. Cette organisation, connue sous le nom de \"Les Enfants du XXe siècle\", a été créée par l\'un d\'entre eux dans le but de mettre en œuvre un plan machiavélique. Les héros vont devoir déjouer leurs plans et sauver l\'humanité.', 'sss', 'Naoki Urasawa', '2024-09-13 10:44:37'),
(13, 'Pluto', 'Ce manga est un remake du célèbre robot Astro Boy, créé par Osamu Tezuka. L\'histoire se concentre sur Gesicht, un robot détective chargé d\'enquêter sur une série de meurtres visant des robots humanoïdes. Au cours de son enquête, Gesicht va découvrir une conspiration visant à exterminer les robots.', 'sss', 'Naoki Urasawa', '2024-09-13 10:45:45'),
(14, 'Uzumaki', 'Dans une petite ville japonaise, d\'étranges phénomènes liés à des spirales commencent à se produire. Les habitants sont peu à peu transformés en créatures monstrueuses et la ville entière semble être prise dans un vortex de folie.', 'sss', 'Junji Ito', '2024-09-13 10:46:16'),
(15, 'Tomie', 'Tomie est une jeune femme d\'une beauté envoûtante, mais aussi d\'une cruauté sans limite. Elle a le pouvoir de se multiplier et de manipuler les hommes pour assouvir ses désirs. Chaque histoire de Tomie explore les thèmes de la beauté, de l\'obsession et de la mort.', 'sss', 'Junji Ito', '2024-09-13 10:48:05'),
(16, 'Monster', 'Le Dr Kenzo Tenma, un brillant neurochirurgien, sauve la vie d\'un jeune garçon gravement blessé. Mais il va vite regretter sa décision lorsque ce garçon, Johan Liebert, se révèle être un psychopathe manipulateur, responsable d\'une série de meurtres en Europe. Poursuivi par la police et hanté par son passé, Tenma va devoir affronter Johan dans une lutte sans merci.', 'sss', 'Naoki Urasawa', '2024-09-13 10:48:44'),
(17, 'Claymore', 'Dans un monde médiéval ravagé par des créatures monstrueuses appelées Yoma, des jeunes filles aux capacités surhumaines, les Claymore, sont chargées de les exterminer. Yûki, une nouvelle recrue, va devoir affronter les dangers de ce monde cruel tout en luttant contre sa propre nature.', 'sss', 'Norihiro Yagi', '2024-09-13 10:52:43'),
(18, 'Fafner in the Azure: The Beyond', 'Des créatures extraterrestres, les Festum, attaquent la Terre et l\'humanité est forcée de se réfugier sur des îles artificielles. De jeunes pilotes, les Fafner, sont chargés de piloter des machines de combat pour repousser l\'invasion.', 'sss', 'Megumi Ogata', '2024-09-13 10:53:38'),
(19, 'Blame!', 'Dans un futur lointain, l\'humanité s\'est réfugiée dans une méga-structure gigantesque, le Netsphere. Killy, un homme amnésique, erre dans ce labyrinthe à la recherche d\'un moyen de sauver l\'humanité.', 'sss', 'Tsutomu Nihei', '2024-09-13 10:54:19'),
(20, 'Akira', 'Tokyo, 2019. Une expérience scientifique tourne mal et libère des pouvoirs psychiques dévastateurs. Kaneda, un jeune motard, et son ami Tetsuo, doté de pouvoirs extraordinaires, sont entraînés dans une lutte pour le contrôle de ces forces', 'sss', 'Katsuhiro Otomo', '2024-09-13 10:54:53'),
(21, 'Nana', 'Nana Osaki, une chanteuse rock, et Nana Komatsu, une jeune fille à la recherche de l\'amour, se rencontrent dans un train et deviennent rapidement inséparables. Leurs vies vont se mêler et elles vont devoir faire face aux difficultés de la vie adulte à Tokyo', 'sss', 'Ai Yazawa', '2024-09-13 10:55:18'),
(22, 'Fruits Basket', 'Tohru Honda, une lycéenne orpheline, se retrouve à vivre avec la famille Souma, dont les membres se transforment en animaux du zodiaque lorsqu\'ils sont émus. Tohru va découvrir les secrets de cette famille et nouer des liens très forts avec ses nouveaux compagnons.', 'sss', 'Natsuki Takaya', '2024-09-13 10:55:39'),
(23, 'parasyte', 'Des parasites envahissent la Terre et prennent possession du corps des humains. Shinichi Izumi, un lycéen, parvient à maintenir le contrôle de son parasite, Migi, et doit apprendre à vivre avec cette nouvelle créature qui fait désormais partie de lui.', 'sss', 'Hitoshi Iwaaki', '2024-09-13 10:57:44'),
(24, 'Ghost in the Shell', 'Dans un futur proche, la ligne entre l\'homme et la machine est de plus en plus floue. Major Motoko Kusanagi, une cyborg, enquête sur des affaires de cybercriminalité et se pose des questions sur sa propre identité.', 'sss', 'Masamune Shirow', '2024-09-13 11:02:34'),
(25, 'Psycho-Pass', 'Dans un futur où les crimes sont prédits avant même qu\'ils ne soient commis, un système de surveillance omniprésent contrôle la population. Akane Tsunemori, une jeune inspectrice, va découvrir les limites de ce système et les dangers qu\'il représente.', 'sss', 'Hikaru Miyoshi', '2024-09-13 11:06:14'),
(26, 'Your Lie in April', 'Kôsei Arima, un jeune prodige du piano qui a cessé de jouer après la mort de sa mère, rencontre Kaori Miyazono, une violoniste excentrique qui va l\'aider à retrouver sa passion pour la musique.', 'sss', 'Naoshi Arakawa', '2024-09-13 11:07:26'),
(27, 'Orange', 'Naho Takamiya reçoit une lettre d\'elle-même, écrite dix ans dans le futur, qui lui révèle un événement tragique qui va bouleverser sa vie. Elle décide de changer le cours du destin et d\'aider un nouvel élève, Kakeru Naruse, à surmonter ses difficultés.', 'https://assets.bubblebd.com/art/images/medium/11418.jpeg', 'Ichigo Takano', '2024-09-13 11:09:26'),
(28, 'Hunter x Hunter', 'Gon Freecss part à la recherche de son père, un célèbre Hunter, et découvre un monde rempli de dangers et de mystères. Il va devoir passer de difficiles épreuves pour devenir lui-même un Hunter et ainsi retrouver son père.', 'sss', 'Yoshihiro Togashi', '2024-09-13 11:15:20'),
(29, 'Trigun', 'Vash the Stampede, un homme doté d\'une force surhumaine, est recherché par les chasseurs de primes à cause de la destruction qu\'il sème sur son passage. Pourtant, Vash est un pacifiste qui tente par tous les moyens d\'éviter les conflits.', 'sss', 'Yasuhiro Nightow', '2024-09-13 11:15:50'),
(30, 'Jujutsu Kaisen', 'Un lycéen ordinaire se retrouve mêlé au monde des sorciers et doit apprendre à maîtriser ses nouveaux pouvoirs pour combattre des créatures maléfiques. Une série dynamique avec des combats spectaculaires et une intrigue riche.', 'sss', 'Gege Akutami', '2024-09-13 11:17:11'),
(31, 'My Hero Academia', 'Dans un monde où la plupart des gens possèdent des super-pouvoirs, Izuku Midoriya rêve de devenir un héros malgré son absence de pouvoir. Une série inspirante sur l\'amitié, la persévérance et le dépassement de soi.', 'sss', 'Kohei Horikoshi', '2024-09-13 11:17:36'),
(32, 'Chainsaw Man', 'Un jeune homme désespéré fusionne avec un démon pour devenir Chainsaw Man, un chasseur de démons. Une série violente et déjantée qui explore les thèmes de la corruption et de la rédemption.', 'sss', 'Tatsuki Fujimoto', '2024-09-13 11:18:50'),
(33, 'Kaiju n°8', 'Un jeune homme rêve de devenir membre de l\'Agence de défense contre les Kaiju, mais il est rejeté en raison de son âge et de sa condition physique. Il va alors découvrir un moyen de se transformer en Kaiju pour réaliser son rêve.', '', 'Naoya Matsumoto', '2024-09-13 11:19:56'),
(34, 'Spy x Family', 'Un espion, une tueuse à gages et une jeune fille aux pouvoirs psychiques forment une famille pour mener à bien une mission secrète. Une comédie romantique pleine d\'humour et de rebondissements.', 'sss', 'Tatsuya Endo', '2024-09-13 11:20:19'),
(35, 'Horimiya', 'Hori, une lycéenne populaire au caractère doux, et Miyamura, un lycéen timide au look de bad boy, cachent tous les deux une facette de leur personnalité à leurs camarades. Une histoire d\'amour douce-amère qui explore les relations amicales et amoureuses.', 'sss', 'Hiroki Adachi', '2024-09-13 11:22:12'),
(36, 'Wonder Egg Priority', 'Quatre lycéennes se retrouvent dans un monde étrange où elles doivent affronter leurs peurs pour sauver des filles qui ont disparu. Une série psychologique et onirique qui explore des thèmes difficiles comme le harcèlement scolaire et le suicide.', 'sss', 'Shinji Nojima', '2024-09-13 11:23:23'),
(37, 'Dorohedoro', 'Dans un monde post-apocalyptique, un homme-lézard amnésique cherche à retrouver sa mémoire et à se venger de ceux qui l\'ont transformé. Une série violente et déjantée avec un univers visuel unique.', 'sss', 'Q Hayashida', '2024-09-13 11:24:33');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int NOT NULL,
  `content` varchar(255) NOT NULL,
  `article_id` int NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(80) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(60) NOT NULL,
  `role` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;
--
-- Database: `info_utilisateur`
--
CREATE DATABASE IF NOT EXISTS `info_utilisateur` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `info_utilisateur`;
--
-- Database: `petitscoeur`
--
CREATE DATABASE IF NOT EXISTS `petitscoeur` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `petitscoeur`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
