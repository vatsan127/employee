

CREATE TABLE IF NOT EXISTS EMPLOYEE
(
    ID     SERIAL PRIMARY KEY,
    NAME   VARCHAR(100) NOT NULL,
    GENDER CHAR(1) CHECK (GENDER IN ('M', 'F')),
    AGE    INT CHECK (AGE > 0)
);

CREATE TABLE IF NOT EXISTS DEPARTMENT
(
    ID              SERIAL PRIMARY KEY,
    DEPARTMENT_NAME VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS DEPARTMENT_MANAGER
(
    DEPARTMENT_ID  INT REFERENCES DEPARTMENT (ID) ON DELETE CASCADE,
    MANAGER_EMP_ID INT REFERENCES EMPLOYEE (ID) ON DELETE SET NULL,
    START_DATE     DATE DEFAULT CURRENT_DATE,
    PRIMARY KEY (DEPARTMENT_ID, MANAGER_EMP_ID)
);

INSERT INTO EMPLOYEE (ID, NAME, GENDER, AGE)
VALUES (1, 'Alice Johnson', 'F', 30),
       (2, 'Bob Smith', 'M', 40),
       (3, 'Charlie Davis', 'M', 28),
       (4, 'David Brown', 'M', 35),
       (5, 'Emma Wilson', 'F', 27),
       (6, 'Frank Thomas', 'M', 50),
       (7, 'Grace Hall', 'F', 31),
       (8, 'Henry Clark', 'M', 29),
       (9, 'Ivy Adams', 'F', 45),
       (10, 'Jack White', 'M', 38),
       (11, 'Karen Lewis', 'F', 33),
       (12, 'Leo Scott', 'M', 41),
       (13, 'Mia Allen', 'F', 26),
       (14, 'Noah Young', 'M', 36),
       (15, 'Olivia King', 'F', 32),
       (16, 'Paul Baker', 'M', 44),
       (17, 'Quinn Mitchell', 'F', 30),
       (18, 'Ryan Carter', 'M', 39),
       (19, 'Sophia Nelson', 'F', 28),
       (20, 'Thomas Moore', 'M', 37),
       (21, 'Uma Parker', 'F', 29),
       (22, 'Victor Evans', 'M', 46),
       (23, 'Wendy Green', 'F', 34),
       (24, 'Xavier Adams', 'M', 42),
       (25, 'Yvonne Brooks', 'F', 31),
       (26, 'Zane Foster', 'M', 47),
       (27, 'Abigail Reed', 'F', 25),
       (28, 'Benjamin Ross', 'M', 43),
       (29, 'Charlotte Cox', 'F', 30),
       (30, 'Daniel Morgan', 'M', 35),
       (31, 'Eleanor Bell', 'F', 27),
       (32, 'Frederick Sanders', 'M', 50),
       (33, 'Gabriella Price', 'F', 31),
       (34, 'Harold Peterson', 'M', 29),
       (35, 'Isabella Stewart', 'F', 45),
       (36, 'Jacob Morris', 'M', 38),
       (37, 'Katherine Jenkins', 'F', 33),
       (38, 'Liam Simmons', 'M', 41),
       (39, 'Madeline Cook', 'F', 26),
       (40, 'Nathaniel Murphy', 'M', 36),
       (41, 'Olga Bailey', 'F', 32),
       (42, 'Patrick Cooper', 'M', 44),
       (43, 'Quincy Richardson', 'F', 30),
       (44, 'Rebecca Howard', 'F', 39),
       (45, 'Samuel Hughes', 'M', 28),
       (46, 'Tina Ramirez', 'F', 37),
       (47, 'Ulysses Coleman', 'M', 29),
       (48, 'Vera Foster', 'F', 46),
       (49, 'Walter Henderson', 'M', 34),
       (50, 'Xena Gonzales', 'F', 42),
       (51, 'Yusuf Bryant', 'M', 31),
       (52, 'Zelda Watts', 'F', 47),
       (53, 'Adam Martinez', 'M', 25),
       (54, 'Bella Campbell', 'F', 43),
       (55, 'Cameron Brooks', 'M', 30),
       (56, 'Diana Fisher', 'F', 35),
       (57, 'Ethan Webb', 'M', 27),
       (58, 'Fiona Hayes', 'F', 50),
       (59, 'George Russell', 'M', 31),
       (60, 'Hannah Griffin', 'F', 29),
       (61, 'Ian Ward', 'M', 45),
       (62, 'Jessica Powell', 'F', 38),
       (63, 'Kevin Torres', 'M', 33),
       (64, 'Laura Flores', 'F', 41),
       (65, 'Michael Rivera', 'M', 26),
       (66, 'Nina Carter', 'F', 36),
       (67, 'Oscar Perez', 'M', 32),
       (68, 'Paula Morris', 'F', 44),
       (69, 'Quentin Bennett', 'F', 30),
       (70, 'Riley Scott', 'M', 39),
       (71, 'Samantha Nelson', 'F', 28),
       (72, 'Tyler Cook', 'M', 37),
       (73, 'Ursula Griffin', 'F', 29),
       (74, 'Vincent Bailey', 'M', 46),
       (75, 'Wanda Hughes', 'F', 34),
       (76, 'Xander Cooper', 'M', 42),
       (77, 'Yasmine Ramirez', 'F', 31),
       (78, 'Zachary Jenkins', 'M', 47),
       (79, 'Amber Coleman', 'F', 25),
       (80, 'Blake Stewart', 'M', 43),
       (81, 'Candace Hughes', 'F', 30),
       (82, 'Derek Ramirez', 'M', 35),
       (83, 'Eve Sanders', 'F', 27),
       (84, 'Felix Ross', 'M', 50),
       (85, 'Giselle Martinez', 'F', 31),
       (86, 'Hector Russell', 'M', 29),
       (87, 'Irene Webb', 'F', 45),
       (88, 'Jason Fisher', 'M', 38),
       (89, 'Kimberly Hayes', 'F', 33),
       (90, 'Lukas Torres', 'M', 41),
       (91, 'Melanie Flores', 'F', 26),
       (92, 'Noel Rivera', 'M', 36),
       (93, 'Olga Powell', 'F', 32),
       (94, 'Peter Ward', 'M', 44),
       (95, 'Quinn Morris', 'F', 30),
       (96, 'Rafael Carter', 'M', 39)
    ON CONFLICT DO NOTHING;

INSERT INTO DEPARTMENT (DEPARTMENT_NAME)
VALUES ('Engineering'),
       ('Human Resources'),
       ('Marketing')
    ON CONFLICT DO NOTHING;

INSERT INTO DEPARTMENT_MANAGER (DEPARTMENT_ID, MANAGER_EMP_ID, START_DATE)
VALUES (1, 2, '2024-01-15'),
       (2, 1, '2024-02-10'),
       (3, 3, '2024-03-05')
    ON CONFLICT DO NOTHING;
