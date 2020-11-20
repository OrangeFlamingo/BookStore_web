package vo;

public class BookVO {
	private int bookno; // int(4) PRIMARY KEY auto_increment,
	private String title; // VARCHAR(40),
	private String publisher; // VARCHAR(40),
	private int price; // int(8)
	private String image;
	
	public BookVO() {	}

	public BookVO(int bookno, String title, String publisher, int price, String image) {
		super();
		this.bookno = bookno;
		this.title = title;
		this.publisher = publisher;
		this.price = price;
		this.image = image;
	}

	public int getBookno() {
		return bookno;
	}

	public void setBookno(int bookno) {
		this.bookno = bookno;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getImage() {
		return image;
	}
	
	public void setImage(String image) {
		this.image = image;
		
	}
	
	
	@Override
	public String toString() {
		return "BookVO [bookno=" + bookno + ", title=" + title + ", publisher=" + publisher + ", price=" + price + ", image name=" + image + " ]";
	}

	

	
}
