package controller;

public class HandlerMapping {
	private static HandlerMapping instance = new HandlerMapping();

	private HandlerMapping() {
	}

	public static HandlerMapping getInstance() {
		return instance;
	}

	public Controller create(String command) {
		Controller c = null;
		
		System.out.println("어떤 핸들러"+command);
		
		if (command.equals("storeShow")) {
			c = new StoreShowController();
		}else if(command.equals("detailStore")){
			c=new DetailStoreController();
		}else if(command.equals("register")){
			c=new RegisterController();
		}else if(command.equals("checkId")){
			c=new CheckIdController();
		}

		return c;
	}
}
