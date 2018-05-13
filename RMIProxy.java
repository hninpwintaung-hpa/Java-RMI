import bookstore.*;

import java.rmi.*;
import java.util.ArrayList;

public class RMIProxy implements Proxy {
    private RmtServer server;
    
    public RMIProxy(String number) throws Exception {
        server = (RmtServer) Naming.lookup("rmi://localhost/MyServer"+number);      
    }

    public ArrayList<Book> getBookById(String bookID) throws Exception {
        try {
            ArrayList<Book> s = server.getBookById(bookID);
            return s;
        }
        catch (RemoteException e) {
            throw new Exception(e.getMessage());
        }
    }

    public ArrayList<Book> getBookByName(String bookName) throws Exception {
        try {
            ArrayList<Book> s = server.getBookByName(bookName);
            return s;
        }
        catch (RemoteException e) {
            throw new Exception(e.getMessage());
        }
    }


}   
