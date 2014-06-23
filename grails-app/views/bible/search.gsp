<%--
  Created by IntelliJ IDEA.
  User: Yiguang
  Date: Jul 8, 2009
  Time: 9:29:22 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<%
  def v = params.get("verse");

  def tt = ""
  def h=""
  if (keyword) {
    tt += keyword
    h+=keyword
    if (bibleversion) {
    if (params?.containsKey("offset")){
      tt+= " - "+params.get("offset")      
    }
      tt += " in the Bible " + bibleversion
      h += " in the Bible " + bibleversion
    }

  }
 def ks=txt?.replaceAll("\\<.*?>","");
%>
<head><title>${tt} - GSword What does Bible say ${ks}</title>
  <meta name="description" content="${tt} what does Bible say CCIM Chinese Christian GSword Online Bible Studio"/>
   <meta name="keywords" content="${keyword},${tt},${ks},what does Bible say CCIM,word,GSword,Jsword,Bible,Chinese,groovy,grails"/>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<g:javascript library="application" />

  <link rel="stylesheet" type="text/css" href="${createLinkTo(dir:pluginContextPath,file:'css/iBD.css')}" />

<g:javascript library="application" />
  <meta name="layout" content="kickstart" />
   
</head>
<body>
<center>

<h1>${h}</h1>

<g:form name="searchform" method="POST" url='[controller: "bible", action: "seek"]'>
   <g:hiddenField name="version" value="${bibleversion}" id="version"/> 
   <g:textField name="key"  id="key" />  
   <g:actionSubmit class="search" value="Submit" action="seek"/>
</g:form>
</center>

  <g:render template="includes/resultbykey"/>
<div id="liveform" name="liveform">
${txt?.encodeAsRaw()}
</div>




<g:render template="includes/keye"/>
<g:render template="includes/keyc"/>
<g:render template="includes/keycs"/>
<a href="/gsword" >Home |</a>

<a href="${createLink(controller:'bible', action:'read')}"><g:message code="searchbible"/></a>

<a href="${createLink(controller:'gbook', action:'v')}">|GSword</a>
</body>
</html>
