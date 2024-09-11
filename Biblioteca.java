public class Biblioteca {
    public static void main(String[] args) {
        char au_id;
        char pub_id;
        char title_id;

        String au_fname;
        String au_lname;
        String title_name;
        String pub_name;
        String city;
        String type;

        int pages;
        int day;
        int month;
        int year;
        int au_order;
        

        Biblioteca biblioteca = new Biblioteca();
        biblioteca.open();
        biblioteca.insert();
        biblioteca.select();
        biblioteca.close();
    }
}
