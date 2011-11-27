package ula.action.admin.resource;

import java.util.HashMap;

import org.apache.commons.lang.exception.ExceptionUtils;

import ula.action.CommonAction;
import ula.common.PagingList;
import ula.constant.AlertMessage;

/**
 * 订阅者管理
 * 
 * @author Nanlei
 * 
 */
public class SubscriberAction extends CommonAction {
	private PagingList subscriberList;
	private HashMap<String, Object> jsonModel;

	public PagingList getSubscriberList() {
		return subscriberList;
	}

	public HashMap<String, Object> getJsonModel() {
		return jsonModel;
	}

	public void setJsonModel(HashMap<String, Object> jsonModel) {
		this.jsonModel = jsonModel;
	}

	public String subscriberAdmin() throws Exception {
		subscriberList = getServiceManager().getSubscriberService()
				.getAllSubscribers();
		return "subscriberAdmin";
	}

	public String delete() {
		try {
			getServiceManager().getSubscriberService().deleteSubscriberById(
					getParametersAsMap());
			setAlertMessage(AlertMessage.SUBSCRIBER_DELETE_SUCCESS);
			return SUCCESS;
		} catch (Exception e) {
			log.error(ExceptionUtils.getStackTrace(e));
			setAlertMessage(AlertMessage.SUBSCRIBER_DELETE_FAILURE);
			return ERROR;
		}
	}

	/**
	 * Test For Register
	 * 
	 * @return
	 */
	public String register() {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("result", true);
		map.put("age", 24);
		map.put("name", "nanlei");
		setJsonModel(map);
		return "register";
	}
}
