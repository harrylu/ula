package ula.action.admin.contact;

import org.apache.commons.lang.exception.ExceptionUtils;

import ula.action.FrameworkAction;
import ula.constant.AlertMessage;
import ula.constant.CommonConstants;

/**
 * 中国团队客户入口
 * 
 * @author Harry
 * 
 */
public class GroupClientChineseAction extends FrameworkAction {

	@Override
	public String add() {
		return super.add();
	}

	@Override
	protected int addToDB(String title, String content) {
		try {
			return super.getServiceManager().getContactService().addInfo(
					CommonConstants.ID_CONTACT_GROUP_CN, title, content);
		} catch (Exception e) {
			log.error(ExceptionUtils.getStackTrace(e));
			return 0;
		}
	}

	@Override
	public String admin() {
		this.setMapKeyName(CommonConstants.KEY_CONTACT_GROUP_CN);
		try {
			super.setInfoMap(super.getServiceManager().getContactService()
					.getInfo(CommonConstants.ID_CONTACT_GROUP_CN));
		} catch (Exception e) {
			log.error(ExceptionUtils.getStackTrace(e));
			super.setAlertMessage(AlertMessage.CONTACT_INFO_EMPTY);
			return super.admin();
		}

		return super.admin();
	}

	@Override
	public String edit() {
		super.setMapKeyName(CommonConstants.KEY_CONTACT_GROUP_CN);
		try {
			super.setInfoMap(super.getServiceManager().getContactService()
					.getInfo(CommonConstants.ID_CONTACT_GROUP_CN));
		} catch (Exception e) {
			log.error(ExceptionUtils.getStackTrace(e));
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
			return super.getServiceManager().getContactService().updateInfo(
					CommonConstants.ID_CONTACT_GROUP_CN, title2, content2);
		} catch (Exception e) {
			log.error(ExceptionUtils.getStackTrace(e));
			return 0;
		}
	}

	@Override
	public String view() {
		super.setMapKeyName(CommonConstants.VIEW);
		try {
			super.setInfoMap(this.getServiceManager().getContactService()
					.getInfo(CommonConstants.ID_CONTACT_GROUP_CN));
		} catch (Exception e) {
			log.error(ExceptionUtils.getStackTrace(e));
			return super.view();
		}
		return super.view();
	}

}
