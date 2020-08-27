package model;

public class Product {
	
	private long phone;
	private int rqno;
	private String name;
	private String date;
	private int price;
	private String genuine;
	private String sold;
	
	private String pid;
	private String vname;
	private String cat;
	private String desc;
	
	public Product() {
		
	}
	
	public Product(long phone,int rqno,int price,String name,String genuine)
	{
		this.phone=phone;
		this.rqno=rqno;
		this.price=price;
		this.name=name;
		this.genuine=genuine;
	}
	

	public Product(int rqno, String name, String date, int price, String genuine, String pid, String vname, String cat,
			String desc) {
		super();
		this.rqno = rqno;
		this.name = name;
		this.date = date;
		this.price = price;
		this.genuine = genuine;
		this.pid = pid;
		this.vname = vname;
		this.cat = cat;
		this.desc = desc;
	}




	public Product(long phone, int rqno, String name, int price, String date, String genuine, String sold) {
		super();
		this.phone = phone;
		this.rqno = rqno;
		this.name = name;
		this.price=price;
		this.date = date;
		this.genuine = genuine;
		this.sold = sold;
	}
	
	public Product(String name,String  desc,int price,String gen, String cat, int rqno)
	{
		this.name=name;
		this.desc=desc;
		this.price=price;
		this.genuine=gen;
		this.cat=cat;
		this.rqno=rqno;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public long getPhone() {
		return phone;
	}

	public void setPhone(long phone) {
		this.phone = phone;
	}

	public int getRqno() {
		return rqno;
	}

	public void setRqno(int rqno) {
		this.rqno = rqno;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getGenuine() {
		return genuine;
	}

	public void setGenuine(String genuine) {
		this.genuine = genuine;
	}

	public String getSold() {
		return sold;
	}

	public void setSold(String sold) {
		this.sold = sold;
	}
	
	public String getPid() {
		return pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}

	public String getVname() {
		return vname;
	}

	public void setVname(String vname) {
		this.vname = vname;
	}

	public String getCat() {
		return cat;
	}

	public void setCat(String cat) {
		this.cat = cat;
	}


	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}




}
