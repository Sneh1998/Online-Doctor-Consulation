function validate() {
	let exit = false;
	$('.fieldError').html('');
	$('.fieldValidate').each(function() {
		let curVal = this.value.trim();
		if(curVal=="") {
			let errorId = $(this).attr('error-id');
			if(typeof(errorId)!='undefined') {
				$('#'+errorId).html($(this).attr('placeholder')+" : field is mandatory");
			}
			else {
				alert('Please define error-id for '+$(this).attr('placeholder'));
			}
			exit = true;
			return false;
		}
	});
	if(exit) return false;
	else return true;
}

function bodyLoadingFun(){
	
} 