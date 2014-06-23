<%--
  Created by IntelliJ IDEA.
  User: yhu
  Date: July 27, 2009
  Time: 10:55:42 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>

<g:message code="allcomnts"/>

	<ul class="nav nav-tabs" data-role="listview" data-split-icon="gear" data-filter="true">
	
		<g:each status="i" var="book" in="${books}">
			<li class="controller">
				<g:link controller="bible" action="cmnt" id="${book.initials}">
${book.name}
				</g:link>
			</li>
		</g:each>
		
	</ul>
