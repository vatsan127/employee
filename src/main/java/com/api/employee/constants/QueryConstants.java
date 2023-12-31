package com.api.employee.constants;

public class QueryConstants {
    public static final String INSERT_QUERY = "INSERT INTO employeedb.EMP_INFO (EMP_NAME,EMP_DEPT,EMP_ROLE) VALUES (?,?,?);";
    public static final String UPDATE_QUERY = "UPDATE employeedb.EMP_INFO SET EMP_NAME = ?, EMP_DEPT = ?, EMP_ROLE = ? WHERE EMP_ID = ?;";
    public static final String SELECT_ALL_QUERY = "SELECT * FROM employeedb.EMP_INFO ;";
    public static final String SELECT_QUERY = "SELECT * FROM employeedb.EMP_INFO WHERE EMP_ID = ?;";
    public static final String DELETE_QUERY = "DELETE FROM employeedb.EMP_INFO WHERE EMP_ID = ?;";

}
