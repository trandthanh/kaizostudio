import "bootstrap";

$('.carousel').carousel({interval: 3000});


$(function() {
    $('.pop').on('click', function() {
      $('.imagepreview').attr('src', $(this).find('img').attr('src'));
      $('#imagemodal').modal('show');
    });
});



var main = function() {

$('.arrow-next-2').click(function() {
    //creating the variables so that we can target them in jQuery
    var currentSlide = $('.active-slide-2');
    var nextSlide = currentSlide.next();
    //if the current slide is the last, make the next slide the first one
    if(nextSlide.length == 0 ) {
     nextSlide = $('.slide-2').first() ;
    }
    //when the arrow is clicked, fade out the current img and fade in the next one
    currentSlide.fadeOut(0).removeClass('active-slide-2');
    nextSlide.fadeIn(0).addClass('active-slide-2');
});
$('.arrow-prev-2').click(function(){
    //creating the variables so that we can target them in jQuery
    var currentSlide = $('.active-slide-2')
    var prevSlide = currentSlide.prev()
    //if the current slide is the last, make the prev slide the last one
    if(prevSlide.length == 0){
    prevSlide = $('.slide-2').last();
    }
    //fade out the current img and fade in the prev one when the arrow is clicked
    currentSlide.fadeOut(0).removeClass('active-slide-2')
    prevSlide.fadeIn(0).addClass('active-slide-2')
});
}

$(document).ready(main);
