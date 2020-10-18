$(function() {
    $( "#Date1" ).datepicker({
    });
    $( "#Date2" ).datepicker({
    });
    $( "#Date3" ).datepicker({
    });
    $( "#Date4" ).datepicker({
    });
    
});

function checkAll(){
      if( $("#th_checkAll").is(':checked') ){
        $("input[name=checkRow]").prop("checked", true);
      }else{
        $("input[name=checkRow]").prop("checked", false);
      }
}
