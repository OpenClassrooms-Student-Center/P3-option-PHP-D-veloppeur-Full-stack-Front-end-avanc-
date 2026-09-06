-- Suppression des tables si elles existent déjà
DROP TABLE IF EXISTS media;
DROP TABLE IF EXISTS photographer;

-- Table des photographes
CREATE TABLE photographer (
    id       INT AUTO_INCREMENT PRIMARY KEY,
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

-- Quelques données d'exemple
INSERT INTO photographer (name, city, country, tagline, price, portrait) VALUES
('Mimi Keel', 'Marseille', 'France', 'Photographe de rue passionnée par la lumière naturelle.', 400, 'MimiKeel.jpg'),
('Ignatius Wexler', 'Chicago', 'USA', 'Portraits urbains au service de votre histoire.', 350, 'IgnatiusWexler.jpg');

INSERT INTO media (photographer_id, title, image, likes, date, price) VALUES
(1, 'Coucher de soleil', 'coucher-soleil.jpg', 24, '2024-01-15', 50),
(1, 'Rue animée', 'rue-animee.jpg', 12, '2024-02-03', 40),
(2, 'Portrait en noir et blanc', 'portrait-nb.jpg', 30, '2024-03-10', 60);
