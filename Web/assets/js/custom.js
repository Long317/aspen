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