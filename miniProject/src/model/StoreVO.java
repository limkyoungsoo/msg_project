package model;

public class StoreVO {
	// create table store(
	// storeName varchar2(100) primary key,
	// storeLoc varchar2(100) not null,
	// storeTel number not null,
	// storePic varchar2(100) not null,
	// openHour varchar2(100) not null
	// );
	private String storeName;
	private String storeLoc;
	private String number;
	private String storePic;
	private String openHour;

	public StoreVO() {
		super();
	}

	public StoreVO(String storePic) {
		super();
		this.storePic = storePic;
	}

	public StoreVO(String storeName, String storeLoc, String number, String storePic, String openHour) {
		super();
		this.storeName = storeName;
		this.storeLoc = storeLoc;
		this.number = number;
		this.storePic = storePic;
		this.openHour = openHour;
	}

	public String getStoreName() {
		return storeName;
	}

	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}

	public String getStoreLoc() {
		return storeLoc;
	}

	public void setStoreLoc(String storeLoc) {
		this.storeLoc = storeLoc;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getstorePic() {
		return storePic;
	}

	public void setstorePic(String storePic) {
		this.storePic = storePic;
	}

	public String getOpenHour() {
		return openHour;
	}

	public void setOpenHour(String openHour) {
		this.openHour = openHour;
	}

	@Override
	public String toString() {
		return "StoreVO [storeName=" + storeName + ", storeLoc=" + storeLoc + ", number=" + number + ", storePic="
				+ storePic + ", openHour=" + openHour + "]";
	}

}
