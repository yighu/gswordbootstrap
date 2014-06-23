<li class="dropdown">
	<a class="dropdown-toggle" data-toggle="dropdown" href="#">Parallel Bible<b class="caret"></b></a>
	<ul class="dropdown-menu">
		<g:each var="c" in="${1..10}">
			<li class="controller">
				<g:link controller="${c}">
					${c}
				</g:link>
			</li>
		</g:each>
	</ul>
</li>
