	//starter for login modal
	$('#login').on('show.bs.modal', function(event) {
    var button = $(event.relatedTarget);
    var modal = $(this);

	});
	//starter for signup modal
	$('#signUp').on('show.bs.modal', function(event) {
    var button = $(event.relatedTarget);
    var modal = $(this);
	});

	//switch to the signup modal
	$( "#signin-pop" ).click(function() {
	$('#signUp').modal('hide');
 	$('#login').modal('show');
	});
	//switch to the login modal
	$( "#signup-pop" ).click(function() {
  	$('#login').modal('hide');
  	$('#signUp').modal('show');
	});
	
	//only enable the digit
	function isNumberKey(evt) {
		var charCode = (evt.which) ? evt.which : event.keyCode;
		if (charCode > 31 && (charCode < 48 || charCode > 57))
			return false;
		return true;
		}