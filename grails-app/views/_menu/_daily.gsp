<li class="dropdown">
	<a class="dropdown-toggle" data-toggle="dropdown" href="#"><g:message code="feed"/><b class="caret"></b></a>
	<ul class="dropdown-menu">
			<li class="controller">
				<g:link controller="gbook" action="oneyearbible">
					<g:message code="oneyearbible"/>	
				</g:link>
				<g:link controller="gbook" action="threeyearbible">
					<g:message code="threeyearbible"/>	
				</g:link>
			</li>
			<li class="controller">
				<g:link controller="gbook" action="dailydevotions">
					<g:message code="dailyfood"/>	
				</g:link>
			</li>
			<li class="controller">
				<g:link controller="prayer" >
					<g:message code="prayer"/>	
				</g:link>
			</li>
			<li class="controller">
				<g:link controller="incloset">
					<g:message code="closet"/>	
				</g:link>
			</li>
			<li class="controller">
				<g:link controller="gbook" action="vp" id="${Calendar.getInstance().get(Calendar.DAY_OF_WEEK)}">
					<g:message code="readpray"/>	
				</g:link>
			</li>
	</ul>
</li>
