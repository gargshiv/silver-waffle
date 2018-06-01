
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
				  $(this).siblings('label').removeAttr('class');
				}
			
        });	
		
if($('input').val().length>0){

$('input').addClass('focused');
$('input').siblings('label').addClass('small');

}		

$('.radioBtn button').on('click', function(){
    var sel = $(this).data('title');
    var tog = $(this).data('toggle');
    $('#'+tog).prop('value', sel);
    
    $('button[data-toggle="'+tog+'"]').not('[data-title="'+sel+'"]').removeClass('active').addClass('notActive');
    $('button[data-toggle="'+tog+'"][data-title="'+sel+'"]').removeClass('notActive').addClass('active');
})

$(function () {
    //Initialize Select2 Elements
    $(".select2").select2();

   });


$(".rd_stud").click(function(){
    $(".teacher").css('display','none');
	$(".student").css('display','block');
});

$(".rd_teach").click(function(){
    $(".teacher").css('display','block');
	$(".student").css('display','none');
});
		
		
