

$( document ).ready(function() {
  $('.nifty_form input:nth-child(3)').on('ajax:success', function(event,data,status,xhr) {
    console.log(data);
    console.log(status);
    $("#team_chat_target").append(data);
  });
});
