package per;


import java.sql.*;
import java.util.ArrayList;

public class PersonDao {
	private Connection cn;
	private String driver = "oracle.jdbc.OracleDriver";
	String uName = "javasample";
	String pass = "javasample";
    int cust_id = 0;
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	//ایجاد یک اتصال به دیتابیس 
	public PersonDao() {
		try {
			Class.forName(driver);
			cn=DriverManager.getConnection(url,uName,pass);
		} catch (ClassNotFoundException e) {
				e.printStackTrace();
		} catch (SQLException e) {
				e.printStackTrace();
		}
	}
	//درج کردن اطلاعات درون دیتابیس 
	public void insertPerInfo(PersonInfo personinfo){
        try {

        //    Statement stmt;
         //   stmt = cn.createStatement();
         //   cust_id = stmt.executeUpdate("SELECT MAX(p.id) FROM personel p");
		String insertQuery="INSERT INTO PERSONEL (ID,NAME,FAMILY,NATIONAL_CODE,USER_NAME,PASSWORD,FLD_DESC) VALUES (SEQ_PERSONEL.NEXTVAL,?,?,?,?,?,?)";
			PreparedStatement ps=cn.prepareStatement(insertQuery);
            ps.setInt(1,1);
            ps.setString(1, personinfo.getName());
			ps.setString(2, personinfo.getFamily());
			ps.setString(3, personinfo.getNationalNo());
			ps.setString(4, personinfo.getUserName());
			ps.setString(5, personinfo.getPassword());
			ps.setString(6, personinfo.getFldDesc());
			ps.executeUpdate();
			ps.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	// بازیابی اطلاعهات مربوط به یک شخص 
	public PersonInfo getPerInfo(String id){
		PersonInfo retPersonInfo=null;
		String getQuery="SELECT * FROM PERSONEL WHERE ID="+id;
		try {
		PreparedStatement ps = cn.prepareStatement(getQuery);
			ResultSet result=ps.executeQuery();
			while (result.next()){
				String name=result.getString("NAME");
				String family=result.getString("FAMILY");
				String nationalNo=result.getString("NATIONAL_CODE");
				String userName=result.getString("USER_NAME");
				String password=result.getString("PASSWORD");
				String fldDesc=result.getString("FLD_DESC");
				retPersonInfo=new PersonInfo(name,family,nationalNo,userName,password,fldDesc);
				retPersonInfo.setId(Integer.parseInt(id));				
			}
			result.close();
			ps.close();
		} catch (SQLException e) {
				e.printStackTrace();
		}
		return retPersonInfo;
	}
	// حذف کردن اطلاعات یک شخص 
	public void removePerInfo(String id) {
		String getQuery="DELETE FROM PERSONEL WHERE ID="+id;
		try {
			PreparedStatement ps=cn.prepareStatement(getQuery);
			ps.executeUpdate();
			ps.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	//نمایش اطلاعات کلیه افراد
	public PersonInfo[] getAllPerInfo() {
		ArrayList retList=new ArrayList();
		String getQuery="SELECT * FROM PERSONEL";
		try {
			PreparedStatement ps=cn.prepareStatement(getQuery);
			ResultSet result=ps.executeQuery();
			while(result.next()){
				int id=result.getInt("ID");
				String name=result.getString("NAME");
				String family=result.getString("FAMILY");
				String nationalNo=result.getString("NATIONAL_CODE");
				String userName=result.getString("USER_NAME");
				String password=result.getString("PASSWORD");
				String fldDesc=result.getString("FLD_DESC");
				PersonInfo personinfo=new PersonInfo(id,name,family,nationalNo,userName,password,fldDesc);
				retList.add(personinfo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return (PersonInfo[])retList.toArray(new PersonInfo[0]);
	}
	// به روز رسانی اطلاعات یک شخص 
	public void updatePerInfo(PersonInfo personinfo) {
		String updateQuery="UPDATE PERSONEL SET NAME=?,FAMILY=?,NATIONAL_CODE=?,USER_NAME=?,PASSWORD=?,FLD_DESC=? WHERE ID=?";
		try {
			PreparedStatement ps=cn.prepareStatement(updateQuery);
			ps.setString(1, personinfo.getName());
			ps.setString(2, personinfo.getFamily());
			ps.setString(3, personinfo.getNationalNo());
			ps.setString(4, personinfo.getUserName());
			ps.setString(5, personinfo.getPassword());
			ps.setString(6, personinfo.getFldDesc());
			ps.setInt(7, personinfo.getId());
			ps.executeUpdate();
			ps.close();
			} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	//جستجو بین افراد
	public PersonInfo[] searchPerInfo(String aName,String aFamily,String aNationalNo,String aUserName,String aPassword,String aFldDesc) {
		ArrayList retList=new ArrayList();
		  try {
		String searchQuery="SELECT * FROM PERSONEL WHERE NAME LIKE '"+aName+"%'";
	/*	String queryTell="";
		if ((aName!=null)&&(!aName.equals(""))){
			queryTell=queryTell+"NAME LIKE '"+aName+"%' ";
		}

		if (!queryTell.equals("")){
			searchQuery=searchQuery+ "WHERE" +queryTell;
		}*/
		Statement ps=cn.createStatement();
			ResultSet result=ps.executeQuery(searchQuery);
			while(result.next()){
				String name=result.getString("NAME");
				String family=result.getString("FAMILY");
				String nationalNo=result.getString("NATIONAL_CODE");
				String userName=result.getString("USER_NAME");
				String password=result.getString("PASSWORD");
				String fldDesc=result.getString("FLD_DESC");
				int id=result.getInt("ID");
				PersonInfo personinfo=new PersonInfo(id,name,family,nationalNo,userName,password,fldDesc);
				retList.add(personinfo);
			}
			result.close();
			ps.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return (PersonInfo[])retList.toArray(new PersonInfo[0]);
	}
	
}
