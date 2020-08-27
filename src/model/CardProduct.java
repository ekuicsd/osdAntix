package model;

public class CardProduct {
	
	private String name;
	private String cat;
	private String add;
	private String city;
	private String gen;
	private int price;
	private String desc;
	private int rqid;
	
	public CardProduct()
	{
		
	}

	public CardProduct(String name, String cat, String add, String city, String gen, int price, String desc, int rqid) {
		super();
		this.name = name;
		this.cat = cat;
		this.add = add;
		this.city = city;
		this.gen = gen;
		this.price = price;
		this.desc = desc;
		this.rqid=rqid;
	}

	public CardProduct(String name, String cat, String add, String city, int price, String desc, int rqid) {
		super();
		this.name = name;
		this.cat = cat;
		this.add = add;
		this.city = city;
		this.price = price;
		this.desc = desc;
		this.rqid=rqid;
	}

	public int getRqid() {
		return rqid;
	}

	public void setRqid(int rqid) {
		this.rqid = rqid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCat() {
		return cat;
	}

	public void setCat(String cat) {
		this.cat = cat;
	}

	public String getAdd() {
		return add;
	}

	public void setAdd(String add) {
		this.add = add;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getGen() {
		return gen;
	}

	public void setGen(String gen) {
		this.gen = gen;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

}
