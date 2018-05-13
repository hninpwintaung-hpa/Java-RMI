package bookstore;

import java.util.ArrayList;

public interface Proxy {
    public ArrayList<Book> getBookById(String bookID) throws Exception;
    public ArrayList<Book> getBookByName(String bookName) throws Exception;
}
