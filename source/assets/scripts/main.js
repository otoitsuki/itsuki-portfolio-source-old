/* (c) 2014 Itsuki. http://otoitsuki.info  */
// var sliderShow = function(){ 

// 	var wait = 100;

// 	$('.arrow-prev').click(function(){
// 	    var currentSlide = $('.active-slide');
// 	    var prevSlide = currentSlide.prev();
// 	    if ( prevSlide.length == 0) {
// 	        var prevSlide = $('.slide').last();    
// 	    }
// 	    // 藉由只fadein不faderput去掉中間換幕的空白，並且不會有block和none交錯時導致的同時出現圖片問題
// 	    currentSlide.fadeOut(0).removeClass('active-slide');
// 	    prevSlide.fadeIn(wait).addClass('active-slide');
// 	});

// 	$('.arrow-next').click(function(){
// 	    var currentSlide = $('.active-slide');
// 	    var nextSlide = currentSlide.next();
// 	    if ( nextSlide.length == 0) {
// 	        var nextSlide = $('.slide').first();    
// 	    }
// 	    currentSlide.fadeOut(0).removeClass('active-slide');
// 	    nextSlide.fadeIn(wait).addClass('active-slide');
// 	});
 
// };

var menuBtn = function(){
	$('#menuButton').click(function(event) {
		event.defaultPrevented;
		$('.main-nav').toggle();
	});
};
$(function() {
	menuBtn();
});