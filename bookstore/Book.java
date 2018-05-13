package bookstore;

import java.io.Serializable;

public class Book implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private int bookID;
	private String bookName;
	private String author;
	private String publisher;
	private String publishDate;
	private String edition;
	private String category;
	private String language;
	private double price;
	private String currency;
	private double exchangeRate;
	private int noOfAvailable;
	private String bookStoreName;
	private String bookStoreAddress; 

	
	public int getBookID() {
		return bookID;
	}
	
	public void setBookID(int bookID) {
		this.bookID = bookID;
	}
	
	public String getBookName() {
		return bookName;
	}
	
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	
	public String getAuthor() {
		return author;
	}
	
	public void setAuthor(String author) {
		this.author = author;
	}
	
	public String getPublisher() {
		return publisher;
	}
	
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	
	public String getPublishDate() {
		return publishDate;
	}
	
	public void setPublishDate(String publishDate) {
		this.publishDate = publishDate;
	}
	
	public String getEdition() {
		return edition;
	}
	
	public void setEdition(String edition) {
		this.edition = edition;
	}
	
	public String getCategory() {
		return category;
	}
	
	public void setCategory(String category) {
		this.category = category;
	}
	
	public String getLanguage() {
		return language;
	}
	
	public void setLanguage(String language) {
		this.language = language;
	}
	
	public double getPrice() {
		return price;
	}
	
	public void setPrice(double price) {
		this.price = price;
	}
	public String getCurrency() {
		return currency;
	}
	
	public void setCurrency(String currency) {
		this.currency = currency;
	}
	public double getExchangeRate() {
		return exchangeRate;
	}
	
	public void setExchangeRate(double exchangeRate) {
		this.exchangeRate = exchangeRate;
	}
	public String getBookStoreName() {
		return bookStoreName;
	}
	
	public void setBookStoreName(String bookStoreName) {
		this.bookStoreName = bookStoreName;
	}
	public String getBookStoreAddress() {
		return bookStoreAddress;
	}
	
	public void setBookStoreAddress(String bookStoreAddress) {
		this.bookStoreAddress = bookStoreAddress;
	}
	public int getNoOfAvailable() {
		return noOfAvailable;
	}
	
	public void setNoOfAvailable(int noOfAvailable) {
		this.noOfAvailable = noOfAvailable;
	}

}
