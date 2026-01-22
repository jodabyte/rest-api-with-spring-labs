-- Auto-generated data.sql: 200 Product entries based on movies and TV series
-- Assumptions:
-- 1) JPA default table name for the Product entity is `product`.
-- 2) Embeddable Price fields are persisted as `price_value` and `price_currency`.
-- 3) ElementCollection `keywords` is stored in a collection table named `product_keywords` with join column `product_id` and element column `keywords`.
-- If your runtime uses different column/table names adjust these INSERTs accordingly.
-- 4) H2 database is used.


-- PROD-0001
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0001', 'The Shawshank Redemption', 'Movie', 9.99, 'USD',
        'A story of hope and friendship in a prison setting, following Andy Dufresne and Red.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('drama'), ('prison'), ('friendship')) AS v(kw)
              ON p.reference = 'PROD-0001';


-- PROD-0002
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0002', 'The Godfather', 'Movie', 12.50, 'EUR',
        'The Corleone crime family and the rise of Michael Corleone as the new don.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('crime'), ('mafia'), ('classic')) AS v(kw)
              ON p.reference = 'PROD-0002';


-- PROD-0003
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0003', 'The Dark Knight', 'Movie', 11.99, 'USD',
        'Batman faces the chaotic Joker while protecting Gotham and confronting moral choices.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('superhero'), ('action'), ('thriller')) AS v(kw)
              ON p.reference = 'PROD-0003';


-- PROD-0004
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0004', 'Pulp Fiction', 'Movie', 8.99, 'USD',
        'Interwoven stories of crime, redemption and dark humor in Los Angeles.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('crime'), ('nonlinear'), ('cult')) AS v(kw)
              ON p.reference = 'PROD-0004';


-- PROD-0005
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0005', 'Schindler''s List', 'Movie', 10.00, 'EUR',
        'A powerful historical drama about Oskar Schindler''s efforts to save Jewish refugees during WWII.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('history'), ('war'), ('biography')) AS v(kw)
              ON p.reference = 'PROD-0005';


-- PROD-0006
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0006', 'The Lord of the Rings: The Return of the King', 'Movie', 14.99, 'USD',
        'The final epic chapter in the fellowship''s quest to destroy the One Ring.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('fantasy'), ('epic'), ('adventure')) AS v(kw)
              ON p.reference = 'PROD-0006';


-- PROD-0007
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0007', 'Fight Club', 'Movie', 7.49, 'USD',
        'An insomniac and a soapmaker form an underground fight club that evolves into something more.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('psychological'), ('drama'), ('cult')) AS v(kw)
              ON p.reference = 'PROD-0007';


-- PROD-0008
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0008', 'Forrest Gump', 'Movie', 9.50, 'USD',
        'The life journey of Forrest Gump as he witnesses and influences historical moments with heart.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('drama'), ('romance'), ('coming-of-age')) AS v(kw)
              ON p.reference = 'PROD-0008';


-- PROD-0009
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0009', 'Inception', 'Movie', 13.49, 'EUR',
        'A skilled extractor leads a team to plant an idea within a target''s subconscious through layered dreams.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('sci-fi'), ('mind-bending'), ('thriller')) AS v(kw)
              ON p.reference = 'PROD-0009';


-- PROD-0010
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0010', 'The Matrix', 'Movie', 10.99, 'USD',
        'A hacker discovers reality is a simulation and joins a rebellion to free humanity.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('sci-fi'), ('action'), ('cult')) AS v(kw)
              ON p.reference = 'PROD-0010';


-- PROD-0011
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0011', 'Star Wars: The Empire Strikes Back', 'Movie', 12.99, 'USD',
        'The Rebel Alliance faces setbacks while Luke trains with Yoda and confronts Vader.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('space'), ('adventure'), ('saga')) AS v(kw)
              ON p.reference = 'PROD-0011';


-- PROD-0012
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0012', 'Interstellar', 'Movie', 13.99, 'EUR',
        'Explorers travel through a wormhole to find a new home for humanity as Earth faces collapse.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('space'), ('family'), ('sci-fi')) AS v(kw)
              ON p.reference = 'PROD-0012';


-- PROD-0013
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0013', 'Parasite', 'Movie', 15.00, 'KRW',
        'A darkly comic thriller about class, deception and the interactions between two households.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('thriller'), ('satire'), ('class')) AS v(kw)
              ON p.reference = 'PROD-0013';


-- PROD-0014
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0014', 'Spirited Away', 'Movie', 1600, 'JPY',
        'A young girl enters a magical bathhouse and must find a way to save her parents and return home.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('anime'), ('fantasy'), ('coming-of-age')) AS v(kw)
              ON p.reference = 'PROD-0014';


-- PROD-0015
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0015', 'The Lion King', 'Movie', 8.99, 'USD',
        'A young prince flees his kingdom after tragedy and later returns to reclaim his throne.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('animation'), ('family'), ('musical')) AS v(kw)
              ON p.reference = 'PROD-0015';


-- PROD-0016
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0016', 'Toy Story', 'Movie', 6.99, 'USD',
        'Toys come to life and navigate loyalty, adventure and growing up as their owner changes.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('animation'), ('family'), ('adventure')) AS v(kw)
              ON p.reference = 'PROD-0016';


-- PROD-0017
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0017', 'Avengers: Endgame', 'Movie', 19.99, 'USD',
        'Heroes unite to reverse a catastrophic event and face difficult sacrifices to save the universe.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('superhero'), ('epic'), ('ensemble')) AS v(kw)
              ON p.reference = 'PROD-0017';


-- PROD-0018
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0018', 'Black Panther', 'Movie', 11.99, 'USD',
        'A king returns home to lead his nation and must confront challenges to his throne and values.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('superhero'), ('action'), ('cultural')) AS v(kw)
              ON p.reference = 'PROD-0018';


-- PROD-0019
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0019', 'Joker', 'Movie', 9.99, 'USD',
        'A gritty character study of a failed comedian''s descent into chaos amidst social unrest.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('psychological'), ('drama'), ('character-study')) AS v(kw)
              ON p.reference = 'PROD-0019';


-- PROD-0020
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0020', 'The Silence of the Lambs', 'Movie', 7.99, 'USD',
        'An FBI trainee consults an incarcerated psychiatrist to catch a serial killer.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('thriller'), ('crime'), ('suspense')) AS v(kw)
              ON p.reference = 'PROD-0020';


-- 21-40

-- PROD-0021
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0021', 'Se7en', 'Movie', 6.50, 'USD',
        'Two detectives hunt a serial killer who uses the seven deadly sins as his motives.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('crime'), ('mystery'), ('dark')) AS v(kw)
              ON p.reference = 'PROD-0021';


-- PROD-0022
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0022', 'Goodfellas', 'Movie', 8.75, 'EUR',
        'A portrayal of a man''s rise and fall inside the mob world spanning decades.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('mob'), ('biography'), ('crime')) AS v(kw)
              ON p.reference = 'PROD-0022';


-- PROD-0023
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0023', 'The Usual Suspects', 'Movie', 6.99, 'USD',
        'A twisting crime tale centered on a group of criminals and a mysterious mastermind.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('mystery'), ('twist'), ('thriller')) AS v(kw)
              ON p.reference = 'PROD-0023';


-- PROD-0024
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0024', 'Saving Private Ryan', 'Movie', 9.50, 'USD',
        'A WWII squad undertakes a perilous mission to bring home one soldier after heavy losses.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('war'), ('drama'), ('action')) AS v(kw)
              ON p.reference = 'PROD-0024';


-- PROD-0025
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0025', 'Gladiator', 'Movie', 7.99, 'EUR',
        'A former general seeks vengeance and honor in the arenas of ancient Rome.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('historical'), ('epic'), ('action')) AS v(kw)
              ON p.reference = 'PROD-0025';


-- PROD-0026
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0026', 'The Green Mile', 'Movie', 8.50, 'USD',
        'A death row guard experiences a supernatural encounter with an extraordinary inmate.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('fantasy'), ('supernatural'), ('drama')) AS v(kw)
              ON p.reference = 'PROD-0026';


-- PROD-0027
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0027', 'The Departed', 'Movie', 10.00, 'USD',
        'Undercover agents and moles play dangerous games in Boston''s criminal underworld.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('crime'), ('thriller'), ('undercover')) AS v(kw)
              ON p.reference = 'PROD-0027';


-- PROD-0028
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0028', 'Whiplash', 'Movie', 6.99, 'USD',
        'An intense story about ambition, music and the price of excellence between student and teacher.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('music'), ('drama'), ('intense')) AS v(kw)
              ON p.reference = 'PROD-0028';


-- PROD-0029
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0029', 'Mad Max: Fury Road', 'Movie', 11.00, 'USD',
        'Post-apocalyptic chase through a desert landscape where survival and rebellion collide.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('action'), ('post-apocalyptic'), ('adrenaline')) AS v(kw)
              ON p.reference = 'PROD-0029';


-- PROD-0030
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0030', 'Django Unchained', 'Movie', 9.99, 'USD',
        'A freed slave partners with a bounty hunter to rescue his wife from a brutal plantation.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('western'), ('revenge'), ('period')) AS v(kw)
              ON p.reference = 'PROD-0030';


-- PROD-0031
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0031', 'The Prestige', 'Movie', 7.50, 'EUR',
        'Two rival magicians push obsession and deceit to dangerous extremes to outperform each other.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('mystery'), ('competition'), ('twist')) AS v(kw)
              ON p.reference = 'PROD-0031';


-- PROD-0032
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0032', 'Memento', 'Movie', 5.99, 'USD',
        'A man with short-term memory loss uses notes and tattoos to hunt the person who killed his wife.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('puzzle'), ('thriller'), ('noir')) AS v(kw)
              ON p.reference = 'PROD-0032';


-- PROD-0033
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0033', 'The Social Network', 'Movie', 6.50, 'USD',
        'The story of ambition and conflict behind the creation of a major social platform.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('technology'), ('drama'), ('biography')) AS v(kw)
              ON p.reference = 'PROD-0033';


-- PROD-0034
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0034', 'The King''s Speech', 'Movie', 5.99, 'GBP',
        'A monarch overcomes a stammer with the support of an unorthodox speech therapist.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('history'), ('biography'), ('drama')) AS v(kw)
              ON p.reference = 'PROD-0034';


-- PROD-0035
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0035', 'La La Land', 'Movie', 7.99, 'EUR',
        'A musical romance between an aspiring actress and a jazz musician pursuing dreams in Los Angeles.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('musical'), ('romance'), ('drama')) AS v(kw)
              ON p.reference = 'PROD-0035';


-- PROD-0036
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0036', 'Moonlight', 'Movie', 6.99, 'USD',
        'A coming-of-age tale about identity, family and love across three formative chapters of a man''s life.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('romance'), ('sci-fi'), ('intimate')) AS v(kw)
              ON p.reference = 'PROD-0036';


-- PROD-0037
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0037', 'Her', 'Movie', 5.50, 'EUR',
        'A sensitive exploration of love and loneliness when a man forms a relationship with an operating system.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('supernatural'), ('mystery'), ('thriller')) AS v(kw)
              ON p.reference = 'PROD-0037';


-- PROD-0038
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0038', 'Arrival', 'Movie', 7.49, 'USD',
        'A linguist works to communicate with alien visitors to learn their purpose on Earth.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('aliens'), ('drama'), ('sci-fi')) AS v(kw)
              ON p.reference = 'PROD-0038';


-- PROD-0039
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0039', 'Ex Machina', 'Movie', 6.99, 'USD',
        'A programmer tests a highly advanced AI and confronts ethical and psychological dilemmas.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('ai'), ('sci-fi'), ('ethical')) AS v(kw)
              ON p.reference = 'PROD-0039';


-- PROD-0040
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0040', 'Blade Runner 2049', 'Movie', 8.99, 'USD',
        'A dystopian detective unearths a long-buried secret that could change society.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('sci-fi'), ('noir'), ('mystery')) AS v(kw)
              ON p.reference = 'PROD-0040';


-- 41-60

-- PROD-0041
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0041', 'The Grand Budapest Hotel', 'Movie', 6.99, 'EUR',
        'A whimsical tale about a hotel concierge''s adventures framed by a story of theft and friendship.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('comedy'), ('visual'), ('quirky')) AS v(kw)
              ON p.reference = 'PROD-0041';


-- PROD-0042
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0042', 'No Country for Old Men', 'Movie', 7.25, 'USD',
        'A hunter finds money from a drug deal gone wrong and a relentless killer pursues him across Texas.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('thriller'), ('crime'), ('noir')) AS v(kw)
              ON p.reference = 'PROD-0042';


-- PROD-0043
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0043', 'There Will Be Blood', 'Movie', 6.99, 'USD',
        'An intense portrait of ambition and greed in the early oil industry.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('period'), ('drama'), ('character-study')) AS v(kw)
              ON p.reference = 'PROD-0043';


-- PROD-0044
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0044', 'A Beautiful Mind', 'Movie', 5.99, 'USD',
        'The life of a brilliant mathematician who struggles with mental illness while making scientific contributions.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('biography'), ('drama'), ('history')) AS v(kw)
              ON p.reference = 'PROD-0044';


-- PROD-0045
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0045', 'The Truman Show', 'Movie', 6.50, 'EUR',
        'A man slowly discovers his life has been a constructed reality television show since birth.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('satire'), ('comedy'), ('drama')) AS v(kw)
              ON p.reference = 'PROD-0045';


-- PROD-0046
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0046', 'The Hobbit: An Unexpected Journey', 'Movie', 10.00, 'USD',
        'A reluctant hero embarks on a quest with dwarves to reclaim a lost kingdom.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('fantasy'), ('adventure'), ('epic')) AS v(kw)
              ON p.reference = 'PROD-0046';


-- PROD-0047
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0047', 'Harry Potter and the Sorcerer''s Stone', 'Movie', 9.99, 'USD',
        'A young wizard discovers his heritage and attends a school of magic where friendships are forged.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('fantasy'), ('family'), ('magic')) AS v(kw)
              ON p.reference = 'PROD-0047';


-- PROD-0048
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0048', 'Harry Potter and the Deathly Hallows: Part 2', 'Movie', 12.99, 'USD',
        'The final struggle between good and evil as allies unite to face the dark wizard.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('fantasy'), ('finale'), ('adventure')) AS v(kw)
              ON p.reference = 'PROD-0048';


-- PROD-0049
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0049', 'Breaking Bad: Complete Series', 'TV Series', 29.99, 'USD',
        'A chemistry teacher turns to manufacturing to secure his family''s future and spirals into crime.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('crime'), ('drama'), ('morality')) AS v(kw)
              ON p.reference = 'PROD-0049';


-- PROD-0050
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0050', 'Game of Thrones: Season 1', 'TV Series', 14.99, 'EUR',
        'Noble families vie for the Iron Throne while ancient threats arise in the north.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('fantasy'), ('politics'), ('drama')) AS v(kw)
              ON p.reference = 'PROD-0050';


-- PROD-0051
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0051', 'The Wire: Complete Series', 'TV Series', 24.99, 'USD',
        'A gritty multi-perspective exploration of crime, institutions and society in Baltimore.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('crime'), ('society'), ('drama')) AS v(kw)
              ON p.reference = 'PROD-0051';


-- PROD-0052
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0052', 'Stranger Things: Season 1', 'TV Series', 12.49, 'USD',
        'Kids confront supernatural forces and secret experiments in a small town in the 1980s.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('80s'), ('supernatural'), ('mystery')) AS v(kw)
              ON p.reference = 'PROD-0052';


-- PROD-0053
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0053', 'The Crown: Season 1', 'TV Series', 13.99, 'GBP',
        'A dramatized account of the early reign of Queen Elizabeth II and political challenges.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('royalty'), ('historical'), ('drama')) AS v(kw)
              ON p.reference = 'PROD-0053';


-- PROD-0054
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0054', 'Chernobyl: Miniseries', 'TV Series', 7.99, 'EUR',
        'A harrowing retelling of the 1986 nuclear disaster and its human and political consequences.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('disaster'), ('history'), ('miniseries')) AS v(kw)
              ON p.reference = 'PROD-0054';


-- PROD-0055
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0055', 'The Mandalorian: Season 1', 'TV Series', 11.99, 'USD',
        'A lone bounty hunter in the outer reaches protects a mysterious child and faces old threats.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('space'), ('adventure'), ('sci-fi')) AS v(kw)
              ON p.reference = 'PROD-0055';


-- PROD-0056
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0056', 'The Office (US): Season 1', 'TV Series', 6.99, 'USD',
        'A mockumentary-style workplace comedy following the employees of a paper company.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('comedy'), ('mockumentary'), ('workplace')) AS v(kw)
              ON p.reference = 'PROD-0056';


-- PROD-0057
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0057', 'Friends: Complete Series', 'TV Series', 39.99, 'USD',
        'A group of friends navigate love, work and life in New York over many seasons.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('comedy'), ('friendship'), ('sitcom')) AS v(kw)
              ON p.reference = 'PROD-0057';


-- PROD-0058
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0058', 'Seinfeld: Complete Series', 'TV Series', 34.99, 'USD',
        'A comedy about everyday life and the quirky observations of a group of friends in NYC.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('comedy'), ('observational'), ('sitcom')) AS v(kw)
              ON p.reference = 'PROD-0058';


-- PROD-0059
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0059', 'Sherlock: Complete Series', 'TV Series', 19.99, 'GBP',
        'Modern adaptations of classic detective tales following a brilliant detective and his partner.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('detective'), ('mystery'), ('adaptation')) AS v(kw)
              ON p.reference = 'PROD-0059';


-- PROD-0060
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0060', 'House of Cards: Season 1', 'TV Series', 9.99, 'USD',
        'A ruthless politician and his equally ambitious partner manipulate systems of power in Washington.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('politics'), ('drama'), ('intrigue')) AS v(kw)
              ON p.reference = 'PROD-0060';


-- 61-80

-- PROD-0061
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0061', 'Westworld: Season 1', 'TV Series', 11.99, 'USD',
        'An amusement park populated by lifelike hosts raises questions about consciousness and control.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('theme-park'), ('sci-fi'), ('philosophy')) AS v(kw)
              ON p.reference = 'PROD-0061';


-- PROD-0062
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0062', 'Lost: Complete Series', 'TV Series', 24.99, 'USD',
        'Survivors of a plane crash on a mysterious island experience strange phenomena and interpersonal drama.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('mystery'), ('island'), ('survival')) AS v(kw)
              ON p.reference = 'PROD-0062';


-- PROD-0063
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0063', 'Battlestar Galactica: Complete Series', 'TV Series', 19.99, 'USD',
        'Humans flee across space from a hostile robotic enemy while searching for a lost homeland.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('space-opera'), ('politics'), ('thriller')) AS v(kw)
              ON p.reference = 'PROD-0063';


-- PROD-0064
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0064', 'Fargo: Season 1', 'TV Series', 8.50, 'USD',
        'A darkly comic crime drama inspired by small-town crimes and characters with moral complexity.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('crime'), ('anthology'), ('dark')) AS v(kw)
              ON p.reference = 'PROD-0064';


-- PROD-0065
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0065', 'True Detective: Season 1', 'TV Series', 7.99, 'USD',
        'Two detectives investigate a disturbing ritualistic murder across many years and fractured lives.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('detective'), ('noir'), ('psychological')) AS v(kw)
              ON p.reference = 'PROD-0065';


-- PROD-0066
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0066', 'Narcos: Season 1', 'TV Series', 9.99, 'USD',
        'A chronicle of drug cartels'' rise and the law enforcement efforts to stop them.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('drug'), ('crime'), ('history')) AS v(kw)
              ON p.reference = 'PROD-0066';


-- PROD-0067
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0067', 'Money Heist (La Casa de Papel): Season 1', 'TV Series', 8.99, 'EUR',
        'A group of thieves executes an elaborate heist on the Royal Mint under a mastermind''s plan.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('heist'), ('thriller'), ('ensemble')) AS v(kw)
              ON p.reference = 'PROD-0067';


-- PROD-0068
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0068', 'Dark: Complete Series', 'TV Series', 12.99, 'EUR',
        'A time-travel thriller where families uncover a web of secrets across generations in a small town.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('time-travel'), ('mystery'), ('dark')) AS v(kw)
              ON p.reference = 'PROD-0068';


-- PROD-0069
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0069', 'Ozark: Season 1', 'TV Series', 7.50, 'USD',
        'A financial planner relocates his family to launder money and confronts violent criminals.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('crime'), ('drama'), ('thriller')) AS v(kw)
              ON p.reference = 'PROD-0069';


-- PROD-0070
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0070', 'Better Call Saul: Season 1', 'TV Series', 9.49, 'USD',
        'The transformation of a struggling lawyer into a morally flexible attorney connected to criminal networks.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('legal'), ('drama'), ('origin')) AS v(kw)
              ON p.reference = 'PROD-0070';


-- PROD-0071
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0071', 'Peaky Blinders: Season 1', 'TV Series', 8.99, 'GBP',
        'A post-war Birmingham gang rises in power under a charismatic and cunning leader.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('gang'), ('period'), ('drama')) AS v(kw)
              ON p.reference = 'PROD-0071';


-- PROD-0072
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0072', 'Rick and Morty: Season 1', 'TV Series', 6.99, 'USD',
        'An animated series following a genius scientist and his anxious grandson on surreal adventures.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('animation'), ('sci-fi'), ('comedy')) AS v(kw)
              ON p.reference = 'PROD-0072';


-- PROD-0073
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0073', 'BoJack Horseman: Complete Series', 'TV Series', 14.99, 'USD',
        'A washed-up actor navigates fame, depression and relationships in an anthropomorphic world.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('animation'), ('drama'), ('satire')) AS v(kw)
              ON p.reference = 'PROD-0073';


-- PROD-0074
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0074', 'The Boys: Season 1', 'TV Series', 9.99, 'USD',
        'A gritty superhero story where powerful figures are corrupted and a group fights back.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('superhero'), ('dark'), ('action')) AS v(kw)
              ON p.reference = 'PROD-0074';


-- PROD-0075
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0075', 'Loki: Season 1', 'TV Series', 8.99, 'USD',
        'A trickster god navigates timelines and consequences after escaping with schemes of his own.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('comic'), ('fantasy'), ('time')) AS v(kw)
              ON p.reference = 'PROD-0075';


-- PROD-0076
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0076', 'Hawkeye: Season 1', 'TV Series', 7.99, 'USD',
        'A veteran archer teams up with a young protégé to face challenges close to home.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('archer'), ('action'), ('family')) AS v(kw)
              ON p.reference = 'PROD-0076';


-- PROD-0077
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0077', 'The Queen''s Gambit', 'TV Series', 6.99, 'USD',
        'A chess prodigy rises in a male-dominated sport while battling addiction and loneliness.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('chess'), ('drama'), ('biography')) AS v(kw)
              ON p.reference = 'PROD-0077';


-- PROD-0078
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0078', 'The Witcher: Season 1', 'TV Series', 9.50, 'USD',
        'A monster hunter navigates a morally gray world while fate entwines multiple lives.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('fantasy'), ('monster'), ('adventure')) AS v(kw)
              ON p.reference = 'PROD-0078';


-- PROD-0079
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0079', 'Vikings: Complete Series', 'TV Series', 19.99, 'EUR',
        'A saga of raiders, exploration and the rise and fall of influential leaders in Norse society.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('historical'), ('epic'), ('war')) AS v(kw)
              ON p.reference = 'PROD-0079';


-- PROD-0080
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0080', 'Superman: The Movie', 'Movie', 6.99, 'USD',
        'An origin story of an alien raised on Earth who becomes a symbol of hope and justice.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('superhero'), ('origin'), ('action')) AS v(kw)
              ON p.reference = 'PROD-0080';


-- 81-100

-- PROD-0081
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0081', 'Batman v Superman: Dawn of Justice', 'Movie', 9.99, 'USD',
        'Two iconic heroes clash while greater threats loom that force cooperation.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('conflict'), ('heroes'), ('epic')) AS v(kw)
              ON p.reference = 'PROD-0081';


-- PROD-0082
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0082', 'Ant-Man', 'Movie', 7.99, 'USD',
        'A thief gains the ability to shrink and is recruited for a heist that could change things.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('aviation'), ('drama'), ('action')) AS v(kw)
              ON p.reference = 'PROD-0082';


-- PROD-0083
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0083', 'Captain Marvel', 'Movie', 8.99, 'USD',
        'A hero grapples with lost memories and discovers the scope of her powers and role.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('art-house'), ('drama'), ('societal')) AS v(kw)
              ON p.reference = 'PROD-0083';


-- PROD-0084
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0084', 'Guardians of the Galaxy', 'Movie', 9.49, 'USD',
        'A band of misfits become unlikely heroes while protecting a cosmic artifact.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('thriller'), ('martial-arts'), ('revenge')) AS v(kw)
              ON p.reference = 'PROD-0084';


-- PROD-0085
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0085', 'Deadpool', 'Movie', 6.99, 'USD',
        'A wisecracking antihero breaks conventions while seeking revenge and healing.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('zombies'), ('horror'), ('survival')) AS v(kw)
              ON p.reference = 'PROD-0085';


-- PROD-0086
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0086', 'Skyfall', 'Movie', 7.99, 'GBP',
        'A seasoned agent faces threats that challenge loyalties and test endurance.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('director'), ('thriller'), ('spy')) AS v(kw)
              ON p.reference = 'PROD-0086';


-- PROD-0087
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0087', 'Casino Royale', 'Movie', 8.50, 'USD',
        'A spy''s early mission involves high-stakes poker, loyalty and the cost of duty.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('spy'), ('action'), ('heist')) AS v(kw)
              ON p.reference = 'PROD-0087';


-- PROD-0088
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0088', 'Goldfinger', 'Movie', 6.50, 'USD',
        'A classic spy thriller with elaborate schemes and daring confrontations.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('classic'), ('spy'), ('adventure')) AS v(kw)
              ON p.reference = 'PROD-0088';


-- PROD-0089
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0089', 'Mission: Impossible - Fallout', 'Movie', 11.99, 'USD',
        'A daring operative must track allies and foes across a globe-spanning threat.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('espionage'), ('action'), ('thriller')) AS v(kw)
              ON p.reference = 'PROD-0089';


-- PROD-0090
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0090', 'John Wick', 'Movie', 8.99, 'USD',
        'A retired assassin returns to the underworld to settle debts and face old enemies.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('assassin'), ('action'), ('revenge')) AS v(kw)
              ON p.reference = 'PROD-0090';


-- PROD-0091
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0091', 'Blade', 'Movie', 5.99, 'USD',
        'A half-vampire hunts bloodsuckers while straddling two worlds and violent loyalties.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('vampire'), ('action'), ('dark')) AS v(kw)
              ON p.reference = 'PROD-0091';


-- PROD-0092
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0092', 'The Terminator', 'Movie', 6.99, 'USD',
        'A cyborg from the future pursues a target to change the fate of humanity.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('cyborg'), ('sci-fi'), ('action')) AS v(kw)
              ON p.reference = 'PROD-0092';


-- PROD-0093
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0093', 'Terminator 2: Judgment Day', 'Movie', 8.99, 'USD',
        'A reprogrammed protector returns to defend a young target from a new model sent to kill.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('sci-fi'), ('action'), ('family')) AS v(kw)
              ON p.reference = 'PROD-0093';


-- PROD-0094
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0094', 'The Bourne Identity', 'Movie', 6.50, 'EUR',
        'An amnesiac uncovers skills and secrets as he evades agencies trying to control him.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('spy'), ('thriller'), ('action')) AS v(kw)
              ON p.reference = 'PROD-0094';


-- PROD-0095
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0095', 'The Bourne Ultimatum', 'Movie', 7.49, 'USD',
        'The hunt for answers escalates as a skilled operative confronts his past and powerful opponents.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('spy'), ('action'), ('pursuit')) AS v(kw)
              ON p.reference = 'PROD-0095';


-- PROD-0096
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0096', 'Rocky', 'Movie', 5.99, 'USD',
        'An underdog boxer gets a shot at the title and tests grit, training and heart.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('boxing'), ('underdog'), ('sports')) AS v(kw)
              ON p.reference = 'PROD-0096';


-- PROD-0097
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0097', 'Creed', 'Movie', 6.99, 'USD',
        'A young fighter seeks mentorship and legacy within the boxing world.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('boxing'), ('legacy'), ('drama')) AS v(kw)
              ON p.reference = 'PROD-0097';


-- PROD-0098
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0098', 'The Matrix Reloaded', 'Movie', 6.99, 'USD',
        'The rebellion deepens as truths about the simulated world and choices come to light.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('sci-fi'), ('action'), ('sequel')) AS v(kw)
              ON p.reference = 'PROD-0098';


-- PROD-0099
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0099', 'The Matrix Revolutions', 'Movie', 5.99, 'USD',
        'The concluding confrontations shape the fate of both humans and machines.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('sci-fi'), ('finale'), ('action')) AS v(kw)
              ON p.reference = 'PROD-0099';


-- PROD-0100
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0100', 'The Avengers', 'Movie', 10.99, 'USD',
        'Heroes from varied backgrounds unite to stop a formidable extraterrestrial threat.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('superhero'), ('ensemble'), ('action')) AS v(kw)
              ON p.reference = 'PROD-0100';


-- 101-120

-- PROD-0101
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0101', 'Mission: Impossible', 'Movie', 6.99, 'USD',
        'A team of agents uses skill and cunning to accomplish seemingly impossible missions.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('spy'), ('team'), ('action')) AS v(kw)
              ON p.reference = 'PROD-0101';


-- PROD-0102
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0102', 'Top Gun: Maverick', 'Movie', 12.99, 'USD',
        'A veteran pilot returns to train a new generation while confronting his past and duty.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('aviation'), ('drama'), ('nostalgia')) AS v(kw)
              ON p.reference = 'PROD-0102';


-- PROD-0103
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0103', 'La Haine', 'Movie', 4.99, 'EUR',
        'A stark French drama about disenfranchised youth facing social tensions and violence in the suburbs.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('art-house'), ('social'), ('drama')) AS v(kw)
              ON p.reference = 'PROD-0103';


-- PROD-0104
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0104', 'Oldboy', 'Movie', 6.99, 'KRW',
        'A man imprisoned mysteriously seeks revenge and truth after being released with no explanation.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('revenge'), ('thriller'), ('cult')) AS v(kw)
              ON p.reference = 'PROD-0104';


-- PROD-0105
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0105', 'Train to Busan', 'Movie', 7000, 'KRW',
        'Passengers fight for survival on a train during a sudden zombie outbreak while social bonds are tested.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('zombie'), ('thriller'), ('action')) AS v(kw)
              ON p.reference = 'PROD-0105';


-- PROD-0106
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0106', 'Parasite (Director''s Cut)', 'Movie', 17000, 'KRW',
        'An extended version of a darkly comic thriller exploring class, family and deception.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('collector'), ('bonus'), ('drama')) AS v(kw)
              ON p.reference = 'PROD-0106';


-- PROD-0107
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0107', 'Your Name', 'Movie', 1200, 'JPY',
        'Two teens mysteriously swap bodies and form a deep connection while trying to meet across time.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('anime'), ('romance'), ('fantasy')) AS v(kw)
              ON p.reference = 'PROD-0107';


-- PROD-0108
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0108', 'Akira', 'Movie', 1100, 'JPY',
        'A cyberpunk tale of psychic power, political corruption and youth rebellion in a dystopian city.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('anime'), ('sci-fi'), ('cyberpunk')) AS v(kw)
              ON p.reference = 'PROD-0108';


-- PROD-0109
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0109', 'Seven Samurai', 'Movie', 9.99, 'EUR',
        'A village hires warriors to defend itself from raiders, creating a classic tale of honor and strategy.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('epic'), ('samurai'), ('classic')) AS v(kw)
              ON p.reference = 'PROD-0109';


-- PROD-0110
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0110', 'Rashomon', 'Movie', 5.99, 'EUR',
        'A story told from multiple perspectives that challenges truth and perception.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('psychological'), ('perspective'), ('classic')) AS v(kw)
              ON p.reference = 'PROD-0110';


-- PROD-0111
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0111', 'Spartacus', 'TV Series', 14.99, 'USD',
        'A gladiator leads a rebellion against oppressive rule while forming alliances and rivalries.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('historical'), ('action'), ('epic')) AS v(kw)
              ON p.reference = 'PROD-0111';


-- PROD-0112
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0112', 'The Sopranos: Complete Series', 'TV Series', 29.99, 'USD',
        'A mob boss balances family life and criminal enterprise while facing personal turmoil.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('mob'), ('psychology'), ('drama')) AS v(kw)
              ON p.reference = 'PROD-0112';


-- PROD-0113
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0113', 'Mad Men: Complete Series', 'TV Series', 19.99, 'USD',
        'An advertising executive navigates ambition, identity and changing culture in the 1960s.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('advertising'), ('period'), ('drama')) AS v(kw)
              ON p.reference = 'PROD-0113';


-- PROD-0114
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0114', 'The Handmaid''s Tale: Season 1', 'TV Series', 9.99, 'USD',
        'A dystopian society strips women of rights and one woman navigates survival and resistance.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('dystopia'), ('resistance'), ('political')) AS v(kw)
              ON p.reference = 'PROD-0114';


-- PROD-0115
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0115', 'Black Mirror: Season 1', 'TV Series', 6.99, 'GBP',
        'Standalone speculative stories exploring technology''s dark potential and human consequences.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('speculative'), ('technology'), ('twist')) AS v(kw)
              ON p.reference = 'PROD-0115';


-- PROD-0116
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0116', 'Band of Brothers: Complete Series', 'TV Series', 14.99, 'USD',
        'True-to-life accounts of a WWII airborne company''s experiences from training to major battles.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('war'), ('military'), ('history')) AS v(kw)
              ON p.reference = 'PROD-0116';


-- PROD-0117
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0117', 'Planet Earth: Complete Series', 'TV Series', 24.99, 'EUR',
        'A sweeping natural history documentary series showcasing diverse ecosystems and life.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('documentary'), ('nature'), ('cinematic')) AS v(kw)
              ON p.reference = 'PROD-0117';


-- PROD-0118
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0118', 'Blue Planet II', 'TV Series', 19.99, 'GBP',
        'A documentary exploration of the oceans, marine life and environmental challenges.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('ocean'), ('documentary'), ('environment')) AS v(kw)
              ON p.reference = 'PROD-0118';


-- PROD-0119
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0119', 'Planet Earth II', 'TV Series', 19.99, 'EUR',
        'A cinematic look at wildlife and habitats across continents with advanced filming techniques.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('wildlife'), ('nature'), ('cinematic')) AS v(kw)
              ON p.reference = 'PROD-0119';


-- PROD-0120
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0120', 'The Expanse: Complete Series', 'TV Series', 24.99, 'USD',
        'A space-opera political thriller where factions across the solar system collide over survival and power.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('space'), ('politics'), ('thriller')) AS v(kw)
              ON p.reference = 'PROD-0120';


-- 121-140

-- PROD-0121
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0121', 'The Godfather: Part II', 'Movie', 11.99, 'USD',
        'A parallel story of a criminal empire''s expansion and one man''s consolidation of power.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('mafia'), ('drama'), ('legacy')) AS v(kw)
              ON p.reference = 'PROD-0121';


-- PROD-0122
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0122', 'Heat', 'Movie', 7.99, 'USD',
        'A heist thriller that examines the cat-and-mouse dynamic between a criminal mastermind and a detective.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('heist'), ('crime'), ('drama')) AS v(kw)
              ON p.reference = 'PROD-0122';


-- PROD-0123
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0123', 'The Irishman', 'Movie', 9.99, 'USD',
        'A reflective crime epic chronicling decades in the life of a hitman and the mob.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('mob'), ('epic'), ('reflection')) AS v(kw)
              ON p.reference = 'PROD-0123';


-- PROD-0124
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0124', 'Once Upon a Time in Hollywood', 'Movie', 10.99, 'USD',
        'An homage to a changing film industry seen through the lives of an actor and his stunt double.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('period'), ('comedy-drama'), ('nostalgia')) AS v(kw)
              ON p.reference = 'PROD-0124';


-- PROD-0125
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0125', 'The Grand Illusion', 'Movie', 5.50, 'EUR',
        'A classic film exploring human relationships and class distinctions during wartime.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('classic'), ('wartime'), ('drama')) AS v(kw)
              ON p.reference = 'PROD-0125';


-- PROD-0126
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0126', 'Cinema Paradiso', 'Movie', 6.99, 'EUR',
        'A nostalgic tale about childhood, cinema and the bonds between a boy and a projectionist.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('nostalgia'), ('cinema'), ('coming-of-age')) AS v(kw)
              ON p.reference = 'PROD-0126';


-- PROD-0127
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0127', 'Good Will Hunting', 'Movie', 6.99, 'USD',
        'A gifted young man confronts trauma and potential with the help of a compassionate therapist.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('drama'), ('psychology'), ('friendship')) AS v(kw)
              ON p.reference = 'PROD-0127';


-- PROD-0128
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0128', 'Eternal Sunshine of the Spotless Mind', 'Movie', 7.50, 'USD',
        'A couple undergoes experimental memory erasure and rediscover the complexity of love and loss.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('romance'), ('memory'), ('surreal')) AS v(kw)
              ON p.reference = 'PROD-0128';


-- PROD-0129
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0129', 'The Notebook', 'Movie', 5.99, 'USD',
        'A romantic drama following a lifelong love story told through memories and devotion.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('romance'), ('drama'), ('memory')) AS v(kw)
              ON p.reference = 'PROD-0129';


-- PROD-0130
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0130', 'The Princess Bride', 'Movie', 4.99, 'USD',
        'A whimsical adventure and romance filled with memorable characters and quotable lines.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('adventure'), ('family'), ('fantasy')) AS v(kw)
              ON p.reference = 'PROD-0130';


-- PROD-0131
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0131', 'Amélie', 'Movie', 6.99, 'EUR',
        'A fanciful Parisian tale of a woman who finds joy in quietly improving others'' lives.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('french'), ('romance'), ('whimsy')) AS v(kw)
              ON p.reference = 'PROD-0131';


-- PROD-0132
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0132', 'Pan''s Labyrinth', 'Movie', 7.49, 'EUR',
        'A dark fairy tale set against the backdrop of post-Civil War Spain mixing fantasy and reality.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('fantasy'), ('dark'), ('visual')) AS v(kw)
              ON p.reference = 'PROD-0132';


-- PROD-0133
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0133', 'The Shining', 'Movie', 6.99, 'USD',
        'A family isolated in a hotel descends into supernatural terror and psychological unraveling.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('horror'), ('psychological'), ('classic')) AS v(kw)
              ON p.reference = 'PROD-0133';


-- PROD-0134
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0134', 'A Clockwork Orange', 'Movie', 5.99, 'GBP',
        'A controversial satire about free will, violence and societal attempts at reform.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('controversial'), ('philosophy'), ('satire')) AS v(kw)
              ON p.reference = 'PROD-0134';


-- PROD-0135
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0135', 'The Big Lebowski', 'Movie', 5.50, 'USD',
        'A laid-back man is pulled into a comical and convoluted kidnapping case.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('comedy'), ('cult'), ('quirky')) AS v(kw)
              ON p.reference = 'PROD-0135';


-- PROD-0136
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0136', 'Monty Python and the Holy Grail', 'Movie', 4.99, 'GBP',
        'A surreal, comedic take on Arthurian legend filled with absurdist sketches.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('british'), ('comedy'), ('sketch')) AS v(kw)
              ON p.reference = 'PROD-0136';


-- PROD-0137
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0137', 'The Great Dictator', 'Movie', 5.99, 'EUR',
        'A satirical film that lampoons totalitarianism while promoting humanity and freedom.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('satire'), ('classic'), ('political')) AS v(kw)
              ON p.reference = 'PROD-0137';


-- PROD-0138
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0138', 'Nosferatu', 'Movie', 4.50, 'EUR',
        'A silent-era horror classic portraying a haunting vampire tale with expressionist visuals.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('horror'), ('expressionism'), ('silent')) AS v(kw)
              ON p.reference = 'PROD-0138';


-- PROD-0139
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0139', 'Metropolis', 'Movie', 6.00, 'EUR',
        'A pioneering sci-fi about class struggle and the human cost of industrial utopia.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('sci-fi'), ('classic'), ('industrial')) AS v(kw)
              ON p.reference = 'PROD-0139';


-- PROD-0140
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0140', 'Blade Runner', 'Movie', 7.99, 'USD',
        'A noirish sci-fi that questions what it means to be human in a world of artificial beings.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('sci-fi'), ('noir'), ('philosophy')) AS v(kw)
              ON p.reference = 'PROD-0140';


-- 141-160

-- PROD-0141
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0141', 'Mullholland Drive', 'Movie', 6.99, 'USD',
        'A surreal mystery exploring dreams, identity and Hollywood''s darker underside.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('surreal'), ('mystery'), ('psychological')) AS v(kw)
              ON p.reference = 'PROD-0141';


-- PROD-0142
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0142', 'Donnie Darko', 'Movie', 5.99, 'USD',
        'A teenager experiences visions and time-bending events that challenge reality and fate.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('cult'), ('time'), ('teen')) AS v(kw)
              ON p.reference = 'PROD-0142';


-- PROD-0143
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0143', 'Requiem for a Dream', 'Movie', 6.50, 'USD',
        'An intense look at addiction and its destructive effects on relationships and identity.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('dark'), ('addiction'), ('intense')) AS v(kw)
              ON p.reference = 'PROD-0143';


-- PROD-0144
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0144', 'The Sixth Sense', 'Movie', 6.99, 'USD',
        'A child who communicates with the dead helps a troubled psychologist confront mysteries.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('supernatural'), ('mystery'), ('thriller')) AS v(kw)
              ON p.reference = 'PROD-0144';


-- PROD-0145
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0145', 'The Sixth Sense (Collector''s Edition)', 'Movie', 9.99, 'USD',
        'An expanded edition with bonus material exploring production and interpretation.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('collector'), ('bonus'), ('drama')) AS v(kw)
              ON p.reference = 'PROD-0145';


-- PROD-0146
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0146', 'The Prestige (Collector''s Edition)', 'Movie', 8.99, 'EUR',
        'An edition with behind-the-scenes content and deeper looks into the rivalry between magicians.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('collector'), ('magic'), ('competition')) AS v(kw)
              ON p.reference = 'PROD-0146';


-- PROD-0147
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0147', 'Cinema Paradiso (Restored)', 'Movie', 7.99, 'EUR',
        'A restored version celebrating film, memory and an enduring relationship between mentor and pupil.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('restored'), ('nostalgia'), ('cinema')) AS v(kw)
              ON p.reference = 'PROD-0147';


-- PROD-0148
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0148', 'The Handmaiden', 'Movie', 9000, 'KRW',
        'A layered psychological thriller of deception, desire and power in an intimate setting.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('thriller'), ('korean'), ('psychological')) AS v(kw)
              ON p.reference = 'PROD-0148';


-- PROD-0149
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0149', 'Oldboy (Restored)', 'Movie', 8500, 'KRW',
        'A restored edition of a visceral revenge thriller known for its stylistic intensity.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('restored'), ('revenge'), ('action')) AS v(kw)
              ON p.reference = 'PROD-0149';


-- PROD-0150
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0150', 'Dogtooth', 'Movie', 5.99, 'EUR',
        'A provocative Greek drama about control, isolation and the boundaries of family.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('experimental'), ('drama'), ('absurd')) AS v(kw)
              ON p.reference = 'PROD-0150';


-- PROD-0151
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0151', 'My Neighbor Totoro', 'Movie', 750, 'JPY',
        'A gentle, magical story about two sisters who meet forest spirits and find wonder after moving to the countryside.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('studio-ghibli'), ('family'), ('magic')) AS v(kw)
              ON p.reference = 'PROD-0151';


-- PROD-0152
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0152', 'Princess Mononoke', 'Movie', 1200, 'JPY',
        'A mythic environmental epic where humans and spirits clash over resources and survival.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('anime'), ('epic'), ('fantasy')) AS v(kw)
              ON p.reference = 'PROD-0152';


-- PROD-0153
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0153', 'Grave of the Fireflies', 'Movie', 800, 'JPY',
        'A heartbreaking wartime tale focusing on two siblings struggling to survive after displacement.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('war'), ('tragic'), ('animation')) AS v(kw)
              ON p.reference = 'PROD-0153';


-- PROD-0154
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0154', 'Kimi no Na wa (Your Name) - Special', 'Movie', 1500, 'JPY',
        'A special edition with additional behind-the-scenes material for a body-swap romance across time.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('special'), ('anime'), ('romance')) AS v(kw)
              ON p.reference = 'PROD-0154';


-- PROD-0155
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0155', 'Oldboy: International Cut', 'Movie', 7800, 'KRW',
        'An alternate cut offering additional context and pacing to the intense revenge narrative.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('alternate'), ('revenge'), ('intense')) AS v(kw)
              ON p.reference = 'PROD-0155';


-- PROD-0156
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0156', 'The Grand Budapest Hotel (Collector''s)', 'Movie', 9.99, 'EUR',
        'Collector''s edition featuring extras on production design and storytelling.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('collector'), ('design'), ('comedy')) AS v(kw)
              ON p.reference = 'PROD-0156';


-- PROD-0157
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0157', 'Mad Max: Fury Road (Extended)', 'Movie', 12.99, 'USD',
        'An extended cut with added sequences expanding the post-apocalyptic world and characters.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('extended'), ('action'), ('post-apocalyptic')) AS v(kw)
              ON p.reference = 'PROD-0157';


-- PROD-0158
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0158', 'The Man from Earth', 'Movie', 4.99, 'USD',
        'A contemplative sci-fi about a man with an extraordinary past sharing his life story around a kitchen table.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('sci-fi'), ('philosophy'), ('indie')) AS v(kw)
              ON p.reference = 'PROD-0158';


-- PROD-0159
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0159', 'The Farewell', 'Movie', 7.99, 'USD',
        'A family stages a fake wedding to gather and say goodbye to their matriarch without telling her she is terminally ill.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('family'), ('drama'), ('culture')) AS v(kw)
              ON p.reference = 'PROD-0159';


-- PROD-0160
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0160', 'Minari', 'Movie', 6.99, 'USD',
        'A family pursues the American dream while planting roots and facing cultural and practical challenges.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('immigrant'), ('family'), ('drama')) AS v(kw)
              ON p.reference = 'PROD-0160';


-- 161-180

-- PROD-0161
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0161', 'Moonrise Kingdom', 'Movie', 6.50, 'EUR',
        'A quirky coming-of-age story of young love, misadventure and a community''s response.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('quirky'), ('romance'), ('coming-of-age')) AS v(kw)
              ON p.reference = 'PROD-0161';


-- PROD-0162
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0162', 'The Royal Tenenbaums', 'Movie', 6.99, 'USD',
        'A family of eccentrics reunites with old wounds and comic poignancy in an offbeat dramedy.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('family'), ('drama'), ('comedy')) AS v(kw)
              ON p.reference = 'PROD-0162';


-- PROD-0163
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0163', 'The Florida Project', 'Movie', 5.99, 'USD',
        'A bright portrait of childhood in the shadows of a tourist economy highlighting resilience and hardship.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('childhood'), ('social'), ('indie')) AS v(kw)
              ON p.reference = 'PROD-0163';


-- PROD-0164
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0164', 'Inside Out', 'Movie', 6.5, 'USD',
        'An animated exploration of emotions inside a young girl''s mind as she navigates change and memory.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('animation'), ('emotion'), ('family')) AS v(kw)
              ON p.reference = 'PROD-0164';


-- PROD-0165
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0165', 'Coco', 'Movie', 6.99, 'USD',
        'A young boy''s musical journey into the Land of the Dead to uncover family history and identity.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('music'), ('culture'), ('family')) AS v(kw)
              ON p.reference = 'PROD-0165';


-- PROD-0166
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0166', 'Zootopia', 'Movie', 5.99, 'USD',
        'A rookie officer and a sly con artist fox uncover a conspiracy in a city of anthropomorphic animals.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('animation'), ('police'), ('comedy')) AS v(kw)
              ON p.reference = 'PROD-0166';


-- PROD-0167
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0167', 'Inside Man', 'Movie', 5.50, 'USD',
        'A clever bank heist unfolds with moral ambiguity and strategic negotiation.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('heist'), ('thriller'), ('mystery')) AS v(kw)
              ON p.reference = 'PROD-0167';


-- PROD-0168
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0168', 'Heat (Special Edition)', 'Movie', 8.99, 'USD',
        'An edition with extended features focusing on the psychology of characters and heist craft.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('special'), ('crime'), ('drama')) AS v(kw)
              ON p.reference = 'PROD-0168';


-- PROD-0169
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0169', 'Heat (Collector''s)', 'Movie', 9.99, 'EUR',
        'A collector''s pack featuring interviews and analysis of the famed crime thriller.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('collector'), ('crime'), ('heist')) AS v(kw)
              ON p.reference = 'PROD-0169';


-- PROD-0170
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0170', 'The Social Network (Special)', 'Movie', 7.99, 'USD',
        'An edition with commentary and deeper insights into the making of the film and its themes.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('special'), ('technology'), ('drama')) AS v(kw)
              ON p.reference = 'PROD-0170';


-- PROD-0171
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0171', '12 Angry Men', 'Movie', 5.99, 'USD',
        'A jury deliberates a murder case and human biases, justice and persuasion come to the fore.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('courtroom'), ('drama'), ('classic')) AS v(kw)
              ON p.reference = 'PROD-0171';


-- PROD-0172
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0172', 'On the Waterfront', 'Movie', 5.99, 'USD',
        'A dockworker confronts corruption and questions loyalty amid moral struggle.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('drama'), ('ethics'), ('classic')) AS v(kw)
              ON p.reference = 'PROD-0172';


-- PROD-0173
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0173', 'The Bridge on the River Kwai', 'Movie', 6.50, 'EUR',
        'Prisoners of war are compelled to build an impossible structure while leadership and honor are tested.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('war'), ('honor'), ('epic')) AS v(kw)
              ON p.reference = 'PROD-0173';


-- PROD-0174
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0174', 'Some Like It Hot', 'Movie', 4.99, 'USD',
        'A comedy of disguise and mistaken identity when two musicians flee trouble and join an all-female band.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('comedy'), ('classic'), ('romance')) AS v(kw)
              ON p.reference = 'PROD-0174';


-- PROD-0175
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0175', '12 Years a Slave', 'Movie', 7.99, 'USD',
        'A harrowing true story of a free man abducted into slavery and his struggle for dignity and freedom.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('history'), ('drama'), ('biography')) AS v(kw)
              ON p.reference = 'PROD-0175';


-- PROD-0176
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0176', 'Lincoln', 'Movie', 6.99, 'USD',
        'A political drama detailing leadership and negotiation during the passage of historic legislation.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('political'), ('biography'), ('history')) AS v(kw)
              ON p.reference = 'PROD-0176';


-- PROD-0177
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0177', 'The Last Samurai', 'Movie', 5.99, 'USD',
        'A foreigner learns customs and honor while caught between tradition and modernization during conflict.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('historical'), ('martial-arts'), ('drama')) AS v(kw)
              ON p.reference = 'PROD-0177';


-- PROD-0178
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0178', 'The Last of the Mohicans', 'Movie', 6.50, 'USD',
        'An epic romance and conflict set against frontier warfare and cultural clash.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('adventure'), ('romance'), ('period')) AS v(kw)
              ON p.reference = 'PROD-0178';


-- PROD-0179
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0179', 'Gladiator (Extended)', 'Movie', 9.49, 'EUR',
        'An extended cut with added sequences that deepen characters and motivations.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('extended'), ('gladiator'), ('epic')) AS v(kw)
              ON p.reference = 'PROD-0179';


-- PROD-0180
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0180', 'Rome: Complete Series', 'TV Series', 19.99, 'EUR',
        'A historical drama exploring politics, family and power in the decline of a republic.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('history'), ('politics'), ('drama')) AS v(kw)
              ON p.reference = 'PROD-0180';


-- 181-200

-- PROD-0181
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0181', 'Downton Abbey: Complete Series', 'TV Series', 24.99, 'GBP',
        'An upstairs-downstairs drama exploring class, change and family dynamics across decades.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('period'), ('family'), ('drama')) AS v(kw)
              ON p.reference = 'PROD-0181';


-- PROD-0182
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0182', 'Korean Drama: Crash Landing on You', 'TV Series', 8.99, 'KRW',
        'A cross-border romance begins after a paraglider is carried to an unexpected place and meets a soldier.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('kdrama'), ('romance'), ('cross-border')) AS v(kw)
              ON p.reference = 'PROD-0182';


-- PROD-0183
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0183', 'Korean Drama: Itaewon Class', 'TV Series', 7.99, 'KRW',
        'An entrepreneur builds a business to challenge social norms and confront a powerful rival.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('kdrama'), ('entrepreneur'), ('drama')) AS v(kw)
              ON p.reference = 'PROD-0183';


-- PROD-0184
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0184', 'Korean Drama: Kingdom', 'TV Series', 9.99, 'KRW',
        'A historical thriller that blends political intrigue with a spreading supernatural threat.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('kdrama'), ('historical'), ('thriller')) AS v(kw)
              ON p.reference = 'PROD-0184';


-- PROD-0185
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0185', 'Tokyo Story', 'Movie', 5.99, 'JPY',
        'A poignant portrait of aging, family and generational distance set in post-war Japan.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('japanese'), ('drama'), ('classic')) AS v(kw)
              ON p.reference = 'PROD-0185';


-- PROD-0186
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0186', ' Battleship Potemkin', 'Movie', 4.99, 'EUR',
        'An influential silent film portraying a sailors'' revolt and montage-driven revolutionary imagery.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('silent'), ('propaganda'), ('history')) AS v(kw)
              ON p.reference = 'PROD-0186';


-- PROD-0187
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0187', 'The General', 'Movie', 4.50, 'EUR',
        'A silent-era comedy-adventure centered on a daring engineer during a civil conflict.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('silent'), ('comedy'), ('adventure')) AS v(kw)
              ON p.reference = 'PROD-0187';


-- PROD-0188
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0188', 'M', 'Movie', 5.99, 'EUR',
        'A suspenseful early sound film about the manhunt for a desperate criminal and social panic.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('manhunt'), ('thriller'), ('classic')) AS v(kw)
              ON p.reference = 'PROD-0188';


-- PROD-0189
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0189', 'The Third Man', 'Movie', 6.99, 'GBP',
        'A post-war noir mystery set in a divided city with shadows, moral ambiguity and intrigue.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('noir'), ('post-war'), ('mystery')) AS v(kw)
              ON p.reference = 'PROD-0189';


-- PROD-0190
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0190', 'The Apartment', 'Movie', 5.99, 'USD',
        'A bittersweet comedy-drama about ambition, loneliness and the search for connection in the city.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('romantic'), ('comedy'), ('drama')) AS v(kw)
              ON p.reference = 'PROD-0190';


-- PROD-0191
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0191', 'A Separation', 'Movie', 6.99, 'EUR',
        'An Iranian family faces moral and legal dilemmas that test bonds, truth and social pressures.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('iranian'), ('family'), ('drama')) AS v(kw)
              ON p.reference = 'PROD-0191';


-- PROD-0192
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0192', 'Portrait of a Lady on Fire', 'Movie', 7.50, 'EUR',
        'An intimate story of love, art and the ethical space between observer and subject in 18th century France.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('romance'), ('art-house'), ('period')) AS v(kw)
              ON p.reference = 'PROD-0192';


-- PROD-0193
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0193', 'The Handmaiden (International)', 'Movie', 9200, 'KRW',
        'A psychological thriller with intricate plotting, romance and shifts in perspective and power.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('korean'), ('thriller'), ('romance')) AS v(kw)
              ON p.reference = 'PROD-0193';


-- PROD-0194
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0194', 'The Raid: Redemption', 'Movie', 7000, 'IDR',
        'A visceral action film where a squad fights through an apartment building filled with criminals.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('action'), ('indonesian'), ('martial-arts')) AS v(kw)
              ON p.reference = 'PROD-0194';


-- PROD-0195
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0195', 'The Raid 2', 'Movie', 8.99, 'USD',
        'A sequel expanding the criminal underworld with elaborate action choreography and politics.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('action'), ('crime'), ('sequel')) AS v(kw)
              ON p.reference = 'PROD-0195';


-- PROD-0196
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0196', 'Ip Man', 'Movie', 6.99, 'USD',
        'A martial-arts biopic chronicling a master''s life and principles during turbulent times.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('biopic'), ('martial-arts'), ('history')) AS v(kw)
              ON p.reference = 'PROD-0196';


-- PROD-0197
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0197', 'Crouching Tiger, Hidden Dragon', 'Movie', 7.99, 'USD',
        'A lyrical martial-arts tale blending romance, honor and fantastical action.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('martial-arts'), ('romance'), ('epic')) AS v(kw)
              ON p.reference = 'PROD-0197';


-- PROD-0198
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0198', 'Hero', 'Movie', 6.99, 'USD',
        'An elegant wuxia film exploring memory, perspective and sacrifice around a political assassination.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('wuxia'), ('epic'), ('visual')) AS v(kw)
              ON p.reference = 'PROD-0198';


-- PROD-0199
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0199', 'Raise the Red Lantern', 'Movie', 5.99, 'EUR',
        'A visual drama about power, ritual and constraint within a wealthy household''s hierarchy.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('period'), ('chinese'), ('drama')) AS v(kw)
              ON p.reference = 'PROD-0199';


-- PROD-0200
INSERT INTO product (reference, name, category, price_value, price_currency, description)
VALUES ('PROD-0200', 'Shin Godzilla', 'Movie', 8.50, 'JPY',
        'A modern reinvention of a classic monster story that critiques bureaucracy and disaster response.');

INSERT INTO product_keywords (product_id, keywords)
SELECT p.id, v.kw
FROM product p
         JOIN (VALUES ('kaiju'), ('disaster'), ('japanese')) AS v(kw)
              ON p.reference = 'PROD-0200';

