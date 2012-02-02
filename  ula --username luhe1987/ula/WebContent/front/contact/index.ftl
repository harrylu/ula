<@fp.page>
<!-- The Head -->
<@fp.header /><#-- header宏 -->
<!-- The Container  -->
<div id="container">
	<!-- The Banner  -->
	<@fp.banner /><#-- banner宏 -->
	<!-- The Navigation  -->
	<@fp.navigation c_index=false c_city=false c_tour=false c_service=false c_search=false c_contact=true /><#-- navigation宏 -->
	<!-- The Main Body -->
	<div id="main_body">
		<!-- The Left -->
		<@fp.main_left_contact /><#-- 主体左侧宏，包含关于大连导航，RSS订阅，天气预报-->
		 <!-- The Content -->
            <div id="article_content">
            	<div id="page_article_title">
                	<p>${contact.TITLE}</p>
                </div>
            	<div id="page_article">
            	<p>${contact.CONTENT}</p>
            	</div>
            </div>
	</div>
    <!-- The Footer -->
	<@fp.footer /><#-- footer宏 -->
</div>
</@fp.page>