package control;




import connection.mysqlservlet;
import CLASS.Product;
import CLASS.category;
import CLASS.useraccount;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author USER
 */
public class buttonmysql {
         
    public static useraccount findUser(Connection con, String username,String password) throws SQLException{
    String sql="Select a.userName,a.Password,a.Gender from pass a "+"where a.Username=? and a.Password=?";
    PreparedStatement pstm= con.prepareStatement(sql);
    pstm.setString(1, username);
    pstm.setString(2, password);
    ResultSet rs=pstm.executeQuery();
    if(rs.next()){
     
     useraccount user= new useraccount();
       user.setUserName(rs.getString("userName"));
       user.setUserName(rs.getString("Gender"));
       user.setUserName(rs.getString("Password"));
       
      
       return user;
    }
    return null;
    }
        public static useraccount getUser( String username,String password) throws SQLException, ClassNotFoundException{
    String sql="Select a.userName,a.Password,a.Gender,a.idsell,a.admin from pass a "+"where a.Username=? and a.Password=?";
    Connection con= mysqlservlet.getConnection();
    PreparedStatement pstm= con.prepareStatement(sql);
    pstm.setString(1, username);
    pstm.setString(2, password);
    ResultSet rs=pstm.executeQuery();
    if(rs.next()){
     
     useraccount user= new useraccount();
       user.setUserName(rs.getString("userName"));
       user.setGender(rs.getString("Gender"));
       user.setPassword(rs.getString("Password"));
       user.setIdsell(rs.getInt("idsell"));
       user.setAdmin(rs.getInt("admin"));
      
       return user;
    }
    return null;
    }
       public static void insertaccount(Connection con,useraccount user) throws SQLException{
       
         String sql="insert into pass(userName,Gender,Password,admin,idsell) values (?,?,?,0,0)";
         
         PreparedStatement pstm= con.prepareStatement(sql);
         pstm.setString(1,user.getUserName());
         pstm.setString(2,user.getGender());
         pstm.setString(3,user.getPassword());
         pstm.executeUpdate();
        
    }
        public static void insertaccountuser(String user,String gender,String pass) throws SQLException, ClassNotFoundException{
       
         String sql="insert into pass(userName,Gender,Password) values (?,?,?,0,0)";
          Connection conn=mysqlservlet.getConnection();
         PreparedStatement pstm = conn.prepareStatement(sql);
         pstm.setString(1, user);
         pstm.setString(1, gender);
         pstm.setString(1, pass);
         pstm.executeUpdate();
       
        
    }
        public static  useraccount getadmin(String user,String pass) throws SQLException, ClassNotFoundException {
		String sql = " Select a.userName,a.Password,a.Gender,a.idsell,a.admin from pass a"+"where a.Username=? and a.Password=?";
                  Connection conn=mysqlservlet.getConnection();
		PreparedStatement pstm = conn.prepareStatement(sql);
                  pstm.setString(1, user);
                   pstm.setString(2, pass);
                 
		ResultSet rs = pstm.executeQuery();
		
		while (rs.next()) {
			String username = rs.getString("userName");
			String password = rs.getString("Password");
                        String gender = rs.getString("Gender");
			int idsell = rs.getInt("idsell");
                        int admin = rs.getInt("admin");
			useraccount account=new useraccount();
			account.setUserName(username);
			account.setPassword(password);
                        account.setGender(gender);
                        account.setIdsell(idsell);
                        account.setAdmin(admin);
			return account;
		}
		return null;
	}

      public static  List<Product> queryProduct(Connection conn) throws SQLException {
		String sql = "Select a.id, a.name,a.image,a.image1,a.image2,a.image3, a.price from product a";

		PreparedStatement pstm = conn.prepareStatement(sql);

		ResultSet rs = pstm.executeQuery();
		List<Product> list = new ArrayList<Product>();
		while (rs.next()) {
			int id = rs.getInt("id");
			String name = rs.getString("name");
                        String image = rs.getString("image");
                         String image1 = rs.getString("image1");
                          String image2 = rs.getString("image2");
                           String image3 = rs.getString("image3");
			double price = rs.getDouble("price");
			Product product = new Product();
			product.setId(id);
			product.setName(name);
                        product.setImage(image);
                        product.setImage1(image1);
                        product.setImage2(image2);
                        product.setImage3(image3);
			product.setPrice(price);
			list.add(product);
		}
		return list;
	}

     public static  List<category> getcategory(Connection conn) throws SQLException {
		String sql = "select c.cateid,c.cname from category c";

		PreparedStatement pstm = conn.prepareStatement(sql);

		ResultSet rs = pstm.executeQuery();
		List<category> list = new ArrayList<category>();
		while (rs.next()) {
			String cateid = rs.getString("cateid");
			String cname = rs.getString("cname");
                      
			category category=new category();
			category.setCateid(cateid);
			category.setCname(cname);
                      
			list.add(category);
		}
		return list;
	}

      public static  List<Product> getqueryProduct(String cateid) throws SQLException, ClassNotFoundException {
		String sql = "SELECT * FROM product "+"WHERE cateid=?";
                Connection conn=mysqlservlet.getConnection();
		PreparedStatement pstm = conn.prepareStatement(sql);
                  pstm.setString(1,cateid);
		ResultSet rs = pstm.executeQuery();
		List<Product> list = new ArrayList<Product>();
		while (rs.next()) {
			int id = rs.getInt("id");
			String name = rs.getString("name");
                        String image = rs.getString("image");
			double price = rs.getDouble("price");
			Product product = new Product();
			product.setId(id);
			product.setName(name);
                        product.setImage(image);
			product.setPrice(price);
			list.add(product);
		}
		return list;
	}
      public static  List<Product> xapseptangdan(Connection conn) throws SQLException {
		String sql = "SELECT * FROM product order by price ASC";

		PreparedStatement pstm = conn.prepareStatement(sql);

		ResultSet rs = pstm.executeQuery();
		List<Product> list = new ArrayList<Product>();
		while (rs.next()) {
			int id = rs.getInt("id");
			String name = rs.getString("name");
                        String image = rs.getString("image");
		double price = rs.getDouble("price");
			Product product = new Product();
			product.setId(id);
			product.setName(name);
                        product.setImage(image);
			product.setPrice(price);
			list.add(product);
		}
		return list;
	}
        public static  List<Product> xapsepgiamdan(Connection conn) throws SQLException {
		String sql = "SELECT * FROM product  ORDER by price DESC";

		PreparedStatement pstm = conn.prepareStatement(sql);

		ResultSet rs = pstm.executeQuery();
		List<Product> list = new ArrayList<Product>();
		while (rs.next()) {
			int id = rs.getInt("id");
			String name = rs.getString("name");
                        String image = rs.getString("image");
		double price = rs.getDouble("price");
			Product product = new Product();
			product.setId(id);
			product.setName(name);
                        product.setImage(image);
			product.setPrice(price);
			list.add(product);
		}
		return list;
	}
        
      public static  List<Product> search(String txtsearch) throws SQLException, ClassNotFoundException {
		String sql = "SELECT * FROM product "+"WHERE name LIKE ?";
                Connection conn=mysqlservlet.getConnection();
		PreparedStatement pstm = conn.prepareStatement(sql);
                  pstm.setString(1,"%"+txtsearch+"%");
		ResultSet rs = pstm.executeQuery();
		List<Product> list = new ArrayList<Product>();
		while (rs.next()) {
			int id = rs.getInt("id");
			String name = rs.getString("name");
                        String image = rs.getString("image");
			double price = rs.getDouble("price");
			Product product = new Product();
			product.setId(id);
			product.setName(name);
                        product.setImage(image);
			product.setPrice(price);
			list.add(product);
		}
		return list;
	}
         public static  Product detailProduct(String pid) throws SQLException, ClassNotFoundException {
		String sql = "SELECT * FROM product "+"WHERE id=?";
                Connection conn=mysqlservlet.getConnection();
		PreparedStatement pstm = conn.prepareStatement(sql);
                  pstm.setString(1,pid);
		ResultSet rs = pstm.executeQuery();
		List<Product> list = new ArrayList<Product>();
		while (rs.next()) {
			int id = rs.getInt("id");
                     
			String name = rs.getString("name");
                        String image = rs.getString("image");
                        String image1 = rs.getString("image1");
                        String image2 = rs.getString("image2");
                        String image3 = rs.getString("image3");
			double price = rs.getDouble("price");
                       
			Product product = new Product();
			product.setId(id);
                      
			product.setName(name);
                        product.setImage(image);
                        product.setImage1(image1);
                        product.setImage2(image2);
                        product.setImage3(image3);
			product.setPrice(price);
			return product;
		}
		return null;
	}
           public int sotrang() throws SQLException, ClassNotFoundException {
		String sql = "SELECT count(*) FROM product";
                Connection conn=mysqlservlet.getConnection();
		PreparedStatement pstm = conn.prepareStatement(sql);
                ResultSet rs = pstm.executeQuery();
		
		while (rs.next()) {
			 int total= rs.getInt(1);
                         int nextpage=total/3;
                         if(total%3 != 0){
                         nextpage++;
                         }
                         return nextpage;
		}
		return 0;
	}
    
          public static  List<Product> phantrangweb(int index) throws SQLException, ClassNotFoundException {
		String sql = "SELECT * FROM product " +
                                "order by id " +
                                "limit 3 " +
                                   "OFFSET ? ";
                Connection conn=mysqlservlet.getConnection();
		PreparedStatement pstm = conn.prepareStatement(sql);
                 pstm.setInt(1,(index-1)*3);
		ResultSet rs = pstm.executeQuery();
		List<Product> list = new ArrayList<Product>();
		while (rs.next()) {
			int id = rs.getInt("id");
			String name = rs.getString("name");
                        String image = rs.getString("image");
			double price = rs.getDouble("price");
			Product product = new Product();
			product.setId(id);
			product.setName(name);
                        product.setImage(image);
			product.setPrice(price);
			list.add(product);
		}
		return list;
	}
            public static  List<Product> getProductsellid(int sellid) throws SQLException, ClassNotFoundException {
		String sql = "SELECT * FROM product where sellid=?";
                  Connection conn=mysqlservlet.getConnection();
		PreparedStatement pstm = conn.prepareStatement(sql);
                  pstm.setInt(1,sellid);
		ResultSet rs = pstm.executeQuery();
		List<Product> list = new ArrayList<Product>();
		while (rs.next()) {
			int id = rs.getInt("id");
			String name = rs.getString("name");
                        String image = rs.getString("image");
		double price = rs.getDouble("price");
			Product product = new Product();
			product.setId(id);
			product.setName(name);
                        product.setImage(image);
			product.setPrice(price);
			list.add(product);
		}
		return list;
	}
            public void deleteproduct(String pid) throws ClassNotFoundException, SQLException  {
		String sql = "delete FROM product where id=?";
                  Connection conn=mysqlservlet.getConnection();
		PreparedStatement pstm = conn.prepareStatement(sql);
                  pstm.setString(1,pid);
		pstm.executeUpdate();
		
	}
        
                                                                                                public void  insert(String id,String name,String image,String image1,String image2,String image3,
                     String money,String category,int sellid,int amount) throws SQLException, ClassNotFoundException {
		String sql = "INSERT INTO `product`(`id`, `name`, `image`, `image1`, `image2`, `image3`, `price`, `cateid`, `sellid`,`amount`) VALUES (?,?,?,?,?,?,?,?,?,?)";
                  Connection conn=mysqlservlet.getConnection();
		PreparedStatement pstm = conn.prepareStatement(sql);
                pstm.setString(1,id);
                  pstm.setString(2,name);  
                    pstm.setString(3,image);  
                      pstm.setString(4,image1);  
                        pstm.setString(5,image2);  
                          pstm.setString(6,image3);  
                            pstm.setString(7,money);  
                              pstm.setString(8,category);  
                                pstm.setInt(9,sellid);  
                                pstm.setInt(10, amount);
		         pstm.executeUpdate();
		
		
	}
                       public void  update(String name,String image,String image1,String image2,String image3,
                     String money,String category,String pid) throws SQLException, ClassNotFoundException {
		String sql = "UPDATE product SET name=?,image=?,image1=?,image2=?,"
                        + "image3=?,price=?,cateid=? WHERE id=?";
                  Connection conn=mysqlservlet.getConnection();
		PreparedStatement pstm = conn.prepareStatement(sql);
               
                  pstm.setString(1,name);  
                    pstm.setString(2,image);  
                      pstm.setString(3,image1);  
                        pstm.setString(4,image2);  
                          pstm.setString(5,image3);  
                            pstm.setString(6,money);  
                              pstm.setString(7,category);  
                                pstm.setString(8,pid);  
		         pstm.executeUpdate();
		
		
	}
                             public static  List<useraccount> adminid(int adminid) throws SQLException, ClassNotFoundException {
		String sql = "SELECT * FROM pass where admin=?";
                  Connection conn=mysqlservlet.getConnection();
		PreparedStatement pstm = conn.prepareStatement(sql);
                  pstm.setInt(1,adminid);
		ResultSet rs = pstm.executeQuery();
		List<useraccount> list = new ArrayList<useraccount>();
		while (rs.next()) {
			String username = rs.getString("username");
			String gender = rs.getString("gender");
                        String password = rs.getString("password");
			int idsell = rs.getInt("idsell");
                        int admin=rs.getInt("admin");
			useraccount user = new useraccount();
			user.setUserName(username);
			user.setGender(gender);
                        user.setPassword(password);
                        user.setIdsell(idsell);
                        user.setAdmin(admin);
                        
			list.add(user);
		}
		return list;
	}
                                 public static useraccount  getacc(String usernname) throws SQLException, ClassNotFoundException {
		String sql = "SELECT * FROM pass where username=?";
                  Connection conn=mysqlservlet.getConnection();
		PreparedStatement pstm = conn.prepareStatement(sql);
                  pstm.setString(1,usernname);
		ResultSet rs = pstm.executeQuery();
		
		while (rs.next()) {
			String username = rs.getString("username");
			String gender = rs.getString("gender");
                        String password = rs.getString("password");
			int idsell = rs.getInt("idsell");
                        int admin=rs.getInt("admin");
			useraccount user = new useraccount();
			user.setUserName(username);
			user.setGender(gender);
                        user.setPassword(password);
                        user.setIdsell(idsell);
                        user.setAdmin(admin);
                        
			return user;
		}
		return null;
	}           
                                    public void  updateaccount(String username,String gender,
                     String password,String idsell,String admin,String usernname) throws SQLException, ClassNotFoundException {
		String sql = "UPDATE pass SET username=?,gender=?,password=?,idsell=?,"
                        + "admin=? WHERE username=?";
                  Connection conn=mysqlservlet.getConnection();
		PreparedStatement pstm = conn.prepareStatement(sql);
               
                  pstm.setString(1,username);  
                    pstm.setString(2,gender);  
                      pstm.setString(3,password);  
                        pstm.setString(4,idsell);  
                          pstm.setString(5,admin);  
                            pstm.setString(6,usernname);  
                         
		         pstm.executeUpdate();
		
		
	}
                                         public void  insertacc(String username,String gender,String password,String idsell,String admin
                     ) throws SQLException, ClassNotFoundException {
		String sql = "INSERT INTO `pass`(`username`, `gender`, `password`, `idsell`, `admin`) VALUES (?,?,?,?,?)";
                  Connection conn=mysqlservlet.getConnection();
		PreparedStatement pstm = conn.prepareStatement(sql);
                pstm.setString(1,username);
                  pstm.setString(2,gender);  
                    pstm.setString(3,password);  
                      pstm.setString(4,idsell);  
                        pstm.setString(5,admin);  
                         
		         pstm.executeUpdate();
		
		
	}
                                            public void deleteaccount(String username) throws ClassNotFoundException, SQLException  {
		String sql = "delete FROM pass where username=?";
                  Connection conn=mysqlservlet.getConnection();
		PreparedStatement pstm = conn.prepareStatement(sql);
                  pstm.setString(1,username);
		pstm.executeUpdate();
		
	}
                                                public static category  getcateid(String cateidd) throws SQLException, ClassNotFoundException {
		String sql = "SELECT * FROM category where cateid=?";
                  Connection conn=mysqlservlet.getConnection();
		PreparedStatement pstm = conn.prepareStatement(sql);
                  pstm.setString(1,cateidd);
		ResultSet rs = pstm.executeQuery();
		
		while (rs.next()) {
			String cateid=rs.getString("cateid");
			String cname=rs.getString("cname");
                        category cate=new category();

			cate.setCateid(cateid);
			cate.setCname(cname);
                        
			return cate;
		}
		return null;
	}    
                    public void  insertcategory(String cateid,String catename) throws SQLException, ClassNotFoundException {
		String sql = "INSERT INTO `category`(`cateid`, `cname`) VALUES (?,?)";
                  Connection conn=mysqlservlet.getConnection();
		PreparedStatement pstm = conn.prepareStatement(sql);
                pstm.setString(1,cateid);
                  pstm.setString(2,catename);  
                  
                         
		         pstm.executeUpdate();
		
		
	}
                                                  public void deletecateid(String cateid) throws ClassNotFoundException, SQLException  {
		String sql = "delete FROM category where cateid=?";
                  Connection conn=mysqlservlet.getConnection();
		PreparedStatement pstm = conn.prepareStatement(sql);
                  pstm.setString(1,cateid);
		pstm.executeUpdate();
		
	}
                                                     public void  updatecate(String cateid,String cnamecate
                  ) throws SQLException, ClassNotFoundException {
		String sql = "UPDATE category SET cname=?"
                        + "WHERE cateid=?";
                  Connection conn=mysqlservlet.getConnection();
		PreparedStatement pstm = conn.prepareStatement(sql);
               
                  pstm.setString(1,cnamecate);  
                    pstm.setString(2,cateid);  
                    
                         
		         pstm.executeUpdate();
		
		
	}
                                                         public static  Product getcartProduct(String pid) throws SQLException, ClassNotFoundException {
		String sql = "SELECT * FROM product "+"WHERE id=?";
                Connection conn=mysqlservlet.getConnection();
		PreparedStatement pstm = conn.prepareStatement(sql);
                  pstm.setString(1,pid);
		ResultSet rs = pstm.executeQuery();
		List<Product> list = new ArrayList<Product>();
		while (rs.next()) {
			int id = rs.getInt("id");
			String name = rs.getString("name");
                        String image = rs.getString("image");
                        String image1 = rs.getString("image1");
                        String image2 = rs.getString("image2");
                        String image3 = rs.getString("image3");
			double price = rs.getDouble("price");
                       
			Product product = new Product();
			product.setId(id);
			product.setName(name);
                        product.setImage(image);
                        product.setImage1(image1);
                        product.setImage2(image2);
                        product.setImage3(image3);
			product.setPrice(price);
			return product;
		}
		return null;
	}
    
  
        public static  List<Product> getAll(Connection conn) throws SQLException {
		String sql = "Select * from product ";
                
		PreparedStatement pstm = conn.prepareStatement(sql);

		ResultSet rs = pstm.executeQuery();
		List<Product> list = new ArrayList<Product>();
		while (rs.next()) {
			int id = rs.getInt("id");
			String name = rs.getString("name");
                        String image = rs.getString("image");
                    
			Double price = rs.getDouble("price");
                        int amount=rs.getInt("amount");
			Product product = new Product();
			product.setId(id);
			product.setName(name);
                        product.setImage(image);
                        product.setPrice(price);
			
			list.add(product);
		}
		return list;
	}
    
public static  Product getProduct(String txt) throws SQLException, ClassNotFoundException {
		String sql = "SELECT id,name,image,price,amount FROM product WHERE id=?";
                Connection conn=(Connection) mysqlservlet.getConnection();
		PreparedStatement pstm = conn.prepareStatement(sql);
                  pstm.setString(1,txt);
		ResultSet rs = pstm.executeQuery();
		List<Product> list = new ArrayList<Product>();
		while (rs.next()) {
			int id = rs.getInt("id");
			String name = rs.getString("name");
                        String image = rs.getString("image");
                    
			Double price = rs.getDouble("price");
                        int amount=rs.getInt("amount");
			Product product = new Product();
			product.setId(id);
			product.setName(name);
                        product.setImage(image);
                        product.setPrice(price);
			return product;
		}
		return null;
	}
}
