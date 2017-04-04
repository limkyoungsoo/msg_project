package model;

public class MenuVO {
	private int menuNo;
	private String menuName;
	private int menuPrice;
	private String menuPic;
	public MenuVO() {
		super();
	}
	public MenuVO(int menuNo, String menuName, int menuPrice, String menuPic) {
		super();
		this.menuNo = menuNo;
		this.menuName = menuName;
		this.menuPrice = menuPrice;
		this.menuPic = menuPic;
	}
	public int getMenuNo() {
		return menuNo;
	}
	public void setMenuNo(int menuNo) {
		this.menuNo = menuNo;
	}
	public String getMenuName() {
		return menuName;
	}
	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}
	public int getMenuPrice() {
		return menuPrice;
	}
	public void setMenuPrice(int menuPrice) {
		this.menuPrice = menuPrice;
	}
	public String getMenuPic() {
		return menuPic;
	}
	public void setMenuPic(String menuPic) {
		this.menuPic = menuPic;
	}
	@Override
	public String toString() {
		return "MenuVO [menuNo=" + menuNo + ", menuName=" + menuName + ", menuPrice=" + menuPrice + ", menuPic="
				+ menuPic + "]";
	}
	
}
