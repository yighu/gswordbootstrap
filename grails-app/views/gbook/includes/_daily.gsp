<g:javascript library="application" />
<center>

<g:message code="subscribe"/>:    <a href="http://bible.ccim.org/email/bibleemaillist_zh.htm">Chinese</a> <a href="http://bible.ccim.org/email/bibleemaillist.htm">English</a>
<br/>

        <g:message code="dailyfood" />:
                <g:select name="devotion" id="devotion" class ='books'  noSelection="['':'']"
                from="${devotions}" value="name" optionKey="initials" optionValue="name"
				onchange="dailydevotion(this.value);" />
</center>

<br/>
      <div id="liveform">
      ${results?.encodeAsRaw()}
      </div>
