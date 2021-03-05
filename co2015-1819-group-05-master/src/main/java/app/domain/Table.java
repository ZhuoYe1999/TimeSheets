package app.domain;

public class Table {
	
	private String username;
	
	private String textdate;

	private String [] tableArray;

	public String [] getTableArray() {
		return tableArray;
	}

	public void setTableArray(String [] tableArray) {
		this.tableArray = tableArray;
	}
	
	public String getUsername() {
		return username;
	}
	
	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getTextdate() {
		return this.textdate;
	}
	
	public void setTextdate(String text) {
		 this.textdate = text;
	}
	
}
