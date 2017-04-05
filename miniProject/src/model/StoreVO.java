package model;

public class StoreVO {
	private String storeName;
	private String storeLoc;
	private String storeTel;
	private String storePic;
	private String openHour;
	private MenuVO menuVO;

	public StoreVO() {
		super();
	}

	public StoreVO(String storeName, String storeLoc, String storeTel, String storePic, String openHour,
			MenuVO menuVO) {
		super();
		this.storeName = storeName;
		this.storeLoc = storeLoc;
		this.storeTel = storeTel;
		this.storePic = storePic;
		this.openHour = openHour;
		this.menuVO = menuVO;
	}

	public StoreVO(String storeName, String storePic) {
		super();
		this.storeName = storeName;
		this.storePic = storePic;
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

	public String getStoreTel() {
		return storeTel;
	}

	public void setStoreTel(String storeTel) {
		this.storeTel = storeTel;
	}

	public String getStorePic() {
		return storePic;
	}

	public void setStorePic(String storePic) {
		this.storePic = storePic;
	}

	public String getOpenHour() {
		return openHour;
	}

	public void setOpenHour(String openHour) {
		this.openHour = openHour;
	}

	public MenuVO getMenuVO() {
		return menuVO;
	}

	public void setMenuVO(MenuVO menuVO) {
		this.menuVO = menuVO;
	}

	@Override
	public String toString() {
		return "StoreVO [storeName=" + storeName + ", storeLoc=" + storeLoc + ", storeTel=" + storeTel + ", storePic="
				+ storePic + ", openHour=" + openHour + ", menuVO=" + menuVO + "]";
	}
}
