package model;

public class Seller {
	
	private String name;
	private String username;
	private String city;
	private String add;
	private long phone;
	
	
	public Seller()
	{
		
	}
	
	

	public Seller(String name, String username, String city, String add, long phone) {
		super();
		this.name = name;
		this.username = username;
		this.city = city;
		this.add = add;
		this.phone = phone;
	}



	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getAdd() {
		return add;
	}

	public void setAdd(String add) {
		this.add = add;
	}

	public long getPhone() {
		return phone;
	}

	public void setPhone(long phone) {
		this.phone = phone;
	}
	

}
