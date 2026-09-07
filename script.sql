-- Suppression des tables si elles existent déjà
DROP TABLE IF EXISTS media;
DROP TABLE IF EXISTS photographer;

-- Table des photographes
CREATE TABLE photographer (
    id       INT PRIMARY KEY,
    name     VARCHAR(255) NOT NULL,
    city     VARCHAR(255) NOT NULL,
    country  VARCHAR(255) NOT NULL,
    tagline  VARCHAR(255) NOT NULL,
    price    INT NOT NULL,
    portrait VARCHAR(255) NOT NULL
);

-- Table des médias, liée à un photographe
CREATE TABLE media (
    id              INT AUTO_INCREMENT PRIMARY KEY,
    photographer_id INT NOT NULL,
    title           VARCHAR(255) NOT NULL,
    image           VARCHAR(255) DEFAULT NULL,
    video           VARCHAR(255) DEFAULT NULL,
    likes           INT NOT NULL DEFAULT 0,
    date            DATE NOT NULL,
    price           INT NOT NULL,
    FOREIGN KEY (photographer_id) REFERENCES photographer(id)
        ON DELETE CASCADE
);

-- Données des photographes
INSERT INTO photographer (id, name, city, country, tagline, price, portrait) VALUES
(243, 'Mimi Keel', 'London', 'UK', 'Voir le beau dans le quotidien', 400, 'MimiKeel.jpg'),
(930, 'Ellie-Rose Wilkens', 'Paris', 'France', 'Capturer des compositions complexes', 250, 'EllieRoseWilkens.jpg'),
(82, 'Tracy Galindo', 'Montreal', 'Canada', 'Photographe freelance', 500, 'TracyGalindo.jpg'),
(527, 'Nabeel Bradford', 'Mexico City', 'Mexico', 'Toujours aller de l''avant', 350, 'NabeelBradford.jpg'),
(925, 'Rhode Dubois', 'Barcelona', 'Spain', 'Je crée des souvenirs', 275, 'RhodeDubois.jpg'),
(195, 'Marcel Nikolic', 'Berlin', 'Germany', 'Toujours à la recherche de LA photo', 300, 'MarcelNikolic.jpg');

-- Médias du photographe 82 (Tracy Galindo)
INSERT INTO media (photographer_id, title, image, video, likes, date, price) VALUES
(82, 'Fashion Yellow Beach', 'Fashion_Yellow_Beach.jpg', NULL, 62, '2011-12-08', 55),
(82, 'Fashion Urban Jungle', 'Fashion_Urban_Jungle.jpg', NULL, 11, '2011-11-06', 55),
(82, 'Fashion Pattern on a Pattern', 'Fashion_Pattern_on_Pattern.jpg', NULL, 72, '2013-08-12', 55),
(82, 'Wedding Gazebo', 'Event_WeddingGazebo.jpg', NULL, 69, '2018-02-22', 55),
(82, 'Sparkles', 'Event_Sparklers.jpg', NULL, 2, '2020-05-25', 55),
(82, '18th Anniversary', 'Event_18thAnniversary.jpg', NULL, 33, '2019-06-12', 55),
(82, 'Wooden sculpture of a horse', NULL, 'Art_Wooden_Horse_Sculpture.mp4', 24, '2011-12-08', 100),
(82, 'Triangle Man', 'Art_Triangle_Man.jpg', NULL, 88, '2007-05-07', 55),
(82, 'Purple Tunnel', 'Art_Purple_light.jpg', NULL, 24, '2018-05-05', 55),
(82, 'Art Mine', 'Art_Mine.jpg', NULL, 75, '2019-11-25', 55);

-- Médias du photographe 925 (Rhode Dubois)
INSERT INTO media (photographer_id, title, image, video, likes, date, price) VALUES
(925, '8 Rows', 'Sport_2000_with_8.jpg', NULL, 52, '2013-03-02', 70),
(925, 'Fashion Wings', 'Fashion_Wings.jpg', NULL, 58, '2018-07-17', 70),
(925, 'Melody Red on Stripes', 'Fashion_Melody_Red_on_Stripes.jpg', NULL, 11, '2019-08-12', 70),
(925, 'Venture Conference', 'Event_VentureConference.jpg', NULL, 2, '2019-01-02', 70),
(925, 'Product Pitch', 'Event_ProductPitch.jpg', NULL, 3, '2019-05-20', 70),
(925, 'Musical Festival Keyboard', 'Event_KeyboardCheck.jpg', NULL, 52, '2019-07-18', 70),
(925, 'Musical Festival Singer', 'Event_Emcee.jpg', NULL, 23, '2018-02-22', 70),
(925, 'Animal Majesty', 'Animals_Majesty.jpg', NULL, 52, '2017-03-13', 70),
(925, 'Cute puppy on sunset', NULL, 'Animals_Puppiness.mp4', 52, '2016-06-12', 70);

-- Médias du photographe 527 (Nabeel Bradford)
INSERT INTO media (photographer_id, title, image, video, likes, date, price) VALUES
(527, 'Rocky mountains from the air', NULL, 'Travel_Rock_Mountains.mp4', 23, '2017-03-18', 45),
(527, 'Outdoor Baths', 'Travel_Outdoor_Baths.jpg', NULL, 101, '2017-04-03', 45),
(527, 'Road into the Hill', 'Travel_Road_into_Hill.jpg', NULL, 99, '2018-04-30', 45),
(527, 'Bridge into the Forest', 'Travel_Bridge_into_Forest.jpg', NULL, 34, '2016-04-05', 45),
(527, 'Boat Wonderer', 'Travel_Boat_Wanderer.jpg', NULL, 23, '2017-03-18', 45),
(527, 'Portrait Sunkiss', 'Portrait_Sunkissed.jpg', NULL, 66, '2018-05-24', 45),
(527, 'Shaw Potrait', 'Portrait_Shaw.jpg', NULL, 52, '2017-04-21', 45),
(527, 'Alexandra', 'Portrait_Alexandra.jpg', NULL, 95, '2018-11-02', 45),
(527, 'Afternoon Break', 'Portrait_AfternoonBreak.jpg', NULL, 25, '2019-01-02', 45);

-- Médias du photographe 243 (Mimi Keel)
INSERT INTO media (photographer_id, title, image, video, likes, date, price) VALUES
(243, 'Lonesome', 'Travel_Lonesome.jpg', NULL, 88, '2019-02-03', 45),
(243, 'Hillside Color', 'Travel_HillsideColor.jpg', NULL, 85, '2019-04-03', 45),
(243, 'Wednesday Potrait', 'Portrait_Wednesday.jpg', NULL, 34, '2019-04-07', 45),
(243, 'Nora Portrait', 'Portrait_Nora.jpg', NULL, 63, '2019-04-07', 45),
(243, 'Raw Black Portrait', 'Portrait_Background.jpg', NULL, 55, '2019-06-20', 45),
(243, 'Seaside Wedding', 'Event_SeasideWedding.jpg', NULL, 25, '2019-06-21', 45),
(243, 'Boulder Wedding', 'Event_PintoWedding.jpg', NULL, 52, '2019-06-25', 45),
(243, 'Benevides Wedding', 'Event_BenevidesWedding.jpg', NULL, 77, '2019-06-28', 45),
(243, 'Wild horses in the mountains', NULL, 'Animals_Wild_Horses_in_the_mountains.mp4', 142, '2019-08-23', 60),
(243, 'Rainbow Bird', 'Animals_Rainbow.jpg', NULL, 59, '2019-07-02', 60);

-- Médias du photographe 195 (Marcel Nikolic)
INSERT INTO media (photographer_id, title, image, video, likes, date, price) VALUES
(195, 'Japanese Tower, Kyoto', 'Travel_Tower.jpg', NULL, 25, '2019-04-03', 60),
(195, 'Senset on Canals, Venice', 'Travel_SunsetonCanals.jpg', NULL, 53, '2019-05-06', 60),
(195, 'Mountain and Lake', 'Travel_OpenMountain.jpg', NULL, 33, '2019-05-12', 60),
(195, 'City Bike and Stair, Paris', 'Travel_Bike_and_Stair.jpg', NULL, 53, '2019-06-20', 60),
(195, 'Adventure Door, India', 'Travel_Adventure_Door.jpg', NULL, 63, '2019-06-26', 60),
(195, 'Contrast, St Petersburg', 'Architecture_Contrast.jpg', NULL, 52, '2019-06-30', 60),
(195, 'On a Hill, Tibet', 'Architecture_On_a_hill.jpg', NULL, 63, '2019-07-20', 60),
(195, 'Leaning Tower, Pisa', 'Architecture_Dome.jpg', NULL, 88, '2020-01-05', 60),
(195, 'Drone shot of Buenos Aires highways', NULL, 'Architecture_coverr_circle_empty_highway_in_buenos_aires_587740985637.mp4', 57, '2020-01-20', 65),
(195, 'Corner Building and Blue Sky', 'Architecture_Corner_Room.jpg', NULL, 54, '2020-05-05', 60);

-- Médias du photographe 930 (Ellie-Rose Wilkens)
INSERT INTO media (photographer_id, title, image, video, likes, date, price) VALUES
(930, 'Tricks in te air', NULL, 'Sport_Tricks_in_the_air.mp4', 150, '2018-03-02', 70),
(930, 'Climber', 'Sport_Next_Hold.jpg', NULL, 101, '2018-03-05', 65),
(930, 'Surfer', 'sport_water_tunnel.jpg', NULL, 103, '2018-03-10', 70),
(930, 'Skier', 'Sport_Sky_Cross.jpg', NULL, 77, '2018-04-16', 50),
(930, 'Race End', 'Sport_Race_End.jpg', NULL, 88, '2018-04-22', 65),
(930, 'Jump!', 'Sport_Jump.jpg', NULL, 95, '2018-04-27', 70),
(930, 'White Light', 'Architecture_White_Light.jpg', NULL, 52, '2018-05-03', 75),
(930, 'Water on Modern Building', 'Architecture_Water_on_Modern.jpg', NULL, 55, '2018-05-10', 72),
(930, 'Horseshoe', 'Architecture_Horseshoe.jpg', NULL, 85, '2018-05-15', 71),
(930, 'Cross Bar', 'Architecture_Cross_Bar.jpg', NULL, 66, '2018-05-20', 58),
(930, 'Connected Curves', 'Architecture_Connected_Curves.jpg', NULL, 79, '2018-05-21', 80);
