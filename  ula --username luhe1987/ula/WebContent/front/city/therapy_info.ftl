<@fp.page>
<!-- The Head -->
<@fp.header /><#-- header宏 -->
<!-- The Container  -->
<div id="container">
	<!-- The Banner  -->
	<@fp.banner /><#-- banner宏 -->
	<!-- The Navigation  -->
	<@fp.navigation c_index=false c_city=true c_tour=false c_service=false c_search=false c_contact=false /><#-- navigation宏 -->
	<!-- The Main Body -->
	<div id="main_body">
		<!-- The Left -->
		<@fp.main_left />
		 <!-- The Content -->
            <div id="article_content">
            	<div id="page_article_title">
                	<p>${city.TITLE}</p>
                </div>
            	<div id="page_article">
            	<p>${city.CONTENT}</p>
            	</div>
            </div>
	</div>
    <!-- The Footer -->
	<@fp.footer /><#-- footer宏 -->
</div>
</@fp.page>