<!-- fieldset legend="search area" -->
<g:javascript library="application" />
  <modalbox:modalIncludes />
 
  <table id="searchBox" class ='dialog'>
    <tr >
		<td>
			<input type="text" placeholder="关键字Key Word" id="keyword" onblur="searchBible();" onchange="searchBible();" title="Input Key word for Bible/Dictionary Lookup"/>
			
			<g:select name="books" id="books" class ="books" noSelection='["${version}":"圣经Bible"]' title="Select Main Bible"
			  from="${books}" value="name" optionKey="initials" optionValue="name" onchange="searchBible();" />
			<g:select name="dictionaries" id="dictionaries"  class ='dictionaries' noSelection="['easton':'词典Dictionary']" title="Dictonary Lookup" from="${dictionaries}" value="name" optionKey="initials" optionValue="name"  onchange="searchDictionary();" />
			<g:select id="parallels" name="parallels" class = "books" onchange="flip_parallel();" noSelection="['':'对照Parallel']"   title="Select Parallel Bible"
                from="${books}" value="name" optionKey="initials" optionValue="name"/>
			<g:select onchange="flip_commentary();" name="commentaries" id="commentaries" class ='books'  noSelection="['':'注解Commentary']" title="Select Commentary"
                from="${commentaries}"  value="name" optionKey="initials" optionValue="name" />
		</td>
<!--
		<td class ='labelright'>
			<g:message code="choosebook" />: 
		</td>
		<td>
			<g:select name="bibles" id="bibles" clas='bibles' noSelection="['':'']"
              from="${bibles}"  
            optionValue="shortname"
                optionKey="key"
                onchange="updateChaptersperbible(this.value);"
              />

		</td>
		<td class ="labelright" >
            <g:message code="oneyearbible" />:
		</td>
		<td title="select a bible for daily reading">
			<g:select name="dailyword" class ="dailyword" noSelection="['':'']"
                from="${books}" value="name" optionKey="initials" optionValue="name" onchange="showword(this.value); " />

		</td>
-->
      	<td  class ='dialog' >
            <modalbox:createLink controller="gbook" action="adsearch" title='Advanced Search' width="400" linkname='Advanced Search' />


        </td>
    </tr>
    <tr>
		  

<!--
        <td   class ="labelright">
            <g:message code="choosechapter" />: 
		</td>
		<td>
			<g:select name="chapters" class = 'chapters' noSelection="['':'']"
              from="${chapters}"
				onchange="updateReference(\$(\'#bibles\').val()+\' \'+ escape(this.value));"/>
		</td>
-->
<!--
	    <td>
        <g:message code="dailyfood" />:
      </td>
      <td  class ='dialog' title="select the Bible version">
                <g:select name="devotion" id="devotion" class ='commentaries'  noSelection="['':'']"
                from="${devotions}" value="name" optionKey="initials" optionValue="name"
				onchange="${remoteFunction(
		           controller:'gbook',
		           action:'devotion',
		           params:'\'devotion=\' + escape(this.value)',
		           onComplete:'updateForm(e)')}"/>

              </td>
      <td>
        <a href="http://bible.ccim.org/" target="_blank"> <g:message code="oldtool" /></a>
      </td>
-->

    </tr>
</table>
<table>
    <tr>
            <button type="button" id="showstrongs" onclick="showstrongs();" title="Click to on/off Strong number. Best used with KJV Bible"><g:message code="strongs" /></button>&nbsp;

         <!--td>
            <button type="button" id="showmorph" onclick="showmorph();"><g:message code="morphology" /></button>&nbsp;

         </td-->
            <button type="button" id="shownotes" onclick="shownotes();" title="Click to on/off notes. Best used with KJV Bible"><g:message code="notes" /></button>&nbsp;
            <button type="button" id="showheadings" onclick="showheadings();" title="Click to on/off headings. Best used with KJV Bible"><g:message code="headings" /></button>&nbsp;
        <!--td>
            <button type="button" id="showxref" onclick="showxref();" title="Click to on/off xref. Best used with KJV Bible"><g:message code="xref" /></button>&nbsp;
        </td-->
              <button type="button" id="showverseline" onclick="showverseline();" title="Click to swith 1 or multiple verses a line"><g:message code="verseperline" /></button>&nbsp;


           <button type="button" id="ppt" onclick="genppt();">PPT</button>&nbsp;
           %{--<button type="button" id="excl" onclick="genexcl();">Excel</button>&nbsp;--}%
          <!--td><button onclick="showcomment();"><g:message code="comment" /></button></td-->
          <!--td><button onclick="showhelp();"><g:message code="help" /></button></td-->
          <button onclick="showadvsearch();"><g:message code="AdvancedSearch" /></button>
</td>
    </tr>


</table>

<table>
  <tr> 
  <td  valign="top" title="Select book">
    
      <g:message code="books" />
     <g:if test="${bibles}">
	<g:select name="bibles" id="bibles" class ='bibles' noSelection="['':'书Book']"
              from="${bibles}"  
            optionValue="shortname"
                optionKey="key"
                onchange="setChaps(this.value);"
              />
<!--
                onchange="updateChaptersperbible(this.value);"
            <g:each in="${bibles}" status ="i" var="b">
            <button id="b${b}" onClick='return setChaps(&quot;${b.key}&quot;);'>
             ${b.shortname}
           </button>
            </g:each>
-->

             </g:if>
			<input type="text" placeholder="章节Verses" id="reference" value="${ref}" onchange="locate();" onblur="locate();" title="Input the verse to display"/>
		<input type="text" id="total" name="total" placeholder="总数Total" value="${total}" size="4" maxlength="4" readonly/>
			<button type="button" id="prev" onclick="prev();" title="Click for previous 10 verses">< <g:message code="default.paginate.prev" /></button>&nbsp;
			<button type="button" id="next" onclick="nextstep();" title="Click for next 10 verses"><g:message code="default.paginate.next" /> ></button>
            <div id="info" name="info" />
<div id="chaps" name="chaps" />
      </td>
</tr>   
<tr>
          <td valign="top" >

<!-- Modal -->
<div class="modal fade" id="display_dict_modal" name="display_dict_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title" id="myModalLabel">Topic Detail</h4>
      </div>
      <div class="modal-body" id="display_dict" name="display_dict">
   <b> ${keyword}</b> <br/><br/>${keyvalue?.encodeAsRaw()}
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
            <br/>
  </td>
  </tr>
<tr>
          <td valign="top" >
<!--		
    		<div id="auxform" name="auxform"></div>
    		<button id="closeaux" name="closeaux" style="display:none" onclick="offAuxform();">Click Me to close</button>
-->
<!-- Modal -->
<div class="modal fade" id="auxform_modal" name="auxform_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title" id="myModalLabel">Advanced Search</h4>
      </div>
      <div class="modal-body" id="auxform" name="auxform">
   <b> ${keyword}</b> <br/><br/>${keyvalue?.encodeAsRaw()}
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
  </td>
  </tr>
  <tr>
    <td id="display" valign="top">


      <div id="liveform">
	${results.encodeAsRaw()}
      </div>
    </td>
       

  </tr>
</table>
    </td>
</table>
