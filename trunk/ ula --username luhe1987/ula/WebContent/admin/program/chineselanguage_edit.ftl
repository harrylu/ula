<@p.page>
<@app.naviBar navi="旅游项目,汉语学习" />
	<@app.naviInfo helpInfoTitle="查看页面说明" helpInfoContent="本页面用于汉语学习内容编辑，用户可以修改汉语学习内容">
	</@app.naviInfo>
	
<form action="chineselanguage!update.action" method="post">

<table>
	<tr>
		<td>标题</td>
		<td><input type="text" name="title" id="title" size = "100"
			value="${chineselearning.title}"></input></td>
	</tr>
	<tr>
		<td valign="baseline">内容</td>
		<td><textarea class="ckeditor" cols="80" id="content" name="content"
	rows="10">${chineselearning.content}</textarea></td>
	</tr>
	<tr>
	<td colspan="2"><div align="center"><input type="submit" value="发表" style="height: 25px; width: 100px"/></div></td>
	</tr>
</table>

</form>

</@p.page>