

$( document ).ready(function() {
  $("#chat").on("ajax:success", function (e, data, status, xhr){
     var new_comment=$("#team_chat_template").clone();
     $(new_comment).removeAttr( "id" );
     $(new_comment).find("img").attr("src",xhr.responseJSON["user"]["profile_img"]);
     $(new_comment).find("p").text(xhr.responseJSON["content"]);
     $(new_comment).find(".date").text(xhr.responseJSON["created_at"]);
     $("#team_chat_content").val('')
    $("#team_chat_target").prepend($(new_comment))
  })
  $("#trashtalk").on("ajax:success", function (e, data, status, xhr){
      console.log(xhr);
      var trash_talk=$("#trash_talk_template").clone();
     $(trash_talk).removeAttr("id").removeAttr("style");
     $(trash_talk).find("img").attr("src",xhr.responseJSON["user"]["profile_img"]);
     $(trash_talk).find("p").text(xhr.responseJSON["content"]);
     $(trash_talk).find(".date").text(xhr.responseJSON["created_at"]);
     $("#trash_talk_content").val('')
    $(".commentList").prepend($(trash_talk))
    })

});
