CREATE TABLE IF NOT EXISTS DEPARTMENT
(
    ID              SERIAL PRIMARY KEY,
    DEPARTMENT_NAME VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS CONTACT_DETAILS
(
    ID    SERIAL PRIMARY KEY,
    PHONE VARCHAR(15),
    EMAIL VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS EMPLOYEE
(
    ID            SERIAL PRIMARY KEY,
    NAME          VARCHAR(100) NOT NULL,
    GENDER        CHAR(1) NOT NULL CHECK (GENDER IN ('M', 'F')),
    AGE           INT NOT NULL CHECK (AGE > 0),
    DEPARTMENT_ID INT REFERENCES DEPARTMENT(ID) ON DELETE SET NULL,  -- Many-to-One
    CONTACT_ID    INT UNIQUE REFERENCES CONTACT_DETAILS(ID) ON DELETE CASCADE  -- One-to-One
);


INSERT INTO DEPARTMENT (DEPARTMENT_NAME)
VALUES ('Engineering'),
       ('Human Resources'),
       ('Marketing') ON CONFLICT DO NOTHING;

INSERT INTO contact_details (id, phone, email)
VALUES (1, '9000000001', 'teresa.henry@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (2, '9000000002', 'jacqueline.rodriguez@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (3, '9000000003', 'christopher.cannon@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (4, '9000000004', 'tyler.knight@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (5, '9000000005', 'stephen.gonzalez@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (6, '9000000006', 'james.berry@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (7, '9000000007', 'danielle.payne@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (8, '9000000008', 'travis.cook@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (9, '9000000009', 'jacqueline.dennis@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (10, '9000000010', 'amy.knight@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (11, '9000000011', 'david.goodwin@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (12, '9000000012', 'jessica.dennis@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (13, '9000000013', 'sarah.cain@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (14, '9000000014', 'dawn.williams@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (15, '9000000015', 'tamara.drake@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (16, '9000000016', 'kelly.washington@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (17, '9000000017', 'lauren.gallagher@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (18, '9000000018', 'justin.lucas@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (19, '9000000019', 'angela.soto@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (20, '9000000020', 'christopher.lee@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (21, '9000000021', 'jason.davis@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (22, '9000000022', 'kristen.bryant@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (23, '9000000023', 'jacob.bowen@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (24, '9000000024', 'joshua.parks@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (25, '9000000025', 'shawn.bell@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (26, '9000000026', 'patrick.burke@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (27, '9000000027', 'rachel.jones@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (28, '9000000028', 'shawn.chandler@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (29, '9000000029', 'amanda.robinson@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (30, '9000000030', 'kevin.reyes@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (31, '9000000031', 'michelle.moss@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (32, '9000000032', 'michelle.hess@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (33, '9000000033', 'caitlin.parker@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (34, '9000000034', 'mark.brown@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (35, '9000000035', 'erin.armstrong@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (36, '9000000036', 'kayla.baker@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (37, '9000000037', 'kimberly.garcia@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (38, '9000000038', 'todd.johnston@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (39, '9000000039', 'william.nichols@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (40, '9000000040', 'victoria.meyer@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (41, '9000000041', 'ryan.morgan@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (42, '9000000042', 'stephanie.lawson@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (43, '9000000043', 'samantha.parker@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (44, '9000000044', 'micheal.tran@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (45, '9000000045', 'kevin.henderson@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (46, '9000000046', 'benjamin.parks@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (47, '9000000047', 'george.adams@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (48, '9000000048', 'george.sanchez@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (49, '9000000049', 'caleb.anderson@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (50, '9000000050', 'alexis.powell@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (51, '9000000051', 'amanda.gordon@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (52, '9000000052', 'adam.russell@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (53, '9000000053', 'john.newton@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (54, '9000000054', 'tyler.aguirre@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (55, '9000000055', 'david.houston@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (56, '9000000056', 'lindsey.newman@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (57, '9000000057', 'tamara.guerrero@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (58, '9000000058', 'jason.williams@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (59, '9000000059', 'gregory.scott@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (60, '9000000060', 'jason.white@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (61, '9000000061', 'michael.buchanan@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (62, '9000000062', 'michelle.palmer@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (63, '9000000063', 'steven.morris@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (64, '9000000064', 'stephanie.brewer@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (65, '9000000065', 'julie.johnson@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (66, '9000000066', 'david.ferguson@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (67, '9000000067', 'elizabeth.mann@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (68, '9000000068', 'courtney.gordon@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (69, '9000000069', 'douglas.beck@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (70, '9000000070', 'nancy.davidson@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (71, '9000000071', 'john.conner@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (72, '9000000072', 'joshua.anthony@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (73, '9000000073', 'travis.gonzalez@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (74, '9000000074', 'eric.hart@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (75, '9000000075', 'angela.gomez@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (76, '9000000076', 'brian.hensley@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (77, '9000000077', 'nancy.richards@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (78, '9000000078', 'kelly.may@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (79, '9000000079', 'ashley.guzman@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (80, '9000000080', 'joshua.walker@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (81, '9000000081', 'aaron.wilson@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (82, '9000000082', 'anthony.robbins@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (83, '9000000083', 'megan.phillips@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (84, '9000000084', 'david.henderson@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (85, '9000000085', 'christina.powell@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (86, '9000000086', 'krista.edwards@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (87, '9000000087', 'kaitlyn.stewart@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (88, '9000000088', 'stephen.armstrong@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (89, '9000000089', 'timothy.lopez@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (90, '9000000090', 'ashley.rhodes@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (91, '9000000091', 'john.allen@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (92, '9000000092', 'mark.bridges@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (93, '9000000093', 'melissa.moss@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (94, '9000000094', 'derek.warren@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (95, '9000000095', 'joseph.johnson@company.com') ON CONFLICT DO NOTHING;
INSERT INTO contact_details (id, phone, email)
VALUES (96, '9000000096', 'john.moore@company.com') ON CONFLICT DO NOTHING;

INSERT INTO EMPLOYEE (ID, NAME, GENDER, AGE, DEPARTMENT_ID, CONTACT_ID)
VALUES (1, 'Teresa Henry', 'F', 48, 3, 1),
       (2, 'Jacqueline Rodriguez', 'M', 33, 1, 2),
       (3, 'Christopher Cannon', 'F', 26, 3, 3),
       (4, 'Tyler Knight', 'M', 26, 2, 4),
       (5, 'Stephen Gonzalez', 'F', 50, 3, 5),
       (6, 'James Berry', 'M', 27, 3, 6),
       (7, 'Danielle Payne', 'F', 25, 2, 7),
       (8, 'Travis Cook', 'M', 47, 1, 8),
       (9, 'Jacqueline Dennis', 'F', 48, 2, 9),
       (10, 'Amy Knight', 'M', 32, 1, 10),
       (11, 'David Goodwin', 'F', 48, 2, 11),
       (12, 'Jessica Dennis', 'M', 41, 2, 12),
       (13, 'Sarah Cain', 'F', 42, 3, 13),
       (14, 'Dawn Williams', 'M', 38, 3, 14),
       (15, 'Tamara Drake', 'F', 25, 1, 15),
       (16, 'Kelly Washington', 'M', 25, 1, 16),
       (17, 'Lauren Gallagher', 'F', 48, 3, 17),
       (18, 'Justin Lucas', 'M', 48, 2, 18),
       (19, 'Angela Soto', 'F', 47, 3, 19),
       (20, 'Christopher Lee', 'M', 32, 1, 20),
       (21, 'Jason Davis', 'F', 30, 1, 21),
       (22, 'Kristen Bryant', 'M', 26, 2, 22),
       (23, 'Jacob Bowen', 'F', 36, 3, 23),
       (24, 'Joshua Parks', 'M', 33, 3, 24),
       (25, 'Shawn Bell', 'F', 39, 3, 25),
       (26, 'Patrick Burke', 'M', 36, 3, 26),
       (27, 'Rachel Jones', 'F', 43, 2, 27),
       (28, 'Shawn Chandler', 'M', 26, 3, 28),
       (29, 'Amanda Robinson', 'F', 48, 1, 29),
       (30, 'Kevin Reyes', 'M', 45, 1, 30),
       (31, 'Michelle Moss', 'F', 41, 1, 31),
       (32, 'Michelle Hess', 'M', 38, 2, 32),
       (33, 'Caitlin Parker', 'F', 45, 1, 33),
       (34, 'Mark Brown', 'M', 34, 2, 34),
       (35, 'Erin Armstrong', 'F', 31, 1, 35),
       (36, 'Kayla Baker', 'M', 47, 3, 36),
       (37, 'Kimberly Garcia', 'F', 42, 1, 37),
       (38, 'Todd Johnston', 'M', 33, 2, 38),
       (39, 'William Nichols', 'F', 32, 2, 39),
       (40, 'Victoria Meyer', 'M', 44, 1, 40),
       (41, 'Ryan Morgan', 'F', 26, 2, 41),
       (42, 'Stephanie Lawson', 'M', 48, 2, 42),
       (43, 'Samantha Parker', 'F', 29, 1, 43),
       (44, 'Micheal Tran', 'F', 36, 2, 44),
       (45, 'Kevin Henderson', 'M', 35, 1, 45),
       (46, 'Benjamin Parks', 'F', 44, 1, 46),
       (47, 'George Adams', 'M', 29, 1, 47),
       (48, 'George Sanchez', 'F', 47, 2, 48),
       (49, 'Caleb Anderson', 'M', 48, 1, 49),
       (50, 'Alexis Powell', 'F', 25, 2, 50),
       (51, 'Amanda Gordon', 'M', 44, 1, 51),
       (52, 'Adam Russell', 'F', 45, 3, 52),
       (53, 'John Newton', 'M', 42, 2, 53),
       (54, 'Tyler Aguirre', 'F', 36, 1, 54),
       (55, 'David Houston', 'M', 43, 1, 55),
       (56, 'Lindsey Newman', 'F', 42, 3, 56),
       (57, 'Tamara Guerrero', 'M', 50, 1, 57),
       (58, 'Jason Williams', 'F', 46, 1, 58),
       (59, 'Gregory Scott', 'M', 44, 2, 59),
       (60, 'Jason White', 'F', 44, 3, 60),
       (61, 'Michael Buchanan', 'M', 32, 1, 61),
       (62, 'Michelle Palmer', 'F', 50, 3, 62),
       (63, 'Steven Morris', 'M', 41, 2, 63),
       (64, 'Stephanie Brewer', 'F', 44, 2, 64),
       (65, 'Julie Johnson', 'M', 38, 3, 65),
       (66, 'David Ferguson', 'F', 46, 1, 66),
       (67, 'Elizabeth Mann', 'M', 36, 2, 67),
       (68, 'Courtney Gordon', 'F', 26, 1, 68),
       (69, 'Douglas Beck', 'M', 45, 3, 69),
       (70, 'Nancy Davidson', 'F', 31, 1, 70),
       (71, 'John Conner', 'M', 45, 1, 71),
       (72, 'Joshua Anthony', 'F', 35, 2, 72),
       (73, 'Travis Gonzalez', 'M', 27, 1, 73),
       (74, 'Eric Hart', 'F', 33, 2, 74),
       (75, 'Angela Gomez', 'M', 46, 2, 75),
       (76, 'Brian Hensley', 'F', 37, 1, 76),
       (77, 'Nancy Richards', 'M', 43, 2, 77),
       (78, 'Kelly May', 'F', 37, 3, 78),
       (79, 'Ashley Guzman', 'M', 28, 1, 79),
       (80, 'Joshua Walker', 'F', 48, 2, 80),
       (81, 'Aaron Wilson', 'M', 36, 2, 81),
       (82, 'Anthony Robbins', 'F', 26, 3, 82),
       (83, 'Megan Phillips', 'M', 45, 2, 83),
       (84, 'David Henderson', 'F', 29, 3, 84),
       (85, 'Christina Powell', 'M', 36, 2, 85),
       (86, 'Krista Edwards', 'F', 35, 1, 86),
       (87, 'Kaitlyn Stewart', 'M', 43, 1, 87),
       (88, 'Stephen Armstrong', 'F', 33, 2, 88),
       (89, 'Timothy Lopez', 'M', 35, 2, 89),
       (90, 'Ashley Rhodes', 'F', 29, 1, 90),
       (91, 'John Allen', 'M', 42, 1, 91),
       (92, 'Mark Bridges', 'F', 44, 3, 92),
       (93, 'Melissa Moss', 'M', 43, 3, 93),
       (94, 'Derek Warren', 'F', 40, 1, 94),
       (95, 'Joseph Johnson', 'M', 42, 1, 95),
       (96, 'John Moore', 'F', 34, 2, 96) ON CONFLICT DO NOTHING;
