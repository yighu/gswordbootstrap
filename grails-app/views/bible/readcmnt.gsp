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

  if (book) {
    tt += " " + book?.initials
    if (bible) {
      tt += " " + bible?.shortname
      if (chap ) {
        tt += " " + chap
      //  println " v "+v
       if (v) {
        //  println "v:"+v
         tt += ":" + v
        }
      }
    }
  }
  
   tt+=" in the Bible "
  def ks=txt?.replaceAll("\\<.*?>","");

%>
<head><title>${tt} - GSword What does Bible say? ${ks} </title>
  <meta name="description" content="${tt} ${ks} what does Bible say CCIM Chinese Christian GSword Online Bible Studio "/>
     <meta name="keywords" content="${keyword},${tt},${ks}, what does Bible say CCIM,word,GSword,Jsword,Bible,Chinese,groovy,grails"/>
     <meta name="layout" content="kickstart" />
<g:javascript library="application" />

  <link rel="stylesheet" type="text/css" href="${createLinkTo(dir:pluginContextPath,file:'css/iBD.css')}" />

<g:javascript library="application" />
</head>
<body>
<div class="">
<span class="pgray">
<g:if test="${layer==0}">
  <g:render template="includes/vcmnt"/>
</g:if>
<g:if test="${layer==1}">
  <g:render template="includes/cmntbibles"/>
</g:if>
<g:if test="${layer==2}">
  <g:render template="includes/cmntbook"/>
</g:if>
<g:if test="${layer==3}">
  <g:render template="includes/cmntchapter"/>
</g:if>
<g:if test="${layer==4}">
  <g:render template="includes/cmntchapter"/>
</g:if>
 </span>
   
</div>
${txt?.encodeAsRaw()}

</body>
</html>
