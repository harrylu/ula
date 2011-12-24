package ula.action.admin.city;

import java.util.Map;

import org.apache.commons.lang.exception.ExceptionUtils;

import ula.action.CommonAction;
import ula.common.PagingList;
import ula.constant.AlertMessage;

/**
 * @author Harry
 */
public class TherapyAction extends CommonAction {
	private PagingList therapyList;
	private Map<String, Object> therapyInfo;
	private String articleId;
	private String at;
	private PagingList articleList;

	public PagingList getTherapyList() {
		return therapyList;
	}

	public Map<String, Object> getTherapyInfo() {
		return therapyInfo;
	}

	public void setArticleId(String articleId) {
		this.articleId = articleId;
	}

	public String getAt() {
		return at;
	}

	public void setAt(String at) {
		this.at = at;
	}

	public PagingList getArticleList() {
		return articleList;
	}

	/**
	 * 大连治疗首页
	 * 
	 * @return
	 */
	public String therapy() {
		therapyList = getServiceManager().getArticleService()
				.getTherapyArticles();
		return "therapy";
	}

	/**
	 * 添加大连治疗文章
	 * 
	 * @return
	 */
	public String addTherapy() {
		try {
			getServiceManager().getArticleService().addTherapy(
					getParametersAsMap(), "admin");
			this.setAlertMessage(AlertMessage.ARTICLE_ADD_SUCCESS);
			return SUCCESS;
		} catch (Exception e) {
			log.error(ExceptionUtils.getStackTrace(e));
			this.setAlertMessage(AlertMessage.ARTICLE_ADD_FAILURE);
			return ERROR;
		}
	}

	/**
	 * 查询大连治疗文章供修改
	 * 
	 * @return
	 * @throws Exception
	 */
	public String preUpdateTherapy() throws Exception {
		therapyInfo = getServiceManager().getArticleService().getArticleById(
				getParametersAsMap());
		return "preUpdateTherapy";
	}

	/**
	 * 修改大连治疗文章
	 * 
	 * @return
	 */
	public String updateTherapy() {
		try {
			getServiceManager().getArticleService().updateArticleById(
					getParametersAsMap(), articleId);
			this.setAlertMessage(AlertMessage.ARTICLE_UPDATE_SUCCESS);
			return SUCCESS;
		} catch (Exception e) {
			log.error(ExceptionUtils.getStackTrace(e));
			this.setAlertMessage(AlertMessage.ARTICLE_UPDATE_FAILURE);
			return ERROR;
		}
	}

	/**
	 * 删除大连治疗文章
	 * 
	 * @return
	 */
	public String deleteTherapy() {
		try {
			getServiceManager().getArticleService()
					.deleteArticleById(null);
			this.setAlertMessage(AlertMessage.ARTICLE_DELETE_SUCCESS);
			return SUCCESS;
		} catch (Exception e) {
			log.error(ExceptionUtils.getStackTrace(e));
			this.setAlertMessage(AlertMessage.ARTICLE_DELETE_FAILURE);
			return ERROR;
		}
	}

	public String view() {
		super.view();
		this.setAt("therapy");
		articleList = getServiceManager().getArticleService()
				.getTherapyArticles();
		return "view";
	}
}
