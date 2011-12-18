<@p.page>
	<@app.naviBar navi="行程管理,行程文章管理" />
	<@app.naviInfo helpInfoTitle="查看页面说明" helpInfoContent="本页面显示系统内所有的行程文章，您可以维护相关信息">
	<@app.button id="newTourButton" onclick="$('#newTour').toggle();this.blur();return false;" text="添加行程文章"/>
	</@app.naviInfo>
<div id="newTour" style="display:none">
	<form name="tourForm" action="tour!add.action" method="post" onSubmit="return validateForm(this)">
		<table class="default" width="100%">
			<col width="40%" align="center">
			<col width="60%" align="center">
			<tr class="title">
				<td colspan="2">添加行程文章</td>
			</tr>
			<tr>
				<td>标题<@p.mustMark /></td>
				<td>
					<input type="text" name="title" size="40" maxLength="15" emptyInfo="请输入文章标题">
				</td>
			</tr>
			<tr>
				<td>行程分类</td>
				<td>
					<select name="cid" emptyInfo="请选择行程分类">
						<option>--请选择--</option>
						<#list categoryList as category>
						<option value="${category.ID}">${category.NAME}</option>
						</#list>
					</select>
				</td>
			</tr>
			<tr>
				<td colspan="2"><textarea  id="content" name="content">请输入文章内容<@p.mustMark /></textarea><@p.ckeditor id="content"/></td>
			</tr>
				<td colspan="2">
					<@app.submit id="submitButton" value="提交" />&nbsp;&nbsp;<@app.reset id="resetButton" value="重置"/>
				</td>
			</tr>
		</table>
	</form>
</div>
<table class="default" width="100%">
	<col width="10%" align="center">
	<col width="35%" align="center">
	<col width="10%" align="center">
	<col width="15%" align="center">
	<col width="10%" align="center">
	<col width="20%" align="center">
	<tr class="title">
		<td>序号</td>
		<td>文章标题</td>
		<td>行程分类</td>
		<td>更新时间</td>
		<td>更新人</td>
		<td>操作</td>
	</tr>
	<#assign count=1 />
	<#list tourList.list as tour>
	<tr <@p.trChangeColor />>
		<td>${count}</td>
		<td>${tour.TITLE}</td>
		<td>${tour.CATEGORY_NAME}</td>
		<td>${tour.UPDATETIME?datetime}</td>
		<td>${tour.USERNAME}</td>
		<td><a href="tour!preUpdate.action?id=${tour.ID}">修改</a> | <a href="tour!delete.action?id=${tour.ID}" onclick="return confirm('确定删除吗？')">删除</a></td>
	</tr>
	<#assign count=count+1 />
	</#list>
</table>
<#if tourList.list.size()=0>
<div align="center" style="margin-top:5px;font-size:14px;color:red;">暂无行程文章</div>
</#if>
<div align="right">
	<@p.paging tourList />
</div>
</@p.page>