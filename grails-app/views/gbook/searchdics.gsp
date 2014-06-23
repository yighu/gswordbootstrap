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
  //System.out.println "total:"+total   +" totalkeye:"+totalkeye+" totalkeyc:"+totalkeyc +" totalkeycs:"+totalkeycs
  def v = params.get("verse");

  def tt = ""
  def h = ""
  if (keyword) {
    tt += keyword
    h += keyword
    if (bibleversion) {
      if (params?.containsKey("offset")) {
        tt += " - " + params.get("offset")
      }
      tt += " in the Bible " + bibleversion
      h += " in the Bible " + bibleversion
    }

  }
  def ks = txt?.replaceAll("\\<.*?>", "");
%>
<head>
  <gui:resources components="autoComplete" mode="debug"/>
  <title>${tt} - GSword Dictionary ${ks}</title>
  <meta name="description" content="${tt} CCIM Chinese Christian GSword Online Bible Studio Dictionary"/>
  <meta name="keywords" content="${keyword},${tt},${ks}CCIM,word,GSword,Jsword,Bible,Chinese,groovy,grails,dictionary"/>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <g:javascript library="application"/>

  <meta name="layout" content="main"/>

</head>
<body class="yui-skin-sam">   <br/>
<g:form>
  <table>
  <tr>
  <td>
    <g:message code="searchword" />
  </td>

 <td width="200">
<g:textField name="keyword"  id="keyword" onchange="searchDictionary();"/>
 </td>
 <td>
    <g:message code="selectdic" />
   </td>
    <td>

  <g:select name="dictionaries" id="dictionaries" class='dictionaries' noSelection="['easton':'Eastons Bible Dictionary']"
          from="${dictionaries}" value="name" optionKey="initials" optionValue="name" onchange="searchDictionary(); "/>
    </td>
   </tr>
  </table>
  </g:form>
 <br/>
  <div id="display_dict" name="display_dict">
   <b> ${keyword}</b> <br/><br/>${keyvalue?.encodeAsRaw()}
    </div>
<br/>
      <g:if test="${bookkey}">
        <div style="padding: 10px"><div style="background:#DFDDD1;font-weight: bold; padding:10px">
                  <span class="pgray">
<div class="paginateButtons">
  ${dic?.encodeAsRaw()} 
<span class="pager-list"><strong class="pager-current">
<g:paginate total="${bookkey.getCardinality()}" controller="gbook" action="searchdics" params='["dic":"${dic?.trim()}"]' maxsteps="1" max="1" />
</strong>
</span></div>

                  </span>
              </div></div>
      </g:if>

      <br/>
<g:render template="includes/dictionaries"/>


</body>
</html>
