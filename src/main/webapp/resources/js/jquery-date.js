$(function() {
    $( "#datepicker" ).datepicker({
        showOn: "both",
        buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif"
        , changeMonth:true
        , changeYear:true
        , yearRange:"2009:9999"
        , dateFormat:"yy-mm-dd"
    });
});