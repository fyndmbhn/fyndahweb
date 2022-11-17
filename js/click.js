function clickCounter(){
  var anchor = document.querySelector('a');
  anchor.addEventListner('click',function(){
  fetch('linkResponse.php');
  })
}
clickCounter();