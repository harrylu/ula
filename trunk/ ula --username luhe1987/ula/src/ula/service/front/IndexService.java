package ula.service.front;

import java.util.List;
import java.util.Map;

import ula.service.BaseService;

/**
 * 首页Service
 * 
 * @author Nanlei
 * 
 */
public class IndexService extends BaseService {
	private static final String SQL_GET_RECOMMENDS = "select ID, COVER, TITLE from recommend where TAG=1 order by UPDATETIME desc";

	public List<Map<String, Object>> getRecommendList() {
		return DB.queryForList(SQL_GET_RECOMMENDS);
	}

	private static final String SQL_GET_PRODUCTS = "select ID, NAME, PRICE, COVER from product where TAG=1 order by UPDATETIME desc limit 12";

	public List<Map<String, Object>> getProductList() {
		return DB.queryForList(SQL_GET_PRODUCTS);
	}

	private static final String SQL_GET_WEATHER = "select * from weather where CITYCODE='101070201'";

	public Map<String, Object> getWeather() {
		return DB.queryForMap(SQL_GET_WEATHER);
	}

	private static final String SQL_GET_LINKS = "select TITLE,URL from link";

	public List<Map<String, Object>> getLinkList() {
		return DB.queryForList(SQL_GET_LINKS);
	}
}
