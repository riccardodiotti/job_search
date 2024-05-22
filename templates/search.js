//once the form has loaded and initial lookups have run, this section will execute
$(document).on("onloadlookupfinished", function () {
  // the following line hides the spinner. 
  $('#PDloader, .PDloading').css('display' , 'none');
});
//this is the selector for my button
$('.autofill').on('click',function() {
  //turn the spinner on.
  $('#PDloader, .PDloading').css('display' , 'block');
  //this waits 5 seconds then disables the spinner.
  setTimeout(
    function() {
      $('#PDloader, .PDloading').css('display' , 'none');
    }, 5000
  );
});
