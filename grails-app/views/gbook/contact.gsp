<%--
  Created by IntelliJ IDEA.
  User: Yiguang
  Date: Dec 29, 2008
  Time: 8:34:27 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>CCIM GSword Online Bible studio</title>
  <meta name="description" content="CCIM Chinese Christian GSword Online Bible Studio"/>
  <meta name="keywords" content="CCIM,GSword,Jsword,Bible,Chinese,groovy,grails"
/>

  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

  <link rel="stylesheet" type="text/css" href="${createLinkTo(dir:pluginContextPath,file:'css/iBD.css')}" />

  <g:javascript library="jquery"/>

<g:javascript library="application" />
<meta name="layout" content="kickstart"/>


</head>
  <body>  Please let us know your feedback & suggestions!
   <table>
        <tr>
  <td> Name

 </td>
            <td>
                <g:textField name="username" />
            </td>
        </tr>
       <tr>
           <td>   Email
          </td>
           <td>
               <g:textField name="useremail"/>
           </td>
       </tr>
      <tr>
           <td> Comment       </td>
           <td>
               <g:textArea name="usercomment" rows="5" cols="30"/>
           </td>
       </tr>

    </table>
  <table>

     <tr >
         <td>
 <button type="button" id="sendemail" onclick="sendmail();">Submit</button>         </td>
         <td>
          <div id="emailstatus"/> 
         </td>
     </tr>
  </table>
  </body>
</html>
