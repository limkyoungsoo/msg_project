package controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.StoreDAO;
import model.StoreVO;

public class StoreShowController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ArrayList<StoreVO> storeList = StoreDAO.getInstance().getStoreShowList();
		System.out.println("가게 수 :"+storeList.size());
		request.setAttribute("storeList", storeList);
		return "/index.jsp";
	}
}
