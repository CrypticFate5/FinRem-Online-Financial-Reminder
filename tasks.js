let modalClass=document.getElementsByClassName("modal");
let btnClass=document.getElementsByClassName("reviewBtn");
let closeBtnClass=document.getElementsByClassName("close");

let n=modalClass.length;
while(n--){
    let modal=modalClass[n];
    let btn=btnClass[n];
    let closeBtn=closeBtnClass[n];
    btn.onclick=()=>{
        modal.style.display="block";
    };
    closeBtn.onclick=()=>{
        modal.style.display="none";
    };
}
