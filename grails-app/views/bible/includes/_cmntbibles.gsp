<%--
  Created by IntelliJ IDEA.
  User: yhu
  Date: July 27, 2009
  Time: 10:55:42 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
                    <a class="rednav"  href="/gsword/bible/cmnt" title="All Commentaries" ><g:message code="allcomnts"/>|</a>
                    <g:if test="${book}">
                   ${book.name}<br/>

<div class="">
	<ul class="nav nav-tabs" data-role="listview" data-split-icon="gear" data-filter="true">
	
		<g:each status="i" var="bible" in="${bibles}">
			<li class="controller">
                         <a href="/gsword/bible/cmnt/${book.initials}/${bible.key}" title="${bible.shortname}" >${bible.shortname}</a> 
			</li>
		</g:each>
		
	</ul>
</div>
                    </g:if>
