package model;

public class Verifier {

	private String name;
	private String username;
	private String cat;
	private String add;
	private String city;
	private long phone;
	
	public Verifier() {
		
	}
	
	
	public Verifier(long phone,String name,String username,String city,String add)
	{
		this.phone=phone;
		this.name=name;
		this.username=username;
		this.city=city;
		this.add=add;
	}
	
	
	public Verifier(String name, String cat, String add, String city, long phone) {
		super();
		this.name = name;
		this.cat = cat;
		this.add = add;
		this.city = city;
		this.phone = phone;
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

	public long getPhone() {
		return phone;
	}

	public void setPhone(long phone) {
		this.phone = phone;
	}


	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}

	
	
	
}
