	
	$('.count').each(function () {
    $(this).prop('Counter',0).animate({
        Counter: $(this).text()
    }, {
        duration: 1000,
        easing: 'swing',
        step: function (now) {
            $(this).text(Math.ceil(now));
        }
    });
});











//read More Action

$(document).ready(function() {
    // Configure/customize these variables.
    var showChar = 140;  // How many characters are shown by default
    var ellipsestext = "...";
    var moretext = "Read more";
    var lesstext = "Read less";
    

    $('.more').each(function() {
        var content = $(this).html();
 
        if(content.length > showChar) {
 
            var c = content.substr(0, showChar);
            var h = content.substr(showChar, content.length - showChar);
 
            var html = c + '<span class="moreellipses">' + ellipsestext + '&nbsp;</span><span class="morecontent"><span>' + h + '</span>&nbsp;&nbsp;<a href="" class="morelink">' + moretext + '</a></span>';
 
            $(this).html(html);
        }
 
    });
 
    $(".morelink").click(function(){
        if($(this).hasClass("less")) {
            $(this).removeClass("less");
            $(this).html(moretext);
        } else {
            $(this).addClass("less");
            $(this).html(lesstext);
        }
        $(this).parent().prev().toggle();
        $(this).prev().toggle();
        return false;
    });
});

//read More Action


//form lable action

$('input').click(function(){
			//$(this).parent('div').addClass('focused')
			
			$(this).addClass('focused');
			$(this).siblings('label').addClass('small');
			
		});


		
$('input').focusout(function(e) {
            var a = $(this).val();
		
			//alert('text box value is '+a);
			if(a != ''){

				//$(this).parent('div').addClass('success')
				$(this).addClass('focused');
				$(this).siblings('label').addClass('small');
				
			} 
			else{
				  null;
				}
			
        });	
		
if($('input').val().length>0){

$('input').addClass('focused');
$('input').siblings('label').addClass('small');

}		


	
		
		
		 $('select').click(function(){
			//$(this).parent('div').addClass('focused')
			
			$(this).addClass('focused');
			$(this).siblings('label').addClass('small');
			
		});
		
/*('select').focusout(function(e) {
            var a = $(this).val();
			//alert('text box value is '+a);
			if(a != ''){

				//$(this).parent('div').addClass('success')
				$(this).addClass('success')
				$(this).siblings().addClass('small');
			} 
			else{
				  $(this).siblings().removeAttr('class');
				}
			
        });*/
		



 $('textarea').click(function(){
			//$(this).parent('div').addClass('focused')
			
			$(this).addClass('focused');
			$(this).siblings('label').addClass('small');
			
		});
		
/*('textarea').focusout(function(e) {
            var a = $(this).val();
			//alert('text box value is '+a);
			if(a != ''){

				//$(this).parent('div').addClass('success')
				$(this).addClass('focused')
				$(this).siblings('label').addClass('small');
			} 
			else{
				  $(this).siblings('label').removeAttr('class');
				}
			
        });	
		
if($('textarea').val().length>0){

$('textarea').addClass('focused');
$('textarea').siblings('label').addClass('small');

}	*/
		
		
		
/* hover tabs 
$('.nav-tabs > li > a').hover(function() {
  $(this).tab('show');
});*/

		
		
//form lable action		








$(function(){

var appendthis =  ("<div class='modal-overlay js-modal-close'></div>");

	$('a[data-modal-id]').click(function(e) {
		e.preventDefault();
    $(".box").append(appendthis);
    $(".modal-overlay").fadeTo(500, 0.7);
    //$(".js-modalbox").fadeIn(500);
		var modalBox = $(this).attr('data-modal-id');
		$('#'+modalBox).fadeIn($(this).data());
	});  
  
  
$(".js-modal-close, .modal-overlay").click(function() {
    $(".modal-box, .modal-overlay").fadeOut(500, function() {
        $(".modal-overlay").remove();
    });
 
});
 
$(window).resize(function() {
    $(".modal-box").css({
        top: ($(window).height() - $(".modal-box").outerHeight()) / 2,
        left: ($(window).width() - $(".modal-box").outerWidth()) / 2
    });
});
 
$(window).resize();
 
});






  
		  
		  

					
					
					




$(document).ready(function(){
     $(window).scroll(function () {
            if ($(this).scrollTop() > 50) {
                $('#back-to-top').fadeIn();
            } else {
                $('#back-to-top').fadeOut();
            }
        });
        // scroll body to 0px on click
        $('#back-to-top').click(function () {
            $('#back-to-top').tooltip('hide');
            $('body,html').animate({
                scrollTop: 0
            }, 800);
            return false;
        });
        
        $('#back-to-top').tooltip('show');

});

		



$(function () {
    //Initialize Select2 Elements
    $(".select2").select2();

   });









