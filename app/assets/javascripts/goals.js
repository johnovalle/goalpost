$(function(){
  $('.goal_complete input[type=checkbox]').click(function(){
    $(this).parent('form').submit();
  });
});

