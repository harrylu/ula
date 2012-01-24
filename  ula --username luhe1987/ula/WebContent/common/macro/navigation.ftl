<#-- navigation宏 -->
<#macro navigation c_index c_city c_tour c_service c_search c_contact>
    <div id="nav">
    	<ul>
    		<li><a<#if c_index> class="clicked"</#if> href="${base}/index.html"><@s.property value="%{getText('front.nav.homepage')}"/></a></li>
    		<li id="city_li"><a <#if c_city> class="clicked"</#if> onmousemove="secondNav('snav1');" onmouseout="hidden_nav('snav1');" href="${base}/city.html"><@s.property value="%{getText('front.nav.about.dalian')}"/></a></li>
    		<li id="tour_li" <#if locale='ru'> class="sp"</#if>><a<#if c_tour> class="clicked"</#if> onmousemove="secondNav('snav2');" onmouseout="hidden_nav('snav2');" href="${base}/tour.html"><@s.property value="%{getText('front.nav.jounery.tour')}"/></a></li>
    		<li id="special_li"<#if locale='ru'> class="sp"</#if>><a<#if c_service> class="clicked"</#if> onmousemove="secondNav('snav3');" onmouseout="hidden_nav('snav3');" href="#"><@s.property value="%{getText('front.nav.special.service')}"/></a></li>
    		<li id="search_li"><a<#if c_search> class="clicked"</#if> onmousemove="secondNav('snav4');" onmouseout="hidden_nav('snav4');" href="#"><@s.property value="%{getText('front.nav.search')}"/></a></li>
    		<li id="contact_li"><a<#if c_contact> class="clicked"</#if> onmousemove="secondNav('snav5');" onmouseout="hidden_nav('snav5');" href="#"><@s.property value="%{getText('front.nav.contact.us')}"/></a></li>
    		<li<#if locale='ru'> class="sp"</#if>><a href="#"><@s.property value="%{getText('front.nav.online.contact')}"/></a></li>
    	</ul>
    </div>
 	<div id="nav_sed">
 		<div id="snav1" class="menu1" onmousemove="secondNav('snav1');" onmouseout="hidden_nav('snav1');">
 			<ul class="ul1">
 				<li><a href="${base}/city/intro.html">▪ <@s.property value="%{getText('front.dalian.introduction')}"/></a></li>
 				<li><a href="${base}/city/history.html">▪ <@s.property value="%{getText('front.dalian.history')}"/></a></li>
 				<li><a href="${base}/city/map.html">▪ <@s.property value="%{getText('front.dalian.map')}"/></a></li>
 				<li><a href="#">▪ <@s.property value="%{getText('front.dalian.site.park')}"/></a></li>
 			</ul>
 			<ul class="ul2">
 				<li><a href="${base}/city/tour/dalian.html"><@s.property value="%{getText('front.dalian.downtown')}"/></a></li>
 				<li><a href="${base}/city/tour/lvshun.html"><@s.property value="%{getText('front.dalian.ls')}"/></a></li>
 				<li><a href="${base}/city/tour/devzone.html"><@s.property value="%{getText('front.dalian.jst')}"/></a></li>
 			</ul>
 			<ul class="ul1">
 				<li><a href="${base}/city/food.html">▪ <@s.property value="%{getText('front.dalian.food')}"/></a></li>
 				<li><a href="${base}/city/housing.html">▪ <@s.property value="%{getText('front.dalian.housing')}"/></a></li>
 				<li><a href="${base}/city/shopping.html">▪ <@s.property value="%{getText('front.dalian.shopping')}"/></a></li>
 				<li><a href="${base}/city/transportation.html">▪ <@s.property value="%{getText('front.dalian.transportation')}"/></a></li>
 				<li><a href="${base}/city/therapy.html">▪ <@s.property value="%{getText('front.dalian.therapy')}"/></a></li>
 				<li><a href="${base}/city/festival.html">▪ <@s.property value="%{getText('front.dalian.festival')}"/></a></li>
 				<li><a href="${base}/city/exhibition.html">▪ <@s.property value="%{getText('front.dalian.exhibition')}"/></a></li>
 				<li><a href="#">▪ <@s.property value="%{getText('front.dalian.other')}"/></a></li>
 			</ul>
 			<ul class="ul2">
 				<li><a href="${base}/city/insurance.html"><@s.property value="%{getText('front.dalian.insurance')}"/></a></li>
 				<li><a href="${base}/city/law.html"><@s.property value="%{getText('front.dalian.law')}"/></a></li>
 				<li><a href="${base}/city/mobile.html"><@s.property value="%{getText('front.dalian.mobile')}"/></a></li>
 				<li><a href="${base}/city/tips.html"><@s.property value="%{getText('front.dalian.tips')}"/></a></li>
 			</ul>
 		</div>
            <div id="snav2" class="menu2"  onmousemove="secondNav('snav2');" onmouseout="hidden_nav('snav2');">
            	<ul class="ul1">
                	<li><a href="#">▪ <@s.property value="%{getText('front.tour.business')}"/></a></li>
                    <li><a href="#">▪ <@s.property value="%{getText('front.tour.camping')}"/></a></li>
                    <li><a href="#">▪ <@s.property value="%{getText('front.tour.foodie')}"/></a></li>
                    <li><a href="#">▪ <@s.property value="%{getText('front.tour.family')}"/></a></li>
                    <li><a href="#">▪ <@s.property value="%{getText('front.tour.therapy')}"/></a></li>
                    <li><a href="#">▪ <@s.property value="%{getText('front.tour.newyear')}"/></a></li>
                    <li><a href="#">▪ <@s.property value="%{getText('front.tour.learn')}"/></a></li>
                    <li><a href="#">▪ <@s.property value="%{getText('front.tour.romantic')}"/></a></li>
                    <li><a href="#">▪ <@s.property value="%{getText('front.tour.rural')}"/></a></li>
                    <li><a href="#">▪ <@s.property value="%{getText('front.tour.event')}"/></a></li>
                    <li><a href="#">▪ <@s.property value="%{getText('front.tour.sport')}"/></a></li>
                    <li><a href="#">▪ <@s.property value="%{getText('front.tour.hotspring')}"/></a></li>
                    <li><a href="#">▪ <@s.property value="%{getText('front.tour.exhibition')}"/></a></li>
                    <li><a href="#">▪ <@s.property value="%{getText('front.tour.luxurious')}"/></a></li>
                </ul>
            </div>
            <div id="snav3" class="menu3" onmousemove="secondNav('snav3');" onmouseout="hidden_nav('snav3');">
            	<ul class="ul1">
                	<li><a href="#">▪ <@s.property value="%{getText('front.special.visa')}"/></a></li>
                    <li><a href="#">▪ <@s.property value="%{getText('front.special.hotel')}"/></a></li>
                    <li><a href="#">▪ <@s.property value="%{getText('front.special.supplier')}"/></a></li>
                    <li><a href="#">▪ <@s.property value="%{getText('front.special.commission')}"/></a></li>
                </ul>
                    <ul class="ul2">
                    	<li><a href="#"><@s.property value="%{getText('front.special.carrental')}"/></a></li>
                        <li><a href="#"><@s.property value="%{getText('front.special.ticketbooking')}"/></a></li>
                        <li><a href="#"><@s.property value="%{getText('front.special.translation')}"/></a></li>
                        <li><a href="#"><@s.property value="%{getText('front.special.shipping')}"/></a></li>
                    </ul>
            </div>
            <div id="snav4" class="menu4"  onmousemove="secondNav('snav4');" onmouseout="hidden_nav('snav4');">
            	<ul class="ul1">
                	<li><a href="#">▪ <@s.property value="%{getText('front.search.hotel')}"/></a></li>
                    <li><a href="#">▪ <@s.property value="%{getText('front.search.tour')}"/></a></li>
                </ul>
            </div>
            <div id="snav5" class="menu5"  onmousemove="secondNav('snav5');" onmouseout="hidden_nav('snav5');">
            	<ul class="ul1">
                	<li><a href="#">▪ <@s.property value="%{getText('front.contact.russian')}"/></a></li>
                    <li><a href="#">▪ <@s.property value="%{getText('front.contact.chinese')}"/></a></li>
                    <li><a href="#">▪ <@s.property value="%{getText('front.contact.individual')}"/></a></li>
                </ul>
            </div>
        </div>

</#macro>