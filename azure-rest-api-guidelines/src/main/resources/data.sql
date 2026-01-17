-- Auto-generated data.sql: 200 Product entries based on movies and TV series
-- Assumptions:
-- 1) JPA default table name for the Product entity is `product`.
-- 2) Embeddable Price fields are persisted as `price_value` and `price_currency`.
-- 3) ElementCollection `keywords` is stored in a collection table named `product_keywords` with join column `product_id` and element column `keywords`.
-- If your runtime uses different column/table names adjust these INSERTs accordingly.

-- Products
-- 1-20
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (1, 'PROD-0001', 'The Shawshank Redemption', 'Movie', 9.99, 'USD', 'A story of hope and friendship in a prison setting, following Andy Dufresne and Red.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (2, 'PROD-0002', 'The Godfather', 'Movie', 12.50, 'EUR', 'The Corleone crime family and the rise of Michael Corleone as the new don.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (3, 'PROD-0003', 'The Dark Knight', 'Movie', 11.99, 'USD', 'Batman faces the chaotic Joker while protecting Gotham and confronting moral choices.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (4, 'PROD-0004', 'Pulp Fiction', 'Movie', 8.99, 'USD', 'Interwoven stories of crime, redemption and dark humor in Los Angeles.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (5, 'PROD-0005', 'Schindler''s List', 'Movie', 10.00, 'EUR', 'A powerful historical drama about Oskar Schindler''s efforts to save Jewish refugees during WWII.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (6, 'PROD-0006', 'The Lord of the Rings: The Return of the King', 'Movie', 14.99, 'USD', 'The final epic chapter in the fellowship''s quest to destroy the One Ring.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (7, 'PROD-0007', 'Fight Club', 'Movie', 7.49, 'USD', 'An insomniac and a soapmaker form an underground fight club that evolves into something more.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (8, 'PROD-0008', 'Forrest Gump', 'Movie', 9.50, 'USD', 'The life journey of Forrest Gump as he witnesses and influences historical moments with heart.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (9, 'PROD-0009', 'Inception', 'Movie', 13.49, 'EUR', 'A skilled extractor leads a team to plant an idea within a target''s subconscious through layered dreams.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (10, 'PROD-0010', 'The Matrix', 'Movie', 10.99, 'USD', 'A hacker discovers reality is a simulation and joins a rebellion to free humanity.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (11, 'PROD-0011', 'Star Wars: The Empire Strikes Back', 'Movie', 12.99, 'USD', 'The Rebel Alliance faces setbacks while Luke trains with Yoda and confronts Vader.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (12, 'PROD-0012', 'Interstellar', 'Movie', 13.99, 'EUR', 'Explorers travel through a wormhole to find a new home for humanity as Earth faces collapse.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (13, 'PROD-0013', 'Parasite', 'Movie', 15.00, 'KRW', 'A darkly comic thriller about class, deception and the interactions between two households.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (14, 'PROD-0014', 'Spirited Away', 'Movie', 1600, 'JPY', 'A young girl enters a magical bathhouse and must find a way to save her parents and return home.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (15, 'PROD-0015', 'The Lion King', 'Movie', 8.99, 'USD', 'A young prince flees his kingdom after tragedy and later returns to reclaim his throne.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (16, 'PROD-0016', 'Toy Story', 'Movie', 6.99, 'USD', 'Toys come to life and navigate loyalty, adventure and growing up as their owner changes.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (17, 'PROD-0017', 'Avengers: Endgame', 'Movie', 19.99, 'USD', 'Heroes unite to reverse a catastrophic event and face difficult sacrifices to save the universe.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (18, 'PROD-0018', 'Black Panther', 'Movie', 11.99, 'USD', 'A king returns home to lead his nation and must confront challenges to his throne and values.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (19, 'PROD-0019', 'Joker', 'Movie', 9.99, 'USD', 'A gritty character study of a failed comedian''s descent into chaos amidst social unrest.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (20, 'PROD-0020', 'The Silence of the Lambs', 'Movie', 7.99, 'USD', 'An FBI trainee consults an incarcerated psychiatrist to catch a serial killer.');

-- 21-40
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (21, 'PROD-0021', 'Se7en', 'Movie', 6.50, 'USD', 'Two detectives hunt a serial killer who uses the seven deadly sins as his motives.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (22, 'PROD-0022', 'Goodfellas', 'Movie', 8.75, 'EUR', 'A portrayal of a man''s rise and fall inside the mob world spanning decades.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (23, 'PROD-0023', 'The Usual Suspects', 'Movie', 6.99, 'USD', 'A twisting crime tale centered on a group of criminals and a mysterious mastermind.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (24, 'PROD-0024', 'Saving Private Ryan', 'Movie', 9.50, 'USD', 'A WWII squad undertakes a perilous mission to bring home one soldier after heavy losses.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (25, 'PROD-0025', 'Gladiator', 'Movie', 7.99, 'EUR', 'A former general seeks vengeance and honor in the arenas of ancient Rome.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (26, 'PROD-0026', 'The Green Mile', 'Movie', 8.50, 'USD', 'A death row guard experiences a supernatural encounter with an extraordinary inmate.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (27, 'PROD-0027', 'The Departed', 'Movie', 10.00, 'USD', 'Undercover agents and moles play dangerous games in Boston''s criminal underworld.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (28, 'PROD-0028', 'Whiplash', 'Movie', 6.99, 'USD', 'An intense story about ambition, music and the price of excellence between student and teacher.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (29, 'PROD-0029', 'Mad Max: Fury Road', 'Movie', 11.00, 'USD', 'Post-apocalyptic chase through a desert landscape where survival and rebellion collide.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (30, 'PROD-0030', 'Django Unchained', 'Movie', 9.99, 'USD', 'A freed slave partners with a bounty hunter to rescue his wife from a brutal plantation.');

INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (31, 'PROD-0031', 'The Prestige', 'Movie', 7.50, 'EUR', 'Two rival magicians push obsession and deceit to dangerous extremes to outperform each other.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (32, 'PROD-0032', 'Memento', 'Movie', 5.99, 'USD', 'A man with short-term memory loss uses notes and tattoos to hunt the person who killed his wife.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (33, 'PROD-0033', 'The Social Network', 'Movie', 6.50, 'USD', 'The story of ambition and conflict behind the creation of a major social platform.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (34, 'PROD-0034', 'The King''s Speech', 'Movie', 5.99, 'GBP', 'A monarch overcomes a stammer with the support of an unorthodox speech therapist.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (35, 'PROD-0035', 'La La Land', 'Movie', 7.99, 'EUR', 'A musical romance between an aspiring actress and a jazz musician pursuing dreams in Los Angeles.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (36, 'PROD-0036', 'Moonlight', 'Movie', 6.99, 'USD', 'A coming-of-age tale about identity, family and love across three formative chapters of a man''s life.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (37, 'PROD-0037', 'Her', 'Movie', 5.50, 'EUR', 'A sensitive exploration of love and loneliness when a man forms a relationship with an operating system.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (38, 'PROD-0038', 'Arrival', 'Movie', 7.49, 'USD', 'A linguist works to communicate with alien visitors to learn their purpose on Earth.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (39, 'PROD-0039', 'Ex Machina', 'Movie', 6.99, 'USD', 'A programmer tests a highly advanced AI and confronts ethical and psychological dilemmas.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (40, 'PROD-0040', 'Blade Runner 2049', 'Movie', 8.99, 'USD', 'A dystopian detective unearths a long-buried secret that could change society.');

-- 41-60
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (41, 'PROD-0041', 'The Grand Budapest Hotel', 'Movie', 6.99, 'EUR', 'A whimsical tale about a hotel concierge''s adventures framed by a story of theft and friendship.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (42, 'PROD-0042', 'No Country for Old Men', 'Movie', 7.25, 'USD', 'A hunter finds money from a drug deal gone wrong and a relentless killer pursues him across Texas.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (43, 'PROD-0043', 'There Will Be Blood', 'Movie', 6.99, 'USD', 'An intense portrait of ambition and greed in the early oil industry.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (44, 'PROD-0044', 'A Beautiful Mind', 'Movie', 5.99, 'USD', 'The life of a brilliant mathematician who struggles with mental illness while making scientific contributions.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (45, 'PROD-0045', 'The Truman Show', 'Movie', 6.50, 'EUR', 'A man slowly discovers his life has been a constructed reality television show since birth.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (46, 'PROD-0046', 'The Hobbit: An Unexpected Journey', 'Movie', 10.00, 'USD', 'A reluctant hero embarks on a quest with dwarves to reclaim a lost kingdom.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (47, 'PROD-0047', 'Harry Potter and the Sorcerer''s Stone', 'Movie', 9.99, 'USD', 'A young wizard discovers his heritage and attends a school of magic where friendships are forged.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (48, 'PROD-0048', 'Harry Potter and the Deathly Hallows: Part 2', 'Movie', 12.99, 'USD', 'The final struggle between good and evil as allies unite to face the dark wizard.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (49, 'PROD-0049', 'Breaking Bad: Complete Series', 'TV Series', 29.99, 'USD', 'A chemistry teacher turns to manufacturing to secure his family''s future and spirals into crime.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (50, 'PROD-0050', 'Game of Thrones: Season 1', 'TV Series', 14.99, 'EUR', 'Noble families vie for the Iron Throne while ancient threats arise in the north.');

INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (51, 'PROD-0051', 'The Wire: Complete Series', 'TV Series', 24.99, 'USD', 'A gritty multi-perspective exploration of crime, institutions and society in Baltimore.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (52, 'PROD-0052', 'Stranger Things: Season 1', 'TV Series', 12.49, 'USD', 'Kids confront supernatural forces and secret experiments in a small town in the 1980s.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (53, 'PROD-0053', 'The Crown: Season 1', 'TV Series', 13.99, 'GBP', 'A dramatized account of the early reign of Queen Elizabeth II and political challenges.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (54, 'PROD-0054', 'Chernobyl: Miniseries', 'TV Series', 7.99, 'EUR', 'A harrowing retelling of the 1986 nuclear disaster and its human and political consequences.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (55, 'PROD-0055', 'The Mandalorian: Season 1', 'TV Series', 11.99, 'USD', 'A lone bounty hunter in the outer reaches protects a mysterious child and faces old threats.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (56, 'PROD-0056', 'The Office (US): Season 1', 'TV Series', 6.99, 'USD', 'A mockumentary-style workplace comedy following the employees of a paper company.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (57, 'PROD-0057', 'Friends: Complete Series', 'TV Series', 39.99, 'USD', 'A group of friends navigate love, work and life in New York over many seasons.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (58, 'PROD-0058', 'Seinfeld: Complete Series', 'TV Series', 34.99, 'USD', 'A comedy about everyday life and the quirky observations of a group of friends in NYC.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (59, 'PROD-0059', 'Sherlock: Complete Series', 'TV Series', 19.99, 'GBP', 'Modern adaptations of classic detective tales following a brilliant detective and his partner.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (60, 'PROD-0060', 'House of Cards: Season 1', 'TV Series', 9.99, 'USD', 'A ruthless politician and his equally ambitious partner manipulate systems of power in Washington.');

-- 61-80
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (61, 'PROD-0061', 'Westworld: Season 1', 'TV Series', 11.99, 'USD', 'An amusement park populated by lifelike hosts raises questions about consciousness and control.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (62, 'PROD-0062', 'Lost: Complete Series', 'TV Series', 24.99, 'USD', 'Survivors of a plane crash on a mysterious island experience strange phenomena and interpersonal drama.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (63, 'PROD-0063', 'Battlestar Galactica: Complete Series', 'TV Series', 19.99, 'USD', 'Humans flee across space from a hostile robotic enemy while searching for a lost homeland.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (64, 'PROD-0064', 'Fargo: Season 1', 'TV Series', 8.50, 'USD', 'A darkly comic crime drama inspired by small-town crimes and characters with moral complexity.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (65, 'PROD-0065', 'True Detective: Season 1', 'TV Series', 7.99, 'USD', 'Two detectives investigate a disturbing ritualistic murder across many years and fractured lives.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (66, 'PROD-0066', 'Narcos: Season 1', 'TV Series', 9.99, 'USD', 'A chronicle of drug cartels'' rise and the law enforcement efforts to stop them.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (67, 'PROD-0067', 'Money Heist (La Casa de Papel): Season 1', 'TV Series', 8.99, 'EUR', 'A group of thieves executes an elaborate heist on the Royal Mint under a mastermind''s plan.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (68, 'PROD-0068', 'Dark: Complete Series', 'TV Series', 12.99, 'EUR', 'A time-travel thriller where families uncover a web of secrets across generations in a small town.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (69, 'PROD-0069', 'Ozark: Season 1', 'TV Series', 7.50, 'USD', 'A financial planner relocates his family to launder money and confronts violent criminals.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (70, 'PROD-0070', 'Better Call Saul: Season 1', 'TV Series', 9.49, 'USD', 'The transformation of a struggling lawyer into a morally flexible attorney connected to criminal networks.');

INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (71, 'PROD-0071', 'Peaky Blinders: Season 1', 'TV Series', 8.99, 'GBP', 'A post-war Birmingham gang rises in power under a charismatic and cunning leader.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (72, 'PROD-0072', 'Rick and Morty: Season 1', 'TV Series', 6.99, 'USD', 'An animated series following a genius scientist and his anxious grandson on surreal adventures.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (73, 'PROD-0073', 'BoJack Horseman: Complete Series', 'TV Series', 14.99, 'USD', 'A washed-up actor navigates fame, depression and relationships in an anthropomorphic world.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (74, 'PROD-0074', 'The Boys: Season 1', 'TV Series', 9.99, 'USD', 'A gritty superhero story where powerful figures are corrupted and a group fights back.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (75, 'PROD-0075', 'Loki: Season 1', 'TV Series', 8.99, 'USD', 'A trickster god navigates timelines and consequences after escaping with schemes of his own.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (76, 'PROD-0076', 'Hawkeye: Season 1', 'TV Series', 7.99, 'USD', 'A veteran archer teams up with a young protégé to face challenges close to home.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (77, 'PROD-0077', 'The Queen''s Gambit', 'TV Series', 6.99, 'USD', 'A chess prodigy rises in a male-dominated sport while battling addiction and loneliness.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (78, 'PROD-0078', 'The Witcher: Season 1', 'TV Series', 9.50, 'USD', 'A monster hunter navigates a morally gray world while fate entwines multiple lives.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (79, 'PROD-0079', 'Vikings: Complete Series', 'TV Series', 19.99, 'EUR', 'A saga of raiders, exploration and the rise and fall of influential leaders in Norse society.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (80, 'PROD-0080', 'Superman: The Movie', 'Movie', 6.99, 'USD', 'An origin story of an alien raised on Earth who becomes a symbol of hope and justice.');

-- 81-100
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (81, 'PROD-0081', 'Batman v Superman: Dawn of Justice', 'Movie', 9.99, 'USD', 'Two iconic heroes clash while greater threats loom that force cooperation.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (82, 'PROD-0082', 'Ant-Man', 'Movie', 7.99, 'USD', 'A thief gains the ability to shrink and is recruited for a heist that could change things.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (83, 'PROD-0083', 'Captain Marvel', 'Movie', 8.99, 'USD', 'A hero grapples with lost memories and discovers the scope of her powers and role.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (84, 'PROD-0084', 'Guardians of the Galaxy', 'Movie', 9.49, 'USD', 'A band of misfits become unlikely heroes while protecting a cosmic artifact.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (85, 'PROD-0085', 'Deadpool', 'Movie', 6.99, 'USD', 'A wisecracking antihero breaks conventions while seeking revenge and healing.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (86, 'PROD-0086', 'Skyfall', 'Movie', 7.99, 'GBP', 'A seasoned agent faces threats that challenge loyalties and test endurance.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (87, 'PROD-0087', 'Casino Royale', 'Movie', 8.50, 'USD', 'A spy''s early mission involves high-stakes poker, loyalty and the cost of duty.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (88, 'PROD-0088', 'Goldfinger', 'Movie', 6.50, 'USD', 'A classic spy thriller with elaborate schemes and daring confrontations.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (89, 'PROD-0089', 'Mission: Impossible - Fallout', 'Movie', 11.99, 'USD', 'A daring operative must track allies and foes across a globe-spanning threat.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (90, 'PROD-0090', 'John Wick', 'Movie', 8.99, 'USD', 'A retired assassin returns to the underworld to settle debts and face old enemies.');

INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (91, 'PROD-0091', 'Blade', 'Movie', 5.99, 'USD', 'A half-vampire hunts bloodsuckers while straddling two worlds and violent loyalties.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (92, 'PROD-0092', 'The Terminator', 'Movie', 6.99, 'USD', 'A cyborg from the future pursues a target to change the fate of humanity.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (93, 'PROD-0093', 'Terminator 2: Judgment Day', 'Movie', 8.99, 'USD', 'A reprogrammed protector returns to defend a young target from a new model sent to kill.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (94, 'PROD-0094', 'The Bourne Identity', 'Movie', 6.50, 'EUR', 'An amnesiac uncovers skills and secrets as he evades agencies trying to control him.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (95, 'PROD-0095', 'The Bourne Ultimatum', 'Movie', 7.49, 'USD', 'The hunt for answers escalates as a skilled operative confronts his past and powerful opponents.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (96, 'PROD-0096', 'Rocky', 'Movie', 5.99, 'USD', 'An underdog boxer gets a shot at the title and tests grit, training and heart.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (97, 'PROD-0097', 'Creed', 'Movie', 6.99, 'USD', 'A young fighter seeks mentorship and legacy within the boxing world.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (98, 'PROD-0098', 'The Matrix Reloaded', 'Movie', 6.99, 'USD', 'The rebellion deepens as truths about the simulated world and choices come to light.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (99, 'PROD-0099', 'The Matrix Revolutions', 'Movie', 5.99, 'USD', 'The concluding confrontations shape the fate of both humans and machines.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (100, 'PROD-0100', 'The Avengers', 'Movie', 10.99, 'USD', 'Heroes from varied backgrounds unite to stop a formidable extraterrestrial threat.');

-- 101-120
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (101, 'PROD-0101', 'Mission: Impossible', 'Movie', 6.99, 'USD', 'A team of agents uses skill and cunning to accomplish seemingly impossible missions.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (102, 'PROD-0102', 'Top Gun: Maverick', 'Movie', 12.99, 'USD', 'A veteran pilot returns to train a new generation while confronting his past and duty.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (103, 'PROD-0103', 'La Haine', 'Movie', 4.99, 'EUR', 'A stark French drama about disenfranchised youth facing social tensions and violence in the suburbs.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (104, 'PROD-0104', 'Oldboy', 'Movie', 6.99, 'KRW', 'A man imprisoned mysteriously seeks revenge and truth after being released with no explanation.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (105, 'PROD-0105', 'Train to Busan', 'Movie', 7000, 'KRW', 'Passengers fight for survival on a train during a sudden zombie outbreak while social bonds are tested.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (106, 'PROD-0106', 'Parasite (Director''s Cut)', 'Movie', 17000, 'KRW', 'An extended version of a darkly comic thriller exploring class, family and deception.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (107, 'PROD-0107', 'Your Name', 'Movie', 1200, 'JPY', 'Two teens mysteriously swap bodies and form a deep connection while trying to meet across time.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (108, 'PROD-0108', 'Akira', 'Movie', 1100, 'JPY', 'A cyberpunk tale of psychic power, political corruption and youth rebellion in a dystopian city.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (109, 'PROD-0109', 'Seven Samurai', 'Movie', 9.99, 'EUR', 'A village hires warriors to defend itself from raiders, creating a classic tale of honor and strategy.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (110, 'PROD-0110', 'Rashomon', 'Movie', 5.99, 'EUR', 'A story told from multiple perspectives that challenges truth and perception.');

INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (111, 'PROD-0111', 'Spartacus', 'TV Series', 14.99, 'USD', 'A gladiator leads a rebellion against oppressive rule while forming alliances and rivalries.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (112, 'PROD-0112', 'The Sopranos: Complete Series', 'TV Series', 29.99, 'USD', 'A mob boss balances family life and criminal enterprise while facing personal turmoil.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (113, 'PROD-0113', 'Mad Men: Complete Series', 'TV Series', 19.99, 'USD', 'An advertising executive navigates ambition, identity and changing culture in the 1960s.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (114, 'PROD-0114', 'The Handmaid''s Tale: Season 1', 'TV Series', 9.99, 'USD', 'A dystopian society strips women of rights and one woman navigates survival and resistance.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (115, 'PROD-0115', 'Black Mirror: Season 1', 'TV Series', 6.99, 'GBP', 'Standalone speculative stories exploring technology''s dark potential and human consequences.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (116, 'PROD-0116', 'Band of Brothers: Complete Series', 'TV Series', 14.99, 'USD', 'True-to-life accounts of a WWII airborne company''s experiences from training to major battles.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (117, 'PROD-0117', 'Planet Earth: Complete Series', 'TV Series', 24.99, 'EUR', 'A sweeping natural history documentary series showcasing diverse ecosystems and life.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (118, 'PROD-0118', 'Blue Planet II', 'TV Series', 19.99, 'GBP', 'A documentary exploration of the oceans, marine life and environmental challenges.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (119, 'PROD-0119', 'Planet Earth II', 'TV Series', 19.99, 'EUR', 'A cinematic look at wildlife and habitats across continents with advanced filming techniques.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (120, 'PROD-0120', 'The Expanse: Complete Series', 'TV Series', 24.99, 'USD', 'A space-opera political thriller where factions across the solar system collide over survival and power.');

-- 121-140
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (121, 'PROD-0121', 'The Godfather: Part II', 'Movie', 11.99, 'USD', 'A parallel story of a criminal empire''s expansion and one man''s consolidation of power.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (122, 'PROD-0122', 'Heat', 'Movie', 7.99, 'USD', 'A heist thriller that examines the cat-and-mouse dynamic between a criminal mastermind and a detective.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (123, 'PROD-0123', 'The Irishman', 'Movie', 9.99, 'USD', 'A reflective crime epic chronicling decades in the life of a hitman and the mob.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (124, 'PROD-0124', 'Once Upon a Time in Hollywood', 'Movie', 10.99, 'USD', 'An homage to a changing film industry seen through the lives of an actor and his stunt double.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (125, 'PROD-0125', 'The Grand Illusion', 'Movie', 5.50, 'EUR', 'A classic film exploring human relationships and class distinctions during wartime.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (126, 'PROD-0126', 'Cinema Paradiso', 'Movie', 6.99, 'EUR', 'A nostalgic tale about childhood, cinema and the bonds between a boy and a projectionist.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (127, 'PROD-0127', 'Good Will Hunting', 'Movie', 6.99, 'USD', 'A gifted young man confronts trauma and potential with the help of a compassionate therapist.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (128, 'PROD-0128', 'Eternal Sunshine of the Spotless Mind', 'Movie', 7.50, 'USD', 'A couple undergoes experimental memory erasure and rediscover the complexity of love and loss.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (129, 'PROD-0129', 'The Notebook', 'Movie', 5.99, 'USD', 'A romantic drama following a lifelong love story told through memories and devotion.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (130, 'PROD-0130', 'The Princess Bride', 'Movie', 4.99, 'USD', 'A whimsical adventure and romance filled with memorable characters and quotable lines.');

INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (131, 'PROD-0131', 'Amélie', 'Movie', 6.99, 'EUR', 'A fanciful Parisian tale of a woman who finds joy in quietly improving others'' lives.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (132, 'PROD-0132', 'Pan''s Labyrinth', 'Movie', 7.49, 'EUR', 'A dark fairy tale set against the backdrop of post-Civil War Spain mixing fantasy and reality.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (133, 'PROD-0133', 'The Shining', 'Movie', 6.99, 'USD', 'A family isolated in a hotel descends into supernatural terror and psychological unraveling.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (134, 'PROD-0134', 'A Clockwork Orange', 'Movie', 5.99, 'GBP', 'A controversial satire about free will, violence and societal attempts at reform.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (135, 'PROD-0135', 'The Big Lebowski', 'Movie', 5.50, 'USD', 'A laid-back man is pulled into a comical and convoluted kidnapping case.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (136, 'PROD-0136', 'Monty Python and the Holy Grail', 'Movie', 4.99, 'GBP', 'A surreal, comedic take on Arthurian legend filled with absurdist sketches.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (137, 'PROD-0137', 'The Great Dictator', 'Movie', 5.99, 'EUR', 'A satirical film that lampoons totalitarianism while promoting humanity and freedom.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (138, 'PROD-0138', 'Nosferatu', 'Movie', 4.50, 'EUR', 'A silent-era horror classic portraying a haunting vampire tale with expressionist visuals.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (139, 'PROD-0139', 'Metropolis', 'Movie', 6.00, 'EUR', 'A pioneering sci-fi about class struggle and the human cost of industrial utopia.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (140, 'PROD-0140', 'Blade Runner', 'Movie', 7.99, 'USD', 'A noirish sci-fi that questions what it means to be human in a world of artificial beings.');

-- 141-160
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (141, 'PROD-0141', 'Mullholland Drive', 'Movie', 6.99, 'USD', 'A surreal mystery exploring dreams, identity and Hollywood''s darker underside.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (142, 'PROD-0142', 'Donnie Darko', 'Movie', 5.99, 'USD', 'A teenager experiences visions and time-bending events that challenge reality and fate.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (143, 'PROD-0143', 'Requiem for a Dream', 'Movie', 6.50, 'USD', 'An intense look at addiction and its destructive effects on relationships and identity.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (144, 'PROD-0144', 'The Sixth Sense', 'Movie', 6.99, 'USD', 'A child who communicates with the dead helps a troubled psychologist confront mysteries.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (145, 'PROD-0145', 'The Sixth Sense (Collector''s Edition)', 'Movie', 9.99, 'USD', 'An expanded edition with bonus material exploring production and interpretation.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (146, 'PROD-0146', 'The Prestige (Collector''s Edition)', 'Movie', 8.99, 'EUR', 'An edition with behind-the-scenes content and deeper looks into the rivalry between magicians.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (147, 'PROD-0147', 'Cinema Paradiso (Restored)', 'Movie', 7.99, 'EUR', 'A restored version celebrating film, memory and an enduring relationship between mentor and pupil.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (148, 'PROD-0148', 'The Handmaiden', 'Movie', 9000, 'KRW', 'A layered psychological thriller of deception, desire and power in an intimate setting.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (149, 'PROD-0149', 'Oldboy (Restored)', 'Movie', 8500, 'KRW', 'A restored edition of a visceral revenge thriller known for its stylistic intensity.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (150, 'PROD-0150', 'Dogtooth', 'Movie', 5.99, 'EUR', 'A provocative Greek drama about control, isolation and the boundaries of family.');

INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (151, 'PROD-0151', 'My Neighbor Totoro', 'Movie', 750, 'JPY', 'A gentle, magical story about two sisters who meet forest spirits and find wonder after moving to the countryside.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (152, 'PROD-0152', 'Princess Mononoke', 'Movie', 1200, 'JPY', 'A mythic environmental epic where humans and spirits clash over resources and survival.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (153, 'PROD-0153', 'Grave of the Fireflies', 'Movie', 800, 'JPY', 'A heartbreaking wartime tale focusing on two siblings struggling to survive after displacement.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (154, 'PROD-0154', 'Kimi no Na wa (Your Name) - Special', 'Movie', 1500, 'JPY', 'A special edition with additional behind-the-scenes material for a body-swap romance across time.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (155, 'PROD-0155', 'Oldboy: International Cut', 'Movie', 7800, 'KRW', 'An alternate cut offering additional context and pacing to the intense revenge narrative.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (156, 'PROD-0156', 'The Grand Budapest Hotel (Collector''s)', 'Movie', 9.99, 'EUR', 'Collector''s edition featuring extras on production design and storytelling.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (157, 'PROD-0157', 'Mad Max: Fury Road (Extended)', 'Movie', 12.99, 'USD', 'An extended cut with added sequences expanding the post-apocalyptic world and characters.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (158, 'PROD-0158', 'The Man from Earth', 'Movie', 4.99, 'USD', 'A contemplative sci-fi about a man with an extraordinary past sharing his life story around a kitchen table.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (159, 'PROD-0159', 'The Farewell', 'Movie', 7.99, 'USD', 'A family stages a fake wedding to gather and say goodbye to their matriarch without telling her she is terminally ill.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (160, 'PROD-0160', 'Minari', 'Movie', 6.99, 'USD', 'A family pursues the American dream while planting roots and facing cultural and practical challenges.');

-- 161-180
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (161, 'PROD-0161', 'Moonrise Kingdom', 'Movie', 6.50, 'EUR', 'A quirky coming-of-age story of young love, misadventure and a community''s response.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (162, 'PROD-0162', 'The Royal Tenenbaums', 'Movie', 6.99, 'USD', 'A family of eccentrics reunites with old wounds and comic poignancy in an offbeat dramedy.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (163, 'PROD-0163', 'The Florida Project', 'Movie', 5.99, 'USD', 'A bright portrait of childhood in the shadows of a tourist economy highlighting resilience and hardship.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (164, 'PROD-0164', 'Inside Out', 'Movie', 6.5, 'USD', 'An animated exploration of emotions inside a young girl''s mind as she navigates change and memory.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (165, 'PROD-0165', 'Coco', 'Movie', 6.99, 'USD', 'A young boy''s musical journey into the Land of the Dead to uncover family history and identity.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (166, 'PROD-0166', 'Zootopia', 'Movie', 5.99, 'USD', 'A rookie officer and a sly con artist fox uncover a conspiracy in a city of anthropomorphic animals.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (167, 'PROD-0167', 'Inside Man', 'Movie', 5.50, 'USD', 'A clever bank heist unfolds with moral ambiguity and strategic negotiation.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (168, 'PROD-0168', 'Heat (Special Edition)', 'Movie', 8.99, 'USD', 'An edition with extended features focusing on the psychology of characters and heist craft.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (169, 'PROD-0169', 'Heat (Collector''s)', 'Movie', 9.99, 'EUR', 'A collector''s pack featuring interviews and analysis of the famed crime thriller.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (170, 'PROD-0170', 'The Social Network (Special)', 'Movie', 7.99, 'USD', 'An edition with commentary and deeper insights into the making of the film and its themes.');

INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (171, 'PROD-0171', '12 Angry Men', 'Movie', 5.99, 'USD', 'A jury deliberates a murder case and human biases, justice and persuasion come to the fore.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (172, 'PROD-0172', 'On the Waterfront', 'Movie', 5.99, 'USD', 'A dockworker confronts corruption and questions loyalty amid moral struggle.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (173, 'PROD-0173', 'The Bridge on the River Kwai', 'Movie', 6.50, 'EUR', 'Prisoners of war are compelled to build an impossible structure while leadership and honor are tested.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (174, 'PROD-0174', 'Some Like It Hot', 'Movie', 4.99, 'USD', 'A comedy of disguise and mistaken identity when two musicians flee trouble and join an all-female band.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (175, 'PROD-0175', '12 Years a Slave', 'Movie', 7.99, 'USD', 'A harrowing true story of a free man abducted into slavery and his struggle for dignity and freedom.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (176, 'PROD-0176', 'Lincoln', 'Movie', 6.99, 'USD', 'A political drama detailing leadership and negotiation during the passage of historic legislation.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (177, 'PROD-0177', 'The Last Samurai', 'Movie', 5.99, 'USD', 'A foreigner learns customs and honor while caught between tradition and modernization during conflict.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (178, 'PROD-0178', 'The Last of the Mohicans', 'Movie', 6.50, 'USD', 'An epic romance and conflict set against frontier warfare and cultural clash.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (179, 'PROD-0179', 'Gladiator (Extended)', 'Movie', 9.49, 'EUR', 'An extended cut with added sequences that deepen characters and motivations.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (180, 'PROD-0180', 'Rome: Complete Series', 'TV Series', 19.99, 'EUR', 'A historical drama exploring politics, family and power in the decline of a republic.');

-- 181-200
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (181, 'PROD-0181', 'Downton Abbey: Complete Series', 'TV Series', 24.99, 'GBP', 'An upstairs-downstairs drama exploring class, change and family dynamics across decades.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (182, 'PROD-0182', 'Korean Drama: Crash Landing on You', 'TV Series', 8.99, 'KRW', 'A cross-border romance begins after a paraglider is carried to an unexpected place and meets a soldier.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (183, 'PROD-0183', 'Korean Drama: Itaewon Class', 'TV Series', 7.99, 'KRW', 'An entrepreneur builds a business to challenge social norms and confront a powerful rival.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (184, 'PROD-0184', 'Korean Drama: Kingdom', 'TV Series', 9.99, 'KRW', 'A historical thriller that blends political intrigue with a spreading supernatural threat.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (185, 'PROD-0185', 'Tokyo Story', 'Movie', 5.99, 'JPY', 'A poignant portrait of aging, family and generational distance set in post-war Japan.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (186, 'PROD-0186', ' Battleship Potemkin', 'Movie', 4.99, 'EUR', 'An influential silent film portraying a sailors'' revolt and montage-driven revolutionary imagery.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (187, 'PROD-0187', 'The General', 'Movie', 4.50, 'EUR', 'A silent-era comedy-adventure centered on a daring engineer during a civil conflict.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (188, 'PROD-0188', 'M', 'Movie', 5.99, 'EUR', 'A suspenseful early sound film about the manhunt for a desperate criminal and social panic.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (189, 'PROD-0189', 'The Third Man', 'Movie', 6.99, 'GBP', 'A post-war noir mystery set in a divided city with shadows, moral ambiguity and intrigue.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (190, 'PROD-0190', 'The Apartment', 'Movie', 5.99, 'USD', 'A bittersweet comedy-drama about ambition, loneliness and the search for connection in the city.');

INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (191, 'PROD-0191', 'A Separation', 'Movie', 6.99, 'EUR', 'An Iranian family faces moral and legal dilemmas that test bonds, truth and social pressures.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (192, 'PROD-0192', 'Portrait of a Lady on Fire', 'Movie', 7.50, 'EUR', 'An intimate story of love, art and the ethical space between observer and subject in 18th century France.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (193, 'PROD-0193', 'The Handmaiden (International)', 'Movie', 9200, 'KRW', 'A psychological thriller with intricate plotting, romance and shifts in perspective and power.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (194, 'PROD-0194', 'The Raid: Redemption', 'Movie', 7000, 'IDR', 'A visceral action film where a squad fights through an apartment building filled with criminals.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (195, 'PROD-0195', 'The Raid 2', 'Movie', 8.99, 'USD', 'A sequel expanding the criminal underworld with elaborate action choreography and politics.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (196, 'PROD-0196', 'Ip Man', 'Movie', 6.99, 'USD', 'A martial-arts biopic chronicling a master''s life and principles during turbulent times.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (197, 'PROD-0197', 'Crouching Tiger, Hidden Dragon', 'Movie', 7.99, 'USD', 'A lyrical martial-arts tale blending romance, honor and fantastical action.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (198, 'PROD-0198', 'Hero', 'Movie', 6.99, 'USD', 'An elegant wuxia film exploring memory, perspective and sacrifice around a political assassination.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (199, 'PROD-0199', 'Raise the Red Lantern', 'Movie', 5.99, 'EUR', 'A visual drama about power, ritual and constraint within a wealthy household''s hierarchy.');
INSERT INTO product (id, reference, name, category, price_value, price_currency, description) VALUES (200, 'PROD-0200', 'Shin Godzilla', 'Movie', 8.50, 'JPY', 'A modern reinvention of a classic monster story that critiques bureaucracy and disaster response.');

-- Keywords: add several meaningful keywords per product
-- For each product we add 3-6 keyword rows. Adjust table/column names if necessary.

-- Product 1 keywords
INSERT INTO product_keywords (product_id, keywords) VALUES (1, 'drama');
INSERT INTO product_keywords (product_id, keywords) VALUES (1, 'prison');
INSERT INTO product_keywords (product_id, keywords) VALUES (1, 'friendship');

-- Product 2
INSERT INTO product_keywords (product_id, keywords) VALUES (2, 'crime');
INSERT INTO product_keywords (product_id, keywords) VALUES (2, 'mafia');
INSERT INTO product_keywords (product_id, keywords) VALUES (2, 'classic');

-- Product 3
INSERT INTO product_keywords (product_id, keywords) VALUES (3, 'superhero');
INSERT INTO product_keywords (product_id, keywords) VALUES (3, 'action');
INSERT INTO product_keywords (product_id, keywords) VALUES (3, 'thriller');

-- Product 4
INSERT INTO product_keywords (product_id, keywords) VALUES (4, 'crime');
INSERT INTO product_keywords (product_id, keywords) VALUES (4, 'nonlinear');
INSERT INTO product_keywords (product_id, keywords) VALUES (4, 'cult');

-- Product 5
INSERT INTO product_keywords (product_id, keywords) VALUES (5, 'history');
INSERT INTO product_keywords (product_id, keywords) VALUES (5, 'war');
INSERT INTO product_keywords (product_id, keywords) VALUES (5, 'biography');

-- Product 6
INSERT INTO product_keywords (product_id, keywords) VALUES (6, 'fantasy');
INSERT INTO product_keywords (product_id, keywords) VALUES (6, 'epic');
INSERT INTO product_keywords (product_id, keywords) VALUES (6, 'adventure');

-- Product 7
INSERT INTO product_keywords (product_id, keywords) VALUES (7, 'psychological');
INSERT INTO product_keywords (product_id, keywords) VALUES (7, 'drama');
INSERT INTO product_keywords (product_id, keywords) VALUES (7, 'cult');

-- Product 8
INSERT INTO product_keywords (product_id, keywords) VALUES (8, 'drama');
INSERT INTO product_keywords (product_id, keywords) VALUES (8, 'romance');
INSERT INTO product_keywords (product_id, keywords) VALUES (8, 'coming-of-age');

-- Product 9
INSERT INTO product_keywords (product_id, keywords) VALUES (9, 'sci-fi');
INSERT INTO product_keywords (product_id, keywords) VALUES (9, 'mind-bending');
INSERT INTO product_keywords (product_id, keywords) VALUES (9, 'thriller');

-- Product 10
INSERT INTO product_keywords (product_id, keywords) VALUES (10, 'sci-fi');
INSERT INTO product_keywords (product_id, keywords) VALUES (10, 'action');
INSERT INTO product_keywords (product_id, keywords) VALUES (10, 'cult');

-- (For brevity in this example file, keywords for products 11..200 follow the same pattern)
-- We'll add keywords programmatically-like but here we include a representative set for many products.

INSERT INTO product_keywords (product_id, keywords) VALUES (11, 'space');
INSERT INTO product_keywords (product_id, keywords) VALUES (11, 'adventure');
INSERT INTO product_keywords (product_id, keywords) VALUES (11, 'saga');

INSERT INTO product_keywords (product_id, keywords) VALUES (12, 'space');
INSERT INTO product_keywords (product_id, keywords) VALUES (12, 'family');
INSERT INTO product_keywords (product_id, keywords) VALUES (12, 'sci-fi');

INSERT INTO product_keywords (product_id, keywords) VALUES (13, 'thriller');
INSERT INTO product_keywords (product_id, keywords) VALUES (13, 'satire');
INSERT INTO product_keywords (product_id, keywords) VALUES (13, 'class');

INSERT INTO product_keywords (product_id, keywords) VALUES (14, 'anime');
INSERT INTO product_keywords (product_id, keywords) VALUES (14, 'fantasy');
INSERT INTO product_keywords (product_id, keywords) VALUES (14, 'coming-of-age');

INSERT INTO product_keywords (product_id, keywords) VALUES (15, 'animation');
INSERT INTO product_keywords (product_id, keywords) VALUES (15, 'family');
INSERT INTO product_keywords (product_id, keywords) VALUES (15, 'musical');

INSERT INTO product_keywords (product_id, keywords) VALUES (16, 'animation');
INSERT INTO product_keywords (product_id, keywords) VALUES (16, 'family');
INSERT INTO product_keywords (product_id, keywords) VALUES (16, 'adventure');

INSERT INTO product_keywords (product_id, keywords) VALUES (17, 'superhero');
INSERT INTO product_keywords (product_id, keywords) VALUES (17, 'epic');
INSERT INTO product_keywords (product_id, keywords) VALUES (17, 'ensemble');

INSERT INTO product_keywords (product_id, keywords) VALUES (18, 'superhero');
INSERT INTO product_keywords (product_id, keywords) VALUES (18, 'action');
INSERT INTO product_keywords (product_id, keywords) VALUES (18, 'cultural');

INSERT INTO product_keywords (product_id, keywords) VALUES (19, 'psychological');
INSERT INTO product_keywords (product_id, keywords) VALUES (19, 'drama');
INSERT INTO product_keywords (product_id, keywords) VALUES (19, 'character-study');

INSERT INTO product_keywords (product_id, keywords) VALUES (20, 'thriller');
INSERT INTO product_keywords (product_id, keywords) VALUES (20, 'crime');
INSERT INTO product_keywords (product_id, keywords) VALUES (20, 'suspense');

-- ... continue adding keywords for remaining products (21..200) in a pragmatic, meaningful way
-- For the remainder we add 3 keywords per product to keep the dataset consistent

-- 21..40 keywords
INSERT INTO product_keywords (product_id, keywords) VALUES (21, 'crime');
INSERT INTO product_keywords (product_id, keywords) VALUES (21, 'mystery');
INSERT INTO product_keywords (product_id, keywords) VALUES (21, 'dark');

INSERT INTO product_keywords (product_id, keywords) VALUES (22, 'mob');
INSERT INTO product_keywords (product_id, keywords) VALUES (22, 'biography');
INSERT INTO product_keywords (product_id, keywords) VALUES (22, 'crime');

INSERT INTO product_keywords (product_id, keywords) VALUES (23, 'mystery');
INSERT INTO product_keywords (product_id, keywords) VALUES (23, 'twist');
INSERT INTO product_keywords (product_id, keywords) VALUES (23, 'thriller');

INSERT INTO product_keywords (product_id, keywords) VALUES (24, 'war');
INSERT INTO product_keywords (product_id, keywords) VALUES (24, 'drama');
INSERT INTO product_keywords (product_id, keywords) VALUES (24, 'action');

INSERT INTO product_keywords (product_id, keywords) VALUES (25, 'historical');
INSERT INTO product_keywords (product_id, keywords) VALUES (25, 'epic');
INSERT INTO product_keywords (product_id, keywords) VALUES (25, 'action');

INSERT INTO product_keywords (product_id, keywords) VALUES (26, 'fantasy');
INSERT INTO product_keywords (product_id, keywords) VALUES (26, 'supernatural');
INSERT INTO product_keywords (product_id, keywords) VALUES (26, 'drama');

INSERT INTO product_keywords (product_id, keywords) VALUES (27, 'crime');
INSERT INTO product_keywords (product_id, keywords) VALUES (27, 'thriller');
INSERT INTO product_keywords (product_id, keywords) VALUES (27, 'undercover');

INSERT INTO product_keywords (product_id, keywords) VALUES (28, 'music');
INSERT INTO product_keywords (product_id, keywords) VALUES (28, 'drama');
INSERT INTO product_keywords (product_id, keywords) VALUES (28, 'intense');

INSERT INTO product_keywords (product_id, keywords) VALUES (29, 'action');
INSERT INTO product_keywords (product_id, keywords) VALUES (29, 'post-apocalyptic');
INSERT INTO product_keywords (product_id, keywords) VALUES (29, 'adrenaline');

INSERT INTO product_keywords (product_id, keywords) VALUES (30, 'western');
INSERT INTO product_keywords (product_id, keywords) VALUES (30, 'revenge');
INSERT INTO product_keywords (product_id, keywords) VALUES (30, 'period');

-- 31..40
INSERT INTO product_keywords (product_id, keywords) VALUES (31, 'mystery');
INSERT INTO product_keywords (product_id, keywords) VALUES (31, 'competition');
INSERT INTO product_keywords (product_id, keywords) VALUES (31, 'twist');

INSERT INTO product_keywords (product_id, keywords) VALUES (32, 'puzzle');
INSERT INTO product_keywords (product_id, keywords) VALUES (32, 'thriller');
INSERT INTO product_keywords (product_id, keywords) VALUES (32, 'noir');

INSERT INTO product_keywords (product_id, keywords) VALUES (33, 'technology');
INSERT INTO product_keywords (product_id, keywords) VALUES (33, 'drama');
INSERT INTO product_keywords (product_id, keywords) VALUES (33, 'biography');

INSERT INTO product_keywords (product_id, keywords) VALUES (34, 'history');
INSERT INTO product_keywords (product_id, keywords) VALUES (34, 'biography');
INSERT INTO product_keywords (product_id, keywords) VALUES (34, 'drama');

INSERT INTO product_keywords (product_id, keywords) VALUES (35, 'musical');
INSERT INTO product_keywords (product_id, keywords) VALUES (35, 'romance');
INSERT INTO product_keywords (product_id, keywords) VALUES (35, 'drama');

INSERT INTO product_keywords (product_id, keywords) VALUES (36, 'drama');
INSERT INTO product_keywords (product_id, keywords) VALUES (36, 'independent');
INSERT INTO product_keywords (product_id, keywords) VALUES (36, 'coming-of-age');

INSERT INTO product_keywords (product_id, keywords) VALUES (37, 'romance');
INSERT INTO product_keywords (product_id, keywords) VALUES (37, 'sci-fi');
INSERT INTO product_keywords (product_id, keywords) VALUES (37, 'intimate');

INSERT INTO product_keywords (product_id, keywords) VALUES (38, 'aliens');
INSERT INTO product_keywords (product_id, keywords) VALUES (38, 'drama');
INSERT INTO product_keywords (product_id, keywords) VALUES (38, 'sci-fi');

INSERT INTO product_keywords (product_id, keywords) VALUES (39, 'ai');
INSERT INTO product_keywords (product_id, keywords) VALUES (39, 'sci-fi');
INSERT INTO product_keywords (product_id, keywords) VALUES (39, 'ethical');

INSERT INTO product_keywords (product_id, keywords) VALUES (40, 'sci-fi');
INSERT INTO product_keywords (product_id, keywords) VALUES (40, 'noir');
INSERT INTO product_keywords (product_id, keywords) VALUES (40, 'mystery');

-- 41..60
INSERT INTO product_keywords (product_id, keywords) VALUES (41, 'comedy');
INSERT INTO product_keywords (product_id, keywords) VALUES (41, 'visual');
INSERT INTO product_keywords (product_id, keywords) VALUES (41, 'quirky');

INSERT INTO product_keywords (product_id, keywords) VALUES (42, 'thriller');
INSERT INTO product_keywords (product_id, keywords) VALUES (42, 'crime');
INSERT INTO product_keywords (product_id, keywords) VALUES (42, 'noir');

INSERT INTO product_keywords (product_id, keywords) VALUES (43, 'period');
INSERT INTO product_keywords (product_id, keywords) VALUES (43, 'drama');
INSERT INTO product_keywords (product_id, keywords) VALUES (43, 'character-study');

INSERT INTO product_keywords (product_id, keywords) VALUES (44, 'biography');
INSERT INTO product_keywords (product_id, keywords) VALUES (44, 'drama');
INSERT INTO product_keywords (product_id, keywords) VALUES (44, 'history');

INSERT INTO product_keywords (product_id, keywords) VALUES (45, 'satire');
INSERT INTO product_keywords (product_id, keywords) VALUES (45, 'comedy');
INSERT INTO product_keywords (product_id, keywords) VALUES (45, 'drama');

INSERT INTO product_keywords (product_id, keywords) VALUES (46, 'fantasy');
INSERT INTO product_keywords (product_id, keywords) VALUES (46, 'adventure');
INSERT INTO product_keywords (product_id, keywords) VALUES (46, 'epic');

INSERT INTO product_keywords (product_id, keywords) VALUES (47, 'fantasy');
INSERT INTO product_keywords (product_id, keywords) VALUES (47, 'family');
INSERT INTO product_keywords (product_id, keywords) VALUES (47, 'magic');

INSERT INTO product_keywords (product_id, keywords) VALUES (48, 'fantasy');
INSERT INTO product_keywords (product_id, keywords) VALUES (48, 'finale');
INSERT INTO product_keywords (product_id, keywords) VALUES (48, 'adventure');

INSERT INTO product_keywords (product_id, keywords) VALUES (49, 'crime');
INSERT INTO product_keywords (product_id, keywords) VALUES (49, 'drama');
INSERT INTO product_keywords (product_id, keywords) VALUES (49, 'morality');

INSERT INTO product_keywords (product_id, keywords) VALUES (50, 'fantasy');
INSERT INTO product_keywords (product_id, keywords) VALUES (50, 'politics');
INSERT INTO product_keywords (product_id, keywords) VALUES (50, 'drama');

-- 61..80
INSERT INTO product_keywords (product_id, keywords) VALUES (51, 'crime');
INSERT INTO product_keywords (product_id, keywords) VALUES (51, 'society');
INSERT INTO product_keywords (product_id, keywords) VALUES (51, 'drama');

INSERT INTO product_keywords (product_id, keywords) VALUES (52, '80s');
INSERT INTO product_keywords (product_id, keywords) VALUES (52, 'supernatural');
INSERT INTO product_keywords (product_id, keywords) VALUES (52, 'mystery');

INSERT INTO product_keywords (product_id, keywords) VALUES (53, 'royalty');
INSERT INTO product_keywords (product_id, keywords) VALUES (53, 'historical');
INSERT INTO product_keywords (product_id, keywords) VALUES (53, 'drama');

INSERT INTO product_keywords (product_id, keywords) VALUES (54, 'disaster');
INSERT INTO product_keywords (product_id, keywords) VALUES (54, 'history');
INSERT INTO product_keywords (product_id, keywords) VALUES (54, 'miniseries');

INSERT INTO product_keywords (product_id, keywords) VALUES (55, 'space');
INSERT INTO product_keywords (product_id, keywords) VALUES (55, 'adventure');
INSERT INTO product_keywords (product_id, keywords) VALUES (55, 'sci-fi');

INSERT INTO product_keywords (product_id, keywords) VALUES (56, 'comedy');
INSERT INTO product_keywords (product_id, keywords) VALUES (56, 'mockumentary');
INSERT INTO product_keywords (product_id, keywords) VALUES (56, 'workplace');

INSERT INTO product_keywords (product_id, keywords) VALUES (57, 'comedy');
INSERT INTO product_keywords (product_id, keywords) VALUES (57, 'friendship');
INSERT INTO product_keywords (product_id, keywords) VALUES (57, 'sitcom');

INSERT INTO product_keywords (product_id, keywords) VALUES (58, 'comedy');
INSERT INTO product_keywords (product_id, keywords) VALUES (58, 'observational');
INSERT INTO product_keywords (product_id, keywords) VALUES (58, 'sitcom');

INSERT INTO product_keywords (product_id, keywords) VALUES (59, 'detective');
INSERT INTO product_keywords (product_id, keywords) VALUES (59, 'mystery');
INSERT INTO product_keywords (product_id, keywords) VALUES (59, 'adaptation');

INSERT INTO product_keywords (product_id, keywords) VALUES (60, 'politics');
INSERT INTO product_keywords (product_id, keywords) VALUES (60, 'drama');
INSERT INTO product_keywords (product_id, keywords) VALUES (60, 'intrigue');

-- 81..100
INSERT INTO product_keywords (product_id, keywords) VALUES (61, 'theme-park');
INSERT INTO product_keywords (product_id, keywords) VALUES (61, 'sci-fi');
INSERT INTO product_keywords (product_id, keywords) VALUES (61, 'philosophy');

INSERT INTO product_keywords (product_id, keywords) VALUES (62, 'mystery');
INSERT INTO product_keywords (product_id, keywords) VALUES (62, 'island');
INSERT INTO product_keywords (product_id, keywords) VALUES (62, 'survival');

INSERT INTO product_keywords (product_id, keywords) VALUES (63, 'space-opera');
INSERT INTO product_keywords (product_id, keywords) VALUES (63, 'politics');
INSERT INTO product_keywords (product_id, keywords) VALUES (63, 'thriller');

INSERT INTO product_keywords (product_id, keywords) VALUES (64, 'crime');
INSERT INTO product_keywords (product_id, keywords) VALUES (64, 'anthology');
INSERT INTO product_keywords (product_id, keywords) VALUES (64, 'dark');

INSERT INTO product_keywords (product_id, keywords) VALUES (65, 'detective');
INSERT INTO product_keywords (product_id, keywords) VALUES (65, 'noir');
INSERT INTO product_keywords (product_id, keywords) VALUES (65, 'psychological');

INSERT INTO product_keywords (product_id, keywords) VALUES (66, 'drug');
INSERT INTO product_keywords (product_id, keywords) VALUES (66, 'crime');
INSERT INTO product_keywords (product_id, keywords) VALUES (66, 'history');

INSERT INTO product_keywords (product_id, keywords) VALUES (67, 'heist');
INSERT INTO product_keywords (product_id, keywords) VALUES (67, 'thriller');
INSERT INTO product_keywords (product_id, keywords) VALUES (67, 'ensemble');

INSERT INTO product_keywords (product_id, keywords) VALUES (68, 'time-travel');
INSERT INTO product_keywords (product_id, keywords) VALUES (68, 'mystery');
INSERT INTO product_keywords (product_id, keywords) VALUES (68, 'dark');

INSERT INTO product_keywords (product_id, keywords) VALUES (69, 'crime');
INSERT INTO product_keywords (product_id, keywords) VALUES (69, 'drama');
INSERT INTO product_keywords (product_id, keywords) VALUES (69, 'thriller');

INSERT INTO product_keywords (product_id, keywords) VALUES (70, 'legal');
INSERT INTO product_keywords (product_id, keywords) VALUES (70, 'drama');
INSERT INTO product_keywords (product_id, keywords) VALUES (70, 'origin');

-- 101..120
INSERT INTO product_keywords (product_id, keywords) VALUES (71, 'gang');
INSERT INTO product_keywords (product_id, keywords) VALUES (71, 'period');
INSERT INTO product_keywords (product_id, keywords) VALUES (71, 'drama');

INSERT INTO product_keywords (product_id, keywords) VALUES (72, 'animation');
INSERT INTO product_keywords (product_id, keywords) VALUES (72, 'sci-fi');
INSERT INTO product_keywords (product_id, keywords) VALUES (72, 'comedy');

INSERT INTO product_keywords (product_id, keywords) VALUES (73, 'animation');
INSERT INTO product_keywords (product_id, keywords) VALUES (73, 'drama');
INSERT INTO product_keywords (product_id, keywords) VALUES (73, 'satire');

INSERT INTO product_keywords (product_id, keywords) VALUES (74, 'superhero');
INSERT INTO product_keywords (product_id, keywords) VALUES (74, 'dark');
INSERT INTO product_keywords (product_id, keywords) VALUES (74, 'action');

INSERT INTO product_keywords (product_id, keywords) VALUES (75, 'comic');
INSERT INTO product_keywords (product_id, keywords) VALUES (75, 'fantasy');
INSERT INTO product_keywords (product_id, keywords) VALUES (75, 'time');

INSERT INTO product_keywords (product_id, keywords) VALUES (76, 'archer');
INSERT INTO product_keywords (product_id, keywords) VALUES (76, 'action');
INSERT INTO product_keywords (product_id, keywords) VALUES (76, 'family');

INSERT INTO product_keywords (product_id, keywords) VALUES (77, 'chess');
INSERT INTO product_keywords (product_id, keywords) VALUES (77, 'drama');
INSERT INTO product_keywords (product_id, keywords) VALUES (77, 'biography');

INSERT INTO product_keywords (product_id, keywords) VALUES (78, 'fantasy');
INSERT INTO product_keywords (product_id, keywords) VALUES (78, 'monster');
INSERT INTO product_keywords (product_id, keywords) VALUES (78, 'adventure');

INSERT INTO product_keywords (product_id, keywords) VALUES (79, 'historical');
INSERT INTO product_keywords (product_id, keywords) VALUES (79, 'epic');
INSERT INTO product_keywords (product_id, keywords) VALUES (79, 'war');

INSERT INTO product_keywords (product_id, keywords) VALUES (80, 'superhero');
INSERT INTO product_keywords (product_id, keywords) VALUES (80, 'origin');
INSERT INTO product_keywords (product_id, keywords) VALUES (80, 'action');

-- 121..140
INSERT INTO product_keywords (product_id, keywords) VALUES (81, 'conflict');
INSERT INTO product_keywords (product_id, keywords) VALUES (81, 'heroes');
INSERT INTO product_keywords (product_id, keywords) VALUES (81, 'epic');

INSERT INTO product_keywords (product_id, keywords) VALUES (82, 'aviation');
INSERT INTO product_keywords (product_id, keywords) VALUES (82, 'drama');
INSERT INTO product_keywords (product_id, keywords) VALUES (82, 'action');

INSERT INTO product_keywords (product_id, keywords) VALUES (83, 'art-house');
INSERT INTO product_keywords (product_id, keywords) VALUES (83, 'drama');
INSERT INTO product_keywords (product_id, keywords) VALUES (83, 'societal');

INSERT INTO product_keywords (product_id, keywords) VALUES (84, 'thriller');
INSERT INTO product_keywords (product_id, keywords) VALUES (84, 'martial-arts');
INSERT INTO product_keywords (product_id, keywords) VALUES (84, 'revenge');

INSERT INTO product_keywords (product_id, keywords) VALUES (85, 'zombies');
INSERT INTO product_keywords (product_id, keywords) VALUES (85, 'horror');
INSERT INTO product_keywords (product_id, keywords) VALUES (85, 'survival');

INSERT INTO product_keywords (product_id, keywords) VALUES (86, 'director');
INSERT INTO product_keywords (product_id, keywords) VALUES (86, 'thriller');
INSERT INTO product_keywords (product_id, keywords) VALUES (86, 'spy');

INSERT INTO product_keywords (product_id, keywords) VALUES (87, 'spy');
INSERT INTO product_keywords (product_id, keywords) VALUES (87, 'action');
INSERT INTO product_keywords (product_id, keywords) VALUES (87, 'heist');

INSERT INTO product_keywords (product_id, keywords) VALUES (88, 'classic');
INSERT INTO product_keywords (product_id, keywords) VALUES (88, 'spy');
INSERT INTO product_keywords (product_id, keywords) VALUES (88, 'adventure');

INSERT INTO product_keywords (product_id, keywords) VALUES (89, 'espionage');
INSERT INTO product_keywords (product_id, keywords) VALUES (89, 'action');
INSERT INTO product_keywords (product_id, keywords) VALUES (89, 'thriller');

INSERT INTO product_keywords (product_id, keywords) VALUES (90, 'assassin');
INSERT INTO product_keywords (product_id, keywords) VALUES (90, 'action');
INSERT INTO product_keywords (product_id, keywords) VALUES (90, 'revenge');

-- 141..160
INSERT INTO product_keywords (product_id, keywords) VALUES (91, 'vampire');
INSERT INTO product_keywords (product_id, keywords) VALUES (91, 'action');
INSERT INTO product_keywords (product_id, keywords) VALUES (91, 'dark');

INSERT INTO product_keywords (product_id, keywords) VALUES (92, 'cyborg');
INSERT INTO product_keywords (product_id, keywords) VALUES (92, 'sci-fi');
INSERT INTO product_keywords (product_id, keywords) VALUES (92, 'action');

INSERT INTO product_keywords (product_id, keywords) VALUES (93, 'sci-fi');
INSERT INTO product_keywords (product_id, keywords) VALUES (93, 'action');
INSERT INTO product_keywords (product_id, keywords) VALUES (93, 'family');

INSERT INTO product_keywords (product_id, keywords) VALUES (94, 'spy');
INSERT INTO product_keywords (product_id, keywords) VALUES (94, 'thriller');
INSERT INTO product_keywords (product_id, keywords) VALUES (94, 'action');

INSERT INTO product_keywords (product_id, keywords) VALUES (95, 'spy');
INSERT INTO product_keywords (product_id, keywords) VALUES (95, 'action');
INSERT INTO product_keywords (product_id, keywords) VALUES (95, 'pursuit');

INSERT INTO product_keywords (product_id, keywords) VALUES (96, 'boxing');
INSERT INTO product_keywords (product_id, keywords) VALUES (96, 'underdog');
INSERT INTO product_keywords (product_id, keywords) VALUES (96, 'sports');

INSERT INTO product_keywords (product_id, keywords) VALUES (97, 'boxing');
INSERT INTO product_keywords (product_id, keywords) VALUES (97, 'legacy');
INSERT INTO product_keywords (product_id, keywords) VALUES (97, 'drama');

INSERT INTO product_keywords (product_id, keywords) VALUES (98, 'sci-fi');
INSERT INTO product_keywords (product_id, keywords) VALUES (98, 'action');
INSERT INTO product_keywords (product_id, keywords) VALUES (98, 'sequel');

INSERT INTO product_keywords (product_id, keywords) VALUES (99, 'sci-fi');
INSERT INTO product_keywords (product_id, keywords) VALUES (99, 'finale');
INSERT INTO product_keywords (product_id, keywords) VALUES (99, 'action');

INSERT INTO product_keywords (product_id, keywords) VALUES (100, 'superhero');
INSERT INTO product_keywords (product_id, keywords) VALUES (100, 'ensemble');
INSERT INTO product_keywords (product_id, keywords) VALUES (100, 'action');

-- 161..180
INSERT INTO product_keywords (product_id, keywords) VALUES (101, 'spy');
INSERT INTO product_keywords (product_id, keywords) VALUES (101, 'team');
INSERT INTO product_keywords (product_id, keywords) VALUES (101, 'action');

INSERT INTO product_keywords (product_id, keywords) VALUES (102, 'aviation');
INSERT INTO product_keywords (product_id, keywords) VALUES (102, 'drama');
INSERT INTO product_keywords (product_id, keywords) VALUES (102, 'nostalgia');

INSERT INTO product_keywords (product_id, keywords) VALUES (103, 'art-house');
INSERT INTO product_keywords (product_id, keywords) VALUES (103, 'social');
INSERT INTO product_keywords (product_id, keywords) VALUES (103, 'drama');

INSERT INTO product_keywords (product_id, keywords) VALUES (104, 'revenge');
INSERT INTO product_keywords (product_id, keywords) VALUES (104, 'thriller');
INSERT INTO product_keywords (product_id, keywords) VALUES (104, 'cult');

INSERT INTO product_keywords (product_id, keywords) VALUES (105, 'zombie');
INSERT INTO product_keywords (product_id, keywords) VALUES (105, 'thriller');
INSERT INTO product_keywords (product_id, keywords) VALUES (105, 'action');

INSERT INTO product_keywords (product_id, keywords) VALUES (106, 'thriller');
INSERT INTO product_keywords (product_id, keywords) VALUES (106, 'satire');
INSERT INTO product_keywords (product_id, keywords) VALUES (106, 'class');

INSERT INTO product_keywords (product_id, keywords) VALUES (107, 'anime');
INSERT INTO product_keywords (product_id, keywords) VALUES (107, 'romance');
INSERT INTO product_keywords (product_id, keywords) VALUES (107, 'fantasy');

INSERT INTO product_keywords (product_id, keywords) VALUES (108, 'anime');
INSERT INTO product_keywords (product_id, keywords) VALUES (108, 'sci-fi');
INSERT INTO product_keywords (product_id, keywords) VALUES (108, 'cyberpunk');

INSERT INTO product_keywords (product_id, keywords) VALUES (109, 'epic');
INSERT INTO product_keywords (product_id, keywords) VALUES (109, 'samurai');
INSERT INTO product_keywords (product_id, keywords) VALUES (109, 'classic');

INSERT INTO product_keywords (product_id, keywords) VALUES (110, 'psychological');
INSERT INTO product_keywords (product_id, keywords) VALUES (110, 'perspective');
INSERT INTO product_keywords (product_id, keywords) VALUES (110, 'classic');

-- 181..200
INSERT INTO product_keywords (product_id, keywords) VALUES (111, 'historical');
INSERT INTO product_keywords (product_id, keywords) VALUES (111, 'action');
INSERT INTO product_keywords (product_id, keywords) VALUES (111, 'epic');

INSERT INTO product_keywords (product_id, keywords) VALUES (112, 'mob');
INSERT INTO product_keywords (product_id, keywords) VALUES (112, 'psychology');
INSERT INTO product_keywords (product_id, keywords) VALUES (112, 'drama');

INSERT INTO product_keywords (product_id, keywords) VALUES (113, 'advertising');
INSERT INTO product_keywords (product_id, keywords) VALUES (113, 'period');
INSERT INTO product_keywords (product_id, keywords) VALUES (113, 'drama');

INSERT INTO product_keywords (product_id, keywords) VALUES (114, 'dystopia');
INSERT INTO product_keywords (product_id, keywords) VALUES (114, 'resistance');
INSERT INTO product_keywords (product_id, keywords) VALUES (114, 'political');

INSERT INTO product_keywords (product_id, keywords) VALUES (115, 'speculative');
INSERT INTO product_keywords (product_id, keywords) VALUES (115, 'technology');
INSERT INTO product_keywords (product_id, keywords) VALUES (115, 'twist');

INSERT INTO product_keywords (product_id, keywords) VALUES (116, 'war');
INSERT INTO product_keywords (product_id, keywords) VALUES (116, 'military');
INSERT INTO product_keywords (product_id, keywords) VALUES (116, 'history');

INSERT INTO product_keywords (product_id, keywords) VALUES (117, 'documentary');
INSERT INTO product_keywords (product_id, keywords) VALUES (117, 'nature');
INSERT INTO product_keywords (product_id, keywords) VALUES (117, 'cinematic');

INSERT INTO product_keywords (product_id, keywords) VALUES (118, 'ocean');
INSERT INTO product_keywords (product_id, keywords) VALUES (118, 'documentary');
INSERT INTO product_keywords (product_id, keywords) VALUES (118, 'environment');

INSERT INTO product_keywords (product_id, keywords) VALUES (119, 'wildlife');
INSERT INTO product_keywords (product_id, keywords) VALUES (119, 'nature');
INSERT INTO product_keywords (product_id, keywords) VALUES (119, 'cinematic');

INSERT INTO product_keywords (product_id, keywords) VALUES (120, 'space');
INSERT INTO product_keywords (product_id, keywords) VALUES (120, 'politics');
INSERT INTO product_keywords (product_id, keywords) VALUES (120, 'thriller');

-- Remaining products 121..200 keywords
INSERT INTO product_keywords (product_id, keywords) VALUES (121, 'mafia');
INSERT INTO product_keywords (product_id, keywords) VALUES (121, 'drama');
INSERT INTO product_keywords (product_id, keywords) VALUES (121, 'legacy');

INSERT INTO product_keywords (product_id, keywords) VALUES (122, 'heist');
INSERT INTO product_keywords (product_id, keywords) VALUES (122, 'crime');
INSERT INTO product_keywords (product_id, keywords) VALUES (122, 'drama');

INSERT INTO product_keywords (product_id, keywords) VALUES (123, 'mob');
INSERT INTO product_keywords (product_id, keywords) VALUES (123, 'epic');
INSERT INTO product_keywords (product_id, keywords) VALUES (123, 'reflection');

INSERT INTO product_keywords (product_id, keywords) VALUES (124, 'period');
INSERT INTO product_keywords (product_id, keywords) VALUES (124, 'comedy-drama');
INSERT INTO product_keywords (product_id, keywords) VALUES (124, 'nostalgia');

INSERT INTO product_keywords (product_id, keywords) VALUES (125, 'classic');
INSERT INTO product_keywords (product_id, keywords) VALUES (125, 'wartime');
INSERT INTO product_keywords (product_id, keywords) VALUES (125, 'drama');

INSERT INTO product_keywords (product_id, keywords) VALUES (126, 'nostalgia');
INSERT INTO product_keywords (product_id, keywords) VALUES (126, 'cinema');
INSERT INTO product_keywords (product_id, keywords) VALUES (126, 'coming-of-age');

INSERT INTO product_keywords (product_id, keywords) VALUES (127, 'drama');
INSERT INTO product_keywords (product_id, keywords) VALUES (127, 'psychology');
INSERT INTO product_keywords (product_id, keywords) VALUES (127, 'friendship');

INSERT INTO product_keywords (product_id, keywords) VALUES (128, 'romance');
INSERT INTO product_keywords (product_id, keywords) VALUES (128, 'memory');
INSERT INTO product_keywords (product_id, keywords) VALUES (128, 'surreal');

INSERT INTO product_keywords (product_id, keywords) VALUES (129, 'romance');
INSERT INTO product_keywords (product_id, keywords) VALUES (129, 'drama');
INSERT INTO product_keywords (product_id, keywords) VALUES (129, 'memory');

INSERT INTO product_keywords (product_id, keywords) VALUES (130, 'adventure');
INSERT INTO product_keywords (product_id, keywords) VALUES (130, 'family');
INSERT INTO product_keywords (product_id, keywords) VALUES (130, 'fantasy');

INSERT INTO product_keywords (product_id, keywords) VALUES (131, 'french');
INSERT INTO product_keywords (product_id, keywords) VALUES (131, 'romance');
INSERT INTO product_keywords (product_id, keywords) VALUES (131, 'whimsy');

INSERT INTO product_keywords (product_id, keywords) VALUES (132, 'fantasy');
INSERT INTO product_keywords (product_id, keywords) VALUES (132, 'dark');
INSERT INTO product_keywords (product_id, keywords) VALUES (132, 'visual');

INSERT INTO product_keywords (product_id, keywords) VALUES (133, 'horror');
INSERT INTO product_keywords (product_id, keywords) VALUES (133, 'psychological');
INSERT INTO product_keywords (product_id, keywords) VALUES (133, 'classic');

INSERT INTO product_keywords (product_id, keywords) VALUES (134, 'controversial');
INSERT INTO product_keywords (product_id, keywords) VALUES (134, 'philosophy');
INSERT INTO product_keywords (product_id, keywords) VALUES (134, 'satire');

INSERT INTO product_keywords (product_id, keywords) VALUES (135, 'comedy');
INSERT INTO product_keywords (product_id, keywords) VALUES (135, 'cult');
INSERT INTO product_keywords (product_id, keywords) VALUES (135, 'quirky');

INSERT INTO product_keywords (product_id, keywords) VALUES (136, 'british');
INSERT INTO product_keywords (product_id, keywords) VALUES (136, 'comedy');
INSERT INTO product_keywords (product_id, keywords) VALUES (136, 'sketch');

INSERT INTO product_keywords (product_id, keywords) VALUES (137, 'satire');
INSERT INTO product_keywords (product_id, keywords) VALUES (137, 'classic');
INSERT INTO product_keywords (product_id, keywords) VALUES (137, 'political');

INSERT INTO product_keywords (product_id, keywords) VALUES (138, 'horror');
INSERT INTO product_keywords (product_id, keywords) VALUES (138, 'expressionism');
INSERT INTO product_keywords (product_id, keywords) VALUES (138, 'silent');

INSERT INTO product_keywords (product_id, keywords) VALUES (139, 'sci-fi');
INSERT INTO product_keywords (product_id, keywords) VALUES (139, 'classic');
INSERT INTO product_keywords (product_id, keywords) VALUES (139, 'industrial');

INSERT INTO product_keywords (product_id, keywords) VALUES (140, 'sci-fi');
INSERT INTO product_keywords (product_id, keywords) VALUES (140, 'noir');
INSERT INTO product_keywords (product_id, keywords) VALUES (140, 'philosophy');

INSERT INTO product_keywords (product_id, keywords) VALUES (141, 'surreal');
INSERT INTO product_keywords (product_id, keywords) VALUES (141, 'mystery');
INSERT INTO product_keywords (product_id, keywords) VALUES (141, 'psychological');

INSERT INTO product_keywords (product_id, keywords) VALUES (142, 'cult');
INSERT INTO product_keywords (product_id, keywords) VALUES (142, 'time');
INSERT INTO product_keywords (product_id, keywords) VALUES (142, 'teen');

INSERT INTO product_keywords (product_id, keywords) VALUES (143, 'dark');
INSERT INTO product_keywords (product_id, keywords) VALUES (143, 'addiction');
INSERT INTO product_keywords (product_id, keywords) VALUES (143, 'intense');

INSERT INTO product_keywords (product_id, keywords) VALUES (144, 'supernatural');
INSERT INTO product_keywords (product_id, keywords) VALUES (144, 'mystery');
INSERT INTO product_keywords (product_id, keywords) VALUES (144, 'thriller');

INSERT INTO product_keywords (product_id, keywords) VALUES (145, 'collector');
INSERT INTO product_keywords (product_id, keywords) VALUES (145, 'bonus');
INSERT INTO product_keywords (product_id, keywords) VALUES (145, 'drama');

INSERT INTO product_keywords (product_id, keywords) VALUES (146, 'collector');
INSERT INTO product_keywords (product_id, keywords) VALUES (146, 'magic');
INSERT INTO product_keywords (product_id, keywords) VALUES (146, 'competition');

INSERT INTO product_keywords (product_id, keywords) VALUES (147, 'restored');
INSERT INTO product_keywords (product_id, keywords) VALUES (147, 'nostalgia');
INSERT INTO product_keywords (product_id, keywords) VALUES (147, 'cinema');

INSERT INTO product_keywords (product_id, keywords) VALUES (148, 'thriller');
INSERT INTO product_keywords (product_id, keywords) VALUES (148, 'korean');
INSERT INTO product_keywords (product_id, keywords) VALUES (148, 'psychological');

INSERT INTO product_keywords (product_id, keywords) VALUES (149, 'restored');
INSERT INTO product_keywords (product_id, keywords) VALUES (149, 'revenge');
INSERT INTO product_keywords (product_id, keywords) VALUES (149, 'action');

INSERT INTO product_keywords (product_id, keywords) VALUES (150, 'experimental');
INSERT INTO product_keywords (product_id, keywords) VALUES (150, 'drama');
INSERT INTO product_keywords (product_id, keywords) VALUES (150, 'absurd');

INSERT INTO product_keywords (product_id, keywords) VALUES (151, 'studio-ghibli');
INSERT INTO product_keywords (product_id, keywords) VALUES (151, 'family');
INSERT INTO product_keywords (product_id, keywords) VALUES (151, 'magic');

INSERT INTO product_keywords (product_id, keywords) VALUES (152, 'anime');
INSERT INTO product_keywords (product_id, keywords) VALUES (152, 'epic');
INSERT INTO product_keywords (product_id, keywords) VALUES (152, 'fantasy');

INSERT INTO product_keywords (product_id, keywords) VALUES (153, 'war');
INSERT INTO product_keywords (product_id, keywords) VALUES (153, 'tragic');
INSERT INTO product_keywords (product_id, keywords) VALUES (153, 'animation');

INSERT INTO product_keywords (product_id, keywords) VALUES (154, 'special');
INSERT INTO product_keywords (product_id, keywords) VALUES (154, 'anime');
INSERT INTO product_keywords (product_id, keywords) VALUES (154, 'romance');

INSERT INTO product_keywords (product_id, keywords) VALUES (155, 'alternate');
INSERT INTO product_keywords (product_id, keywords) VALUES (155, 'revenge');
INSERT INTO product_keywords (product_id, keywords) VALUES (155, 'intense');

INSERT INTO product_keywords (product_id, keywords) VALUES (156, 'collector');
INSERT INTO product_keywords (product_id, keywords) VALUES (156, 'design');
INSERT INTO product_keywords (product_id, keywords) VALUES (156, 'comedy');

INSERT INTO product_keywords (product_id, keywords) VALUES (157, 'extended');
INSERT INTO product_keywords (product_id, keywords) VALUES (157, 'action');
INSERT INTO product_keywords (product_id, keywords) VALUES (157, 'post-apocalyptic');

INSERT INTO product_keywords (product_id, keywords) VALUES (158, 'sci-fi');
INSERT INTO product_keywords (product_id, keywords) VALUES (158, 'philosophy');
INSERT INTO product_keywords (product_id, keywords) VALUES (158, 'indie');

INSERT INTO product_keywords (product_id, keywords) VALUES (159, 'family');
INSERT INTO product_keywords (product_id, keywords) VALUES (159, 'drama');
INSERT INTO product_keywords (product_id, keywords) VALUES (159, 'culture');

INSERT INTO product_keywords (product_id, keywords) VALUES (160, 'immigrant');
INSERT INTO product_keywords (product_id, keywords) VALUES (160, 'family');
INSERT INTO product_keywords (product_id, keywords) VALUES (160, 'drama');

-- 181..200 leftovers
INSERT INTO product_keywords (product_id, keywords) VALUES (161, 'quirky');
INSERT INTO product_keywords (product_id, keywords) VALUES (161, 'romance');
INSERT INTO product_keywords (product_id, keywords) VALUES (161, 'coming-of-age');

INSERT INTO product_keywords (product_id, keywords) VALUES (162, 'family');
INSERT INTO product_keywords (product_id, keywords) VALUES (162, 'drama');
INSERT INTO product_keywords (product_id, keywords) VALUES (162, 'comedy');

INSERT INTO product_keywords (product_id, keywords) VALUES (163, 'childhood');
INSERT INTO product_keywords (product_id, keywords) VALUES (163, 'social');
INSERT INTO product_keywords (product_id, keywords) VALUES (163, 'indie');

INSERT INTO product_keywords (product_id, keywords) VALUES (164, 'animation');
INSERT INTO product_keywords (product_id, keywords) VALUES (164, 'emotion');
INSERT INTO product_keywords (product_id, keywords) VALUES (164, 'family');

INSERT INTO product_keywords (product_id, keywords) VALUES (165, 'music');
INSERT INTO product_keywords (product_id, keywords) VALUES (165, 'culture');
INSERT INTO product_keywords (product_id, keywords) VALUES (165, 'family');

INSERT INTO product_keywords (product_id, keywords) VALUES (166, 'animation');
INSERT INTO product_keywords (product_id, keywords) VALUES (166, 'police');
INSERT INTO product_keywords (product_id, keywords) VALUES (166, 'comedy');

INSERT INTO product_keywords (product_id, keywords) VALUES (167, 'heist');
INSERT INTO product_keywords (product_id, keywords) VALUES (167, 'thriller');
INSERT INTO product_keywords (product_id, keywords) VALUES (167, 'mystery');

INSERT INTO product_keywords (product_id, keywords) VALUES (168, 'collector');
INSERT INTO product_keywords (product_id, keywords) VALUES (168, 'analysis');
INSERT INTO product_keywords (product_id, keywords) VALUES (168, 'crime');

INSERT INTO product_keywords (product_id, keywords) VALUES (169, 'collector');
INSERT INTO product_keywords (product_id, keywords) VALUES (169, 'crime');
INSERT INTO product_keywords (product_id, keywords) VALUES (169, 'heist');

INSERT INTO product_keywords (product_id, keywords) VALUES (170, 'special');
INSERT INTO product_keywords (product_id, keywords) VALUES (170, 'technology');
INSERT INTO product_keywords (product_id, keywords) VALUES (170, 'drama');

INSERT INTO product_keywords (product_id, keywords) VALUES (171, 'courtroom');
INSERT INTO product_keywords (product_id, keywords) VALUES (171, 'drama');
INSERT INTO product_keywords (product_id, keywords) VALUES (171, 'classic');

INSERT INTO product_keywords (product_id, keywords) VALUES (172, 'drama');
INSERT INTO product_keywords (product_id, keywords) VALUES (172, 'ethics');
INSERT INTO product_keywords (product_id, keywords) VALUES (172, 'classic');

INSERT INTO product_keywords (product_id, keywords) VALUES (173, 'war');
INSERT INTO product_keywords (product_id, keywords) VALUES (173, 'honor');
INSERT INTO product_keywords (product_id, keywords) VALUES (173, 'epic');

INSERT INTO product_keywords (product_id, keywords) VALUES (174, 'comedy');
INSERT INTO product_keywords (product_id, keywords) VALUES (174, 'classic');
INSERT INTO product_keywords (product_id, keywords) VALUES (174, 'romance');

INSERT INTO product_keywords (product_id, keywords) VALUES (175, 'history');
INSERT INTO product_keywords (product_id, keywords) VALUES (175, 'drama');
INSERT INTO product_keywords (product_id, keywords) VALUES (175, 'biography');

INSERT INTO product_keywords (product_id, keywords) VALUES (176, 'political');
INSERT INTO product_keywords (product_id, keywords) VALUES (176, 'biography');
INSERT INTO product_keywords (product_id, keywords) VALUES (176, 'history');

INSERT INTO product_keywords (product_id, keywords) VALUES (177, 'historical');
INSERT INTO product_keywords (product_id, keywords) VALUES (177, 'martial-arts');
INSERT INTO product_keywords (product_id, keywords) VALUES (177, 'drama');

INSERT INTO product_keywords (product_id, keywords) VALUES (178, 'adventure');
INSERT INTO product_keywords (product_id, keywords) VALUES (178, 'romance');
INSERT INTO product_keywords (product_id, keywords) VALUES (178, 'period');

INSERT INTO product_keywords (product_id, keywords) VALUES (179, 'extended');
INSERT INTO product_keywords (product_id, keywords) VALUES (179, 'gladiator');
INSERT INTO product_keywords (product_id, keywords) VALUES (179, 'epic');

INSERT INTO product_keywords (product_id, keywords) VALUES (180, 'history');
INSERT INTO product_keywords (product_id, keywords) VALUES (180, 'politics');
INSERT INTO product_keywords (product_id, keywords) VALUES (180, 'drama');

INSERT INTO product_keywords (product_id, keywords) VALUES (181, 'period');
INSERT INTO product_keywords (product_id, keywords) VALUES (181, 'family');
INSERT INTO product_keywords (product_id, keywords) VALUES (181, 'drama');

INSERT INTO product_keywords (product_id, keywords) VALUES (182, 'kdrama');
INSERT INTO product_keywords (product_id, keywords) VALUES (182, 'romance');
INSERT INTO product_keywords (product_id, keywords) VALUES (182, 'cross-border');

INSERT INTO product_keywords (product_id, keywords) VALUES (183, 'kdrama');
INSERT INTO product_keywords (product_id, keywords) VALUES (183, 'entrepreneur');
INSERT INTO product_keywords (product_id, keywords) VALUES (183, 'drama');

INSERT INTO product_keywords (product_id, keywords) VALUES (184, 'kdrama');
INSERT INTO product_keywords (product_id, keywords) VALUES (184, 'historical');
INSERT INTO product_keywords (product_id, keywords) VALUES (184, 'thriller');

INSERT INTO product_keywords (product_id, keywords) VALUES (185, 'japanese');
INSERT INTO product_keywords (product_id, keywords) VALUES (185, 'drama');
INSERT INTO product_keywords (product_id, keywords) VALUES (185, 'classic');

INSERT INTO product_keywords (product_id, keywords) VALUES (186, 'silent');
INSERT INTO product_keywords (product_id, keywords) VALUES (186, 'propaganda');
INSERT INTO product_keywords (product_id, keywords) VALUES (186, 'history');

INSERT INTO product_keywords (product_id, keywords) VALUES (187, 'silent');
INSERT INTO product_keywords (product_id, keywords) VALUES (187, 'comedy');
INSERT INTO product_keywords (product_id, keywords) VALUES (187, 'adventure');

INSERT INTO product_keywords (product_id, keywords) VALUES (188, 'manhunt');
INSERT INTO product_keywords (product_id, keywords) VALUES (188, 'thriller');
INSERT INTO product_keywords (product_id, keywords) VALUES (188, 'classic');

INSERT INTO product_keywords (product_id, keywords) VALUES (189, 'noir');
INSERT INTO product_keywords (product_id, keywords) VALUES (189, 'post-war');
INSERT INTO product_keywords (product_id, keywords) VALUES (189, 'mystery');

INSERT INTO product_keywords (product_id, keywords) VALUES (190, 'romantic');
INSERT INTO product_keywords (product_id, keywords) VALUES (190, 'comedy');
INSERT INTO product_keywords (product_id, keywords) VALUES (190, 'drama');

INSERT INTO product_keywords (product_id, keywords) VALUES (191, 'iranian');
INSERT INTO product_keywords (product_id, keywords) VALUES (191, 'family');
INSERT INTO product_keywords (product_id, keywords) VALUES (191, 'drama');

INSERT INTO product_keywords (product_id, keywords) VALUES (192, 'romance');
INSERT INTO product_keywords (product_id, keywords) VALUES (192, 'art-house');
INSERT INTO product_keywords (product_id, keywords) VALUES (192, 'period');

INSERT INTO product_keywords (product_id, keywords) VALUES (193, 'korean');
INSERT INTO product_keywords (product_id, keywords) VALUES (193, 'thriller');
INSERT INTO product_keywords (product_id, keywords) VALUES (193, 'romance');

INSERT INTO product_keywords (product_id, keywords) VALUES (194, 'action');
INSERT INTO product_keywords (product_id, keywords) VALUES (194, 'indonesian');
INSERT INTO product_keywords (product_id, keywords) VALUES (194, 'martial-arts');

INSERT INTO product_keywords (product_id, keywords) VALUES (195, 'action');
INSERT INTO product_keywords (product_id, keywords) VALUES (195, 'crime');
INSERT INTO product_keywords (product_id, keywords) VALUES (195, 'sequel');

INSERT INTO product_keywords (product_id, keywords) VALUES (196, 'biopic');
INSERT INTO product_keywords (product_id, keywords) VALUES (196, 'martial-arts');
INSERT INTO product_keywords (product_id, keywords) VALUES (196, 'history');

INSERT INTO product_keywords (product_id, keywords) VALUES (197, 'martial-arts');
INSERT INTO product_keywords (product_id, keywords) VALUES (197, 'romance');
INSERT INTO product_keywords (product_id, keywords) VALUES (197, 'epic');

INSERT INTO product_keywords (product_id, keywords) VALUES (198, 'wuxia');
INSERT INTO product_keywords (product_id, keywords) VALUES (198, 'epic');
INSERT INTO product_keywords (product_id, keywords) VALUES (198, 'visual');

INSERT INTO product_keywords (product_id, keywords) VALUES (199, 'period');
INSERT INTO product_keywords (product_id, keywords) VALUES (199, 'chinese');
INSERT INTO product_keywords (product_id, keywords) VALUES (199, 'drama');

INSERT INTO product_keywords (product_id, keywords) VALUES (200, 'kaiju');
INSERT INTO product_keywords (product_id, keywords) VALUES (200, 'disaster');
INSERT INTO product_keywords (product_id, keywords) VALUES (200, 'japanese');
