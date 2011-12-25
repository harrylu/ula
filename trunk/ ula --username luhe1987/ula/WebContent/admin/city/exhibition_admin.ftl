<@p.page>
	<@app.naviBar navi="关于大连,大连展会" />
	<@app.naviInfo helpInfoTitle="查看页面说明" helpInfoContent="本页面显示系统内的所有的关于大连中大连展会的文章，您可以维护这些信息。">
	<@app.button id="newExhibitionButton" onclick="$('#newExhibition').toggle();this.blur();return false;" text="添加文章"/>
	</@app.naviInfo>
<div id="newExhibition" style="display:none">
<form name="exhibitionForm" action="exhibition!add.action" method="post" onsubmit="return validateForm(this)">
<table class="default" width="100%">
	<col width="40%" align="center">
	<col width="60%" align="center">
	<tr class="title">
		<td colspan="2">添加大连展会文章</td>
	</tr>
	<tr>
		<td>标题</td><td><input type="text" name="title" emptyInfo="请填写文章标题" size="80"></td>
	</tr>
	<tr>
		<td colspan="2"><textarea name="content" id="content"></textarea><@p.ckeditor id="content"/></td>
	</tr>
	<tr>
		<td colspan="2">
			<@app.submit id="submitButton" value="提交" />&nbsp;&nbsp;<@app.reset id="resetButton" value="重置"/>
		</td>
	</tr>
</table>
</form>
</div>
<table class="default" width="100%">
	<col width="10%" align="center"/>
	<col width="15%" align="center"/>
	<col width="10%" align="center"/>
	<col width="15%" align="center"/>
	<col width="25%" align="center"/>
	<col width="10%" align="center"/>
	<col width="15%" align="center"/>
	<tr class="title">
		<td>序号</td>
		<td>标题</td>
		<td>添加人</td>
		<td>更新时间</td>
		<td>图片地址</td>
		<td>参考价格</td>
		<td>操作</td>
	</tr>
	<#assign count=(pageNum-1)*10+1>
	<#list exhibitionList.list as exhibition>
	<tr>
		<td>${count}</td>
		<td>${exhibition.TITLE}</td>
		<td>${exhibition.USERNAME}</td>
		<td>${exhibition.ADDTIME?datetime}</td>
		<td>${exhibition.COVERLINK?default("")}</td>
		<td>${exhibition.PRICE?default("")}</td>
		<td><a href="exhibition!preUpdate.action?id=${exhibition.ID}">修改</a> | <a href="exhibition!delete.action?id=${exhibition.ID}" onclick="return confirm('确定删除么?')">删除</a></td>
	</tr>
	<#assign count=count+1>
	</#list>
</table>
<div align="right">
	<@p.paging exhibitionList />
</div>
<#if count=1>
	<p align="center"><font color="red">尚未添加文章</font></p>
</#if>
</@p.page>