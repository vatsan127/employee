package com.api.employee.constants;

public class QueryConstants {
    public static final String TABLE_QUERY = "CREATE TABLE IF NOT EXISTS EMP_INFO (\n" +
            "  emp_id INT NOT NULL AUTO_INCREMENT,\n" +
            "  emp_name VARCHAR(15) DEFAULT NULL,\n" +
            "  emp_dept VARCHAR(15) DEFAULT NULL,\n" +
            "  emp_role VARCHAR(15) DEFAULT NULL,\n" +
            "  PRIMARY KEY (emp_id)\n" +
            ");\n";
    public static final String INSERT_QUERY = "INSERT INTO EMP_INFO (EMP_NAME,EMP_DEPT,EMP_ROLE) VALUES (?,?,?);";
    public static final String UPDATE_QUERY = "UPDATE EMP_INFO SET EMP_NAME = ?, EMP_DEPT = ?, EMP_ROLE = ? WHERE EMP_ID = ?;";
    public static final String SELECT_ALL_QUERY = "SELECT * FROM EMP_INFO ;";
    public static final String SELECT_QUERY = "SELECT * FROM EMP_INFO WHERE EMP_ID = ?;";
    public static final String DELETE_QUERY = "DELETE FROM EMP_INFO WHERE EMP_ID = ?;";

}
