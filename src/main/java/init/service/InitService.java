package init.service;

import java.util.List;

import init.dao.InitDao;
/**
 * logic functions such as register, login
 * @author Aayush Makharia
 */
public class InitService {
	private InitDao initDao = new InitDao();

	public void intializeDB() throws InitException, ClassNotFoundException, InstantiationException, IllegalAccessException{
		initDao.intialize();
	}
}
