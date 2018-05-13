package bookstore;

import java.rmi.*; 
import java.util.ArrayList;

public interface RmtServer extends Remote {
    public ArrayList<Book> getBookById(String bookID) throws RemoteException;
    public ArrayList<Book> getBookByName(String bookName) throws RemoteException;
}
