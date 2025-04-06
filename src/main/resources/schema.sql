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

CREATE TABLE IF NOT EXISTS TASKS (
    ID SERIAL PRIMARY KEY,
    TITLE VARCHAR(200) NOT NULL,
    DESCRIPTION TEXT,
    STATUS VARCHAR(50) DEFAULT 'Pending' CHECK (STATUS IN ('Pending', 'In Progress', 'Completed', 'Cancelled')),
    EMPLOYEE_ID INT NOT NULL REFERENCES EMPLOYEE(ID) ON DELETE CASCADE
);

CREATE SEQUENCE IF NOT EXISTS contact_sequence START WITH 1000 INCREMENT BY 25;
CREATE SEQUENCE IF NOT EXISTS employee_sequence START WITH 1000 INCREMENT BY 25;
CREATE SEQUENCE IF NOT EXISTS task_sequence START WITH 1000 INCREMENT BY 25;

---

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

INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1000, 'Finalize Q1 Performance Review Docs', 'Complete performance review documentation for direct reports.', 'Completed', 1) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1010, 'Develop User Authentication Module', 'Implement JWT-based authentication for the new web portal.', 'In Progress', 2) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1020, 'Update Employee Handbook - Section 3', 'Incorporate new remote work policy into Section 3 of the handbook.', 'Pending', 3) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1030, 'Test Payment Gateway Integration', 'Perform end-to-end testing for the new Stripe integration.', 'In Progress', 4) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1040, 'Prepare Marketing Budget Proposal Q3', 'Draft the budget proposal for Q3 marketing campaigns.', 'Pending', 5) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1050, 'Fix CSS Bug on Pricing Page (IE11)', 'Resolve the layout issue affecting the pricing page in Internet Explorer 11.', 'Completed', 6) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1060, 'Schedule Project Kick-off: Project Phoenix', 'Coordinate schedules and send invites for the Project Phoenix kick-off meeting.', 'Pending', 7) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1070, 'Analyze Server Log Files for Errors', 'Review server logs from the past 7 days to identify recurring errors.', 'In Progress', 8) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1080, 'Onboard New Sales Executive', 'Prepare onboarding plan and materials for the new hire starting next week.', 'Pending', 9) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1090, 'Research Cloud Storage Solutions', 'Compare AWS S3, Google Cloud Storage, and Azure Blob Storage for data archiving.', 'Pending', 10) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1100, 'Review Design Mockups for Mobile App V2', 'Provide feedback on the UI/UX mockups for the upcoming mobile app release.', 'In Progress', 11) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1110, 'Deploy API Update v1.3 to Staging', 'Deploy the latest API build to the staging environment for QA testing.', 'Completed', 12) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1120, 'Create Documentation for Reporting Tool', 'Write user guide and technical documentation for the internal reporting tool.', 'Pending', 13) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1130, 'Follow up with Client XYZ on Proposal', 'Contact Client XYZ regarding the status of the submitted project proposal.', 'Pending', 14) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1140, 'Plan Q2 Team Building Activity', 'Gather ideas and propose options for the Q2 team building event.', 'Pending', 15) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1150, 'Process New Employee Expense Reports', 'Review and approve expense reports submitted by new hires from March.', 'Completed', 16) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1160, 'Update Project Plan: Project Gamma', 'Revise the project plan timeline based on recent requirement changes.', 'In Progress', 17) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1170, 'Investigate Database Performance Issue', 'Diagnose the cause of slow query performance reported on the CRM database.', 'In Progress', 18) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1180, 'Draft Social Media Content Calendar - May', 'Plan social media posts for Facebook, Twitter, and LinkedIn for May.', 'Pending', 19) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1190, 'Refactor Legacy Code Module: Utils', 'Improve the structure and efficiency of the core Utilities code module.', 'Pending', 20) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1200, 'Conduct Security Audit on Web Server', 'Perform a security vulnerability scan and review configurations.', 'Pending', 21) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1210, 'Set up CI/CD Pipeline for Microservice Alpha', 'Configure Jenkins pipeline for automated build, test, and deployment.', 'In Progress', 22) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1220, 'Prepare Presentation for Client Demo', 'Create slides for the upcoming demo of the new features to Client Beta.', 'Pending', 23) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1230, 'Analyze Website Traffic Data - Q1 2025', 'Generate report on website traffic sources, user behavior, and conversions for Q1.', 'Completed', 24) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1240, 'Renew SSL Certificate for *.company.com', 'Purchase and install the renewed wildcard SSL certificate before expiry.', 'Pending', 25) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1250, 'Write Unit Tests for Billing Service', 'Increase code coverage for the billing microservice by adding unit tests.', 'In Progress', 26) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1260, 'Review Vendor Contract: Software X', 'Review the terms and conditions for the renewal of the Software X license.', 'Pending', 27) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1270, 'Optimize Database Indexing Strategy', 'Analyze query plans and optimize indexes for key tables in the main DB.', 'Pending', 28) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1280, 'Organize Digital Marketing Assets', 'Structure and tag marketing assets (images, videos, pdfs) in the DAM system.', 'Completed', 29) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1290, 'Migrate Email Service to New Provider', 'Plan and execute the migration from the current email provider to Google Workspace.', 'Pending', 30) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1300, 'Update Customer Support FAQs', 'Add answers to frequently asked questions based on recent support tickets.', 'Pending', 31) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1310, 'Perform Code Review for Feature Y', 'Review the pull request submitted for the new Feature Y.', 'In Progress', 32) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1320, 'Generate Leads List for Sales Team', 'Compile a list of potential leads based on recent webinar attendees.', 'Completed', 33) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1330, 'Troubleshoot Network Connectivity Issue - Floor 3', 'Investigate reports of intermittent network connectivity on the third floor.', 'In Progress', 34) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1340, 'Design Database Schema for New Service', 'Create the logical and physical database design for the upcoming microservice Z.', 'Pending', 35) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1350, 'Evaluate New CRM Software Options', 'Research and evaluate 3 potential CRM systems to replace the current one.', 'Pending', 36) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1360, 'Coordinate Beta Testing Program', 'Recruit beta testers and manage feedback collection for the upcoming release.', 'Pending', 37) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1370, 'Patch Production Servers (OS Updates)', 'Schedule and apply latest OS security patches to all production servers.', 'Pending', 38) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1380, 'Develop API Endpoint for User Settings', 'Create GET and POST endpoints for managing user profile settings.', 'In Progress', 39) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1390, 'Prepare Monthly Sales Report - March 2025', 'Compile sales data and generate the detailed report for March.', 'Completed', 40) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1400, 'Update Third-Party Libraries in Project Delta', 'Check for updates to all third-party dependencies and update as necessary.', 'Pending', 41) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1410, 'Review Accessibility Compliance (WCAG)', 'Audit the main website for compliance with WCAG 2.1 AA standards.', 'Pending', 42) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1420, 'Create Training Material for New Feature', 'Develop user guides and video tutorials for the recently launched feature.', 'Pending', 43) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1430, 'Analyze Customer Churn Rate - Q1 2025', 'Calculate and analyze the customer churn rate and reasons for Q1.', 'In Progress', 44) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1440, 'Set up Monitoring Alerts for Application X', 'Configure Datadog alerts for key performance indicators and errors in Application X.', 'Completed', 45) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1450, 'Refine Lead Scoring Model', 'Adjust the lead scoring parameters based on Q1 conversion data.', 'Pending', 46) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1460, 'Implement Two-Factor Authentication (2FA)', 'Add 2FA support using TOTP for user accounts.', 'In Progress', 47) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1470, 'Conduct User Acceptance Testing (UAT) - Release 2.1', 'Coordinate and execute UAT with selected internal stakeholders.', 'Pending', 48) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1480, 'Optimize Website Load Speed', 'Identify and implement optimizations to improve page load times.', 'In Progress', 49) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1490, 'Archive Old Project Files: Project Beta', 'Archive source code, documentation, and assets for the completed Project Beta.', 'Completed', 50) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1500, 'Prepare Q2 Hiring Plan', 'Collaborate with managers to define hiring needs and plan for Q2.', 'In Progress', 51) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1510, 'Design UI for Admin Dashboard', 'Create wireframes and mockups for the new administration dashboard.', 'Pending', 52) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1520, 'Investigate Email Delivery Issues', 'Troubleshoot reports of emails sent from the platform landing in spam folders.', 'In Progress', 53) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1530, 'Update Terms of Service Document', 'Incorporate changes related to the new privacy policy updates.', 'Pending', 54) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1540, 'Set Up Load Balancer for Web Servers', 'Configure HAProxy or Nginx as a load balancer for the web server cluster.', 'Pending', 55) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1550, 'Analyze Competitor Marketing Campaigns', 'Review recent marketing campaigns run by top 3 competitors.', 'Pending', 56) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1560, 'Develop Data Export Feature', 'Allow users to export their data in CSV format from the application.', 'In Progress', 57) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1570, 'Review and Update On-Call Schedule', 'Finalize the Q2 on-call rotation schedule for the engineering team.', 'Completed', 58) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1580, 'Test Disaster Recovery Plan', 'Conduct a simulation to test the effectiveness of the current DR plan.', 'Pending', 59) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1590, 'Create Content for Product Launch Blog Post', 'Write a blog post announcing the launch of the new product version.', 'Pending', 60) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1600, 'Automate Daily Backup Verification', 'Script the process to automatically check the integrity of daily database backups.', 'Pending', 61) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1610, 'Plan Customer Feedback Survey', 'Design the survey questions and distribution plan for gathering customer feedback.', 'Pending', 62) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1620, 'Resolve Merge Conflicts in `dev` Branch', 'Fix the merge conflicts reported in the main development branch.', 'In Progress', 63) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1630, 'Update Internal Knowledge Base', 'Add new articles and update existing ones in the company Confluence space.', 'Pending', 64) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1640, 'Prepare Financial Projections 2025-2026', 'Develop financial forecasts for the remainder of 2025 and 2026.', 'In Progress', 65) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1650, 'Improve Search Functionality on Website', 'Enhance the website search algorithm and UI for better results.', 'Pending', 66) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1660, 'Configure VPN Access for Remote Employees', 'Set up and manage VPN accounts for new remote team members.', 'Completed', 67) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1670, 'Perform SEO Audit for Blog', 'Analyze blog content and technical aspects for SEO improvement opportunities.', 'Pending', 68) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1680, 'Implement Caching Layer for API', 'Add Redis caching to reduce response times for frequently accessed API endpoints.', 'Pending', 69) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1690, 'Process Payroll - April Cycle 1', 'Run the first payroll cycle for April, ensuring accuracy.', 'Completed', 70) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1700, 'Write Integration Tests for Order Service', 'Develop integration tests covering the main flows of the order processing service.', 'In Progress', 71) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1710, 'Review Partnership Proposal from Company Y', 'Evaluate the partnership opportunity proposed by Company Y.', 'Pending', 72) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1720, 'Set up Staging Environment for Mobile App', 'Prepare a dedicated staging environment for testing the mobile application.', 'Completed', 73) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1730, 'Update Design System Components', 'Refine and update components in the shared Figma design system library.', 'In Progress', 74) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1740, 'Consolidate Duplicate Customer Records', 'Identify and merge duplicate customer entries in the CRM system.', 'Pending', 75) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1750, 'Create A/B Test Plan for Landing Page', 'Design an A/B test to compare two versions of the main product landing page.', 'Pending', 76) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1760, 'Monitor System Resource Usage', 'Track CPU, memory, and disk usage on critical servers and identify potential bottlenecks.', 'In Progress', 77) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1770, 'Review Employee Satisfaction Survey Results', 'Analyze the results from the recent employee survey and prepare a summary report.', 'Pending', 78) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1780, 'Develop Password Reset Flow', 'Implement a secure password reset feature for user accounts.', 'Completed', 79) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1790, 'Update Brand Style Guide', 'Incorporate new logo variations and color palette updates into the brand guidelines.', 'Pending', 80) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1800, 'Optimize Image Assets for Web', 'Compress and resize images used across the website to improve performance.', 'Completed', 81) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1810, 'Plan Data Migration Strategy for Legacy System', 'Outline the steps and timeline for migrating data from the old CRM.', 'Pending', 82) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1820, 'Conduct Performance Testing for API v1.3', 'Run load tests on the new API version before production deployment.', 'In Progress', 83) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1830, 'Draft Job Description for Senior Developer', 'Create the job description for the open Senior Software Developer position.', 'Completed', 84) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1840, 'Implement Rate Limiting for Public API', 'Add rate limiting to public API endpoints to prevent abuse.', 'Pending', 85) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1850, 'Analyze Paid Advertising Campaign Performance', 'Review performance metrics (CPC, CPA, ROI) for Google Ads and Facebook Ads campaigns.', 'In Progress', 86) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1860, 'Renew Domain Name Registration', 'Ensure timely renewal of the main company domain name.', 'Completed', 87) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1870, 'Document Authentication Flow', 'Create sequence diagrams and documentation explaining the user login and registration process.', 'Pending', 88) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1880, 'Upgrade Server Operating Systems', 'Plan and execute the upgrade of OS on development and staging servers.', 'Pending', 89) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1890, 'Develop Customer Segmentation Report', 'Create a report segmenting customers based on demographics and purchase history.', 'Pending', 90) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1900, 'Test Browser Compatibility for Web App', 'Verify application functionality and appearance across major browsers (Chrome, Firefox, Safari, Edge).', 'In Progress', 91) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1910, 'Organize Training Session on New Software', 'Schedule and prepare materials for a training session on the new internal tool.', 'Pending', 92) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1920, 'Review Security Policies and Procedures', 'Conduct an annual review of all IT security policies and update as needed.', 'Pending', 93) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1930, 'Create Email Template for Welcome Series', 'Design and code a new email template for the automated new user welcome series.', 'Completed', 94) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1940, 'Set up Centralized Logging System', 'Implement an ELK stack (Elasticsearch, Logstash, Kibana) or similar for log aggregation.', 'Pending', 95) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1950, 'Update Jenkins Build Scripts', 'Optimize and update the build scripts used in Jenkins for CI.', 'In Progress', 96) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1960, 'Review Q1 Team Expenses', 'Audit team expense reports submitted in Q1 2025.', 'Pending', 1) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1970, 'Write API Documentation for Auth Module', 'Document the endpoints and usage of the new authentication service.', 'Pending', 2) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1980, 'Gather Feedback on New Handbook Policy', 'Collect feedback from managers regarding the updated remote work policy.', 'Pending', 3) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(1990, 'Create Test Cases for Payment Scenarios', 'Define detailed test cases covering various payment success and failure scenarios.', 'Pending', 4) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2000, 'Present Q3 Marketing Budget', 'Present the proposed Q3 budget to the executive team for approval.', 'Pending', 5) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2010, 'Monitor Pricing Page Performance Post-Fix', 'Track analytics for the pricing page to ensure the CSS fix resolved user issues.', 'Completed', 6) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2020, 'Prepare Agenda for Project Phoenix Kick-off', 'Draft the agenda and discussion points for the kick-off meeting.', 'Pending', 7) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2030, 'Report Server Log Analysis Findings', 'Summarize findings from the server log analysis and suggest remediation steps.', 'Pending', 8) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2040, 'Schedule 30-60-90 Day Check-ins for New Hire', 'Set up initial check-in meetings with the new Sales Executive.', 'Pending', 9) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2050, 'Present Cloud Storage Research Findings', 'Share the comparison report on cloud storage options with the infrastructure team.', 'Pending', 10) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2060, 'Consolidate Feedback on Mobile App Mockups', 'Compile all feedback received on the V2 mockups into a single document.', 'Pending', 11) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2070, 'Verify API v1.3 Functionality on Staging', 'Perform smoke tests on the deployed API endpoints in the staging environment.', 'Completed', 12) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2080, 'Review Draft Documentation for Reporting Tool', 'Proofread and provide feedback on the first draft of the reporting tool user guide.', 'Pending', 13) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2090, 'Schedule Follow-up Meeting with Client XYZ', 'Arrange a meeting to discuss the proposal based on their feedback.', 'Pending', 14) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2100, 'Book Venue/Activity for Team Building Event', 'Finalize and book the chosen activity/venue for the Q2 event.', 'Pending', 15) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2110, 'Audit March Expense Report Approvals', 'Cross-check approved expense reports against company policy for March.', 'Pending', 16) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2120, 'Communicate Project Gamma Plan Updates', 'Inform stakeholders about the revised project timeline and changes.', 'Pending', 17) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2130, 'Implement Recommended DB Performance Fixes', 'Apply the solutions identified to address the CRM database performance issues.', 'Pending', 18) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2140, 'Schedule May Social Media Posts', 'Use the content calendar to schedule all posts for May in the scheduling tool.', 'Pending', 19) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2150, 'Peer Review Refactored Utils Module Code', 'Conduct a code review for the improvements made to the Utilities module.', 'Pending', 20) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2160, 'Remediate Findings from Security Audit', 'Address the vulnerabilities and configuration issues identified during the web server audit.', 'Pending', 21) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2170, 'Test CI/CD Pipeline for Microservice Alpha', 'Run test deployments through the new pipeline to ensure it works correctly.', 'In Progress', 22) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2180, 'Finalize Presentation Slides for Client Demo', 'Incorporate feedback and finalize the presentation deck for Client Beta.', 'Pending', 23) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2190, 'Identify Key Trends in Q1 Website Traffic', 'Extract actionable insights from the Q1 website traffic analysis report.', 'Pending', 24) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2200, 'Verify SSL Certificate Installation', 'Confirm the new wildcard SSL certificate is correctly installed and functional on all subdomains.', 'Pending', 25) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2210, 'Integrate Billing Service Unit Tests into CI', 'Add the new unit tests to the CI pipeline to run automatically on commits.', 'Pending', 26) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2220, 'Negotiate Renewal Terms for Software X', 'Discuss renewal terms and pricing with the vendor for Software X.', 'Pending', 27) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2230, 'Implement Recommended DB Index Changes', 'Apply the optimized index strategy to the main database.', 'Pending', 28) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2240, 'Train Team on Using DAM System', 'Conduct a short training session on how to find and use assets in the DAM.', 'Pending', 29) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2250, 'Test Email Functionality Post-Migration', 'Verify sending and receiving emails after migrating to Google Workspace.', 'Pending', 30) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2260, 'Publish Updated Customer Support FAQs', 'Make the updated FAQ page live on the company website/support portal.', 'Pending', 31) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2270, 'Implement Feedback from Feature Y Code Review', 'Address the comments and suggestions provided during the code review.', 'In Progress', 32) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2280, 'Distribute Leads List to Sales Team Members', 'Assign leads from the generated list to individual sales representatives.', 'Completed', 33) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2290, 'Replace Faulty Network Switch - Floor 3', 'Identify and replace the network switch causing connectivity issues.', 'Pending', 34) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2300, 'Review Database Schema Design for New Service', 'Get feedback on the proposed schema from the database administration team.', 'Pending', 35) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2310, 'Schedule Demos for CRM Software Options', 'Arrange demo sessions with the vendors of the shortlisted CRM systems.', 'Pending', 36) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2320, 'Send Invitations for Beta Testing Program', 'Invite selected customers/users to participate in the beta program.', 'Pending', 37) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2330, 'Verify Server Patch Installation Success', 'Confirm that OS patches were applied successfully and servers rebooted correctly.', 'Pending', 38) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2340, 'Test User Settings API Endpoints', 'Write and execute tests for the newly developed user settings API.', 'Pending', 39) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2350, 'Distribute March Sales Report', 'Share the finalized March sales report with relevant stakeholders.', 'Pending', 40) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2360, 'Test Project Delta After Library Updates', 'Perform regression testing on Project Delta to ensure updated libraries did not break functionality.', 'Pending', 41) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2370, 'Prioritize Accessibility Issues Found', 'Review the WCAG audit results and create a prioritized list of issues to fix.', 'Pending', 42) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2380, 'Upload Training Materials to Knowledge Base', 'Add the new feature training guides and videos to the internal knowledge base.', 'Pending', 43) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2390, 'Develop Action Plan to Reduce Customer Churn', 'Based on Q1 analysis, propose strategies to improve customer retention.', 'Pending', 44) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2400, 'Tune Monitoring Alerts for Application X', 'Adjust alert thresholds for Application X based on recent performance data to reduce noise.', 'Pending', 45) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2410, 'Implement Refined Lead Scoring Model in CRM', 'Update the CRM automation rules with the new lead scoring parameters.', 'Pending', 46) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2420, 'Test Two-Factor Authentication (2FA) Flow', 'Perform thorough testing of the newly implemented 2FA feature.', 'In Progress', 47) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2430, 'Compile UAT Feedback for Release 2.1', 'Gather and synthesize feedback from stakeholders following UAT.', 'Pending', 48) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2440, 'Implement Website Load Speed Optimizations', 'Apply the identified fixes (e.g., image compression, caching) to improve load times.', 'In Progress', 49) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2450, 'Verify Archived Project Beta Files', 'Check the integrity and completeness of the archived files for Project Beta.', 'Completed', 50) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2460, 'Create Job Requisitions based on Q2 Hiring Plan', 'Submit official job requisitions to HR for approved Q2 positions.', 'Pending', 51) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2470, 'Develop Frontend for Admin Dashboard', 'Implement the UI for the admin dashboard based on the approved designs.', 'Pending', 52) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2480, 'Adjust Email Server Configuration (SPF/DKIM)', 'Update SPF and DKIM records based on findings to improve email deliverability.', 'Pending', 53) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2490, 'Communicate Updated Terms of Service to Users', 'Notify users about the changes to the Terms of Service via email and in-app notification.', 'Pending', 54) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2500, 'Test Load Balancer Configuration', 'Simulate traffic to verify the load balancer distributes requests correctly across web servers.', 'Pending', 55) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2510, 'Summarize Competitor Campaign Analysis', 'Create a report outlining key strategies and takeaways from competitor campaigns.', 'Pending', 56) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2520, 'Test Data Export Feature', 'Verify that users can correctly export their data in CSV format without errors.', 'Pending', 57) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2530, 'Publish Q2 On-Call Schedule', 'Communicate the finalized on-call schedule to the engineering team.', 'Completed', 58) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2540, 'Document Findings from DR Test', 'Record the results, issues identified, and lessons learned from the disaster recovery test.', 'Pending', 59) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2550, 'Coordinate Blog Post Review and Publication', 'Get approvals for the product launch blog post and schedule it for publication.', 'Pending', 60) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2560, 'Test Automated Backup Verification Script', 'Run the new script to ensure it correctly verifies backup integrity.', 'Pending', 61) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2570, 'Distribute Customer Feedback Survey', 'Send out the planned survey to the target customer segments.', 'Pending', 62) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2580, 'Verify Merge Conflict Resolution', 'Confirm that the `dev` branch is stable and conflicts are resolved after the merge.', 'Pending', 63) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2590, 'Identify Gaps in Internal Knowledge Base', 'Review support tickets and common questions to find topics needing documentation.', 'Pending', 64) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2600, 'Refine Financial Projections Based on Feedback', 'Update the 2025-2026 financial forecasts incorporating management feedback.', 'In Progress', 65) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2610, 'Implement Website Search Improvements', 'Deploy changes to enhance the website search functionality.', 'Pending', 66) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2620, 'Decommission Old VPN Access Credentials', 'Remove VPN access for employees who no longer require it.', 'Pending', 67) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2630, 'Create Content Briefs for SEO Blog Topics', 'Develop outlines and briefs for blog posts based on the SEO audit findings.', 'Pending', 68) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2640, 'Test API Performance with Caching Layer', 'Measure API response times after implementing Redis caching to verify improvement.', 'Pending', 69) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2650, 'Reconcile Payroll Records - April Cycle 1', 'Verify payroll deductions, taxes, and net pay against employee records.', 'Pending', 70) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2660, 'Add Order Service Integration Tests to CI', 'Incorporate the new integration tests into the continuous integration pipeline.', 'Pending', 71) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2670, 'Draft Partnership Agreement with Company Y', 'Prepare a draft legal agreement outlining the terms of the proposed partnership.', 'Pending', 72) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2680, 'Document Mobile App Staging Environment Setup', 'Record the configuration and access details for the new staging environment.', 'Completed', 73) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2690, 'Communicate Design System Updates to Teams', 'Inform relevant teams (dev, product) about the changes to the design system.', 'Pending', 74) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2700, 'Verify Duplicate Customer Record Merges', 'Manually review a sample of merged records in the CRM to ensure data accuracy.', 'Pending', 75) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2710, 'Implement Landing Page A/B Test', 'Set up the A/B test experiment using Google Optimize or a similar tool.', 'Pending', 76) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2720, 'Address System Resource Bottlenecks', 'Implement solutions (e.g., upgrade hardware, optimize services) for identified resource issues.', 'Pending', 77) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2730, 'Present Employee Survey Results to Leadership', 'Share the summary report and key findings from the satisfaction survey with executives.', 'Pending', 78) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2740, 'Update Documentation for Password Reset', 'Add details about the new password reset flow to user guides.', 'Completed', 79) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2750, 'Distribute Updated Brand Style Guide', 'Make the revised style guide available to all relevant employees and teams.', 'Pending', 80) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2760, 'Implement Lazy Loading for Website Images', 'Configure lazy loading for images below the fold to improve initial page load.', 'Pending', 81) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2770, 'Execute Data Migration Test Run (Legacy CRM)', 'Perform a test migration of a subset of data from the old CRM to the new system.', 'Pending', 82) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2780, 'Analyze API v1.3 Performance Test Results', 'Review the load test results and identify any performance regressions or bottlenecks.', 'Pending', 83) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2790, 'Post Senior Developer Job Opening', 'Publish the approved job description on relevant job boards and the company careers page.', 'Completed', 84) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2800, 'Test API Rate Limiting Implementation', 'Verify that the rate limiting rules are correctly enforced for public API endpoints.', 'Pending', 85) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2810, 'Adjust Bids for Paid Advertising Campaigns', 'Optimize ad campaign bids based on the recent performance analysis.', 'Pending', 86) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2820, 'Update DNS Records Post Domain Renewal', 'Ensure all DNS records are correct and propagated after the domain renewal process.', 'Completed', 87) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2830, 'Conduct Training Session on Authentication Flow', 'Educate support team on the login/registration process for better troubleshooting.', 'Pending', 88) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2840, 'Test Applications on Upgraded Staging Servers', 'Perform regression testing on staging after the OS upgrades.', 'Pending', 89) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2850, 'Present Customer Segmentation Findings', 'Share the customer segmentation report and insights with the marketing and sales teams.', 'Pending', 90) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2860, 'Fix Identified Browser Compatibility Issues', 'Address the bugs and layout problems found during cross-browser testing.', 'In Progress', 91) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2870, 'Gather Feedback on New Software Training', 'Collect feedback from attendees on the effectiveness of the training session.', 'Pending', 92) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2880, 'Implement Updates to Security Policies', 'Roll out the revised security policies and communicate changes to employees.', 'Pending', 93) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2890, 'Test Welcome Email Series Automation', 'Verify the automated welcome email sequence triggers correctly for new user signups.', 'Completed', 94) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2900, 'Configure Log Shipping to Centralized System', 'Set up agents on servers to forward logs to the new ELK stack.', 'Pending', 95) ON CONFLICT DO NOTHING;
INSERT INTO tasks (id, title, description, status, employee_id)
VALUES(2910, 'Validate Jenkins Build Script Optimizations', 'Confirm that the updated build scripts run faster and more reliably.', 'Pending', 96) ON CONFLICT DO NOTHING;