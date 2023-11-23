package com.api.employee.constants;

public class QueryConstants {
    public static final String INSERT_QUERY =
            "INSERT INTO EMP_INFO (EMP_NAME,EMP_DEPT,EMP_ROLE) VALUES (?,?,?,?);";
    public static final String UPDATE_QUERY = "update emp_info set emp_name = ?, emp_dept = ?, emp_role = ? where emp_id = ?;";
    public static final String SELECT_QUERY = "SELECT * FROM EMP_INFO WHERE EMP_ID = ?;";
    public static final String DELETE_QUERY = "DELETE FROM EMP_INFO WHERE EMP_ID = ?;";

}
