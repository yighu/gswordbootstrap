<g:javascript library="application" />
<center>

<br/>

            <g:message code="threeyearbible" />:
			<g:select name="dailyword" class ="books" noSelection="['':'']"
                from="${books}" value="name" optionKey="initials" optionValue="name" onchange="showword3yr(this.value); " />
</center>

<br/>
      <div id="liveform">
	<h1>Approaching God亲近神</h1>      
<p>	Think of the privilege of Prayer. Realize God is Present. Ask Him to help you pray.</p>
<p>思想我们祷告的权柄。意识到神就在这儿。请他帮助祷告。</p>
      ${evoke.encodeAsRaw()}
	<h1>Meditate His Word诵读默思他的话语</h1>      
      ${results.encodeAsRaw()}
<br/>
<p>Discern one or two truths you learn from these passages. Choose the one that most impresses you and write it in a sentence. </p><p>Now ask: How does this truth help me praise God? How does it show me a sin to confess? How does it show me something to ask God for? </p>	
<p>从这段经文中找出一两个真理。选择其中一个并写成句。问这些问题：这个真理如何帮助我赞美神？他如何揭示我当承认的罪？他如何显明我哪些方面需要求神帮助。</p>
<br/>
	<h1>Word Prayer话语祷告</h1>      
	<p>Turn the answers to the three questions into prayer-adoration, petition, and supplication</p>
	<p>将对这三个问题的答案转为祷告：颂赞，请求和祷告</p>
	<h1>Free Prayer自由祷告</h1>      
<p> Pray about whatever needs are on your heart. Spend time thanking God for the ways you see him working in your life and caring for you.  </p>
<p>将内心的负担向神祷告。感谢神在你生命中的工作和他对你的关爱。 </p>
<h1>Contemplation沉思</h1>
<p> Take a moment to thank and admire God for what he has showed you today. End with a note of praise. </p>
<p>感谢神的带领并赞美他。 </p>
<!--p>Note:The idea of praying through the Scripter was inspired by Pastor Timothy Keller through his book << Prayer >> </p-->
      </div>


