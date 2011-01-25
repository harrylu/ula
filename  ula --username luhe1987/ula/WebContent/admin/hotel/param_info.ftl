<@p.page>
	<@app.naviBar navi="关于城市,大连酒店,酒店参数管理,修改参数信息" />
	<@app.naviInfo helpInfoTitle="查看页面说明" helpInfoContent="本页面显示系统内的所有的关于城市->大连酒店->酒店参数的信息，您可以维护这些信息。">
	</@app.naviInfo>
	<form name="paramForm" action="updateParam.action?id=${hotelParam.ID}" method="post" onSubmit="return validateForm(this)">
		<table class="default" width="100%">
			<col width="40%" align="center">
			<col width="60%" align="center">
			<tr class="title">
				<td colspan="2">修改参数信息</td>
			</tr>
			<tr>
				<td>参数类型</td>
				<td>
					<select name="type" emptyInfo="请选择参数类型">
						<option value="location" <#if hotelParam.TYPE='location'>selected</#if>>位置</option>
						<option value="level" <#if hotelParam.TYPE='level'>selected</#if>>星级</option>
						<option value="func" <#if hotelParam.TYPE='func'>selected</#if>>功能</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>参数名称</td>
				<td><input type="text" name="paramName" emptyInfo="请输入参数名称" value="${hotelParam.NAME}"></td>
			</tr>
			<tr>
				<td>显示内容</td>
				<td><input type="text" name="paramValue" emptyInfo="请输入参数值" value="${hotelParam.VALUE}"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="提交" class="btn">&nbsp;&nbsp;<input type="reset" value="重置" class="btn"></td>
			</tr>
		</table>
	</form>
</@p.page>