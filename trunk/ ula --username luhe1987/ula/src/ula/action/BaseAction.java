package ula.action;

import java.util.Map;
import java.util.ResourceBundle;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.apache.struts2.ServletActionContext;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import ula.common.BeanManager;
import ula.common.ExecuteResult;
import ula.common.ServiceManager;
import ula.constant.CommonConstants;
import ula.util.QueryUtil;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

/**
 * 项目用到的所有Action的基类。 提供的功能有： 1.获取HttpServletRequest 2.获取HttpServletResponse
 * 3.获取HttpSession 4.获取ServletContext 5.获取客户端所有参数的值getParametersAsMap 6.
 * 获取所有Service的getServiceManager 7.用于Log的Logger
 * 
 * 
 * @author Harry
 * 
 */
public class BaseAction implements Action {

	protected Logger log = LoggerFactory.getLogger(getClass());

	protected static final String REDIRECT = "redirect";

	/**
	 *所有Action必须要有的方法
	 */
	public String execute() throws Exception {
		return SUCCESS;
	}

	/* 通用操作结果返回页 */
	public static final String EXECUTE_RESULT = CommonConstants.EXECUTE_RESULT;

	private ExecuteResult executeResult;

	private ExecuteResult buildExecuteResult() {
		if (executeResult == null) {
			executeResult = new ExecuteResult();
			getHttpSessionAsMap().put(EXECUTE_RESULT, executeResult);
		}
		return executeResult;
	}

	public void setResult(String result) {
		buildExecuteResult().setResult(result);
	}

	public void addMessage(String message) {
		buildExecuteResult().addMessage(message);
	}

	public void addRedirURL(String desc, String url) {
		buildExecuteResult().addRedirURL(desc, url);
	}

	public ExecuteResult getExecuteResult() {
		return (ExecuteResult) getHttpSessionAsMap().get(EXECUTE_RESULT);
	}

	/**
	 * 获得原始的HttpServletRequest
	 */
	public HttpServletRequest getHttpServletRequest() {
		return ServletActionContext.getRequest();
	}

	/**
	 * 获得原始的HttpServletResponse
	 */
	public HttpServletResponse getHttpServletResponse() {
		return ServletActionContext.getResponse();
	}

	/**
	 * 获得原始的HttpSession
	 */
	public Map<String, Object> getHttpSessionAsMap() {
		return ActionContext.getContext().getSession();
	}

	/**
	 * 获取客户端所有参数的值，并保存为Map
	 */
	public Map<String, Object> getParametersAsMap() {
		return ActionContext.getContext().getParameters();
	}

	/**
	 * 获取所有的Service
	 */
	public ServiceManager getServiceManager() {
		return (ServiceManager) BeanManager.getBean("serviceManager");
	}

	/**
	 * 获得原始的HttpServletContext
	 */
	public ServletContext getServletContext() {
		return ServletActionContext.getServletContext();
	}

	@SuppressWarnings("unchecked")
	public Map<String, Object> getLoginUser() throws Exception {
		return (Map<String, Object>) getHttpSessionAsMap().get(
				CommonConstants.LOGIN_USER);
	}

	/**
	 * 获取登陆用户的userId 如果用户登录，用户的userId被放入Session
	 * 
	 * getLoginUserID()有可能因为如下原因抛出异常： a)没有登录，无法取到值 b)Session过期 c)格式转换
	 */
	public int getLoginUserID() throws Exception {
		String userId = (String) getLoginUser().get(
				CommonConstants.LOGIN_USERID);
		return Integer.valueOf(userId);
	}

	public String getLoginUserName() throws Exception {
		return (String) getLoginUser().get(CommonConstants.LOGIN_USERNAME);
	}

	/**
	 * 获取IP的方法，加入了通过代理服务器跳转过来请求的判断
	 * 
	 * @param request
	 * @return
	 */
	public String getIP() {
		HttpServletRequest request = getHttpServletRequest();
		String ip = request.getHeader("x-forwarded-for");
		if (StringUtils.isEmpty(ip) || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("x-forward-for");
			if (StringUtils.isEmpty(ip) || "unknown".equalsIgnoreCase(ip)) {
				ip = request.getRemoteAddr();
			}
		}
		return ip;
	}

	/* 分页信息 */
	protected int pageNum = 1;

	protected int pageSize = CommonConstants.DEFAULT_PAGE_SIZE;

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getMaxPageSize() {
		return CommonConstants.MAX_PAGE_SIZE;
	}

	public int getDefaultPageSize() {
		return CommonConstants.DEFAULT_PAGE_SIZE;
	}

	public String getQueryStringWithoutPageNum() {
		Map<String, Object> m = getParametersAsMap();
		m.remove("pageNum");
		return QueryUtil.getQueryString(m);
	}

	public String getFullUrlWithoutPageNum() {
		return getHttpServletRequest().getServletPath() + "?"
				+ getQueryStringWithoutPageNum();
	}

	public String getQueryStringWithoutPageInfo() {
		Map<String, Object> m = getParametersAsMap();
		m.remove("pageNum");
		m.remove("pageSize");
		return QueryUtil.getQueryString(m);
	}

	public String getFullUrlWithoutPageInfo() {
		return getHttpServletRequest().getServletPath() + "?"
				+ getQueryStringWithoutPageInfo();
	}

	public String getBundle(String key) {
		ResourceBundle bundle = ResourceBundle.getBundle("globalMessages");
		return bundle.getString(key);
	}
}
