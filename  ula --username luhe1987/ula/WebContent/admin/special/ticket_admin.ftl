<@p.page>
<@app.naviBar navi="旅游项目,代订车、船票" />
	<@app.naviInfo helpInfoTitle="查看页面说明" helpInfoContent="本页面用于代订车、船票内容编辑，用户可以修改代订车、船票内容">
	</@app.naviInfo>

<#if alertMessage?exists><p align="center">${alertMessage}</p></#if>

<#if ticket?exists>
 <table class="default" width="70%" align="center">
	<col width="40%" align="center"/>
	<col width="40%" align="center"/>
	<col width="10%" align="center"/>
	<col width="10%" align="center"/>
			<tr class="title">
				<td>标题</td>
				<td>发布时间</td>
				<td colspan="3" align="center">操作</td>
			</tr>
			<tr class="alt">
				<td>${ticket.title}</td>
				<td>${ticket.date}</td>
	
				<td class="operation"><a href="ticket!edit.action">修改</a></td>
				<td class="operation">删除</td>
			</tr>
		</table>
<#else>
 <div class="add"><a href="ticket!preAdd.action"><img
			src="<%=request.getContextPath()%>/icon/add.jpg" border="0"
			height="30px" width="30px" />添加</a>
</div>
</#if>  


</@p.page>