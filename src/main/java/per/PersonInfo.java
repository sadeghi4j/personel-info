package per;

public class PersonInfo {
	
	private int id;
	private String name;
	private String family;
	private String nationalNo;
	private String userName;
	private String password;
	private String fldDesc;
	public PersonInfo() {
		// TODO Auto-generated constructor stub
	}
	
	public PersonInfo(String name,String family,String nationalNo,String userName,String password,String fldDesc){
		this.name=name;
		this.family=family;
		this.nationalNo=nationalNo;
		this.userName=userName;
		this.password=password;
		this.fldDesc=fldDesc;
	}
	public PersonInfo(int id,String name,String family,String nationalNo,String userName,String password,String fldDesc){
		this.id=id;
		this.name=name;
		this.family=family;
		this.nationalNo=nationalNo;
		this.userName=userName;
		this.password=password;
		this.fldDesc=fldDesc;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getFamily() {
		return family;
	}
	public void setFamily(String family) {
		this.family = family;
	}
	public String getNationalNo() {
		return nationalNo;
	}
	public void setNationalNo(String nationalNo) {
		this.nationalNo = nationalNo;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getFldDesc() {
		return fldDesc;
	}
	public void setFldDesc(String fldDesc) {
		this.fldDesc = fldDesc;
	}
	
}
