import bookstore.*;
import java.rmi.*;
import java.sql.SQLException;
import java.util.ArrayList;
import java.rmi.registry.LocateRegistry;

public class RMIServer
    extends java.rmi.server.UnicastRemoteObject
    implements RmtServer {

    private static final long serialVersionUID = 1L;
    private static DatabaseConnection connection;

    public static void usage(){
        System.out.println("");
        System.out.println("Correct server number (1 or 2) is required as the input argument");
        System.out.println("-----------------------------Usage------------------------------");
        System.out.println("java  -classpath mysql-connector-java-5.1.18.jar; RMIServer 1");
        System.out.println("java  -classpath mysql-connector-java-5.1.18.jar; RMIServer 2");
        System.out.println("java  Client");
        System.exit(1);
    }

    public RMIServer(String number) throws RemoteException {
        if(number.equals("1"))
            connection = new DatabaseConnection("bookstorea");
        else if (number.equals("2"))
            connection = new DatabaseConnection("bookstoreb");
        else
            usage();
    }
    
    public ArrayList<Book> getBookById(String bookID) throws RemoteException {
        try {
            ArrayList<Book> s = connection.getBookSQLById(bookID);
            if(!s.isEmpty())
                return s;
            else
                throw new RemoteException("No record found");
        }
        catch (SQLException e) {
            throw new RemoteException(e.getMessage());
        }
    }
    public ArrayList<Book> getBookByName(String bookName) throws RemoteException {
        try {
            ArrayList<Book> s = connection.getBookSQLByName(bookName);
            if(!s.isEmpty())
                return s;
            else
                throw new RemoteException("No record found");
        }
        catch (SQLException e) {
            throw new RemoteException(e.getMessage());
        }
    }


    public static void main(String args[])
    {
        try{
            if(args.length!=1)
                usage();
            RmtServer server = new RMIServer(args[0]);
            if(args[0].equals("1")){
                LocateRegistry.createRegistry(1099);
                Naming.rebind("MyServer1", server);
            }else{
                LocateRegistry.createRegistry(1100);
                Naming.rebind("MyServer2", server);
            }
        } catch (java.io.IOException e) {
        }
    }
}
