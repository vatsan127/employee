CREATE DATABASE IF NOT EXISTS employeedb;
USE employeedb;

CREATE TABLE IF NOT EXISTS EMP_INFO (
  emp_id INT NOT NULL AUTO_INCREMENT,
  emp_name VARCHAR(15) DEFAULT NULL,
  emp_dept VARCHAR(15) DEFAULT NULL,
  emp_role VARCHAR(15) DEFAULT NULL,
  PRIMARY KEY (emp_id)
);


-- CREATE TABLE IF NOT EXISTS EMP_INFO (emp_id INT NOT NULL AUTO_INCREMENT,emp_name VARCHAR(15) DEFAULT NULL,emp_dept VARCHAR(15) DEFAULT NULL,emp_role VARCHAR(15) DEFAULT NULL,PRIMARY KEY (emp_id));

    --INSERT INTO EMP_INFO (emp_name, emp_dept, emp_role) VALUES
    --   ('John Doe', 'HR', 'Manager'),
    --   ('Jane Smith', 'IT', 'Developer'),
    --   ('Alice Johnson', 'Marketing', 'Coordinator'),
    --   ('Bob Williams', 'Finance', 'Analyst'),
    --   ('Charlie Brown', 'Sales', 'Representative'),
    --   ('David Davis', 'IT', 'Sysadmin'),
    --   ('Eva Green', 'Marketing', 'Manager'),
    --   ('Frank Thompson', 'Sales', 'Representative'),
    --   ('Grace Lee', 'Finance', 'Accountant'),
    --   ('Henry Miller', 'HR', 'Assistant'),
    --   ('Ivy White', 'IT', 'Developer'),
    --   ('Jack Johnson', 'Marketing', 'Coordinator'),
    --   ('Kelly Davis', 'Finance', 'Analyst'),
    --   ('Leo Brown', 'Sales', 'Representative'),
    --   ('Mia Adams', 'IT', 'Sysadmin'),
    --   ('Nathan Turner', 'Marketing', 'Manager'),
    --   ('Olivia Williams', 'Sales', 'Representative'),
    --   ('Peter Smith', 'Finance', 'Accountant'),
    --   ('Quinn White', 'HR', 'Assistant'),
    --   ('Ryan Thompson', 'IT', 'Developer'),
    --   ('Sophia Johnson', 'Marketing', 'Coordinator'),
    --   ('Thomas Davis', 'Finance', 'Analyst'),
    --   ('Uma Brown', 'Sales', 'Representative'),
    --   ('Victor Adams', 'IT', 'Sysadmin'),
    --   ('Wendy Turner', 'Marketing', 'Manager'),
    --   ('Xavier Williams', 'Sales', 'Representative'),
    --   ('Yara Smith', 'Finance', 'Accountant'),
    --   ('Zane White', 'HR', 'Assistant'),
    --   ('Albert Turner', 'IT', 'Developer'),
    --   ('Bella Davis', 'Marketing', 'Coordinator'),
    --   ('Charlie Brown', 'Finance', 'Analyst'),
    --   ('Diana Adams', 'Sales', 'Representative'),
    --   ('Ethan Thompson', 'IT', 'Sysadmin'),
    --   ('Fiona Turner', 'Marketing', 'Manager'),
    --   ('George Williams', 'Sales', 'Representative'),
    --   ('Hannah White', 'Finance', 'Accountant'),
    --   ('Ian Smith', 'HR', 'Assistant'),
    --   ('Jasmine Davis', 'IT', 'Developer'),
    --   ('Kevin Johnson', 'Marketing', 'Coordinator'),
    --   ('Laura Brown', 'Finance', 'Analyst'),
    --   ('Mason Adams', 'Sales', 'Representative'),
    --   ('Nora Turner', 'IT', 'Sysadmin'),
    --   ('Oscar Williams', 'Marketing', 'Manager'),
    --   ('Penelope Smith', 'Sales', 'Representative'),
    --   ('Quincy White', 'Finance', 'Accountant'),
    --   ('Rachel Turner', 'HR', 'Assistant'),
    --   ('Samuel Adams', 'IT', 'Developer'),
    --   ('Tina Davis', 'Marketing', 'Coordinator');
