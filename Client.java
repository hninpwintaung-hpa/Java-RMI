import bookstore.*;

import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import javax.swing.table.DefaultTableModel;
import java.util.ArrayList;

public class Client extends JFrame {

    private static final long serialVersionUID = 1L;
    private static Proxy proxy1;
    private static Proxy proxy2;

    private JTextField bookIDField;
    private JTextField bookNameField;
    private JToggleButton selectButton;
    private JTable table;
    private DefaultTableModel dtm;

    public Client() { 
        super("RMI-based Book Checking Application"); 
        Container container = getContentPane();
        container.setLayout(new BorderLayout());
    
        // Set up input fields
        JPanel panel = new JPanel();
        panel.setLayout(new GridLayout(5,2));
        panel.add(new JLabel("Search by id"));
        bookIDField = new JTextField();
        panel.add(bookIDField);
        panel.add(new JLabel("Search by name"));
        bookNameField = new JTextField();
        panel.add(bookNameField);
        
        bookIDField.addFocusListener(new FocusListener() {
            @Override
            public void focusGained(FocusEvent e) {
                bookNameField.setEditable(false);
            }
            @Override
            public void focusLost(FocusEvent e) {
                if(bookIDField.getText().equals(""))
                    bookNameField.setEditable(true);
            }
        });
        bookNameField.addFocusListener(new FocusListener() {
            @Override
            public void focusGained(FocusEvent e) {
                bookIDField.setEditable(false);
            }
            @Override
            public void focusLost(FocusEvent e) {
                if(bookNameField.getText().equals(""))
                    bookIDField.setEditable(true);
            }
        });

        container.add(panel, BorderLayout.NORTH);
           
        JPanel buttonPanel = new JPanel();
        selectButton = new JToggleButton("Search");
        selectButton.addActionListener(
            new ActionListener() {
                public void actionPerformed(ActionEvent evt) {
                    selectButtonActionPerformed(evt);
                }
            }
        );
        buttonPanel.add(selectButton);

        container.add(buttonPanel, BorderLayout.CENTER);

        table = new JTable();
        dtm = new DefaultTableModel(0, 0);
        String header[] = new String[] {"BookID","Name","Author","Price","Copies","Store","Address"};    
        dtm.setColumnIdentifiers(header);
        table.setModel(dtm);
        JScrollPane tableScroller = new JScrollPane(table);
        table.setFillsViewportHeight(true);
        //tableScroller.setPreferredSize(new Dimension(250, 80));
        container.add(tableScroller, BorderLayout.SOUTH);

        setEditable(true);
        setSize(900, 650);
        setVisible(true);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    }
    
    private void setEditable(boolean value) {
        bookIDField.setEditable(value);
        bookNameField.setEditable(value);
    }
    
    private void reset() {
        selectButton.setText("Search");
        bookIDField.setText("");        
        bookNameField.setText("");
        dtm.setRowCount(0);
        setEditable(true);     
    }

    private void selectButtonActionPerformed(ActionEvent evt) {
        if(selectButton.getText().equals("Search")) {
            selectButton.setText("Reset");
            if(bookIDField.getText().equals("")&&bookNameField.getText().equals("")) {
                JOptionPane.showMessageDialog(this, "Either book id or book name is required");
                reset();
            }
            else {
                try {
                    setEditable(false);
                    ArrayList<Book> list1=new ArrayList<Book>();
                    ArrayList<Book> list2=new ArrayList<Book>();
                    if(!bookIDField.getText().equals("")){
                        if(proxy1!=null)
                            list1 = proxy1.getBookById(bookIDField.getText());
                        if(proxy2!=null)
                            list2 = proxy2.getBookById(bookIDField.getText());
                    }
                    else{
                        if(proxy1!=null)
                            list1 = proxy1.getBookByName(bookNameField.getText());
                        if(proxy2!=null)
                            list2 = proxy2.getBookByName(bookNameField.getText());
                    }
                    for(Book b:list1){
                        dtm.addRow(new String[] { String.valueOf(b.getBookID()), b.getBookName(), b.getAuthor(), String.valueOf(b.getPrice())+" "+b.getCurrency(), String.valueOf(b.getNoOfAvailable()), b.getBookStoreName(), b.getBookStoreAddress()});
                    }
                    for(Book b:list2){
                        dtm.addRow(new String[] { String.valueOf(b.getBookID()), b.getBookName(), b.getAuthor(), String.valueOf(b.getPrice())+" "+b.getCurrency(), String.valueOf(b.getNoOfAvailable()), b.getBookStoreName(), b.getBookStoreAddress()});
                    }
                }
                catch (Exception e) {
                    if(e.getMessage().contains("No record found"))
                        JOptionPane.showMessageDialog(this, "No record found");
                    else
                        JOptionPane.showMessageDialog(this, e.getMessage());
                    reset();
                }
            }
        }
        else {
            reset();
        }       
    }
    

    public static void main(String[] args) {
        ArrayList<Proxy> arr=new ArrayList<Proxy>();
        try{
            proxy1 = new RMIProxy("1");
            arr.add(proxy1);
        } catch (Exception e) {
            System.out.println("Cannot connect to Server 1: "+e.getMessage());
            JOptionPane.showMessageDialog(null, "Cannot connect to Server 1: "+e.getMessage(), "Error", JOptionPane.INFORMATION_MESSAGE);
        } 
        try{
            proxy2 = new RMIProxy("2");
            arr.add(proxy2);
        }catch (Exception e) {
            System.out.println("Cannot connect to Server 2: "+e.getMessage());
            JOptionPane.showMessageDialog(null, "Cannot connect to Server 2: "+e.getMessage(), "Error", JOptionPane.INFORMATION_MESSAGE);
        }
        if(proxy1==null&&proxy2==null)
            System.exit(1);
        new Client();
        
    }
}
