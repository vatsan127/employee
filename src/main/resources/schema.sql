CREATE TABLE employee
(
    id            BIGINT AUTO_INCREMENT PRIMARY KEY,
    first_name    VARCHAR(255) NOT NULL,
    last_name     VARCHAR(255) NOT NULL,
    department    VARCHAR(255),
    created_date  DATETIME     NOT NULL,
    modified_date DATETIME
);