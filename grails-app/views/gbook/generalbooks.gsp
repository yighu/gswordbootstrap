<%--
  Created by IntelliJ IDEA.
  User: Yiguang
  Date: Dec 20, 2008
  Time: 9:30:55 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>CCIM GSword Online Bible studio-classics-${params.id}-${params.key}</title>
  <meta name="description" content="CCIM Chinese Christian GSword Online Bible Studio ${params.id} ${params.key} "/>
  <meta name="keywords" content="CCIM,GSword,Jsword,Bible,Chinese,groovy,grails,classics ${params.id} ${params.key} "/>

  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="layout" content="main" />

  <link rel="stylesheet" type="text/css" href="${createLinkTo(dir: pluginContextPath, file: 'css/iBD.css')}"/>
 <g:javascript library="jquery"/>
<g:javascript library="application" />
</head>

<body>
<H1><g:message code="classics"/></H1>
<g:render template="includes/generalbook"/>
<a href="/gsword"><g:message code="home" /> |</a>
</body>
</html>
