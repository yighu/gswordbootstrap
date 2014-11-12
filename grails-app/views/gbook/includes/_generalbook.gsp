<table id="searchBox" class ='dialog'>
    <tr > <td>
  <g:each in="${books}" status="i" var="book">
       <g:link action="c" id="${book.initials}">${book.name.encodeAsHTML()} |</g:link>
    </g:each>
      </td>
    </tr>   
</table>

<div>
            <g:message code="selectchapter" />:
			<g:select name="genbooksch" id="genbooksch" style="width:200px"
			  from="${gendropdowntoc}" value="name" optionKey="value" optionValue="value" onchange="searchGen();"/>

</div>
	<div id="genform">
       ${txt?.encodeAsRaw()}
	</div>
<hr/>

            <g:message code="selectchapter" />:
			<g:select name="genbooksch2" id="genbooksch2" style="width:200px"
			  from="${gendropdowntoc}" value="name" optionKey="value" optionValue="value" onchange="searchGen2();"/>
<hr/>
<hr/>
<div>
     ${toc?.encodeAsRaw()}
</div>
  
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
<table class ='dialog'>
    <tr > <td>
  <g:each in="${books}" status="i" var="book">
       <g:link action="c" id="${book.initials}">${book.name.encodeAsHTML()} |</g:link>
    </g:each>
      </td>
    </tr>   
</table>
