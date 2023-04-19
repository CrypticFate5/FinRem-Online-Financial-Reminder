var modal1 = document.getElementById("myModal1");
var btn1 = document.getElementById("myBtn1");
var modal2 = document.getElementById("myModal2");
var btn2 = document.getElementById("myBtn2");
var span1 = document.getElementById("close1");
var span2 = document.getElementById("close2");
btn1.onclick = function () {
    modal1.style.display = "block";
}
span1.onclick = function () {
    modal1.style.display = "none";
}

btn2.onclick = function () {
    modal2.style.display = "block";
}
span2.onclick = function () {
    modal2.style.display = "none";
}