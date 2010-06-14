package ula.action.admin.contact;

import ula.action.FrameworkAction;
import ula.constant.AlertMessage;
import ula.constant.CommonConstants;
import ula.constant.ErrorConstants;

/**
 * 个人客户入口
 * @author Harry
 *
 */
public class IndividualClientAction extends FrameworkAction {
	
	@Override
	public String add() {
		return super.add();
	}

	@Override
	protected int addToDB(String title, String content) {
		try {
			return super.getServiceManager().getContactService().addInfo(CommonConstants.ID_CONTACT_INDIVIDUAL, title, content);
		} catch (Exception e) {
			super.debug(e.getMessage());
			e.printStackTrace();
			return 0;
		}
	}

	@Override
	public String admin() {
		super.setMapKeyName(CommonConstants.KEY_CONTACT_GROUP_INDIVIDUAL);
		try {
			super.setInfoMap(super.getServiceManager().getContactService().getInfo(CommonConstants.ID_CONTACT_INDIVIDUAL));
		} catch (Exception e) {
			super.debug(e.getMessage());
			e.printStackTrace();
			// 用户提示信息
			super.setAlertMessage(AlertMessage.CONTACT_INFO_EMPTY);	
			return super.admin();
		}
		
		return super.admin();
	}

	@Override
	public String edit() {
		super.setMapKeyName(CommonConstants.KEY_CONTACT_GROUP_INDIVIDUAL);
		try {
			super.setInfoMap(super.getServiceManager().getContactService().getInfo(CommonConstants.ID_CONTACT_INDIVIDUAL));
		} catch (Exception e) {
			super.debug(e.getMessage());
			e.printStackTrace();
			
			return ERROR;
		}
		return super.edit();
	}

	@Override
	public String preAdd() {
		return super.preAdd();
	}

	@Override
	public String update() {
		return super.update();
	}

	@Override
	protected int updateToDB(String title2, String content2) {
		try {
			return super.getServiceManager().getContactService().updateInfo(CommonConstants.ID_CONTACT_INDIVIDUAL, title2, content2);
		} catch (Exception e) {
super.debug(e.getMessage());
			e.printStackTrace();
			return 0;
		}
	}

	@Override
	public String view() {
		return super.view();
	}
	
}
