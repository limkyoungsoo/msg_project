package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.StoreDAO;
import model.StoreVO;

public class DetailStoreController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String storeName=request.getParameter("storeName");
		StoreVO storeVO=StoreDAO.getInstance().getStoreMenuList(storeName);
		request.setAttribute("menuList", storeVO);
		return "/board/detailStore.jsp";
	}
	
}
