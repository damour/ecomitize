function setMessage(message, success)
{
    var css_class = (success) ? 'warning' : 'danger';

    $('.flash').addClass('alert-' + css_class);
    $('.flash #message').text(message);
}

$(function(){
    $("#add-email-form").submit(function( event ) {
        event.preventDefault();

        var $form = $( this ),
            email = $form.find( "input[name='email']" ).val();
            
        $.post( "/download/addEmail", { email: email })
            .done(function( data ) {
                if (data.status == 'success') {
                    setMessage( "Email has been successfully added", true );

                    $('#last-emails').slideUp('slow', function(){
                        $('#last-emails').load('/download/getLastEmails', function(){
                            $('#last-emails').slideDown('slow');
                            $("#add-email-form").trigger('reset');
                        });
                    });
                } else if (data.status == 'error') {
                    setMessage( data.error );
                } else {
                    setMessage( "An error has occurred while processing your request. Please reload page and try again" );
                }
            })
            .fail(function(jqXHR, textStatus, errorThrown) {
                setMessage( "An error has occurred while processing your request. Please reload page and try again" );
            });
    });
});