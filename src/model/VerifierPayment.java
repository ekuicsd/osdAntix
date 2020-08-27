package model;

public class VerifierPayment {
	
	private long phone;
	private long accountno;
	private String name;
	private String ifsc;
	private String bank;
	
	public VerifierPayment()
	{
		
	}
	
	

	public VerifierPayment(long phone, long accountno, String name, String ifsc, String bank) {
		super();
		this.phone = phone;
		this.accountno = accountno;
		this.name = name;
		this.ifsc = ifsc;
		this.bank = bank;
	}



	public long getPhone() {
		return phone;
	}

	public void setPhone(long phone) {
		this.phone = phone;
	}

	public long getAccountno() {
		return accountno;
	}

	public void setAccountno(long accountno) {
		this.accountno = accountno;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getIfsc() {
		return ifsc;
	}

	public void setIfsc(String ifsc) {
		this.ifsc = ifsc;
	}

	public String getBank() {
		return bank;
	}

	public void setBank(String bank) {
		this.bank = bank;
	}
	
	

}
