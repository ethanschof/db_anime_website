-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 05, 2022 at 01:13 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `anime-website`
--

-- --------------------------------------------------------

--
-- Table structure for table `animes`
--

DROP TABLE IF EXISTS `animes`;
CREATE TABLE IF NOT EXISTS `animes` (
  `anime_id` varchar(8) NOT NULL,
  `title` varchar(45) DEFAULT NULL,
  `synopsis` varchar(1362) DEFAULT NULL,
  `image` varchar(56) DEFAULT NULL,
  `source_type` varchar(12) DEFAULT NULL,
  `num_episodes` varchar(12) DEFAULT NULL,
  `status` varchar(16) DEFAULT NULL,
  `start_date` varchar(18) DEFAULT NULL,
  `end_date` varchar(18) DEFAULT NULL,
  `season` varchar(11) DEFAULT NULL,
  `studios` varchar(26) DEFAULT NULL,
  `genres` varchar(69) DEFAULT NULL,
  `popularity_rank` varchar(15) DEFAULT NULL,
  `members_count` varchar(13) DEFAULT NULL,
  `favorites_count` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`anime_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `animes`
--

INSERT INTO `animes` (`anime_id`, `title`, `synopsis`, `image`, `source_type`, `num_episodes`, `status`, `start_date`, `end_date`, `season`, `studios`, `genres`, `popularity_rank`, `members_count`, `favorites_count`) VALUES
('anime_id', 'title', 'synopsis', 'image', 'source_type', 'num_episodes', 'status', 'start_date', 'end_date', 'season', 'studios', 'genres', 'popularity_rank', 'members_count', 'favorites_count'),
('1', 'Cowboy Bebop', 'Crime is timeless. By the year 2071, humanity has expanded across the galaxy, filling the surface of other planets with settlements like those on Earth. These new societies are plagued by murder, drug use, and theft, and intergalactic outlaws are hunted by a growing number of tough bounty hunters.  Spike Spiegel and Jet Black pursue criminals throughout space to make a humble living. Beneath his goofy and aloof demeanor, Spike is haunted by the weight of his violent past. Meanwhile, Jet manages his own troubled memories while taking care of Spike and the Bebop, their ship. The duo is joined by the beautiful con artist Faye Valentine, odd child Edward Wong Hau Pepelu Tivrusky IV, and Ein, a bioengineered Welsh Corgi.  While developing bonds and working to catch a colorful cast of criminals, the Bebop crew\'s lives are disrupted by a menace from Spike\'s past. As a rival\'s maniacal plot continues to unravel, Spike must choose between life with his newfound family or revenge for his old wounds.', 'https://cdn.myanimelist.net/images/anime/4/19644.jpg', 'Original', '26', 'Finished Airing', '1998-04-03 0:00:00', '1999-04-24 0:00:00', 'Spring 1998', 'Sunrise', 'Action|Adventure|Comedy|Drama|Sci-Fi|Space', '42', '1572004', '69678'),
('2', 'Fruits Basket', 'After the accident in which she lost her mother, 16-year-old Tooru moves in with her grandfather, but due to his home being renovated, is unable to continue living with him. Claiming she will find someone to stay with but also fearing the criticism of her family and not wanting to burden any of her friends, Tooru resorts to secretly living on her own in a tent in the woods.  One night on her way back from work, she finds her tent buried underneath a landslide. Yuki Souma, the \"prince\" of her school, and his cousin Shigure Souma, a famous author, stumble across Tooru\'s situation and invite her to stay with them until her grandfather\'s home renovations are complete.  Upon arriving at the Souma house, Tooru discovers their secret: if a Souma is hugged by someone of the opposite gender, they temporarily transform into one of the animals of the zodiac! However, this strange phenomenon is no laughing matter; rather, it is a terrible curse that holds a dark history. As she continues her journey, meeting more members of the zodiac family, will Tooru\'s kindhearted yet resilient nature be enough to prepare her for what lies behind the Souma household\'s doors?  ', 'https://cdn.myanimelist.net/images/anime/4/75204.jpg', 'Manga', '26', 'Finished Airing', '2001-07-05 0:00:00', '2001-12-27 0:00:00', 'Summer 2001', 'Studio Deen', 'Comedy|Drama|Romance|Slice of Life|Supernatural|Shoujo', '352', '493642', '8647'),
('3', 'Fullmetal Alchemist', 'Edward Elric, a young, brilliant alchemist, has lost much in his twelve-year life: when he and his brother Alphonse try to resurrect their dead mother through the forbidden act of human transmutation, Edward loses his brother as well as two of his limbs. With his supreme alchemy skills, Edward binds Alphonse\'s soul to a large suit of armor.  A year later, Edward, now promoted to the fullmetal alchemist of the state, embarks on a journey with his younger brother to obtain the Philosopher\'s Stone. The fabled mythical object is rumored to be capable of amplifying an alchemist\'s abilities by leaps and bounds, thus allowing them to override the fundamental law of alchemy: to gain something, an alchemist must sacrifice something of equal value. Edward hopes to draw into the military\'s resources to find the fabled stone and restore his and Alphonse\'s bodies to normal. However, the Elric brothers soon discover that there is more to the legendary stone than meets the eye, as they are led to the epicenter of a far darker battle than they could have ever imagined.', 'https://cdn.myanimelist.net/images/anime/10/75815.jpg', 'Manga', '51', 'Finished Airing', '2003-10-04 0:00:00', '2004-10-02 0:00:00', 'Fall 2003', 'Bones', 'Action|Adventure|Comedy|Drama|Fantasy|Military|Shounen', '67', '1331246', '24337'),
('4', 'Full Moon wo Sagashite', 'Two years ago, Mitsuki Kouyama\'s friend, Eichi Sakurai, moved to America before she could confess her feelings to him. Though she cannot contact him, they made a promise to fulfill their respective dreams: Mitsuki wants to become a professional singer, and Eichi an astronomer. She hopes that one day her music will reach him across the world with a brilliance like that of the full moon.  There is just one catch: Mitsuki suffers from throat cancer, which makes her voice quiet and singing strenuous. Her grandmother, who has a hatred of music, insists that Mitsuki undergo surgery to remove the cancer, but she refuses due to the risk of losing her voice. One day, two shinigami—Meroko Yui and Takuto Kira—appear to tell her that she only has one year left to live. This sudden revelation spurs Mitsuki into action, and she decides that with Meroko and Takuto\'s help, she will become a professional singer in the time she has left.   follows the emotional story of Mitsuki and her shinigami friends as they discover what it means to sing—and ultimately, what it means to live.', 'https://cdn.myanimelist.net/images/anime/1900/99154.jpg', 'Manga', '52', 'Finished Airing', '2002-04-06 0:00:00', '2003-03-29 0:00:00', 'Spring 2002', 'Studio Deen', 'Comedy|Drama|Romance|Supernatural|Music|Shoujo', '1709', '99738', '1674'),
('5', 'Fushigi Yuugi', 'During a visit to the National Library, Miaka Yuuki and Yui Hongo stumble upon a strange old book that casts a red light, sucking them inside its unfamiliar world. Upon arrival, the two encounter hostile slave traders and barely escape with the help of Tamahome—a powerful young man bearing a Chinese symbol on his forehead. But, a moment later, the red light returns and takes Yui away.  Desperate to reunite with her companion, Miaka asks Tamahome for assistance. However, the situation escalates when the pair encounters the land\'s emperor, Hotohori, who believes Miaka is the foretold priestess of the kingdom\'s protector god Suzaku. By gathering the god\'s seven Celestial Warriors, the priestess can summon Suzaku and have all her wishes granted. Hotohori hopes this will save his country, and since it appears to be a fitting solution to the girl\'s problems as well, he convinces her to accept the role.  Meanwhile, at the library, Yui realizes she has been brought back alone. Unable to intervene, she helplessly witnesses Miaka traversing through courageous trials as the mysterious book\'s heroine.', 'https://cdn.myanimelist.net/images/anime/2/20140.jpg', 'Manga', '52', 'Finished Airing', '1995-04-06 0:00:00', '1996-03-28 0:00:00', 'Spring 1995', 'Studio Pierrot', 'Adventure|Comedy|Drama|Fantasy|Romance|Historical|Martial Arts|Shoujo', '1605', '107498', '1928'),
('6', 'Fushigi Yuugi: Eikouden', 'Taka (technically Tamahome) and Miaka are now happily married and only six months before their new family would be born, but an obsessed girl named Mayo would do anything to make Taka hers. She enters the world of the Four Gods, determined to win Taka\'s heart and be the new priestess.', 'https://cdn.myanimelist.net/images/anime/11/67701.jpg', 'Manga', '4', 'Finished Airing', '2001-12-21 0:00:00', '2002-06-25 0:00:00', '', 'Studio Pierrot', 'Adventure|Drama|Fantasy|Romance|Shoujo', '4479', '16643', '40'),
('7', 'Futakoi', 'With his mother dead and his father working abroad, Futami Nozomu returns to the town where he lived as a child, to attend high school and work part-time at a local shrine. He soon finds himself caught up in a local legend of twin girls loving the same man. And there are many twin girls in this town....  (Source: ANN)', 'https://cdn.myanimelist.net/images/anime/1/125.jpg', 'Original', '13', 'Finished Airing', '2004-10-06 0:00:00', '2004-12-29 0:00:00', 'Fall 2004', 'Telecom Animation Film', 'Comedy|Romance|School', '3240', '33332', '21'),
('8', 'Futakoi Alternative', 'The Futaba Detective Agency, being run by Rentarou, who has taken over the family business, after his father\'s death 3 weeks ago. Along w/ Sara & Souju, his live-in identical twin assistants. He ends up running afoul of the local Yakuza.  (Source: ANN)', 'https://cdn.myanimelist.net/images/anime/6/16733.jpg', 'Original', '13', 'Finished Airing', '2005-04-07 0:00:00', '2005-06-30 0:00:00', 'Spring 2005', 'ufotable|feel.|Studio Flag', 'Comedy|Drama|Romance', '3420', '29827', '69'),
('9', 'Gate Keepers', 'Technology, science, and industry—this is 1969 Tokyo, and there is no better time to be alive! But a shadow looms quietly around every corner: \"Invaders\" have infiltrated the populace, and nobody knows who or what they are.  Only the members of the top-secret agency AEGIS know of their existence. Covertly fighting the enemy is their job, but only those with the ability to open \"Gates\" to another world can truly defeat them. Within AEGIS is a specialized task force known as the \"Gate Keepers.\" Composed of extraordinary individuals with a variety of Gate-related abilities, they are the only ones who can save humanity from the vicious Invaders plaguing the planet.  Shun Ukiya is an average high school student who lives with his widowed mother and little sister. While on his way home from school one day, he comes across a group of Invaders heading toward his house. In a desperate plight to save his family, Shun discovers he possesses the ability to open a Gate, allowing him to harness massive amounts of energy. With his newfound ability exposed, he catches the attention of AEGIS, and particularly the interest of one of its Gate Keepers, Shun\'s childhood friend Ruriko Ikusawa.  ', 'https://cdn.myanimelist.net/images/anime/12/15226.jpg', 'Game', '24', 'Finished Airing', '2000-04-03 0:00:00', '2000-09-18 0:00:00', 'Spring 2000', 'Gonzo', 'Action|Comedy|Fantasy|Sci-Fi|Mecha|Shounen', '4071', '20594', '52'),
('10', 'Gate Keepers 21', 'Thirty-two years have passed since the initial defeat of the Invaders. A.E.G.I.S is all but dismantled now and has become an underground organization consisting of only a few Gate Keepers left to save humanity. One of the members, Ayane Isuzu, is sick of society as a whole, though she continues to defeat the Invaders out of spite for her father. Suddenly, she learns of the revival of Machine General (Kikai Shogun) and Devil Count (Akuma Hakushaku), but a mysterious ghost girl now accompanies them. It is up to Ayane and the remnants of A.E.G.I.S to stop them and save humanity once again.  (Source: ANN)', 'https://cdn.myanimelist.net/images/anime/6/75569.jpg', 'Game', '6', 'Finished Airing', '2002-04-24 0:00:00', '2003-01-08 0:00:00', '', 'Gonzo', 'Action|Drama|Sci-Fi|Mecha|Shounen', '5484', '9903', '19'),
('11', 'Gensoumaden Saiyuuki', 'Many years ago, humans and demons lived in harmony. But that unity ended when demons started attacking humans and plotted a mission to unleash Gyumao—an evil demon imprisoned for thousands of years. Now, Genjo Sanzo, a rogue priest, must team up with three demons—Sha Gojyo, Son Goku, and Cho Hakkai—and embark on a perilous journey to the west to stop these demons from resurrecting Gyumao and restore the balance between humans and demons on Earth.  (Source: ANN)', 'https://cdn.myanimelist.net/images/anime/11/75282.jpg', 'Manga', '50', 'Finished Airing', '2000-04-04 0:00:00', '2001-03-27 0:00:00', 'Spring 2000', 'Studio Pierrot', 'Action|Adventure|Comedy|Drama|Supernatural|Demons|Shounen', '2571', '50665', '751'),
('12', 'Saiyuuki Reload', 'Priest Genjo Sanzo and companions Cho Hakkai, Sha Gojyo, and Son Goku maintain their westward journey to stop the resurrection of the demon Gyoumao. As the reputation of the Sanzo Ikkou precedes them, they continue to fight demon assassins at every turn, but they must also deal with increasing tensions within their group in order to defeat a powerful enemy.  (Source: ANN)', 'https://cdn.myanimelist.net/images/anime/13/24719.jpg', 'Manga', '25', 'Finished Airing', '2003-10-02 0:00:00', '2004-03-25 0:00:00', 'Fall 2003', 'Studio Pierrot', 'Action|Adventure|Comedy|Drama|Supernatural|Demons|Josei', '3316', '31749', '102'),
('13', 'Saiyuuki Reload Gunlock', 'The Sanzo Ikkou continues its westward journey, on a mission to prevent a demonic resurrection. As Genjo Sanzo, Cho Hakkai, Sha Gojyo, and Son Goku fight their way to their goal, their path is fraught with internal strife. When they encounter a formidable pair of adversaries from the west, the cohesion of the group -- and the fate of the mission -- may be at stake.  (Source: ANN)', 'https://cdn.myanimelist.net/images/anime/11/6830.jpg', 'Manga', '26', 'Finished Airing', '2004-04-02 0:00:00', '2004-09-24 0:00:00', 'Spring 2004', 'Studio Pierrot', 'Action|Adventure|Comedy|Drama|Supernatural|Demons|Josei', '4007', '21489', '44'),
('14', 'GetBackers', 'Mido Ban and Amano Ginji are known as the Get Backers, retrievers with a success rate of 100%. Whatever is lost or stolen, they can definitely get it back. Despite their powerful abilities and enthusiastic behavior, Ban and Ginji are terminally broke no matter what they do simply because few people would actually desire to hire them. As a result, the pair of them tend to do dangerous jobs, often leading to unwanted re-encounters with their old (and dangerous) friends.', 'https://cdn.myanimelist.net/images/anime/4/7547.jpg', 'Manga', '49', 'Finished Airing', '2002-10-05 0:00:00', '2003-09-20 0:00:00', 'Fall 2002', 'Studio Deen', 'Action|Comedy|Drama|Mystery|Supernatural|Super Power|Shounen', '1527', '113568', '834'),
('15', 'Green Green', 'Kanenone Gakuen is an all-male boarding school located in the countryside of Japan. Although an all-male school is nothing new, life can become quite difficult when there are no female students for miles around. In order to help the psychological health of everyone involved, the school board has decided to try and merge with the nearest all-girl boarding school in order to become co-ed. The boys of Kanenone are more than thrilled at the prospect, and the girls are curious as to how interesting school life might become if there were more boys around. Before any serious decisions are made, the girls have been invited to stay at Kanenone for one month as a test.   follows Yuusuke Takazaki and his naughty room mates called the Baka (Idiot) Trio, and their ability to talk to the girls without making complete fools of themselves. But as soon as the school bus with the girls arrives, things become weird, hormonal, and hysterical. In particular, a girl named Midori Chitose leaps off the bus and immediately embraces a very confused Yuusuke. Is he a natural ladies\' man, or do the two of them have a shared history that he is not aware of?', 'https://cdn.myanimelist.net/images/anime/7/75251.jpg', 'Visual novel', '12', 'Finished Airing', '2003-07-12 0:00:00', '2003-09-27 0:00:00', 'Summer 2003', 'Studio Matrix', 'Comedy|Romance|Slice of Life|Ecchi|School', '1550', '111681', '214'),
('16', 'Gunslinger Girl', 'In the heart of Italy, the Social Welfare Agency rescues young girls from hospital beds and gives them a second chance at life using the latest in cybernetic advancements. With their artificially enhanced bodies, the girls are brainwashed and trained as assassins to carry out the dirty work of the Italian Government. Despite all the modifications, they are still just children at heart, struggling for recognition from those they love, even knowing the love they feel is manufactured. This tragic tale unfolds as these girls grapple with their emotions in an agency that treats them as nothing but ruthless killers.', 'https://cdn.myanimelist.net/images/anime/5/3088.jpg', 'Manga', '13', 'Finished Airing', '2003-10-09 0:00:00', '2004-02-19 0:00:00', 'Fall 2003', 'Madhouse', 'Action|Drama|Sci-Fi|Military|Psychological', '1064', '174319', '1089'),
('17', 'Hikaru no Go', 'While searching through his grandfather\'s attic, Hikaru Shindou stumbles upon an old go board. Touching it, he is greeted by a mysterious voice, and soon after falls unconscious. When he regains his senses, he discovers that the voice is still present and belongs to Sai Fujiwara no, the spirit of an ancient go expert. A go instructor for the Japanese Emperor in the Heian Era, Sai\'s passion for the game transcends time and space, allowing him to continue playing his beloved game as a ghostly entity. Sai\'s ultimate goal is to master a divine go technique that no player has achieved so far, and he seeks to accomplish this by playing the board game through Hikaru.  Despite having no interest in board games, Hikaru reluctantly agrees to play, executing moves as instructed by Sai. However, when he encounters the young go prodigy Akira Touya, a passion for the game is slowly ignited within him. Inspired by his newfound rival, Hikaru\'s journey into the world of go is just beginning.', 'https://cdn.myanimelist.net/images/anime/12/78317.jpg', 'Manga', '75', 'Finished Airing', '2001-10-10 0:00:00', '2003-03-26 0:00:00', 'Fall 2001', 'Studio Pierrot', 'Comedy|Supernatural|Game|Shounen', '1436', '123721', '2174'),
('18', 'Hunter x Hunter', 'Hunters are specialized in a wide variety of fields, ranging from treasure hunting to cooking. They have access to otherwise unavailable funds and information that allow them to pursue their dreams and interests. However, being a hunter is a special privilege, only attained by taking a deadly exam with an extremely low success rate.  Gon Freecss, a 12-year-old boy with the hope of finding his missing father, sets out on a quest to take the Hunter Exam. Along the way, he picks up three companions who also aim to take the dangerous test: the revenge-seeking Kurapika, aspiring doctor Leorio Paladiknight, and a mischievous child the same age as Gon, Killua Zoldyck.   is a classic shounen that follows the story of four aspiring hunters as they embark on a perilous adventure, fighting for their dreams while defying the odds.', 'https://cdn.myanimelist.net/images/anime/8/19473.jpg', 'Manga', '62', 'Finished Airing', '1999-10-16 0:00:00', '2001-03-31 0:00:00', 'Fall 1999', 'Nippon Animation', 'Action|Adventure|Fantasy|Super Power|Shounen', '339', '510848', '9366'),
('19', 'Hunter x Hunter: Original Video Animation', 'After reuniting with Gon and his friends, Kurapika explained to them the risks he bears because of his abilities. Believing that his target of revenge is no longer alive and the search for his fallen comrade\'s eyes could truly begin, Kurapika soon after receives a message informing him that all the Spiders still lived. After much discussion between his friends, Gon, Kurapika and company decided to hunt after the one Spider member who\'s ability could ultimately result in Kurapika\'s defeat and death. Based on the manga by Togashi Yoshihiro.', 'https://cdn.myanimelist.net/images/anime/1/137.jpg', 'Manga', '8', 'Finished Airing', '2002-01-17 0:00:00', '2002-04-17 0:00:00', '', 'Nippon Animation', 'Action|Adventure|Super Power|Shounen', '1519', '114328', '359'),
('20', 'Hunter x Hunter: Greed Island', 'After the battle with the Spiders, the search for Ging continues as Gon and Killua decided to once again attempt to purchase the rare game \"Greed Island\". However, Gon came up with a better plan, which was to volunteer to complete the game for the billionaire who owned it. But some training must be done, as Gon and Killua\'s abilities are still at a developing stage and \"Greed Island\" is no simple game for anyone to play with. It is the infamous game that could easily lead to one\'s death. Based on the manga by Togashi Yoshihiro.', 'https://cdn.myanimelist.net/images/anime/13/37203.jpg', 'Manga', '8', 'Finished Airing', '2003-02-05 0:00:00', '2003-04-16 0:00:00', '', 'Nippon Animation', 'Action|Adventure|Fantasy|Super Power|Shounen', '1337', '137113', '263'),
('21', 'Hunter x Hunter: Greed Island Final', 'Continuing with their adventure at Greed Island, Gon and Killua train furiously under the guidance of Biscuit for better preparation at attempting the game. With their abilities vastly improving and the threat of player killers menacing Greed Island, Gon and company continue the game despite the dangers that they will face with the game activities and encounters with other players. Based on the manga by Togashi Yoshihiro.', 'https://cdn.myanimelist.net/images/anime/1/139.jpg', 'Manga', '14', 'Finished Airing', '2004-03-03 0:00:00', '2004-08-18 0:00:00', '', 'Nippon Animation', 'Action|Adventure|Fantasy|Super Power|Shounen', '1398', '128543', '225'),
('22', 'Jinki:Extend', 'Aoba is a young girl who loves to build models of robots. She lived alone with her grandmother until her grandmother passes away. Shortly after she is kidnapped and brought to a secret base where she discovers a huge robot. The piloted robots fight against Ancient-Jinki in The Grand Savanna, but the true meaning behind the fights is hidden. Aoba works hard at the base so one day she can pilot one of the robots and discover these secrets.', 'https://cdn.myanimelist.net/images/anime/3/44792.jpg', 'Manga', '12', 'Finished Airing', '2005-01-06 0:00:00', '2005-03-24 0:00:00', 'Winter 2005', 'feel.', 'Sci-Fi|Mecha', '5341', '10592', '10'),
('23', 'Kamikaze Kaitou Jeanne', 'A normal looking high school girl on the outside, Kusakabe Maron is actually the reincarnation of Jeanne d\' Arc. With the help of the angel, Fin Fish, Maron works as the thief Jeanne at night to seal the demons that reside in pieces of artwork, preying upon the weak hearts of the owners. She is branded as a thief due to the fact that the artworks disappear after she seals the demons. One day, a new neighbor and classmate appears, as well as a rival in her night job, the thief Sinbad. With her own best friend being the detective\'s daughter, out to capture her and the appearance of her new rival, Maron\'s work is anything but easy.', 'https://cdn.myanimelist.net/images/anime/5/20389.jpg', 'Manga', '44', 'Finished Airing', '1999-02-13 0:00:00', '2000-01-29 0:00:00', 'Winter 1999', 'Toei Animation', 'Adventure|Comedy|Drama|Fantasy|Mystery|Romance|Demons|Shoujo', '2561', '50922', '445'),
('24', 'Kannazuki no Miko', 'begins in the village of Mahoroba, where time passes slowly for both man and nature. Two students from the village\'s prestigious Ototachibana Academy might as well be night and day. Himeko is shy and unassertive, while Chikane is bold and elegant. Despite this, they love each other, and nothing can come between them, no matter how hard they try.  On the two girls\' shared birthday, a sinister voice corrupts one of their friends into attacking them, and just when it seemed grimmest, the lunar and solar priestess powers that lay dormant in the two girls awaken, dispelling the evil. That was only the first hurdle, however. The two must now fend off the countless others who would threaten their well-being—even the people closest to them!', 'https://cdn.myanimelist.net/images/anime/8/73955.jpg', 'Manga', '12', 'Finished Airing', '2004-10-02 0:00:00', '2004-12-18 0:00:00', 'Fall 2004', 'TNK', 'Drama|Girls Love|Romance|Supernatural|Mecha|Shounen', '2238', '65059', '684'),
('25', 'Kanon', 'It’s been 7 years since Yuuichi Aizawa visited his aunt Akiko, but now that his parents have gone to Africa to pursue their careers, he is finally back in the little northern town. Yuuichi is not really overjoyed with the prospect of living here though, because all of his memories of this place and the people living in it have mysteriously vanished. His cute cousin Nayuki seems like a stranger as well, even though he used to play with her all the time when they were younger.  On the day of moving into his new home, Yuuichi starts unpacking the boxes and stumbles upon a red headband that no one seems to recognize. This is one of the first clues that will make Yuuichi take a stroll through the snow-covered town and make him start recalling fragments of his past, broken promises and buried secrets. Yuuichi soon realizes that there is something supernatural going on, and all of his new female acquaintances seem to have links to his forgotten past.', 'https://cdn.myanimelist.net/images/anime/1/144.jpg', 'Visual novel', '13', 'Finished Airing', '2002-01-31 0:00:00', '2002-03-28 0:00:00', 'Winter 2002', 'Toei Animation', 'Drama|Romance|Slice of Life|Supernatural', '2333', '60556', '217'),
('26', 'Kareshi Kanojo no Jijou', 'Yukino Miyazawa is the female representative for her class and the most popular girl among the freshmen at her high school. Good at both academics and sports on top of being elegant and sociable, she has been an object of admiration all her life. However, in reality, she is an incredibly vain person who toils relentlessly to maintain her good grades, athleticism, and graceful appearance. She wants nothing more than to be the center of attention and praise—which is why she cannot stand Soichiro Arima, the male representative for her class and the only person more perfect than her. Since the first day of high school, she has struggled to steal the spotlight from her new rival but to no avail.  At last, on the midterm exams, Yukino gets the top score and beats Soichiro. But, to her surprise, he congratulates her on her achievement, leading her to question her deceptive lifestyle. When Soichiro confesses his love to Yukino, she turns him down and gloats about it at home with only a hint of regret. But the very next day, Soichiro visits Yukino house to bring her a CD and sees her uninhibited self in action; now equipped with the truth, he blackmails her into completing his student council duties. Coerced into spending time with Soichiro, Yukino learns that she is not the only one hiding secrets.', 'https://cdn.myanimelist.net/images/anime/1222/108880.jpg', 'Manga', '26', 'Finished Airing', '1998-10-02 0:00:00', '1999-03-26 0:00:00', 'Fall 1998', 'Gainax|J.C.Staff', 'Comedy|Drama|Romance|Slice of Life|School|Shoujo', '963', '197559', '2299'),
('27', 'Kono Minikuku mo Utsukushii Sekai', 'High school student Takeru Takemoto works part time as a (motor)bike courier. During one of his deliveries, he saw a mysterious light passing him and fell into a forest. What he had found was a beautiful girl coming out from a glowing cocoon, calling herself \"Hikari.\" While Takeru was quite embarrassed because of Hikari\'s nudity, a strange monster suddenly showed up and immediately attacked the two. Both Takeru and Hikari demonstrated the power of their other selves before Takeru had a clue of what\'s going on.  (Source: ANN)', 'https://cdn.myanimelist.net/images/anime/10/21035.jpg', 'Original', '12', 'Finished Airing', '2004-04-02 0:00:00', '2004-06-18 0:00:00', 'Spring 2004', 'Gainax|Shaft', 'Comedy|Drama|Romance|Sci-Fi|Ecchi', '2425', '57126', '149'),
('28', 'Kimi ga Nozomu Eien', 'In the warmth of a golden sun, timid high school student Haruka Suzumiya confesses to Takayuki Narumi, the boy she admires. Takayuki accepts Haruka\'s confession and the two become a couple, supported by their mutual friends Mitsuki Hayase and Shinji Taira. All is well for these friends—until tragedy strikes.  One of them is sent to an unenviable fate, lying dormant in a coma. Three years later, they awaken, but their sudden reappearance in everyone\'s lives threatens to test the limits of these friends\' bonds.', 'https://cdn.myanimelist.net/images/anime/5/10227.jpg', 'Visual novel', '14', 'Finished Airing', '2003-10-05 0:00:00', '2004-01-04 0:00:00', 'Fall 2003', 'Studio Fantasia', 'Drama|Romance|Slice of Life', '1363', '132849', '1019'),
('29', 'Kita e.: Diamond Dust Drops', 'If a couple sees the diamond dust together, then they will certainly find eternal happiness. Or so it is said. This is a drama about the romances, friendships and conflicts of six girls from Hokkaido and how the diamond dust affects them and eventually links them together in the search for happiness.  (Source: ANN)', 'https://cdn.myanimelist.net/images/anime/1041/98827.jpg', 'Visual novel', '12', 'Finished Airing', '2004-01-20 0:00:00', '2004-04-05 0:00:00', 'Winter 2004', 'Studio Deen', 'Drama|Romance|Slice of Life', '5865', '8474', '10'),
('30', 'Loveless', 'In the world of , each person is born with cat ears and a tail, which disappear only if that person engages in a sexual intercourse. Because of this, they have come to symbolize virginity and innocence. Additionally, fighting is only done by \"fighting pairs\" or couples, where one is known as the Sacrifice and the other as the Fighter. The first receives the damage while the latter attacks.  Ritsuka Aoyagi is a 12-year-old boy, who for some unknown reason suffers from amnesia. His brother got killed recently, and as if his life has not been hard enough lately, on his first day at the new school he gets approached by a stranger called Agatsuma Soubi, who claims to have known his late brother. Ritsuka finds out that Agatsuma and his brother used to be a fighting pair, and that Agatsuma has inherited Ritsuga now that his brother is gone. Together, they try to find the truth behind his brother\'s death and the organization known as the \"Seven Moons,\" which may have been responsible for it. All the while, it seems that Ritsuka and Agatsuma are becoming closer than they intended to be…', 'https://cdn.myanimelist.net/images/anime/2/22947.jpg', 'Manga', '12', 'Finished Airing', '2005-04-07 0:00:00', '2005-06-30 0:00:00', 'Spring 2005', 'J.C.Staff', 'Action|Boys Love|Drama|Fantasy|Mystery|Romance|Supernatural|Josei', '1370', '131685', '1288'),
('31', 'Blood+', 'Saya Otonashi is a seemingly ordinary girl living a mundane life with her adoptive family in Okinawa City. In fact, her only peculiarities are suffering from anemia and being unable to remember any of her life beyond the previous year.  However, Saya\'s forgotten past quickly comes back to haunt her—one night, she is attacked at school by a creature that feeds on human blood. Just when all hope seems lost, a mysterious man named Haji appears and fends off the creature temporarily. But when her rescuer forces her to drink his blood, Saya suddenly enters a trance and slays the monster with ease, using her own blood as a catalyst.  Saya then learns of an organization named Red Shield, founded for the sole purpose of defeating the hellish beasts. Now Saya and Haji must work together with Red Shield to fight these fearsome monsters and unlock the secrets to the girl\'s past.', 'https://cdn.myanimelist.net/images/anime/10/10183.jpg', 'Original', '50', 'Finished Airing', '2005-10-08 0:00:00', '2006-09-23 0:00:00', 'Fall 2005', 'Production I.G', 'Action|Drama|Horror|Mystery|Supernatural|Military|Vampire', '516', '347765', '4114'),
('32', 'Re: Cutey Honey', 'A mysterious organization known as Panther Claw make their presence known by terrorizing Tokyo and giving the cops a run for their money. Police are further baffled by the appearance of a lone cosplaying vigilante who thwarts all of Panther Claw\'s evil schemes before disappearing. That cosplayer is Honey Kisaragi, the result of the late Professor Kisaragi\'s prize experiment. A master of disguise, Honey can magically alter her physical appearance and outfits. But with a push of the heart-shaped button on her choker, she transforms herself into Cutie Honey, the scantily-clad, sword-wielding warrior of love and justice.  (Source: ANN)', 'https://cdn.myanimelist.net/images/anime/6/52103.jpg', 'Manga', '3', 'Finished Airing', '2004-07-24 0:00:00', '2004-09-25 0:00:00', '', 'Gainax|Toei Animation', 'Action|Comedy|Girls Love|Sci-Fi|Ecchi', '3697', '25571', '142'),
('33', 'Solty Rei', 'In a future-based disaster-ridden city with an enormous gap between the rich and the poor, it is hard to tell which humans are walking around with cybernetic body parts. This makes Roy Revant\'s job as a renegade bounty hunter/bodyguard-for-hire even more difficult. When a young girl with unbeliveable strength rescues him from a particularly dangerous criminal, Roy realizes that perhaps help can be found in the strangest of places. Joining together with a few others, they engage in a battle to find out the truth behind the giant conglomerates that are supposedly serving mankind and making life better.  Solty, an android who has lost her memory, has escaped and is being hunted by the RUC Security Bureau. She encounters the bounty hunter Roy and he adopts her as his daughter after being hired as a bodygaurd for Miranda.  (Source: ANN)', 'https://cdn.myanimelist.net/images/anime/3/75582.jpg', 'Original', '24', 'Finished Airing', '2005-10-07 0:00:00', '2006-03-31 0:00:00', 'Fall 2005', 'Gonzo|AIC', 'Action|Sci-Fi|Super Power', '3577', '27434', '120'),
('34', 'Juuni Kokuki', 'Youko Nakajima has only ever wanted to be normal. She does what she is asked, gets good grades, is the class president, and even helps her classmates whenever she can—but because of her red hair, she has never fit in. With her pushover attitude, Youko lets classmates take advantage of her, so she has nobody she can really call a friend.  But on an otherwise ordinary day, a man who claims to be from another world barges into Youko\'s classroom and bows before her. This elegant blond-haired man, Keiki, claims that Youko is his master and belongs on the throne of his kingdom. However, their first meeting is cut short as Keiki has been followed by otherworldly beasts called youma. He is able to escape with Youko into his own realm, but two other classmates—Ikuya Asano and Yuka Sugimoto—are caught up in the madness as well. Unfortunately, their troubles have only just begun, as the youma attack leaves them separated from Keiki. Alone in this strange new land, these ordinary students must learn to fend for themselves or die.', 'https://cdn.myanimelist.net/images/anime/6/50859.jpg', 'Novel', '45', 'Finished Airing', '2002-04-09 0:00:00', '2003-08-30 0:00:00', 'Spring 2002', 'Studio Pierrot', 'Action|Adventure|Fantasy|Supernatural', '1394', '128932', '2238'),
('35', 'Shaman King', 'A battle is about to begin in Tokyo: the Shaman Fight, a tournament held every five hundred years where shaman—those who can command spirits—confront each other in combat. The victor of this contest becomes the Shaman King and the only one who is able to contact and control the Great Spirit, allowing them to reshape the world as they please through its immense power.  During a late night walk, Manta Oyamada runs into his classmate, the carefree You Asakura, who invites him to come stargazing with some friends, who, to Manta\'s horror, turn out to be ghosts from a local cemetery! However, the knowledge that Manta possesses—a rare sixth sense that allows Manta to see these spirits—endears the boy to You. So when You finds out that his new comrade has been beaten up by a local gang, he decides to avenge him with the help of Amidamaru, a samurai ghost whose tomb was broken by the gang leader.  Soon Manta uncovers more about the world of spirits, including the Shaman Fight, in which his new friend You aims to claim victory.', 'https://cdn.myanimelist.net/images/anime/1722/99235.jpg', 'Manga', '64', 'Finished Airing', '2001-07-04 0:00:00', '2002-09-25 0:00:00', 'Summer 2001', 'Xebec', 'Action|Adventure|Comedy|Supernatural|Super Power|Shounen', '543', '333652', '3531'),
('36', 'Initial D First Stage', 'Unlike his friends, Takumi Fujiwara is not particularly interested in cars, with little to no knowledge about the world of car enthusiasts and street racers. The son of a tofu shop owner, he is tasked to deliver tofu every morning without fail, driving along the mountain of Akina. Thus, conversations regarding cars or driving in general would only remind Takumi of the tiring daily routine forced upon him.  One night, the Akagi Red Suns, an infamous team of street racers, visit the town of Akina to challenge the local mountain pass. Led by their two aces, Ryousuke and Keisuke Takahashi, the Red Suns plan to conquer every racing course in Kanto, establishing themselves as the fastest crew in the region. However, much to their disbelief, one of their aces is overtaken by an old Toyota AE86 during a drive back home from Akina. After the incident, the Takahashi brothers are cautious of a mysterious driver geared with remarkable technique and experience in the local roads—the AE86 of Mount Akina.', 'https://cdn.myanimelist.net/images/anime/13/6801.jpg', 'Manga', '26', 'Finished Airing', '1998-04-19 0:00:00', '1998-12-06 0:00:00', 'Spring 1998', 'Gallop|Studio Comet', 'Action|Drama|Sports|Cars|Seinen', '629', '297587', '9042'),
('37', 'Dragon Ball', 'Gokuu Son is a young boy who lives in the woods all alone—that is, until a girl named Bulma runs into him in her search for a set of magical objects called the \"Dragon Balls.\" Since the artifacts are said to grant one wish to whoever collects all seven, Bulma hopes to gather them and wish for a perfect boyfriend. Gokuu happens to be in possession of a dragon ball, but unfortunately for Bulma, he refuses to part ways with it, so she makes him a deal: he can tag along on her journey if he lets her borrow the dragon ball\'s power. With that, the two set off on the journey of a lifetime.  They don\'t go on the journey alone. On the way, they meet the old Muten-Roshi and wannabe disciple Kuririn, with whom Gokuu trains to become a stronger martial artist for the upcoming World Martial Arts Tournament. However, it\'s not all fun and games; the ability to make any wish come true is a powerful one, and there are others who would do much worse than just wishing for a boyfriend. To stop those who would try to abuse the legendary power, they train to become stronger fighters, using their newfound strength to help the people around them along the way.  ', 'https://cdn.myanimelist.net/images/anime/1887/92364.jpg', 'Manga', '153', 'Finished Airing', '1986-02-26 0:00:00', '1989-04-12 0:00:00', 'Winter 1986', 'Toei Animation', 'Adventure|Comedy|Fantasy|Martial Arts|Super Power|Shounen', '135', '890292', '13036'),
('38', 'Dragon Ball GT', 'Emperor Pilaf finally has his hands on the Black Star Dragon Balls after years of searching, which are said to be twice as powerful as Earth\'s normal ones. Pilaf is about to make his wish for world domination when he is interrupted by Gokuu Son. As a result, Pilaf flubs his wish and accidentally turns Gokuu back into a child.  After the wish is granted, the Black Star Dragon Balls scatter across the galaxy. However, Gokuu discovers that they will cause the Earth to explode unless they are all brought back within a year. Uniting with his granddaughter Pan and a young adult Trunks, Gokuu sets off on an adventure through the universe to find the Black Star Dragon Balls and save his planet from destruction.', 'https://cdn.myanimelist.net/images/anime/1262/93119.jpg', 'Manga', '64', 'Finished Airing', '1996-02-07 0:00:00', '1997-11-19 0:00:00', 'Winter 1996', 'Toei Animation', 'Action|Adventure|Comedy|Fantasy|Sci-Fi|Super Power|Shounen', '305', '558460', '1669'),
('39', 'Elfen Lied', 'Lucy is a special breed of human referred to as \"Diclonius,\" born with a short pair of horns and invisible telekinetic hands that lands her as a victim of inhumane scientific experimentation by the government. However, once circumstances present her an opportunity to escape, Lucy, corrupted by the confinement and torture, unleashes a torrent of bloodshed as she escapes her captors.  During her breakout, she receives a crippling head injury that leaves her with a split personality: someone with the mentality of a harmless child possessing limited speech capacity. In this state of instability, she stumbles upon two college students, Kouta and his cousin Yuka, who unknowingly take an injured fugitive into their care, unaware of her murderous tendencies. This act of kindness will change their lives, as they soon find themselves dragged into the shadowy world of government secrecy and conspiracy.  ', 'https://cdn.myanimelist.net/images/anime/10/6883.jpg', 'Manga', '13', 'Finished Airing', '2004-07-25 0:00:00', '2004-10-17 0:00:00', 'Summer 2004', 'Arms', 'Action|Drama|Horror|Romance|Supernatural|Psychological|Seinen', '65', '1358166', '22269'),
('40', 'FLCL', 'Naota Nandaba is an ordinary sixth grader living in a city where nothing amazing ever seems to happen. After his brother Tasuku leaves town to play baseball in America, Naota takes it upon himself to look after everything Tasuku left behind—from his top bunk bed to his ex-girlfriend Mamimi Samejima, who hasn\'t stopped clinging to Naota since Tasuku left.  Little does Naota know, however, that his mundane existence is on the verge of being changed forever: enter Haruko Haruhara, a Vespa-riding, bass guitar-wielding, pink-haired psychopath whose first encounter with Naota leaves him with tire tracks on his back and a giant horn on his head. Though all he wants is some peace and quiet, when Haruko takes up residence at his parents\' home, Naota finds himself dragged into the heart of the greatest battle for supremacy that Earth—and quite possibly the entire universe—has ever seen.', 'https://cdn.myanimelist.net/images/anime/7/77356.jpg', 'Original', '6', 'Finished Airing', '2000-04-26 0:00:00', '2001-03-16 0:00:00', '', 'Gainax|Production I.G', 'Action|Avant Garde|Comedy|Sci-Fi|Mecha|Parody|Psychological', '205', '715362', '26059'),
('41', 'Golden Boy', 'Kintarou Ooe is a specialist in part-time work, riding all over the highways and byways of Japan on his trusty steed, the Mikazuki 5, and finding employment wherever he can. His adventures bring him knowledge and experience that can\'t be taught in a classroom, from political corruption to the delicacy of a young woman\'s heart. With nothing but the open road before him—not to mention the many beautiful women along the way—Kintarou pursues his spirit of education while attempting to hold down his various odd jobs, however undignified they may be. As he learns from each task he takes on, who knows what could happen? He might even be able to save the world one day. One thing is for sure—this will all be very educational!', 'https://cdn.myanimelist.net/images/anime/3/62867.jpg', 'Manga', '6', 'Finished Airing', '1995-10-27 0:00:00', '1996-06-28 0:00:00', '', 'APPP', 'Adventure|Comedy|Ecchi', '597', '309104', '4462'),
('42', 'Zhu Zhu Xia: Zhong Ji Jue Zhan - Qian Ye Pian', 'A prequel TV series setting up for the feature film.  G.G. Bond\'s father while exploring ruins gets sucked into a dimension of evil through the Dark Gate. He is bestowed power and knowledge and becomes corrupted as the King of Darkness. Ancient monsters are sent through the cracks of the gate to attack G.G. Bond and his team as the 5 elemental powers are stronger than the King of Darkness. By weakening the team, only then can the King of Darkness forcibly open the gate to unless a reign of terror on the Fairy Tale world.', 'https://cdn.myanimelist.net/images/anime/1480/93363.jpg', 'Original', '52', 'Finished Airing', '2015-06-10 0:00:00', '2015-08-20 0:00:00', 'Summer 2015', '', 'Sci-Fi|Super Power|Kids', '16903', '181', '0'),
('43', 'Chi-Sui Maru', 'The offensive and defensive battles between Nobuo, an office worker, and Chi-Sui Maru, a mosquito.', 'https://cdn.myanimelist.net/images/anime/3/87751.jpg', 'Original', '41', 'Finished Airing', '2010-02-06 0:00:00', '2010-11-26 0:00:00', 'Winter 2010', '', 'Comedy', '13401', '481', '1'),
('44', 'Telemonster', 'Korean Animation about the monsters Eerie, Rock-G, Popo, and Yossi and the adventures they go on each day!', 'https://cdn.myanimelist.net/images/anime/7/78233.jpg', 'Original', '52', 'Finished Airing', '2016-02-28 0:00:00', '2017-07-09 0:00:00', 'Winter 2016', '', 'Adventure', '14139', '379', '0'),
('45', 'Kkoma Sinseon Tao', 'This Korean and Chinese co-production series focuses on Tao, a young boy with magical powers, as he attends school to become a wizard. Each episode was composed of two stories.  (Source: Wiki)', 'https://cdn.myanimelist.net/images/anime/10/85156.jpg', 'Original', '39', 'Finished Airing', '2009-07-13 0:00:00', '2010-04-26 0:00:00', 'Summer 2009', '', 'Kids', '17349', '155', '1'),
('46', 'Hataraku Maou-sama! 2nd Season', 'Second season of', 'https://cdn.myanimelist.net/images/anime/1543/120053.jpg', 'Light novel', '', 'Not yet aired', '2022-07-20 0:00:00', '', 'Summer 2022', 'Studio 3Hz', 'Comedy|Fantasy|Romance|Supernatural|Demons', '981', '193927', '2314'),
('47', 'Shingeki no Kyojin: The Final Season Part 2', 'Turning against his former allies and enemies alike, Eren Yeager sets a disastrous plan in motion. Under the guidance of the Beast Titan, Zeke, Eren takes extreme measures to end the ancient conflict between Marley and Eldia—but his true intentions remain a mystery. Delving deep into his family\'s past, Eren fights to control his own destiny.  Meanwhile, the long-feuding nations of Marley and Eldia utilize both soldiers and Titans in a brutal race to eliminate the other. Reiner Braun uses his own powers in a desperate bid to hold off Eren\'s own militaristic force, and his fellow Eldians—children Falco Grice and Gabi Braun—struggle to survive in the unfolding chaos.  Elsewhere, Eren\'s childhood friends Mikasa Ackerman and Armin Arlert remain imprisoned alongside Eren\'s former Survey Corps companions, all disturbed by Eren\'s monstrous transformation. Under the blind belief that Eren still secretly harbors good intentions, Mikasa and the others enter the fray in an attempt to save their friend\'s very soul.', 'https://cdn.myanimelist.net/images/anime/1948/120625.jpg', 'Manga', '12', 'Currently Airing', '2022-01-10 0:00:00', '2022-04-04 0:00:00', 'Winter 2022', 'MAPPA', 'Action|Drama|Fantasy|Mystery|Military|Super Power|Shounen', '190', '736558', '21352'),
('48', 'Naruto', 'Moments prior to Naruto Uzumaki\'s birth, a huge demon known as the Kyuubi, the Nine-Tailed Fox, attacked Konohagakure, the Hidden Leaf Village, and wreaked havoc. In order to put an end to the Kyuubi\'s rampage, the leader of the village, the Fourth Hokage, sacrificed his life and sealed the monstrous beast inside the newborn Naruto.  Now, Naruto is a hyperactive and knuckle-headed ninja still living in Konohagakure. Shunned because of the Kyuubi inside him, Naruto struggles to find his place in the village, while his burning desire to become the Hokage of Konohagakure leads him not only to some great new friends, but also some deadly foes.', 'https://cdn.myanimelist.net/images/anime/13/17405.jpg', 'Manga', '220', 'Finished Airing', '2002-10-03 0:00:00', '2007-02-08 0:00:00', 'Fall 2002', 'Studio Pierrot', 'Action|Adventure|Comedy|Martial Arts|Super Power|Shounen', '8', '2419030', '67899'),
('49', 'Akira', 'Japan, 1988. An explosion caused by a young boy with psychic powers tears through the city of Tokyo and ignites the fuse that leads to World War III. In order to prevent any further destruction, he is captured and taken into custody, never to be heard from again. Now, in the year 2019, a restored version of the city known as Neo-Tokyo—an area rife with gang violence and terrorism against the current government—stands in its place. Here, Shoutarou Kaneda leads \"the Capsules,\" a group of misfits known for riding large, custom motorcycles and being in constant conflict with their rivals \"the Clowns.\"  During one of these battles, Shoutarou\'s best friend Tetsuo Shima is caught up in an accident with an esper who finds himself in the streets of Tokyo after escaping confinement from a government institution. Through this encounter, Tetsuo begins to develop his own mysterious abilities, as the government seeks to quarantine this latest psychic in a desperate attempt to prevent him from unleashing the destructive power that could once again bring the city to its knees.  ', 'https://cdn.myanimelist.net/images/anime/1408/114012.jpg', 'Manga', '1', 'Finished Airing', '1988-07-16 0:00:00', '1988-07-16 0:00:00', '', 'Tokyo Movie Shinsha', 'Action|Adventure|Horror|Sci-Fi|Supernatural|Military|Seinen', '211', '706128', '10994'),
('50', 'Chobits', 'When computers start to look like humans, can love remain the same?  Hideki Motosuwa is a young country boy who is studying hard to get into college. Coming from a poor background, he can barely afford the expenses, let alone the newest fad: Persocoms, personal computers that look exactly like human beings. One evening while walking home, he finds an abandoned Persocom. After taking her home and managing to activate her, she seems to be defective, as she can only say one word, \"Chii,\" which eventually becomes her name. Unlike other Persocoms, however, Chii cannot download information onto her hard drive, so Hideki decides to teach her about the world the old-fashioned way, while studying for his college entrance exams at the same time.  Along with his friends, Hideki tries to unravel the mystery of Chii, who may be a \"Chobit,\" an urban legend about special units that have real human emotions and thoughts, and love toward their owner. But can romance flourish between a Persocom and a human?  ', 'https://cdn.myanimelist.net/images/anime/4/24648.jpg', 'Manga', '26', 'Finished Airing', '2002-04-03 0:00:00', '2002-09-25 0:00:00', 'Spring 2002', 'Madhouse', 'Comedy|Drama|Romance|Sci-Fi|Ecchi|Seinen', '398', '442201', '3487');
INSERT INTO `animes` (`anime_id`, `title`, `synopsis`, `image`, `source_type`, `num_episodes`, `status`, `start_date`, `end_date`, `season`, `studios`, `genres`, `popularity_rank`, `members_count`, `favorites_count`) VALUES
('51', 'Monster', 'Dr. Kenzou Tenma, an elite neurosurgeon recently engaged to his hospital director\'s daughter, is well on his way to ascending the hospital hierarchy. That is until one night, a seemingly small event changes Dr. Tenma\'s life forever. While preparing to perform surgery on someone, he gets a call from the hospital director telling him to switch patients and instead perform life-saving brain surgery on a famous performer. His fellow doctors, fiancée, and the hospital director applaud his accomplishment; but because of the switch, a poor immigrant worker is dead, causing Dr. Tenma to have a crisis of conscience.  So when a similar situation arises, Dr. Tenma stands his ground and chooses to perform surgery on the young boy Johan Liebert instead of the town\'s mayor. Unfortunately, this choice leads to serious ramifications for Dr. Tenma—losing his social standing being one of them. However, with the mysterious death of the director and two other doctors, Dr. Tenma\'s position is restored. With no evidence to convict him, he is released and goes on to attain the position of hospital director.  Nine years later when Dr. Tenma saves the life of a criminal, his past comes back to haunt him—once again, he comes face to face with the monster he operated on. He must now embark on a quest of pursuit to make amends for the havoc spread by the one he saved.', 'https://cdn.myanimelist.net/images/anime/10/18793.jpg', 'Manga', '74', 'Finished Airing', '2004-04-07 0:00:00', '2005-09-28 0:00:00', 'Spring 2004', 'Madhouse', 'Drama|Mystery|Suspense|Psychological|Seinen', '157', '817054', '36227');

-- --------------------------------------------------------

--
-- Table structure for table `appearsin`
--

DROP TABLE IF EXISTS `appearsin`;
CREATE TABLE IF NOT EXISTS `appearsin` (
  `animeID` int(11) NOT NULL,
  `characterID` int(11) NOT NULL,
  PRIMARY KEY (`animeID`,`characterID`),
  KEY `characterID` (`characterID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appearsin`
--

INSERT INTO `appearsin` (`animeID`, `characterID`) VALUES
(0, 0),
(0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `befriends`
--

DROP TABLE IF EXISTS `befriends`;
CREATE TABLE IF NOT EXISTS `befriends` (
  `userID1` int(11) NOT NULL,
  `userID2` int(11) NOT NULL,
  PRIMARY KEY (`userID1`,`userID2`),
  KEY `userID2` (`userID2`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `befriends`
--

INSERT INTO `befriends` (`userID1`, `userID2`) VALUES
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `characters`
--

DROP TABLE IF EXISTS `characters`;
CREATE TABLE IF NOT EXISTS `characters` (
  `characterID` int(11) NOT NULL,
  `name` varchar(35) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `bio` varchar(3500) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `animeID` int(11) DEFAULT NULL,
  `ship` int(11) DEFAULT NULL,
  `va` int(11) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`characterID`),
  KEY `animeID` (`animeID`),
  KEY `ship` (`ship`),
  KEY `va` (`va`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `characters`
--

INSERT INTO `characters` (`characterID`, `name`, `gender`, `bio`, `status`, `animeID`, `ship`, `va`, `image`) VALUES
(0, 'Eren Jaegar', 'M', 'Birthdate: March 30\r\nHeight: 183 cm (6\'0\")\r\nWeight: 63 kg (139 lbs)\r\nPosition: 104th Trainees Squad, Scouting Legion\r\nGraduation rank: 5th', 'living', 47, 0, 0, 'https://cdn.myanimelist.net/images/characters/10/216895.jpg'),
(1, 'Mikasa Ackerman', 'F', 'Age: 15, 19 (after time skip)\r\nBirthdate: February 10\r\nHeight: 170 cm (5\'7\")\r\nWeight: 68 kg (150 lbs)\r\nPosition: 104th Trainees Squad, Scouting Legion\r\nGraduation rank: 1st', 'living', 47, 0, 1, 'https://cdn.myanimelist.net/images/characters/9/215563.jpg'),
(2, 'Spike Spiegel', 'M', 'Spike Spiegel is a tall and lean 27-year-old bounty hunter born on Mars. The inspiration for Spike is found in martial artist Bruce Lee who uses the martial arts style of Jeet Kune Do as depicted in Session 8, \"Waltz For Venus\". He has fluffy, dark green hair (which is inspired by Yusaku Matsuda\'s) and reddish brown eyes, one of which is artificial and lighter than the other. He is usually dressed in a blue leisure suit, with a yellow shirt and Lupin III inspired boots. A flashback in Session 6 revealed it was his fully functioning right eye which was surgically replaced by the cybernetic one (although Spike himself may not have conscious recollection of the procedure since he claims to have lost his natural eye in an \"accident\"). One theory is that his natural eye may have been lost during the pre-series massacre in which he supposedly \"died\". The purpose of this cybernetic eye is never explicitly stated, though it apparently gives him exceptional hand-eye coordination - particularly with firearms (Spike\'s gun of choice is a Jericho 941, as seen throughout the series). In the first episode, when facing a bounty-head using Red Eye, Spike mocks him, calling his moves \"too slow\". At first, this seems like posturing on Spike\'s part, but even with his senses and reflexes accelerated to superhuman levels by the drug, the bounty cannot even touch Spike. A recurring device throughout the entire show is a closeup on Spike\'s fully-natural left eye before dissolving to a flashback of his life as part of the syndicate. As said by Spike himself in the last episode, his right eye \"only sees the present\" and his left eye \"only sees the past.\" Spike often has a bent cigarette between his lips, sometimes despite rain or \"No Smoking\" signs.\r\n(Source: MAL Rewrite)', '1', 1, NULL, NULL, 'https://media.kitsu.io/characters/images/2/original.jpg'),
(3, 'Faye Valentine', 'F', 'One of the members of the bounty hunting crew in the anime series Cowboy Bebop. Often seen with a cigarette and in a revealing outfit complete with bright yellow hot pants and a matching, revealing top, black suspenders, white boots, and a long-sleeved red shirt worn normally through the sleeves, not to mention her signature headband, she is unusually attractive, sporting a bob of violet hair, green eyes, fair skin, and a voluptuous body. Although appearing to be no more than her 23 years alive suggests, Faye is actually upwards of 74-years-old, having been put into cryogenic freeze after a space shuttle accident. During the course of the series (set in 2071), Faye manages to cross paths with Spike and Jet twice before she finally makes herself at home aboard their ship the second time, much to the consternation and disapproval of the two men, both of whom have their own reservations about women in general. Faye herself is brash, egotistical, and quite lazy, despite taking plenty of time to pamper and care for her own appearance. Faye has also been placed under arrest several times in the series and spends much time in handcuffs on the ship. She, at times, expects the boys to take care of bounties for her, while she sits by idly to reap the benefits and eat all their food, another source of conflict.', NULL, 1, NULL, NULL, 'https://cdn.myanimelist.net/images/characters/15/264961.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
CREATE TABLE IF NOT EXISTS `favorites` (
  `userID` int(11) NOT NULL,
  `characterID` int(11) NOT NULL,
  PRIMARY KEY (`userID`,`characterID`),
  KEY `characterID` (`characterID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`userID`, `characterID`) VALUES
(1, 0),
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `isshipped`
--

DROP TABLE IF EXISTS `isshipped`;
CREATE TABLE IF NOT EXISTS `isshipped` (
  `characterID0` int(11) NOT NULL,
  `characterID1` int(11) NOT NULL,
  `characterID` int(11) NOT NULL,
  PRIMARY KEY (`characterID`,`characterID0`,`characterID1`),
  KEY `characterID0` (`characterID0`,`characterID1`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `isshipped`
--

INSERT INTO `isshipped` (`characterID0`, `characterID1`, `characterID`) VALUES
(0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ship`
--

DROP TABLE IF EXISTS `ship`;
CREATE TABLE IF NOT EXISTS `ship` (
  `characterID0` int(11) NOT NULL,
  `characterID1` int(11) NOT NULL,
  `likes` int(11) DEFAULT NULL,
  `dislikes` int(11) DEFAULT NULL,
  PRIMARY KEY (`characterID0`,`characterID1`),
  KEY `characterID1` (`characterID1`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ship`
--

INSERT INTO `ship` (`characterID0`, `characterID1`, `likes`, `dislikes`) VALUES
(0, 1, 500, 244);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `bio` varchar(500) DEFAULT NULL,
  `friends` int(11) DEFAULT NULL,
  `animelist` int(11) DEFAULT NULL,
  `favorites` int(11) DEFAULT NULL,
  PRIMARY KEY (`userID`),
  KEY `friends` (`friends`),
  KEY `animelist` (`animelist`),
  KEY `favorites` (`favorites`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `username`, `password`, `email`, `bio`, `friends`, `animelist`, `favorites`) VALUES
(1, 'bigJD57', 'iamsocool111', 'bigJD57@gmail.com', 'I like anime and anime girls.', 1, 0, 0),
(2, 'totallyNotMy2ndAcct', 'iamsad1!', 'smallJD5777@gmail.com', 'I need a girlfriend.', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `views`
--

DROP TABLE IF EXISTS `views`;
CREATE TABLE IF NOT EXISTS `views` (
  `animeID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  PRIMARY KEY (`animeID`,`userID`),
  KEY `userID` (`userID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `views`
--

INSERT INTO `views` (`animeID`, `userID`) VALUES
(0, 0),
(0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `voiceactor`
--

DROP TABLE IF EXISTS `voiceactor`;
CREATE TABLE IF NOT EXISTS `voiceactor` (
  `vaID` int(11) NOT NULL,
  `name` varchar(35) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `bio` varchar(500) DEFAULT NULL,
  `characters` int(11) DEFAULT NULL,
  PRIMARY KEY (`vaID`),
  KEY `characters` (`characters`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `voiceactor`
--

INSERT INTO `voiceactor` (`vaID`, `name`, `gender`, `age`, `bio`, `characters`) VALUES
(0, 'Kaji, Yuuki', 'M', 36, 'Born in Tokyo, Grew up in Saitama. Has a younger sister. He moved from Artsvision to VIMS on October 1, 2013, and his official site has been shut down on May 21, 2015.', 0),
(1, 'Ishikawa, Yui', 'F', 32, 'Yui Ishikawa (born May 30, 1989 in Osaka, Japan) is a Japanese voice actress affiliated with mitt management.\r\n\r\nHimawari Theatre Group Between 1995-2004\r\nSunaoka Office (Still Part of Himawari Theatre Group) Between September 2004-April 2019\r\nmitt management from May 2019\r\n\r\nShe announced her marriage on May 30, 2021.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `voicedby`
--

DROP TABLE IF EXISTS `voicedby`;
CREATE TABLE IF NOT EXISTS `voicedby` (
  `characterID` int(11) NOT NULL,
  `vaID` int(11) NOT NULL,
  PRIMARY KEY (`characterID`,`vaID`),
  KEY `vaID` (`vaID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `voicedby`
--

INSERT INTO `voicedby` (`characterID`, `vaID`) VALUES
(0, 0),
(1, 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
