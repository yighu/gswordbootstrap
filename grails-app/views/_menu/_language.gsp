<li class="dropdown">
	<a class="dropdown-toggle" data-toggle="dropdown" href="#"><g:message code="changelanguage"/><b class="caret"></b></a>
	<ul class="dropdown-menu">
			<li class="controller">
				<g:link controller="gbook" action="language_change" params="[lang: 'zh_CN']">
					<g:message code="locale.language.zh"/>	
				</g:link>
			</li>
			<li class="controller">
				<g:link controller="gbook" action="language_change" params="[lang: 'en_US']">
					<g:message code="locale.language.en"/>	
				</g:link>
			</li>
	</ul>
</li>
