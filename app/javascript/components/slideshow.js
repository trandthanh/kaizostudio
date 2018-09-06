export function plusSlides(n) {
  clearInterval(myTimer);
  this.showSlides(slideIndex += n);
  if ( n = -1){
    myTimer = setInterval(() => {this.plusSlides(n + 2);}, 4000);
  } else {
    myTimer = setInterval(() => {this.plusSlides(n + 1);, 4000});
  }
}

export function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.querySelector


}


