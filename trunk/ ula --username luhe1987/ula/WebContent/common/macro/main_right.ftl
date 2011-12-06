<#-- main_right宏 -->
<#macro main_right>
		<div id="main_right">
			<div id="right_show"><a href="#">Далянь Выставка<br />2011-2012</a></div>
			<div id="right_mice"><a href="#">MICE</a></div>
			<div class="right_tools">
				<div class="right_tool1"><a href="#"><@s.property value="%{getText('front.tool.visa')}"/></a></div>
				<div class="right_tool2"><a href="#"><@s.property value="%{getText('front.tool.ticket')}"/></a></div>
			</div>
			<div class="right_tools">
				<div class="right_tool1"><a href="#"><@s.property value="%{getText('front.tool.vehicle')}"/></a></div>
				<div class="right_tool2"><a href="#"><@s.property value="%{getText('front.tool.translation')}"/></a></div>
			</div>
			<div id="right_about">
				<div id="right_about_about"><a href="#"><@s.property value="%{getText('front.aboutus.title')}"/></a></div>
				<div id="right_about_allow"><a href="#"><@s.property value="%{getText('front.aboutus.license')}"/></a></div>
			</div>
			<div class="right_links"><a href="#"><@s.property value="%{getText('front.tool.transport')}"/></a></div>
			<div class="right_links"><a href="#"><@s.property value="%{getText('front.tool.supplier')}"/></a></div>
			<div class="right_links"><a href="#"><@s.property value="%{getText('front.tool.promotion')}"/></a></div>
			<div class="money_ch">
				<div class="mtitle"><@s.property value="%{getText('front.tool.currency')}"/></div>
				<div class="mcon"></div>
			</div>
		</div>
</#macro>