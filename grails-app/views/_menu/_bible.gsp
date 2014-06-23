<li class="dropdown">
	<a class="dropdown-toggle" data-toggle="dropdown" href="#"><g:message code="bible"/><b class="caret"></b></a>
	<ul class="dropdown-menu">
			<li class="controller">
				<g:link controller="bible" action="read">
					<g:message code="readbible"/>	
				</g:link>
			</li>
			<li class="controller">
				<g:link controller="bible" action="search">
					<g:message code="searchthebible"/>	
				</g:link>
			</li>
			<li class="controller">
				<g:link controller="bible" action="cmnt">
					<g:message code="commentary"/>	
				</g:link>
			</li>
			<li class="controller">
                               <a href="${createLink(uri: '/ex')}">
					<g:message code="general"/>	
                               </a>
			</li>
			<li class="controller">
				<g:link controller="gbook" action="searchdics">
					<g:message code="dictionarylookup"/>	
				</g:link>
			</li>
	</ul>
</li>
