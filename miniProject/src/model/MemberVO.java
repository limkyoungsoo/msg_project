package model;

public class MemberVO {
	private String mId;
	private String mPass;
	private String mNick;

	public MemberVO() {
		super();
	}

	public MemberVO(String mId, String mPass, String mNick) {
		super();
		this.mId = mId;
		this.mPass = mPass;
		this.mNick = mNick;
	}

	public String getmId() {
		return mId;
	}

	public void setmId(String mId) {
		this.mId = mId;
	}

	public String getmPass() {
		return mPass;
	}

	public void setmPass(String mPass) {
		this.mPass = mPass;
	}

	public String getmNick() {
		return mNick;
	}

	public void setmNick(String mNick) {
		this.mNick = mNick;
	}

	@Override
	public String toString() {
		return "MemberVO [mId=" + mId + ", mPass=" + mPass + ", mNick=" + mNick + "]";
	}

}
