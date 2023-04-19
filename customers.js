let modal = document.getElementsByClassName("myModal");
let n = modal.length;
while (n--) {
    let modal = document.getElementsByClassName("myModal")[n];
    let btn = document.getElementsByClassName("myBtn")[n];
    let span = document.getElementsByClassName("close")[n];
    btn.onclick = function () {
        modal.style.display = "block";
    }
    span.onclick = function () {
        modal.style.display = "none";
    }

}
