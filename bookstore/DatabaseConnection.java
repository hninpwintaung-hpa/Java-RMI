package bookstore;

import java.sql.*;
import java.util.ArrayList;

public class DatabaseConnection {
    private Connection connection = null;
    
    public DatabaseConnection(String mydatabase) {
        try {
            // Load the JDBC driver
            String driverName = "com.mysql.jdbc.Driver";    // MySQL Connector/J driver
            Class.forName(driverName);

            // Create a connection to the database
            String serverName = "localhost";
            String url = "jdbc:mysql://" + serverName +  "/" + mydatabase; // a JDBC url
            String username = "root";
            String password = "cmsc5702";
            connection = DriverManager.getConnection(url, username, password);
        }
        catch(ClassNotFoundException e) {
            System.err.println("Could not find the database driver");
        } 
        catch(SQLException e) {
            System.err.println("Could not connect to the database");
            while(e != null) {
                System.err.println("Error message: " + e.getMessage());
                System.err.println("Error number: " + e.getErrorCode());
                e = e.getNextException();
            }
        }
        catch(Exception e) {
            System.out.println(e.toString());
        }
    }

    public ArrayList<Book> getBookSQLById(String bookID) throws SQLException {
        ArrayList<Book> list=new ArrayList<Book>();
        Statement stmt = connection.createStatement();
        String bookName="";
        String author="";
        String category="";
        String language="";

        ResultSet rs = stmt.executeQuery("select * from bookDetails where BookID = " + bookID); 

        while (rs.next()) {
            bookName=rs.getString("BookName");
            author=rs.getString("Author");
            category=rs.getString("Category");           
            language=rs.getString("Language");
            break;
        }

        rs = stmt.executeQuery("select * from bookSales where BookID = " + bookID);
        while (rs.next()) {
            Book s = new Book();

            s.setBookID(Integer.parseInt(bookID));
            s.setBookName(bookName);
            s.setAuthor(author);
            s.setCategory(category);           
            s.setLanguage(language);

            s.setPrice(rs.getDouble("Price"));
            s.setNoOfAvailable(rs.getInt("NoOfAvailable"));

            Statement stmt1 = connection.createStatement();
            ResultSet rs1 = stmt1.executeQuery("select * from currency where CurrencyID = " + rs.getString("CurrencyID"));
            while (rs1.next()) {
                s.setCurrency(rs1.getString("CurrencyName"));
                s.setExchangeRate(rs1.getDouble("ExchangeRate"));
                break;
            }

            rs1 = stmt1.executeQuery("select * from bookStore where BookStoreID = " + rs.getString("BookStoreID"));
            while (rs1.next()) {
                s.setBookStoreName(rs1.getString("BookStoreName"));
                s.setBookStoreAddress(rs1.getString("Address"));
                break;
            }
            rs1.close();
            list.add(s);
        }

        rs.close();

        return list;
    }
    
    public ArrayList<Book> getBookSQLByName(String partialName) throws SQLException {
        ArrayList<Book> list=new ArrayList<Book>();
        Statement stmt = connection.createStatement();
        String bookName="";
        String bookID="";
        String author="";
        String category="";
        String language="";

        ResultSet rs = stmt.executeQuery("select * from bookDetails where BookName LIKE '%" + partialName + "%'");

        while (rs.next()) {
            bookName=rs.getString("BookName");
            bookID=rs.getString("BookID");
            author=rs.getString("Author");
            category=rs.getString("Category");           
            language=rs.getString("Language");
        
            Statement stmt1 = connection.createStatement();
            ResultSet rs1 = stmt1.executeQuery("select * from bookSales where BookID = " + bookID);
            while (rs1.next()) {
                Book s = new Book();

                s.setBookID(Integer.parseInt(bookID));
                s.setBookName(bookName);
                s.setAuthor(author);
                s.setCategory(category);           
                s.setLanguage(language);

                s.setPrice(rs1.getDouble("Price"));
                s.setNoOfAvailable(rs1.getInt("NoOfAvailable"));

                Statement stmt2 = connection.createStatement();
                ResultSet rs2 = stmt2.executeQuery("select * from currency where CurrencyID = " + rs1.getString("CurrencyID"));
                while (rs2.next()) {
                    s.setCurrency(rs2.getString("CurrencyName"));
                    s.setExchangeRate(rs2.getDouble("ExchangeRate"));
                    break;
                }

                rs2 = stmt2.executeQuery("select * from bookStore where BookStoreID = " + rs1.getString("BookStoreID"));
                while (rs2.next()) {
                    s.setBookStoreName(rs2.getString("BookStoreName"));
                    s.setBookStoreAddress(rs2.getString("Address"));
                    break;
                }
                rs2.close();
                list.add(s);
            }
            rs1.close();
        }

        rs.close();

        return list;
    }
}
