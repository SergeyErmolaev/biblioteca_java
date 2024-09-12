import java.sql.*;

public class Biblioteca {

    Connection conn = null;

    void open() {
        try {
            Class.forName("org.sqlite.JDBC");
            conn = DriverManager.getConnection("jdbc:sqlite:biblioteca.db");
            System.out.println("Conexión exitosa a la base de datos");
        } catch (ClassNotFoundException e) {
            System.err.println("Controlador no encontrado: " + e.getMessage());
        } catch (SQLException e) {
            System.err.println("Error de conexión: " + e.getMessage());
        }
    }
    public static void main(String[] args) {

        /*
		 * We need to have variables that identify the reader's book, the library system administrator, and the librarian.
		 * Let's start with the variables that identify the book.
		*/

        private char au_id;
        private char pub_id;
        private char title_id;

        private String au_fname;
        private String au_lname;
        private String title_name;
        private String pub_name;
        private String city;
        private String type;

        private int pages;
        private int day;
        private int month;
        private int year;
        private int au_order;
        
        /*
         * Also needed are methods to connect to the database with different permissions.
         * Administrator
         * add/edit/delete users with different permissions (administrator, librarian, reader).
         * add/edit/delete books
         * See all members.
         * See all books
         * 
         * Librarian
         * add/edit/delete books.
         * add/edit/delete readers
         * See all readers/all books
         * 
         * Reader
         * view books
         * get a book
         * return a book
         * change your personal data
         * */

        Biblioteca biblioteca = new Biblioteca();
        biblioteca.open();
        biblioteca.insert();
        biblioteca.select();
        biblioteca.close();
    }
}
