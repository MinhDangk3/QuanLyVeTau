// package config;

// import java.sql.Connection;
// import java.sql.DriverManager;
// import java.sql.SQLException;

// public class DatabaseUtil {

//     private static Connection connection;

//     public static void connect() throws SQLException {
//         try {
//             Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            
//             String uri = "jdbc:sqlserver://localhost:1435;databaseName=vetau;encrypt=true;trustServerCertificate=true";
//             String user = "sa";
//             // String pw = "Abc@123456789";
//             String pw = "sapassword";

//             connection = DriverManager.getConnection(uri, user, pw);
//         } catch (ClassNotFoundException e) {
//             e.printStackTrace();
//         }
//     }

//     public static void closeConnection() throws SQLException {
//         if (connection != null) {
//             connection.close();
//         }
//     }

//     public static Connection getConnection() {
//         return connection;
//     }
// }


package config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseUtil {

    private static Connection connection;

    public static void connect() throws SQLException {
        try {
            // Đăng ký driver SQL Server
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            
            // Thay đổi URI cho phù hợp với thông tin kết nối
            String uri = "jdbc:sqlserver://localhost:1433;databaseName=vetau;encrypt=true;trustServerCertificate=true";
            String user = "sa";
            String pw = "sapassword"; // Thay thế bằng mật khẩu của bạn

            // Tạo kết nối
            connection = DriverManager.getConnection(uri, user, pw);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public static void closeConnection() throws SQLException {
        if (connection != null) {
            connection.close();
        }
    }

    public static Connection getConnection() {
        return connection;
    }
}