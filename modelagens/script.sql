-- Criação do banco de dados
CREATE DATABASE IF NOT EXISTS db_discoteca
COLLATE utf8mb4_general_ci CHARSET utf8mb4;

USE db_discoteca;

-- Tabelas
CREATE TABLE IF NOT EXISTS tb_tipo_artista (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(255) NOT NULL
) AUTO_INCREMENT=100;

CREATE TABLE IF NOT EXISTS tb_artista (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    data_nasc DATE,
    tipo_artista INTEGER NOT NULL,
    CONSTRAINT fk_tipo_artista_artista FOREIGN KEY (tipo_artista) REFERENCES tb_tipo_artista(id)
) AUTO_INCREMENT=0001;

CREATE TABLE IF NOT EXISTS tb_genero (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL
) AUTO_INCREMENT=50;

CREATE TABLE IF NOT EXISTS tb_gravadora (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL
) AUTO_INCREMENT=0001;

CREATE TABLE IF NOT EXISTS tb_disco (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(255) NOT NULL,
    duracao TIME NOT NULL,
    ano_lancamento DATE NOT NULL,
    artista INTEGER NOT NULL,
    gravadora INTEGER NOT NULL,
    genero INTEGER NOT NULL,
    CONSTRAINT fk_musica_artista FOREIGN KEY (artista) REFERENCES tb_artista(id),
    CONSTRAINT fk_musica_gravadora FOREIGN KEY (gravadora) REFERENCES tb_gravadora(id),
    CONSTRAINT fk_disco_genero FOREIGN KEY (genero) REFERENCES tb_genero(id)
) AUTO_INCREMENT=0001;

CREATE TABLE IF NOT EXISTS tb_musica (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    duracao TIME NOT NULL,
    disco INTEGER NOT NULL,
    CONSTRAINT fk_musica_disco FOREIGN KEY (disco) REFERENCES tb_disco(id)
) AUTO_INCREMENT=0001;

-- Inserção de dados
-- Gravadoras
INSERT INTO tb_gravadora (nome) VALUES
    ('Sony Music'),
    ('Universal Music'),
    ('Warner Music'),
    ('EMI Records'),
    ('BMG Rights Management');

-- Tipos de artistas
INSERT INTO tb_tipo_artista (descricao) VALUES
    ('Artista solo'),
    ('Duo'),
    ('Banda'),
    ('Banda virtual'),
    ('Supergrupo');

-- Gêneros musicais
INSERT INTO tb_genero (nome) VALUES   
    ('Pop/R&B'),
    ('Rock'),
    ('Soul'),
    ('Electronic/Disco'),
    ('Alternative Rock'),
    ('R&B'),
    ('Pop'),
    ('Worldbeat'),
    ('Grunge'),
    ('Hip-Hop/Rap'),
    ('Progressive Rock'),
    ('R&B/Soul'),
    ('Hip-Hop/Trap'),
    ('Punk Rock'),
    ('Pop/Rock/Funk'),
    ('Nu Metal'),
    ('Garage Rock'),
    ('Heavy Metal'),
    ('Rock/Experimental'),
    ('Indie Rock'),
    ('Alternative Hip-Hop'),
    ('Pop Rock'),
    ('Glam Rock'),
    ('Dream Pop'),
    ('Stoner Rock'),
    ('Soul/Funk/Rock'),
    ('Rap Rock'),
    ('Alternative Metal'),
    ('Pop Punk'),
    ('Metalcore');

-- Artistas
INSERT INTO tb_artista (nome, data_nasc, tipo_artista) VALUES
    ('Michael Jackson', '1958-08-29', 100),
    ('Bruce Springsteen', '1949-09-23', 100),
    ('Amy Winehouse', '1983-09-14', 100),
    ('Daft Punk', NULL, 101),
    ('Coldplay', NULL, 102),
    ('Justin Timberlake', '1981-01-31', 100),
    ('Beyoncé', '1981-09-04', 100),
    ('Gwen Stefani', '1969-10-03', 100),
    ('Paul Simon', '1941-10-13', 100),
    ('Nirvana', NULL, 102),
    ('Eminem', NULL, 100),
    ('Queen', NULL, 102),
    ('Kendrick Lamar', '1987-06-17', 100),
    ('Alicia Keys', '1981-01-25', 100),
    ('The Beatles', NULL, 102),
    ('Adele', '1988-05-05', 100),
    ('U2', NULL, 102),
    ('Lady Gaga', '1986-03-28', 100),
    ('Travis Scott', '1991-04-30', 100),
    ('Pink Floyd', NULL, 102),
    ('Eagles', NULL, 102),
    ('Green Day', NULL, 102),
    ('Prince and the Revolution', NULL, 104),
    ('David Bowie', '1947-01-08', 100),
    ('Fleetwood Mac', NULL, 102),
    ('Linkin Park', NULL, 102),
    ('The White Stripes', NULL, 102),
    ('Black Sabbath', NULL, 102),
    ('Radiohead', NULL, 102),
    ('Keane', NULL, 102),
    ('Gorillaz', NULL, 103),
    ('System of a Down', NULL, 102),
    ('Duran Duran', NULL, 102),
    ('Paul McCartney & Wings', NULL, 102),
    ('Iggy Pop', '1947-04-21', 100),
    ('Queens of the Stone Age', NULL, 102),
    ('Alabama Shakes', NULL, 102),
    ('Kings of Leon', NULL, 102),
    ('Imagine Dragons', NULL, 102),
    ('Prophets of Rage', NULL, 104),
    ('Stone Sour', NULL, 102),
    ('Avril Lavigne', '1984-09-27', 100),
    ('August Burns Red', NULL, 102);

-- Discos
INSERT INTO tb_disco (ano_lancamento, duracao, titulo, artista, gravadora, genero) VALUES
    (1982, '00:42:19', 'Thriller', 1, 1, 51),
    (1975, '00:39:26', 'Born to Run', 2, 2, 52),
    (1991, '01:17:03', 'Dangerous', 1, 1, 51),
    (2006, '00:34:56', 'Back to Black', 3, 2, 53),
    (2013, '01:14:24', 'Random Access Memories', 4, 1, 54),
    (2002, '00:54:08', 'A Rush of Blood to the Head', 5, 2, 55),
    (2006, '01:06:24', 'FutureSex/LoveSounds', 6, 3, 56),
    (2006, '01:00:33', 'B’Day', 7, 1, 51),
    (2004, '00:49:56', 'Love. Angel. Music. Baby.', 8, 2, 57),
    (1986, '00:43:18', 'Graceland', 9, 2, 58),
    (1991, '00:49:09', 'Nevermind', 10, 3, 59),
    (2002, '01:17:56', 'The Eminem Show', 11, 3, 60),
    (1975, '00:43:08', 'A Night at the Opera', 12, 4, 52),
    (2017, '00:54:54', 'DAMN.', 13, 2, 60),
    (2001, '01:01:13', 'Songs in A Minor', 14, 3, 62),
    (1969, '00:47:23', 'Abbey Road', 15, 4, 52),
    (2011, '00:48:12', '21', 16, 2, 51),
    (1987, '00:50:11', 'The Joshua Tree', 17, 2, 55),
    (2011, '01:10:25', 'Born This Way', 18, 1, 51),
    (2018, '00:58:38', 'Astroworld', 19, 3, 63),
    (1973, '00:42:49', 'The Dark Side of the Moon', 20, 2, 61),
    (1976, '00:43:28', 'Hotel California', 21, 2, 52),
    (2009, '01:09:17', '21st Century Breakdown', 22, 3, 64),
    (1984, '00:43:54', 'Purple Rain', 23, 1, 65),
    (1983, '00:39:41', 'Let’s Dance', 24, 1, 51),
    (1994, '00:39:38', 'Dookie', 25, 3, 79),
    (1977, '00:39:43', 'Rumours', 26, 2, 52),
    (2000, '00:37:45', 'Hybrid Theory', 27, 3, 66),
    (2003, '00:49:56', 'Elephant', 28, 3, 67),
    (1970, '00:38:08', 'Black Sabbath', 29, 2, 68),
    (1968, '01:33:14', 'The Beatles (White Album)', 15, 4, 52),
    (1986, '00:40:42', 'A Kind of Magic', 12, 4, 52),
    (1997, '00:53:21', 'OK Computer', 30, 2, 69),
    (2004, '00:45:11', 'Hopes and Fears', 31, 2, 70),
    (2005, '00:50:42', 'Demon Days', 32, 1, 103),
    (2000, '00:41:45', 'Parachutes', 5, 2, 55),
    (2001, '00:44:01', 'Toxicity', 33, 3, 78),
    (1982, '00:42:28', 'Rio', 34, 4, 51),
    (1973, '00:41:01', 'Band on the Run', 35, 4, 52),
    (1995, '01:10:17', 'Made in Heaven', 12, 4, 52),
    (1972, '00:37:18', 'The Rise and Fall of Ziggy Stardust and the Spiders from Mars', 24, 1, 73),
    (1977, '00:41:28', 'Lust for Life', 36, 1, 73),
    (2002, '01:00:21', 'Songs for the Deaf', 37, 2, 75),
    (2015, '00:47:04', 'Sound & Color', 38, 2, 74),
    (2013, '00:42:05', 'Mechanical Bull', 39, 2, 52),
    (2017, '00:39:21', 'Evolve', 40, 2, 72),
    (2017, '00:39:54', 'Prophets of Rage', 41, 5, 77),
    (2012, '00:48:24', 'House of Gold & Bones – Part 1', 42, 3, 78),
    (2004, '00:41:10', 'Under My Skin', 43, 1, 79),
    (2017, '00:53:02', 'Phantom Anthem', 44, 3, 80);
    
    
    -- Inserção de músicas para os discos
-- Thriller (Michael Jackson)
INSERT INTO tb_musica (nome, duracao, disco) VALUES
    ('Wanna Be Startin\' Somethin\'', '00:06:03', 1),
    ('Baby Be Mine', '00:04:20', 1),
    ('The Girl Is Mine', '00:03:42', 1),
    ('Thriller', '00:05:57', 1),
    ('Beat It', '00:04:18', 1),
    ('Billie Jean', '00:04:54', 1),
    ('Human Nature', '00:04:06', 1),
    ('P.Y.T. (Pretty Young Thing)', '00:03:59', 1),
    ('The Lady in My Life', '00:04:59', 1);

-- Born to Run (Bruce Springsteen)
INSERT INTO tb_musica (nome, duracao, disco) VALUES
    ('Thunder Road', '00:04:49', 2),
    ('Tenth Avenue Freeze-Out', '00:03:00', 2),
    ('Night', '00:03:00', 2),
    ('Backstreets', '00:06:30', 2),
    ('Born to Run', '00:04:30', 2),
    ('She\'s the One', '00:04:30', 2),
    ('Meeting Across the River', '00:04:30', 2),
    ('Jungleland', '00:09:32', 2);

-- Dangerous (Michael Jackson)
INSERT INTO tb_musica (nome, duracao, disco) VALUES
    ('Dangerous', '00:06:59', 3),
    ('The Way You Make Me Feel', '00:04:59', 3),
    ('Black or White', '00:04:20', 3),
    ('Rock with You', '00:05:32', 3),
    ('Remember the Time', '00:04:00', 3),
    ('In the Closet', '00:06:31', 3),
    ('Who Is It', '00:06:34', 3),
    ('Give In to Me', '00:05:29', 3),
    ('Will You Be There', '00:07:40', 3),
    ('Dangerous (Reprise)', '00:06:16', 3);

-- Back to Black (Amy Winehouse)
INSERT INTO tb_musica (nome, duracao, disco) VALUES
    ('Rehab', '00:03:34', 4),
    ('You Know I\'m No Good', '00:04:17', 4),
    ('Back to Black', '00:04:00', 4),
    ('Love Is a Losing Game', '00:02:34', 4),
    ('Tears Dry on Their Own', '00:03:06', 4),
    ('Wake Up Alone', '00:03:42', 4),
    ('Some Unholy War', '00:02:24', 4),
    ('He Can Only Hold Her', '00:02:39', 4),
    ('Addicted', '00:02:44', 4),
    ('Me & Mr Jones', '00:02:34', 4);

-- Random Access Memories (Daft Punk)
INSERT INTO tb_musica (nome, duracao, disco) VALUES
    ('Give Life Back to Music', '00:04:34', 5),
    ('The Game of Love', '00:05:21', 5),
    ('Giorgio by Moroder', '00:09:00', 5),
    ('Within', '00:03:48', 5),
    ('Instant Crush', '00:05:38', 5),
    ('Lose Yourself to Dance', '00:05:00', 5),
    ('Touch', '00:08:20', 5),
    ('Get Lucky', '00:06:09', 5),
    ('Beyond', '00:04:47', 5),
    ('Motherboard', '00:05:30', 5),
    ('Fragments of Life', '00:04:09', 5),
    ('Contact', '00:06:21', 5);

-- A Rush of Blood to the Head (Coldplay)
INSERT INTO tb_musica (nome, duracao, disco) VALUES
    ('Politik', '00:04:10', 6),
    ('In My Place', '00:03:48', 6),
    ('God Put a Smile upon Your Face', '00:04:58', 6),
    ('The Scientist', '00:05:09', 6),
    ('Clocks', '00:05:07', 6),
    ('Daylight', '00:05:27', 6),
    ('Green Eyes', '00:03:42', 6),
    ('Warning Sign', '00:03:47', 6),
    ('A Whisper', '00:03:41', 6),
    ('See You Soon', '00:04:05', 6),
    ('Shiver', '00:05:01', 6);

-- FutureSex/LoveSounds (Justin Timberlake)
INSERT INTO tb_musica (nome, duracao, disco) VALUES
    ('FutureSex/LoveSound', '00:04:09', 7),
    ('SexyBack', '00:04:36', 7),
    ('Sexy Ladies', '00:04:21', 7),
    ('My Love', '00:05:06', 7),
    ('LoveStoned/I Think She Knows', '00:07:27', 7),
    ('What Goes Around... Comes Around', '00:07:28', 7),
    ('Chop Me Up', '00:04:41', 7),
    ('Damn Girl', '00:04:20', 7),
    ('Summer Love', '00:04:16', 7),
    ('Until the End of Time', '00:07:02', 7);

-- B’Day (Beyoncé)
INSERT INTO tb_musica (nome, duracao, disco) VALUES
    ('Deja Vu', '00:03:35', 8),
    ('Get Me Bodied', '00:04:39', 8),
    ('Suga Mama', '00:03:53', 8),
    ('Upgrade U', '00:04:33', 8),
    ('Ring the Alarm', '00:03:28', 8),
    ('Kitty Kat', '00:03:51', 8),
    ('B-Day Song', '00:04:14', 8),
    ('Flaws and All', '00:04:17', 8),
    ('Resentment', '00:04:31', 8);

-- Love. Angel. Music. Baby. (Gwen Stefani)
INSERT INTO tb_musica (nome, duracao, disco) VALUES
    ('What You Waiting For?', '00:04:07', 9),
    ('Rich Girl', '00:03:53', 9),
    ('Hollaback Girl', '00:04:20', 9),
    ('Cool', '00:04:09', 9),
    ('Bubble Pop Electric', '00:04:21', 9),
    ('Luxurious', '00:04:04', 9),
    ('Harajuku Girls', '00:03:36', 9),
    ('Crash', '00:04:29', 9),
    ('The Real Thing', '00:04:07', 9),
    ('Serious', '00:03:36', 9);

-- Graceland (Paul Simon)
INSERT INTO tb_musica (nome, duracao, disco) VALUES
    ('The Boy in the Bubble', '00:03:37', 10),
    ('Graceland', '00:04:51', 10),
    ('I Know What I Know', '00:03:14', 10),
    ('Gumboots', '00:02:42', 10),
    ('Diamonds on the Soles of Her Shoes', '00:05:40', 10),
    ('You Can Call Me Al', '00:04:40', 10),
    ('Under African Skies', '00:03:34', 10),
    ('Homeless', '00:03:49', 10),
    ('The Obvious Child', '00:04:08', 10),
    ('Crazy Love, Vol. II', '00:04:04', 10);

-- Nevermind (Nirvana)
INSERT INTO tb_musica (nome, duracao, disco) VALUES
    ('Smells Like Teen Spirit', '00:05:01', 11),
    ('In Bloom', '00:04:15', 11),
    ('Come as You Are', '00:03:38', 11),
    ('Breed', '00:03:03', 11),
    ('Lithium', '00:04:16', 11),
    ('Polly', '00:02:57', 11),
    ('Territorial Pissings', '00:03:23', 11),
    ('Drain You', '00:03:43', 11),
    ('Lounge Act', '00:02:37', 11),
    ('Stay Away', '00:03:32', 11),
    ('On a Plain', '00:03:16', 11),
    ('Something in the Way', '00:04:01', 11);



-- The Eminem Show (Eminem)
INSERT INTO tb_musica (nome, duracao, disco) VALUES
    ('Without Me', '00:04:50', 12),
    ('Paul (Skit)', '00:01:02', 12),
    ('Fight Music', '00:04:43', 12),
    ('Drug Ballad', '00:05:20', 12),
    ('Sing for the Moment', '00:04:40', 12),
    ('Superman', '00:05:47', 12),
    ('Hailie\'s Song', '00:04:26', 12),
    ('Steve Berman (Skit)', '00:01:09', 12),
    ('The Way I Am', '00:04:46', 12),
    ('The Real Slim Shady', '00:04:44', 12),
    ('Remember Me?', '00:03:29', 12),
    ('Marshall Mathers', '00:04:48', 12),
    ('Crack a Bottle', '00:05:12', 12),
    ('My Dad\'s Gone Crazy', '00:04:28', 12);

-- Abbey Road (The Beatles)
INSERT INTO tb_musica (nome, duracao, disco) VALUES
    ('Come Together', '00:04:20', 13),
    ('Something', '00:03:03', 13),
    ('Maxwell\'s Silver Hammer', '00:03:27', 13),
    ('Oh! Darling', '00:03:27', 13),
    ('Octopus\'s Garden', '00:02:51', 13),
    ('I Want You (She\'s So Heavy)', '00:07:47', 13),
    ('Here Comes the Sun', '00:03:05', 13),
    ('Because', '00:02:45', 13),
    ('You Never Give Me Your Money', '00:04:02', 13),
    ('Sun King', '00:02:26', 13),
    ('Mean Mr. Mustard', '00:01:06', 13),
    ('Polythene Pam', '00:01:12', 13),
    ('She Came in Through the Bathroom Window', '00:01:58', 13),
    ('Golden Slumbers', '00:01:31', 13),
    ('Carry That Weight', '00:01:36', 13),
    ('The End', '00:02:06', 13),
    ('Her Majesty', '00:00:23', 13);

-- DAMN. (Kendrick Lamar)
INSERT INTO tb_musica (nome, duracao, disco) VALUES
    ('BLOOD.', '00:01:58', 14),
    ('DNA.', '00:03:06', 14),
    ('YAH.', '00:02:42', 14),
    ('ELEMENT.', '00:03:30', 14),
    ('FEEL.', '00:03:43', 14),
    ('LOYALTY.', '00:03:09', 14),
    ('PRIDE.', '00:04:33', 14),
    ('HUMBLE.', '00:02:57', 14),
    ('LUST.', '00:03:33', 14),
    ('XXX.', '00:04:02', 14),
    ('FEAR.', '00:03:45', 14),
    ('GOD.', '00:03:30', 14),
    ('DUCKWORTH.', '00:04:08', 14);

-- Songs in A Minor (Alicia Keys)
INSERT INTO tb_musica (nome, duracao, disco) VALUES
    ('Piano & I', '00:05:37', 15),
    ('Girlfriend', '00:03:32', 15),
    ('How Come You Don\'t Call Me', '00:04:40', 15),
    ('Fallin\'', '00:03:19', 15),
    ('Troubles', '00:03:27', 15),
    ('Rock Wit U', '00:04:13', 15),
    ('Interlude', '00:00:40', 15),
    ('The Life', '00:04:36', 15),
    ('Butterflyz', '00:04:00', 15),
    ('Why Do I Feel So Sad', '00:03:46', 15),
    ('Caged Bird', '00:03:37', 15),
    ('Lovin\' U', '00:02:47', 15),
    ('A Woman\'s Worth', '00:05:16', 15),
    ('The Guy Who Says Goodbye to You Is Out of His Mind', '00:03:43', 15);

-- Abbey Road (The Beatles)
INSERT INTO tb_musica (nome, duracao, disco) VALUES
    ('Come Together', '00:04:20', 15),
    ('Something', '00:03:03', 15),
    ('Maxwell\'s Silver Hammer', '00:03:27', 15),
    ('Oh! Darling', '00:03:27', 15),
    ('Octopus\'s Garden', '00:02:51', 15),
    ('I Want You (She\'s So Heavy)', '00:07:47', 15),
    ('Here Comes the Sun', '00:03:05', 15),
    ('Because', '00:02:45', 15),
    ('You Never Give Me Your Money', '00:04:02', 15),
    ('Sun King', '00:02:26', 15),
    ('Mean Mr. Mustard', '00:01:06', 15),
    ('Polythene Pam', '00:01:12', 15),
    ('She Came in Through the Bathroom Window', '00:01:58', 15),
    ('Golden Slumbers', '00:01:31', 15),
    ('Carry That Weight', '00:01:36', 15),
    ('The End', '00:02:06', 15),
    ('Her Majesty', '00:00:23', 15);
    
    
    
    
    -- The Joshua Tree (U2)
INSERT INTO tb_musica (nome, duracao, disco) VALUES
    ('Where the Streets Have No Name', '00:05:38', 16),
    ('I Still Haven\'t Found What I\'m Looking For', '00:04:38', 16),
    ('With or Without You', '00:04:56', 16),
    ('Bullet the Blue Sky', '00:04:30', 16),
    ('Running to Stand Still', '00:04:18', 16),
    ('Red Hill Mining Town', '00:04:52', 16),
    ('Trip Through Your Wires', '00:03:33', 16),
    ('One Tree Hill', '00:05:22', 16),
    ('Exit', '00:04:13', 16),
    ('Mothers of the Disappeared', '00:05:15', 16);

-- Born This Way (Lady Gaga)
INSERT INTO tb_musica (nome, duracao, disco) VALUES
    ('Marry the Night', '00:04:23', 17),
    ('Born This Way', '00:04:20', 17),
    ('Government Hooker', '00:04:13', 17),
    ('Judas', '00:04:09', 17),
    ('Americano', '00:03:06', 17),
    ('Hair', '00:04:05', 17),
    ('Scheiße', '00:03:42', 17),
    ('Bloody Mary', '00:04:04', 17),
    ('Black Jesus + Amen Fashion', '00:03:53', 17),
    ('Bad Kids', '00:03:52', 17),
    ('Highway Unicorn (Road to Love)', '00:04:13', 17),
    ('Heavy Metal Lover', '00:04:03', 17),
    ('Electric Chapel', '00:04:25', 17),
    ('The Queen', '00:03:05', 17),
    ('Yoü and I', '00:05:06', 17),
    ('The Edge of Glory', '00:05:19', 17);

-- Hotel California (The Eagles)
INSERT INTO tb_musica (nome, duracao, disco) VALUES
    ('Hotel California', '00:06:30', 18),
    ('New Kid in Town', '00:05:04', 18),
    ('Life in the Fast Lane', '00:04:29', 18),
    ('Wasted Time', '00:04:39', 18),
    ('Wasted Time (Reprise)', '00:03:47', 18),
    ('The Long Run', '00:03:41', 18),
    ('Desperado', '00:03:33', 18),
    ('Heartache Tonight', '00:04:28', 18);

-- Purple Rain (Prince and the Revolution)
INSERT INTO tb_musica (nome, duracao, disco) VALUES
    ('Let\'s Go Crazy', '00:04:39', 19),
    ('Take Me with U', '00:03:45', 19),
    ('The Beautiful Ones', '00:05:13', 19),
    ('Computer Blue', '00:03:59', 19),
    ('Darling Nikki', '00:04:47', 19),
    ('When Doves Cry', '00:05:52', 19),
    ('I Would Die 4 U', '00:04:59', 19),
    ('Baby I\'m a Star', '00:04:25', 19),
    ('Purple Rain', '00:08:41', 19);

-- Band on the Run (Paul McCartney & Wings)
INSERT INTO tb_musica (nome, duracao, disco) VALUES
    ('Band on the Run', '00:05:13', 20),
    ('Jet', '00:04:09', 20),
    ('Bluebird', '00:03:26', 20),
    ('Mrs. Vanderbilt', '00:04:28', 20),
    ('Let Me Roll It', '00:04:45', 20),
    ('Mamunia', '00:04:17', 20),
    ('No Words', '00:04:21', 20),
    ('Picasso\'s Last Words (Drink to Me)', '00:05:49', 20),
    ('Nineteen Hundred and Eighty-Five', '00:05:31', 20);

-- The Dark Side of the Moon (Pink Floyd)
INSERT INTO tb_musica (nome, duracao, disco) VALUES
    ('Speak to Me', '00:01:30', 21),
    ('Breathe', '00:02:49', 21),
    ('On the Run', '00:03:45', 21),
    ('Time', '00:06:53', 21),
    ('The Great Gig in the Sky', '00:04:44', 21),
    ('Money', '00:06:22', 21),
    ('Us and Them', '00:07:32', 21),
    ('Any Colour You Like', '00:03:25', 21),
    ('Brain Damage', '00:03:50', 21),
    ('Eclipse', '00:02:00', 21);

-- Songs for the Deaf (Queens of the Stone Age)
INSERT INTO tb_musica (nome, duracao, disco) VALUES
    ('You Think I Ain\'t Worth a Dollar, But I Feel Like a Millionaire', '00:03:12', 22),
    ('No One Knows', '00:04:38', 22),
    ('First It Giveth', '00:03:18', 22),
    ('A Song for the Dead', '00:05:43', 22),
    ('The Sky Is Fallin\'', '00:06:06', 22),
    ('Six Shooter', '00:01:33', 22),
    ('Hangin\' Tree', '00:04:12', 22),
    ('Go with the Flow', '00:03:07', 22),
    ('Gonna Leave You', '00:03:13', 22),
    ('Do It Again', '00:04:04', 22),
    ('God Is in the Radio', '00:06:07', 22),
    ('Another Love Song', '00:04:10', 22),
    ('Song for the Deaf', '00:05:22', 22);



-- Hybrid Theory (Linkin Park)
INSERT INTO tb_musica (nome, duracao, disco) VALUES
    ('Papercut', '00:03:05', 23),
    ('One Step Closer', '00:02:35', 23),
    ('With You', '00:03:23', 23),
    ('Points of Authority', '00:03:20', 23),
    ('Crawling', '00:03:29', 23),
    ('Runaway', '00:03:04', 23),
    ('By Myself', '00:03:08', 23),
    ('In the End', '00:03:36', 23),
    ('A Place for My Head', '00:03:05', 23),
    ('Forgotten', '00:03:14', 23),
    ('Cure for the Itch', '00:02:37', 23),
    ('Pushing Me Away', '00:03:17', 23);

-- Songs in A Minor (Alicia Keys)
INSERT INTO tb_musica (nome, duracao, disco) VALUES
    ('Piano & I', '00:03:42', 24),
    ('Girlfriend', '00:03:26', 24),
    ('How Come You Don\'t Call Me Anymore', '00:03:35', 24),
    ('Fallin\'', '00:03:20', 24),
    ('Troubles', '00:04:20', 24),
    ('Rock Wit U', '00:03:36', 24),
    ('A Woman\'s Worth', '00:04:39', 24),
    ('The Life', '00:03:44', 24),
    ('Mr. Man', '00:04:07', 24),
    ('Crazy World', '00:04:12', 24),
    ('Keisha\'s Song (Her Pain)', '00:04:21', 24),
    ('Butterflyz', '00:04:09', 24);

-- Parachutes (Coldplay)
INSERT INTO tb_musica (nome, duracao, disco) VALUES
    ('Don\'t Panic', '00:02:17', 25),
    ('Shiver', '00:04:01', 25),
    ('Spies', '00:04:16', 25),
    ('Sparks', '00:03:48', 25),
    ('Yellow', '00:04:29', 25),
    ('Trouble', '00:04:29', 25),
    ('Peach Tree', '00:03:44', 25),
    ('Everything\'s Not Lost', '00:07:10', 25),
    ('High Speed', '00:04:15', 25);

-- Dookie (Green Day)
INSERT INTO tb_musica (nome, duracao, disco) VALUES
    ('Burnout', '00:02:05', 26),
    ('Having a Blast', '00:03:15', 26),
    ('Chump', '00:02:54', 26),
    ('Longview', '00:03:48', 26),
    ('Welcome to Paradise', '00:03:43', 26),
    ('Pulling Teeth', '00:02:35', 26),
    ('Basket Case', '00:03:02', 26),
    ('She', '00:02:12', 26),
    ('Sassafras Roots', '00:02:50', 26),
    ('When I Come Around', '00:02:58', 26),
    ('Coming Clean', '00:02:32', 26),
    ('Emenius Sleepus', '00:01:43', 26),
    ('In the End', '00:01:48', 26);

-- The Beatles (White Album)
INSERT INTO tb_musica (nome, duracao, disco) VALUES
    ('Back in the U.S.S.R.', '00:02:44', 27),
    ('Dear Prudence', '00:03:56', 27),
    ('Glass Onion', '00:02:17', 27),
    ('Ob-La-Di, Ob-La-Da', '00:03:08', 27),
    ('Wild Honey Pie', '00:01:08', 27),
    ('The Continuing Story of Bungalow Bill', '00:03:04', 27),
    ('While My Guitar Gently Weeps', '00:04:45', 27),
    ('Happiness Is a Warm Gun', '00:02:43', 27),
    ('Martha My Dear', '00:02:28', 27),
    ('I\'m So Tired', '00:02:03', 27),
    ('Blackbird', '00:02:18', 27),
    ('Piggies', '00:02:02', 27),
    ('Rocky Raccoon', '00:03:30', 27),
    ('Don\'t Pass Me By', '00:03:46', 27),
    ('Why Don\'t We Do It in the Road?', '00:01:41', 27),
    ('I Will', '00:01:45', 27),
    ('Julia', '00:02:55', 27),
    ('Birthday', '00:02:42', 27),
    ('Yer Blues', '00:04:00', 27),
    ('Mother Nature\'s Son', '00:02:45', 27),
    ('Everybody\'s Got Something to Hide Except Me and My Monkey', '00:02:24', 27),
    ('Sexy Sadie', '00:03:15', 27),
    ('Helter Skelter', '00:04:29', 27),
    ('Long, Long, Long', '00:03:06', 27),
    ('Revolution 1', '00:04:15', 27),
    ('Honey Pie', '00:02:40', 27),
    ('Savoy Truffle', '00:02:55', 27),
    ('Cry Baby Cry', '00:03:02', 27),
    ('Revolution 9', '00:08:22', 27),
    ('Good Night', '00:02:31', 27);

-- OK Computer (Radiohead)
INSERT INTO tb_musica (nome, duracao, disco) VALUES
    ('Airbag', '00:04:43', 28),
    ('Paranoid Android', '00:06:23', 28),
    ('Subterranean Homesick Alien', '00:04:27', 28),
    ('Exit Music (For a Film)', '00:04:24', 28),
    ('Let Down', '00:04:59', 28),
    ('Karma Police', '00:04:21', 28),
    ('Fitter Happier', '00:01:57', 28),
    ('Electioneering', '00:03:50', 28),
    ('Climbing Up the Walls', '00:04:45', 28),
    ('No Surprises', '00:03:48', 28),
    ('Lucky', '00:04:19', 28),
    ('The Tourist', '00:05:24', 28);
    
    -- Songs for the Deaf (Queens of the Stone Age)
INSERT INTO tb_musica (nome, duracao, disco) VALUES
    ('You Think I Ain\'t Worth a Dollar, But I Feel Like a Millionaire', '00:03:12', 29),
    ('No One Knows', '00:04:38', 29),
    ('First It Giveth', '00:03:19', 29),
    ('A Song for the Dead', '00:05:03', 29),
    ('The Sky Is Fallin\'', '00:05:06', 29),
    ('Six Shooter', '00:01:34', 29),
    ('Hangin\' Tree', '00:04:26', 29),
    ('Go With the Flow', '00:03:07', 29),
    ('Gonna Leave You', '00:03:13', 29),
    ('Do It Again', '00:04:06', 29),
    ('God Is in the Radio', '00:05:30', 29),
    ('Another Love Song', '00:03:16', 29);

-- Sound & Color (Alabama Shakes)
INSERT INTO tb_musica (nome, duracao, disco) VALUES
    ('Sound & Color', '00:03:07', 30),
    ('Don\'t Wanna Fight', '00:03:48', 30),
    ('Dunes', '00:03:43', 30),
    ('Future People', '00:03:42', 30),
    ('Gimme All Your Love', '00:04:06', 30),
    ('This Feeling', '00:04:15', 30),
    ('Gemini', '00:04:01', 30),
    ('The Greatest', '00:04:14', 30),
    ('Shoegaze', '00:03:43', 30),
    ('Miss You', '00:03:59', 30),
    ('Over My Head', '00:03:59', 30),
    ('Be Mine', '00:03:26', 30);

-- Mechanical Bull (Kings of Leon)
INSERT INTO tb_musica (nome, duracao, disco) VALUES
    ('Supersoaker', '00:03:42', 31),
    ('Rock City', '00:04:17', 31),
    ('Don\'t Matter', '00:03:40', 31),
    ('Wait for Me', '00:03:50', 31),
    ('Family Tree', '00:03:26', 31),
    ('Comeback Story', '00:03:35', 31),
    ('Tonight', '00:03:29', 31),
    ('Beautiful War', '00:03:35', 31),
    ('Temple', '00:03:04', 31),
    ('On the Chin', '00:03:30', 31),
    ('Work on Me', '00:03:31', 31),
    ('Eyes on You', '00:03:43', 31);

-- Evolve (Imagine Dragons)
INSERT INTO tb_musica (nome, duracao, disco) VALUES
    ('I Don\'t Know Why', '00:03:06', 32),
    ('Whatever It Takes', '00:03:18', 32),
    ('Believer', '00:03:24', 32),
    ('Thunder', '00:03:07', 32),
    ('Yesterday', '00:03:11', 32),
    ('Walking the Wire', '00:03:47', 32),
    ('Rise Up', '00:03:38', 32),
    ('Mouth of the River', '00:03:20', 32),
    ('I\'ll Make It Up to You', '00:03:43', 32),
    ('Natural', '00:03:09', 32),
    ('Next to Me', '00:03:31', 32),
    ('Start Over', '00:03:29', 32);

-- Prophets of Rage (Prophets of Rage)
INSERT INTO tb_musica (nome, duracao, disco) VALUES
    ('Prophets of Rage', '00:03:11', 33),
    ('Unfuck the World', '00:03:37', 33),
    ('Legalize Me', '00:03:12', 33),
    ('The Party\'s Over', '00:03:25', 33),
    ('Radical Eyes', '00:03:35', 33),
    ('Strength in Numbers', '00:03:15', 33),
    ('Turn Off the Radio', '00:03:52', 33),
    ('Fired a Shot', '00:03:34', 33),
    ('Hail to the Chief', '00:03:01', 33),
    ('Who Owns Who', '00:03:29', 33),
    ('Machu Picchu', '00:03:05', 33),
    ('Living on the 110', '00:03:23', 33);

-- Phantom Anthem (August Burns Red)
INSERT INTO tb_musica (nome, duracao, disco) VALUES
    ('King of Sorrow', '00:03:56', 34),
    ('The Frost', '00:03:34', 34),
    ('Invisible Enemy', '00:03:39', 34),
    ('Quake', '00:03:12', 34),
    ('Paramount', '00:04:09', 34),
    ('The Longest Line', '00:03:27', 34),
    ('Gloom', '00:03:43', 34),
    ('Icarus', '00:04:00', 34),
    ('Lifeline', '00:04:17', 34),
    ('The First Step', '00:03:47', 34),
    ('Composure', '00:03:44', 34),
    ('Dangerous', '00:03:21', 34);

-- Under My Skin (Avril Lavigne)
INSERT INTO tb_musica (nome, duracao, disco) VALUES
    ('Take Me Away', '00:03:47', 35),
    ('Things I\'ll Never Say', '00:03:41', 35),
    ('My Happy Ending', '00:03:48', 35),
    ('Nobody\'s Home', '00:03:27', 35),
    ('He Wasn\'t', '00:03:37', 35),
    ('I Always Get What I Want', '00:03:30', 35),
    ('Nobody\'s Home (Acoustic)', '00:03:45', 35),
    ('I Can Do Better', '00:03:40', 35),
    ('Nobody\'s Here', '00:03:12', 35),
    ('How Does It Feel', '00:03:58', 35),
    ('Let Me Go', '00:04:14', 35),
    ('Forgotten', '00:03:32', 35);

-- House of Gold & Bones – Part 1 (Stone Sour)
INSERT INTO tb_musica (nome, duracao, disco) VALUES
    ('Gone Sovereign', '00:02:59', 36),
    ('Absolute Zero', '00:03:25', 36),
    ('A Rumor of Skin', '00:03:57', 36),
    ('The Travellers', '00:03:34', 36),
    ('Taciturn', '00:04:32', 36),
    ('The House of Gold & Bones', '00:04:25', 36),
    ('Absolute Zero (Acoustic)', '00:03:12', 36),
    ('Totalitarian', '00:03:11', 36),
    ('The End of Everything', '00:04:39', 36),
    ('No One Can Ever Know', '00:03:37', 36),
    ('In the Dark', '00:04:28', 36),
    ('The Unhealing', '00:03:52', 36);

-- Continuar com mais discos conforme necessário...



