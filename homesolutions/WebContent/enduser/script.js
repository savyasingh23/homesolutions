var btn = document.querySelector('#info button');
var modal = document.querySelector('#modal');
var crossbtn = document.querySelector('#modal i');


btn.addEventListener('click', function(){
    modal.style.display = 'initial';
})
crossbtn.addEventListener('click',function(){
    modal.style.display = 'none';
})

