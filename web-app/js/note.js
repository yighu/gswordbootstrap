function takenote(){
console.log("take note");
$.ajax({
  type: "POST",
  url: "/gsword/note/takenote",
})
  .done(function( msg ) {
      if(msg.data){
      		$('#noteform').html(msg.data);
  	}
  });

}


function keepnote(){
var reference=$('#reference').val();
var ref="";
if(reference)ref=reference;
if(!ref)ref="";
$.ajax({
  type: "POST",
  url: "/gsword/note/keepnote",
  data:{note:$('#notetxt').val(),email:$('#noteemail').val(),ref:ref,title:$('#notetitle').val() }
})
  .done(function( msg ) {
   $('#emailnotestatus').html(msg.data);
  });
}
function addreftonote(){
var reference=$('#reference').val();
var ref="";
if(reference)ref=reference;
$('#notetxt').val($('#notetxt').val()+"\n"+ref);
}

function sendnotemail(){


$.ajax({
  type: "POST",
  url: "/gsword/note/emailnote"
})
  .done(function( msg ) {
	if(msg.data){
      		$('#emailnotestatus').html(msg.data);
	}
  });
}

