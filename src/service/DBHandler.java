package service;

import java.io.InputStream;
//import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.LinkedList;

import model.CardProduct;
import model.Product;
import model.Seller;
import model.Verifier;
import model.VerifierPayment;
import model.sellerPayment;
import oracle.jdbc.pool.OracleDataSource;

public class DBHandler {
	
	public Connection getcon()
	{
		Connection con=null;
		try {
			OracleDataSource ods= new OracleDataSource();
			ods.setURL("jdbc:oracle:thin:@localhost:1521:xe");
			con=ods.getConnection("osdantix","icsd");
			System.out.println("connect successfully");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return con;
	}
	
	
	public ArrayList<Verifier> getVerifierArrayList(String city, String cat)
	{
		Connection con=getcon();
		ArrayList<Verifier> lst = new ArrayList<Verifier>();
		System.out.println(city+" "+cat);
		try {
			
			PreparedStatement stmt= con.prepareStatement("select vnm, vadd, vpn from v_info where vcat=? and vcity=? ");
			stmt.setString(1,cat);
			stmt.setString(2,city);
			ResultSet rset=stmt.executeQuery();
			System.out.println("prepared statement working");
			while(rset.next())
			{
				System.out.println("result set ");
				String name, add;
				long phone;
				name=rset.getString("vnm");
				System.out.println("2"+name);
				add=rset.getString("vadd");
				System.out.println("3"+add);
				phone=rset.getInt("vpn");
				System.out.println(name+add+phone);
				Verifier v=new Verifier(name,cat, add, city, phone);
				System.out.println(v);
				lst.add(v);
				
			}
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return lst;
	}
	
	public Verifier getVerifierProfile(long phone)
	{
		Verifier v=null;
		Connection con=getcon();
		try {
			PreparedStatement stmt=con.prepareStatement("select vnm, vadd, vcity, vcat from v_info where vpn=?");
			stmt.setLong(1, phone);
			ResultSet rset=stmt.executeQuery();
			if(rset.next())
			{
				String name, add, city, cat;
				name=rset.getString("vnm");
				add=rset.getString("vadd");
				city=rset.getString("vcity");
				cat=rset.getString("vcat");
				v= new Verifier(name,cat, add, city, phone );
			}
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return v;
	}
	
	
	
	public boolean validSeller(String unm, String pwd)
	{
		boolean valid= false;
		Connection con=getcon();
		try {
			PreparedStatement stmt=con.prepareStatement("select * from s_info where sunm=? and spwd=?");
			stmt.setString(1, unm);
			stmt.setString(2, pwd);
			ResultSet rset=stmt.executeQuery();
			if(rset.next())
			{
				valid= true;
			}
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return valid;
	}
	
	public long getPhoneSeller(String unm,String pwd)
	{
		long phone=0;
		Connection con=getcon();
		try {
			PreparedStatement stmt=con.prepareStatement("select spn from s_info where sunm=? and spwd=?");
			stmt.setString(1, unm);
			stmt.setString(2,pwd);
			ResultSet rset=stmt.executeQuery();
			if(rset.next())
			{
				phone=rset.getLong("spn");
			}
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return phone;
	}
	
	
	/*public Seller getsellerProfileByUnm(String username)
	{
		Seller seller =null;
		Connection con=getcon();
		try {
			PreparedStatement stmt=con.prepareStatement("select snm, scity, sadd, spn from s_info where sunm=?");
			stmt.setString(1, username);
			ResultSet rset=stmt.executeQuery();
			if(rset.next()){
				String name, add, city;
				long phone;
				name=rset.getString("snm");
				add=rset.getString("sadd");
				city=rset.getString("scity");
				phone=rset.getLong("spn");
				seller=new Seller(name, username, city, add, phone);
			}
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return seller;
	}*/
	
	public void insertSeller(String name,String username,String city,String add, String password,long phone, long accno, String accname, String ifsc, String bank)
	{
		Connection con=getcon();
		try {
			PreparedStatement stmt= con.prepareStatement("insert into s_info values(?,?,?,?,?,?,?,?,?,?,?)");
			stmt.setString(1,name);
			stmt.setString(2,username);
			stmt.setString(3,password);
			stmt.setLong(4,phone);
			stmt.setString(5,city);
			stmt.setString(6,add);
			stmt.setLong(7,accno);
			stmt.setString(8, accname);
			stmt.setString(9,ifsc);
			stmt.setString(10,bank);
			stmt.setInt(11,0);
			stmt.executeUpdate();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public String getSellRequestId()
	{
		int id=100;
		Connection con=getcon();
		try {
			PreparedStatement stmt=con.prepareStatement("select max(rqno) as id from p_info");
			ResultSet rset=stmt.executeQuery();
			if(rset.next())
			{
				id=rset.getInt("id");
				if(id==0)
				{
					id=100;
				}
			}
			id=id+1;
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return String.valueOf(id);
	}
	
	public int insertProductvalues(String phone ,String rqid,String pcat,String pnm,String pid, String price,String pdesc ) 
	{
		//long phno=Long.parseLong(phone);
		int flag=0;
		System.out.println("in Dbhandler"+price);
		Date sdate=new Date();
		String dt=String.valueOf(sdate);
		int pprice=Integer.parseInt(price);
		System.out.println(pprice);
		Connection con=getcon();
		try {
			PreparedStatement stmt=con.prepareStatement("insert into p_info values(?,?,?,?,?,?,?,?,?,?,?,?)");
			stmt.setString(1, phone);
			stmt.setString(2, rqid);
			stmt.setString(3, pid);
			stmt.setString(4, pnm);
			stmt.setInt(5, pprice);
			stmt.setLong(6, 0);
			stmt.setString(7, dt);
			stmt.setString(8, pcat);
			stmt.setString(9, pdesc);
			stmt.setString(10, "not verified");
			stmt.setString(11, "null");
			stmt.setLong(12, 0);
			flag=stmt.executeUpdate();
			con.close();
			
		} catch (SQLException e) {

			e.printStackTrace();
		} 
		return flag;
	}
	
	
	public void insertintoPImgValues(String rqid,InputStream photo1, InputStream photo2,InputStream photo3)
	{
		Connection con=getcon();
		try {
			PreparedStatement stmt = con.prepareStatement("insert into pimg values(?,?,?,?)");
			stmt.setString(1, rqid);
			stmt.setBinaryStream(2, photo1);
			stmt.setBinaryStream(3, photo2);
			stmt.setBinaryStream(4, photo3);
			stmt.executeUpdate();
			con.close();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	
	
	
	
	public ArrayList<Product> getSellingHistory(long phone) 
	{
		ArrayList<Product> lst=new ArrayList<Product>();
		Connection con=getcon();
		try {
			PreparedStatement stmt=con.prepareStatement("select rqno, pnm, price,sdate, gen, bdate from p_info where spn=? and bdate!=?");
			stmt.setLong(1,phone);
			stmt.setString(2,"null");
			ResultSet rset=stmt.executeQuery();
			while(rset.next())
			{
				int rqno =rset.getInt("rqno");
				String name=rset.getString("pnm");
				int price=rset.getInt("price");
				String date=rset.getString("sdate");
				String genuine=rset.getString("gen");
				String sold=rset.getString("bdate");
				Product p =new Product(phone, rqno, name, price, date, genuine, sold);
				lst.add(p);
			}
			con.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return lst;
	}
	
	public boolean validVerifier(String unm, String pwd)
	{
		boolean valid= false;
		Connection con=getcon();
		try {
			PreparedStatement stmt=con.prepareStatement("select * from v_info where vunm=? and vpwd=?");
			stmt.setString(1, unm);
			stmt.setString(2, pwd);
			ResultSet rset=stmt.executeQuery();
			if(rset.next())
			{
				valid= true;
			}
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return valid;
	}
	
	public int getVerifierId()
	{
		int id=100;
		Connection con=getcon();
		try {
			PreparedStatement stmt=con.prepareStatement("select max(vid) as id from v_info");
			ResultSet rset=stmt.executeQuery();
			if(rset.next())
			{
				id=rset.getInt("id");
				if(id==0)
				{
					id=100;
				}
			}
			con.close();
			id=id+1;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return id;
		
	}
	
	
	public void insertVerifier(int intid,String strname,long longphone,String strcat,String strcity,String stradd,String straccnm,long longaccno,String strifsc,String strbanknm,String username,String password)
	{
		Connection con=getcon();
		try {
			PreparedStatement stmt=con.prepareStatement("insert into v_info values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			stmt.setString(1,strname);
			stmt.setString(2, username);
			stmt.setInt(3,intid);
			stmt.setString(4,password);
			stmt.setLong(5,longphone);
			stmt.setString(6,null);
			stmt.setString(7,strcity);
			stmt.setString(8, stradd);
			stmt.setString(9,strcat);
			stmt.setLong(10,longaccno);
			stmt.setString(11,straccnm);
			stmt.setString(12,strifsc);
			stmt.setString(13,strbanknm);
			stmt.setInt(14,0);
			stmt.executeUpdate();
			con.close();
			System.out.println("insert into verifier tbl");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void UpdateGenuine(int id, String strcnm,String phone,String strpid, String strgen)
	{
		Connection con=getcon();
		long phno=Long.parseLong(phone);
		System.out.println(id+strcnm+phno+strpid+strgen);
		try {
			PreparedStatement stmt=con.prepareStatement("update p_info set gen=?, vid=? where rqno=? and pnm=? and pid=?");
			stmt.setString(1, strgen);
			stmt.setString(2,phone);
			stmt.setInt(3,id);
			stmt.setString(4, strcnm);
			stmt.setString(5,strpid);
			stmt.executeUpdate();
			con.close();
			System.out.println("update successfully");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public long getPhoneOfVerifier(String unm,String pwd)
	{
		long phone=0;
		Connection con=getcon();
		try {
			PreparedStatement stmt=con.prepareStatement("select vpn from v_info where vunm=? and vpwd=?");
			stmt.setString(1, unm);
			stmt.setString(2, pwd);
			ResultSet rset=stmt.executeQuery();
			if(rset.next())
				System.out.println("name is getting");
			{
				phone=rset.getLong("vpn");
			}
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return phone;
	}
	
	
	public ArrayList<CardProduct> getProductCardInfo(String cat,String city,String gen,int price)
	{
		ArrayList<CardProduct> lst =new ArrayList<CardProduct>();
		Connection con=getcon();
		if(gen.equals("both"))
		{
			System.out.println("enter in both block");
			try {
				PreparedStatement stmt=con.prepareStatement("select rqno, price,  pnm,sadd, description  from p_info, s_info where s_info.spn=p_info.spn and price between 0 and ?  and cat=? and scity=? and bpn=0");
				stmt.setInt(1,price);
				stmt.setString(2, cat);
				stmt.setString(3, city);
				ResultSet rset=stmt.executeQuery();
				while(rset.next())
				{
					String sadd,name, description;
					int intprice, rqid;
					name=rset.getString("pnm");
					sadd=rset.getString("sadd");
					intprice=rset.getInt("price");
					description=rset.getString("description");
					rqid=rset.getInt("rqno");
					CardProduct p=new CardProduct(name,cat, sadd, city, intprice,description, rqid);
					lst.add(p);
				}
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else
		{
			System.out.println("enter in else block");
			try {
				PreparedStatement stmt=con.prepareStatement("select rqno, price,  pnm,sadd, description  from p_info, s_info where s_info.spn=p_info.spn and price between 0 and ? and cat=? and scity=? and gen=? and bpn=0");
				stmt.setInt(1,price);
				stmt.setString(2, cat);
				stmt.setString(3, city);
				stmt.setString(4, gen);
				ResultSet rset=stmt.executeQuery();
				while(rset.next())
				{
					String sadd,name, description;
					int intprice,rqid;
					name=rset.getString("pnm");
					sadd=rset.getString("sadd");
					intprice=rset.getInt("price");
					description=rset.getString("description");
					rqid=rset.getInt("rqno");
					CardProduct p=new CardProduct(name,cat, sadd, city,gen, intprice,description, rqid);
					lst.add(p);
				}
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		System.out.println("get the cards list");
		return lst;
	}
	
	
	public boolean validBuyer(String unm, String pwd)
	{
		boolean valid= false;
		Connection con=getcon();
		try {
			PreparedStatement stmt=con.prepareStatement("select * from b_info where bunm=? and bpwd=?");
			stmt.setString(1, unm);
			stmt.setString(2, pwd);
			ResultSet rset=stmt.executeQuery();
			if(rset.next())
			{
				valid= true;
			}
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return valid;
	}
	
	 public Product getProdProfile(int rqid)
	 {
		 Product p=null;
		 Connection con=getcon();
		 try {
			PreparedStatement stmt=con.prepareStatement("select pid, pnm, price, vid, sdate, cat, description, gen from p_info where rqno=?");
			stmt.setInt(1, rqid);
			ResultSet rset=stmt.executeQuery();
			if(rset.next())
			{
				String pid, name, vname, sdate, cat, desc, gen;
				int price;
				pid=rset.getString("pid");
				name=rset.getString("pnm");
				vname=rset.getString("vid");
				sdate=rset.getString("sdate");
				cat= rset.getString("cat");
				desc=rset.getString("description");
				gen=rset.getString("gen");
				price=rset.getInt("price");
				p=new Product(rqid,name,sdate, price, gen, pid, vname,cat, desc);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 return p;
	 }
	
	public ArrayList<CardProduct> getIndexProd(String cat)
	{
		ArrayList<CardProduct> lst=new ArrayList<>();
		Connection con=getcon();
		try {
			PreparedStatement stmt=con.prepareStatement("select  rqno, price, scity, pnm,sadd, description  from p_info, s_info where s_info.spn=p_info.spn and cat=? and bpn=0");
			stmt.setString(1, cat);
			ResultSet rset=stmt.executeQuery();
			while(rset.next())
			{
				String sadd,name, description, city;
				int intprice, rqid;
				name=rset.getString("pnm");
				sadd=rset.getString("sadd");
				intprice=rset.getInt("price");
				description=rset.getString("description");
				rqid=rset.getInt("rqno");
				city=rset.getString("scity");
				CardProduct p=new CardProduct(name,cat, sadd, city, intprice,description, rqid);
				lst.add(p);
			}
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lst;
		
	}

	
	public void DeleteSeller(String phone) {
		long ph=Long.parseLong(phone);
		System.out.println(ph);
		Connection con=getcon();
		try {
			PreparedStatement stmt=con.prepareStatement("delete from s_info where spn=?");
			stmt.setLong(1, ph);
			stmt.executeUpdate();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void DeleteVerifier(String phone) {
		long ph=Long.parseLong(phone);
		System.out.println(ph);
		Connection con=getcon();
		try {
			PreparedStatement stmt=con.prepareStatement("delete from v_info where vpn=?");
			stmt.setLong(1, ph);
			stmt.executeUpdate();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	public long getPhoneByRqid(String rqno) {
		long phone=0;
		Connection con=getcon();
		try {
			PreparedStatement stmt=con.prepareStatement("select spn from p_info where rqno=?");
			stmt.setString(1,rqno);
			ResultSet rset=stmt.executeQuery();
			if(rset.next())
			{
				phone=rset.getLong("spn");
			}
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return phone;
	}
	
	public int getMaxPrice()
	{
		int price=0;
		Connection con=getcon();
		try {
			PreparedStatement stmt=con.prepareStatement("select max(price) as price from p_info");
			ResultSet rset=stmt.executeQuery();
			if(rset.next())
			{
				price=rset.getInt("price");
			}
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return price;
		
	}
	
	
	public ArrayList<CardProduct> getProductCardInfoByGen(String cat,String gen,int price)
	{
		ArrayList<CardProduct> lst=new ArrayList<>();
		if(gen.equals("genuine"))
		{
			gen="verified";
		}
		else {
			gen="not verified";
		}
		Connection con=getcon();
		try {
			PreparedStatement stmt=con.prepareStatement("select  rqno, price, scity, pnm,sadd, description  from p_info, s_info where s_info.spn=p_info.spn and cat=? and gen=? and price<=? and bpn=0");
			stmt.setString(1, cat);
			stmt.setString(2, gen);
			stmt.setInt(3,price );
			ResultSet rset=stmt.executeQuery();
			while(rset.next())
			{
				String sadd,name, description, city;
				int intprice, rqid;
				name=rset.getString("pnm");
				sadd=rset.getString("sadd");
				intprice=rset.getInt("price");
				description=rset.getString("description");
				rqid=rset.getInt("rqno");
				city=rset.getString("scity");
				CardProduct p=new CardProduct(name,cat, sadd, city, intprice,description, rqid);
				lst.add(p);
			}
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lst;
		
	}

	
	public ArrayList<CardProduct> getProductCardInfoByNotGen(String cat,String gen,int price)
	{
		ArrayList<CardProduct> lst=new ArrayList<>();
		if(gen.equals("genuine"))
		{
			gen="verified";
		}
		else {
			gen="not verified";
		}
		Connection con=getcon();
		try {
			PreparedStatement stmt=con.prepareStatement("select  rqno, price, scity, pnm,sadd, description  from p_info, s_info where s_info.spn=p_info.spn and cat=? and gen=? and price<=? and bpn=0");
			stmt.setString(1, cat);
			stmt.setString(2, gen);
			stmt.setInt(3,price );
			ResultSet rset=stmt.executeQuery();
			while(rset.next())
			{
				String sadd,name, description, city;
				int intprice, rqid;
				name=rset.getString("pnm");
				sadd=rset.getString("sadd");
				intprice=rset.getInt("price");
				description=rset.getString("description");
				rqid=rset.getInt("rqno");
				city=rset.getString("scity");
				CardProduct p=new CardProduct(name,cat, sadd, city, intprice,description, rqid);
				lst.add(p);
			}
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lst;
		
	}

	public Seller getSellerByPhone( String phone) {
		Seller s=null;
		long phn=Long.parseLong(phone);
		Connection con=getcon();
		try {
			PreparedStatement stmt=con.prepareStatement("select * from s_info where spn=?");
			stmt.setString(1, phone);
			ResultSet rset=stmt.executeQuery();
			if(rset.next())
			{	
				String name, uname, add, city;
				name= rset.getString("snm");
				uname= rset.getString("sunm");
				add= rset.getString("sadd");
				city= rset.getString("scity");
				s= new Seller(name, uname, city, add, phn);
			}
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return s;
	}
	
	
	public void updateSellerProfile(String name, String username,String city,String add,long phone)
	{
		Connection con=getcon();
		try {
			PreparedStatement stmt=con.prepareStatement("update s_info set snm=? , sunm=?, scity=?, sadd=? where spn=? ");
			stmt.setString(1,name);
			stmt.setString(2, username);
			stmt.setString(3,city);
			stmt.setString(4, add);
			stmt.setLong(5,phone);
			stmt.executeUpdate();
			con.close();
			System.out.println("seller update successfully");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void updateSellerPwd(String phone,String opwd, String pwd)
	{
		long ph=Long.parseLong(phone);
		Connection con=getcon();
		try {
			PreparedStatement stmt=con.prepareStatement("update s_info set spwd=? where spn=? and spwd=?");
			stmt.setString(1,pwd);
			stmt.setLong(2,ph);
			stmt.setString(3,opwd);
			stmt.executeQuery();
			con.close();
			System.out.println("pwd update sucessfully");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public sellerPayment getSellerAccInfoByPhone( String phone) {
		sellerPayment s=null;
		long phno=Long.parseLong(phone);
		Connection con=getcon();
		try {
			PreparedStatement stmt=con.prepareStatement("select saccno, saccnm, ifsc, branch from s_info where spn=?");
			stmt.setLong(1, phno);
			ResultSet rset=stmt.executeQuery();
			if(rset.next())
			{
				long accno;
				String accnm, ifsc, bank;
				accno=rset.getLong("saccno");
				accnm=rset.getString("saccnm");
				ifsc=rset.getString("ifsc");
				bank=rset.getString("branch");
				s=new sellerPayment(phno,accno,accnm,ifsc,bank);
				con.close();				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return s;
	}
	
	
	public void updateSellerPaymentByPhone(long phno,long accountno,String accnm,String ifsc,String bank)
	{
		Connection con=getcon();
		try {
			PreparedStatement stmt=con.prepareStatement("update s_info set saccno=?, saccnm=?, ifsc=?, branch=? where spn=?");
			stmt.setLong(1, accountno);
			stmt.setString(2, accnm);
			stmt.setString(3, ifsc);
			stmt.setString(4, bank);
			stmt.setLong(5, phno);
			stmt.executeUpdate();
			con.close();
			System.out.println("seller payment update successfully");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public ArrayList<Product> getListOfDelete(String phone) 
	{
		long phno=Long.parseLong(phone);
		ArrayList<Product> lst=new ArrayList<>();
		Connection con=getcon();
		try {
			PreparedStatement stmt=con.prepareStatement("select rqno, pnm, price,sdate, gen, bdate from p_info where spn=? and bdate=? ");
			stmt.setLong(1,phno);
			stmt.setString(2, "null");
			ResultSet rset=stmt.executeQuery();
			while(rset.next())
			{
				int rqno =rset.getInt("rqno");
				String name=rset.getString("pnm");
				int price=rset.getInt("price");
				String date=rset.getString("sdate");
				String genuine=rset.getString("gen");
				String sold=rset.getString("bdate");
				Product p =new Product(phno, rqno, name, price, date, genuine, sold);
				lst.add(p);
			}
			System.out.println("in DBhandler"+lst);
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lst;
	}
	
	public ArrayList<Product> getVerifiedProductsList(String phone)
	{
		ArrayList<Product> lst=new ArrayList<>();
		long phno=Long.parseLong(phone);
		Connection con=getcon();
		try {
			PreparedStatement stmt= con.prepareStatement("select rqno, pnm, price, gen from p_info where vid=?");
			stmt.setLong(1, phno);
			ResultSet rset=stmt.executeQuery();
			while(rset.next())
			{
				int rqno, price;
				String name, gen;
				rqno=rset.getInt("rqno");
				price=rset.getInt("price");
				name=rset.getString("pnm");
				gen=rset.getString("gen");
				Product p=new Product(phno, rqno, price, name, gen);
				lst.add(p);
			}
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lst;
	}
	
	public Verifier getVerifierByPhone(String phone)
	{
		Verifier v=null;
		long phno=Long.parseLong(phone);
		Connection con=getcon();
		try {
			PreparedStatement stmt=con.prepareStatement("select vnm, vunm, vcity, vadd from v_info where vpn=?");
			stmt.setLong(1, phno);
			ResultSet rset=stmt.executeQuery();
			if(rset.next())
			{
				String name, username, city, add;
				name=rset.getString("vnm");
				username=rset.getString("vunm");
				city=rset.getString("vcity");
				add=rset.getString("vadd");
				v = new Verifier(phno, name, username, city, add);
			}
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return v;
	}
	
	public void getUpdateVerifier(String phone,String name,String username,String city,String add) {
		Connection con=getcon();
		long phno=Long.parseLong(phone);
		try {
			PreparedStatement stmt=con.prepareStatement("update v_info  set vnm=?, vunm=?, vcity=?, vadd=? where vpn=?");
			stmt.setString(1, name);
			stmt.setString(2, username);
			stmt.setString(3, city);
			stmt.setString(4, add);
			stmt.setLong(5, phno);
			stmt.executeUpdate();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public VerifierPayment getVerifierPayment(String phone) {
		long phno=Long.parseLong(phone);
		VerifierPayment v=null;
		Connection con=getcon();
		try {
			PreparedStatement stmt=con.prepareStatement("select accno, accnm, ifsc, branchnm from v_info where vpn=?");
			stmt.setLong(1, phno);
			ResultSet rset=stmt.executeQuery();
			if(rset.next())
			{
				long accno;
				String accnm, ifsc, bank;
				accno=rset.getLong("accno");
				accnm=rset.getString("accnm");
				ifsc=rset.getString("ifsc");
				bank=rset.getString("branchnm");
				v=new VerifierPayment(phno, accno,accnm, ifsc, bank);
			}
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return v;
	}
	
	
	public void getUpdateVerifierPayment(String phone,long accno,String accnm,String ifsc,String bank)
	{
		long phno=Long.parseLong(phone);
		Connection con=getcon();
		try {
			PreparedStatement stmt=con.prepareStatement("update v_info set accno=?, accnm=?, ifsc=?, branchnm=? where vpn=?");
			stmt.setLong(1, accno);
			stmt.setString(2, accnm);
			stmt.setString(3, ifsc);
			stmt.setString(4, bank);
			stmt.setLong(5, phno);
			stmt.executeUpdate();
			con.close();
			System.out.println("verifier payment update successfully");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public void updateVerifierPwd(String phone,String opwd,String pwd)
	{
		long ph=Long.parseLong(phone);
		Connection con=getcon();
		try {
			PreparedStatement stmt=con.prepareStatement("update v_info set vpwd=? where vpn=? and vpwd=?");
			stmt.setString(1,pwd);
			stmt.setLong(2,ph);
			stmt.setString(3,opwd);
			stmt.executeQuery();
			con.close();
			System.out.println("pwd update sucessfully");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public int getImg2(int rqid)
	{
		//Blob blob= null;
		int flag=0;
		Connection con=getcon();
		try {
			System.out.println("before pre stmt here");
			PreparedStatement stmt=con.prepareStatement("select * from pimg where rqno=? and img2 is null ");
			/*stmt.setBlob(1, blob);*/
			stmt.setInt(1, rqid);
			ResultSet rset=stmt.executeQuery();
			if(rset.next())
			{
				System.out.println("m here");
				flag=1;
			}
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return flag;
	}
	
	public int getImg3(int rqid)
	{
		//Blob blob= null;
		int flag=0;
		Connection con=getcon();
		try {
			System.out.println("before pre stmt here");
			PreparedStatement stmt=con.prepareStatement("select * from pimg where rqno=? and img3 is null ");
			/*stmt.setBlob(1, blob);*/
			stmt.setInt(1, rqid);
			ResultSet rset=stmt.executeQuery();
			if(rset.next())
			{
				System.out.println("m here");
				flag=1;
			}
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return flag;
	}
	
	public void DeletefromProductTbl(String rqno)
	{
		Connection con=getcon();
		int rq=Integer.parseInt(rqno);
		try {
			PreparedStatement stmt=con.prepareStatement("delete from p_info where rqno=?");
			stmt.setInt(1, rq);
			stmt.executeUpdate();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void DeleteFromImgTbl(String rqno)
	{
		Connection con=getcon();
		int rq=Integer.parseInt(rqno);
		try {
			PreparedStatement stmt=con.prepareStatement("delete from pimg where rqno=?");
			stmt.setInt(1, rq);
			stmt.executeUpdate();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public int getAddToMaxId() 
	{
			int id=0;
			Connection con=getcon();
			try {
				PreparedStatement stmt=con.prepareStatement("select max(srno) as id from addtocart");
				ResultSet rset=stmt.executeQuery();
				if(rset.next())
				{
					id=rset.getInt("id");
				}
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return id+1;
			
		}
	
	
	public void insertIntoAddToCart(int rqno, String phone) 
	{
		int srno=getAddToMaxId();
		Connection con=getcon();
		try {
			PreparedStatement stmt=con.prepareStatement("insert into addtocart values(?,?,?)");
			stmt.setInt(1, srno);
			stmt.setInt(2, rqno);
			stmt.setString(3, phone);
			stmt.executeUpdate();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	
	public LinkedList<Product> getListFromAddToCart(String username)
	{
		LinkedList<Product> lst= new LinkedList<Product>();
		Connection con=getcon();
		try {
			PreparedStatement stmt=con.prepareStatement("select pnm, description, price,cat, gen, addtocart.rqno from p_info, addtocart where bunm=? and p_info.rqno=addtocart.rqno");
			stmt.setString(1, username);
			ResultSet rset=stmt.executeQuery();
			while(rset.next())
			{
				String name, desc, cat, gen;
				int price, rqno;
				name=rset.getString("pnm");
				desc=rset.getString("description");
				price=rset.getInt("price");
				gen=rset.getString("gen");
				cat=rset.getString("cat");
				rqno=rset.getInt("rqno");
				Product p=new Product(name, desc, price, gen, cat, rqno);
				lst.add(p);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lst;
	}
	
	public void RemoveAddToCart(String username,int rqno)
	{
		Connection con=getcon();
		try {
			PreparedStatement stmt=con.prepareStatement("delete from addtocart where rqno=? and bunm=?");
			stmt.setInt(1, rqno);
			stmt.setString(2, username);
			stmt.executeUpdate();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	public void SoldProduct(int rqno, String username)
	{
		Connection con=getcon();
		try {
			PreparedStatement stmt=con.prepareStatement("delete from addtocart where rqno=? and bunm=?");
			stmt.setInt(1, rqno);
			stmt.setString(2, username);
			stmt.executeUpdate();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	

	public long getPhoneNoById(String username)
	{
		long phone=0;
		Connection con=getcon();
		try {
			PreparedStatement stmt=con.prepareStatement("select bpn from b_info where bunm=?");
			stmt.setString(1, username);
			ResultSet rset=stmt.executeQuery();
			if(rset.next())
			{
				phone=rset.getLong("bpn");
			}
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return phone;
	}
	
	public void UpdateProductBuyer(long phone,String strdate,int rqno)
	{
		Connection con=getcon();
		try {
			PreparedStatement stmt=con.prepareStatement("update p_info set bpn=? and bdate=? where rqno=?");
			stmt.setLong(1, phone);
			stmt.setString(2, strdate);
			stmt.setInt(3, rqno);
			stmt.executeUpdate();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	
	
	
	
}
