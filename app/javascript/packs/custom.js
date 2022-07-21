let switchBtn = document.getElementById('nav-box-btn');
let menuBox = document.getElementById('nav-item-box');
let changeElement = (el)=>{
  if(el.style.display=='none'){
    el.style.display='block';
  }else{
    el.style.display='none';
  }

}

switchBtn.addEventListener('click',()=>{
  changeElement(menuBox);
},false);
