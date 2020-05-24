$(function(){
  $("img1").toggle(function(){
    $(this).attr('src', 'sample01.png');
  },
  function(){
    $(this).attr('src', 'sample02.png');
  });
});
