

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

INSERT INTO EMPLOYEE (NAME, GENDER, AGE)
VALUES ('Alice Johnson', 'F', 30),
       ('Bob Smith', 'M', 40),
       ('Charlie Davis', 'M', 28),
       ('David Brown', 'M', 35),
       ('Emma Wilson', 'F', 27),
       ('Frank Thomas', 'M', 50),
       ('Grace Hall', 'F', 31),
       ('Henry Clark', 'M', 29),
       ('Ivy Adams', 'F', 45),
       ('Jack White', 'M', 38),
       ('Karen Lewis', 'F', 33),
       ('Leo Scott', 'M', 41),
       ('Mia Allen', 'F', 26),
       ('Noah Young', 'M', 36),
       ('Olivia King', 'F', 32),
       ('Paul Baker', 'M', 44),
       ('Quinn Mitchell', 'F', 30),
       ('Ryan Carter', 'M', 39),
       ('Sophia Nelson', 'F', 28),
       ('Thomas Moore', 'M', 37),
       ('Uma Parker', 'F', 29),
       ('Victor Evans', 'M', 46),
       ('Wendy Green', 'F', 34),
       ('Xavier Adams', 'M', 42),
       ('Yvonne Brooks', 'F', 31),
       ('Zane Foster', 'M', 47),
       ('Abigail Reed', 'F', 25),
       ('Benjamin Ross', 'M', 43),
       ('Charlotte Cox', 'F', 30),
       ('Daniel Morgan', 'M', 35),
       ('Eleanor Bell', 'F', 27),
       ('Frederick Sanders', 'M', 50),
       ('Gabriella Price', 'F', 31),
       ('Harold Peterson', 'M', 29),
       ('Isabella Stewart', 'F', 45),
       ('Jacob Morris', 'M', 38),
       ('Katherine Jenkins', 'F', 33),
       ('Liam Simmons', 'M', 41),
       ('Madeline Cook', 'F', 26),
       ('Nathaniel Murphy', 'M', 36),
       ('Olga Bailey', 'F', 32),
       ('Patrick Cooper', 'M', 44),
       ('Quincy Richardson', 'F', 30),
       ('Rebecca Howard', 'F', 39),
       ('Samuel Hughes', 'M', 28),
       ('Tina Ramirez', 'F', 37),
       ('Ulysses Coleman', 'M', 29),
       ('Vera Foster', 'F', 46),
       ('Walter Henderson', 'M', 34),
       ('Xena Gonzales', 'F', 42),
       ('Yusuf Bryant', 'M', 31),
       ('Zelda Watts', 'F', 47),
       ('Adam Martinez', 'M', 25),
       ('Bella Campbell', 'F', 43),
       ('Cameron Brooks', 'M', 30),
       ('Diana Fisher', 'F', 35),
       ('Ethan Webb', 'M', 27),
       ('Fiona Hayes', 'F', 50),
       ('George Russell', 'M', 31),
       ('Hannah Griffin', 'F', 29),
       ('Ian Ward', 'M', 45),
       ('Jessica Powell', 'F', 38),
       ('Kevin Torres', 'M', 33),
       ('Laura Flores', 'F', 41),
       ('Michael Rivera', 'M', 26),
       ('Nina Carter', 'F', 36),
       ('Oscar Perez', 'M', 32),
       ('Paula Morris', 'F', 44),
       ('Quentin Bennett', 'F', 30),
       ('Riley Scott', 'M', 39),
       ('Samantha Nelson', 'F', 28),
       ('Tyler Cook', 'M', 37),
       ('Ursula Griffin', 'F', 29),
       ('Vincent Bailey', 'M', 46),
       ('Wanda Hughes', 'F', 34),
       ('Xander Cooper', 'M', 42),
       ('Yasmine Ramirez', 'F', 31),
       ('Zachary Jenkins', 'M', 47),
       ('Amber Coleman', 'F', 25),
       ('Blake Stewart', 'M', 43),
       ('Candace Hughes', 'F', 30),
       ('Derek Ramirez', 'M', 35),
       ('Eve Sanders', 'F', 27),
       ('Felix Ross', 'M', 50),
       ('Giselle Martinez', 'F', 31),
       ('Hector Russell', 'M', 29),
       ('Irene Webb', 'F', 45),
       ('Jason Fisher', 'M', 38),
       ('Kimberly Hayes', 'F', 33),
       ('Lukas Torres', 'M', 41),
       ('Melanie Flores', 'F', 26),
       ('Noel Rivera', 'M', 36),
       ('Olga Powell', 'F', 32),
       ('Peter Ward', 'M', 44),
       ('Quinn Morris', 'F', 30),
       ('Rafael Carter', 'M', 39)
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
