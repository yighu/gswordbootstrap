<!-- fieldset legend="search area" -->
<g:javascript library="application" />
<modalbox:modalIncludes />

<header>
		<div class='gput'><input type="text" class="books" placeholder="关键字Key Word"
			id="keyword" onblur="searchBible();" onchange="searchBible();"
			title="Input Key word for Bible/Dictionary Lookup" /></div>
		<div class='gput'><g:select name="books" id="books" class="books"
				noSelection='["${version}":"圣经Bible"]'
				title="Select Main Bible Version" from="${books}" value="name"
				optionKey="initials" optionValue="name" onchange="searchBible();" />
		</div>
		<div class='gput'>
			<!--g:message code="books" /--> 
			<g:if test="${bibles}">
				<g:select name="bibles" id="bibles" class='bibles'
					noSelection="['':'书Book']" from="${bibles}" optionValue="shortname"
					optionKey="key" onchange="setChaps(this.value);" />
			</g:if>
		</div>
		<div class='gput'><g:select name="chapters" class='chapters'
				noSelection="['1':'章chapter']" from="${chapters}"
				onchange="updateReference(\$(\'#bibles\').val()+\' \'+ escape(this.value));" />


		</div>

		<div class='gput'><input class="books" type="text" placeholder="章节Verses"
			id="reference" value="${ref}" onchange="locate();" onblur="locate();"
			title="Input the verse to display" /></div>
		<div class='gput' type="button" id="showstrongs" onclick="showstrongs();" title="Click to on/off Strong number. Best used with KJV Bible"> <g:message code="strongs" /> </div>
		<div class='gput'><g:select name="dictionaries" id="dictionaries"
				class='dictionaries' noSelection="['easton':'词典Dictionary']"
				title="Select Dictonary" from="${dictionaries}" value="name"
				optionKey="initials" optionValue="name"
				onchange="searchDictionary();" /></div>
		<div class='gput'><g:select id="parallels" name="parallels" class="books"
				onchange="flip_parallel();" noSelection="['':'对照Parallel']"
				title="Select Parallel Bible" from="${books}" value="name"
				optionKey="initials" optionValue="name" /></div>
		<div class='gput'><g:select onchange="flip_commentary();" name="commentaries"
				id="commentaries" class='books' noSelection="['':'注解Commentary']"
				title="Select Commentary" from="${commentaries}" value="name"
				optionKey="initials" optionValue="name" /></div>

		<div class='gput'
			type="button" id="prev" onclick="prev();"
				title="Click for previous 10 verses">
				
				<g:message code="default.paginate.prev" />
		</div>
		<div class='gput' type="text" id="total" name="total"
			placeholder="总数Total" value="${total}" width="3" maxlength="3"
			readonly />${total}</div>
		<div class='gput' type="button" id="next" onclick="nextstep();"
				title="Click for next 10 verses">
				<g:message code="default.paginate.next" />
				
		</div>
		<div class='gput' onclick="showadvsearch();"> <g:message code="AdvancedSearch" />
		</div>
		<div class='gput' class="noteButton" onclick="takenote();" title="Click me to take note at page bottom">&nbsp;&nbsp;&nbsp;</button>
	</div>
		<div class='gput' type="button" id="ppt" onclick="genppt();">PPT</div>
		
</header>
<div id="info" name="info" /></div>
<div id="chaps" name="chaps" style="display: none" /></div>

<div class="modal fade" id="display_dict_modal"
	name="display_dict_modal" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">
					<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">Topic Detail</h4>
			</div>
			<div class="modal-body" id="display_dict" name="display_dict">
				<b> ${keyword}</b> <br />
				<br />
				${keyvalue?.encodeAsRaw()}

			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</div>
<div class="modal fade" id="auxform_modal" name="auxform_modal"
	tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
	aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">
					<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">Advanced Search</h4>
			</div>
			<div class="modal-body" id="auxform" name="auxform">
				<b> ${keyword}</b> <br />
				<br />
				${keyvalue?.encodeAsRaw()}

			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</div>
<section>
<div id="display">


	<div id="liveform">
		${results.encodeAsRaw()}
	</div>
</div>
</section>
